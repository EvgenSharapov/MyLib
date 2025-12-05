INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4fd896be-34df-45c6-9287-20351e610db5', 'Как спринг работает с транзакциями? Расскажите про аннотацию  @Transactional', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Работа с транзакциями в Spring и аннотация @Transactional</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Работа с транзакциями в Spring и аннотация @Transactional</h1>
    <p>
        Spring Framework предоставляет мощный механизм управления транзакциями через аннотацию <code>@Transactional</code>. Этот механизм основан на AOP (Aspect-Oriented Programming) и позволяет легко управлять транзакциями в приложениях.
    </p>

    <h2>Как Spring работает с транзакциями?</h2>
    <p>
        Spring создаёт прокси для всех классов или методов, помеченных аннотацией <code>@Transactional</code>. При вызове такого метода происходит следующее:
    </p>
    <ol>
        <li>
            <span class="highlight">Создание прокси:</span> Spring создаёт прокси для класса или метода, помеченного <code>@Transactional</code>.
        </li>
        <li>
            <span class="highlight">Открытие транзакции:</span> Прокси создаёт persistence context (или соединение с базой данных) и открывает транзакцию. Транзакция сохраняется в контексте текущего потока (ThreadLocal).
        </li>
        <li>
            <span class="highlight">Выполнение метода:</span> Метод выполняется в контексте открытой транзакции.
        </li>
        <li>
            <span class="highlight">Завершение транзакции:</span> После выполнения метода транзакция либо фиксируется (commit), либо откатывается (rollback) в зависимости от результата выполнения.
        </li>
    </ol>

    <h2>Атрибуты аннотации @Transactional</h2>
    <p>
        Аннотация <code>@Transactional</code> имеет несколько атрибутов для настройки поведения транзакций:
    </p>

    <h3>Атрибут propagation</h3>
    <p>
        Определяет поведение транзакции при вызове метода:
    </p>
    <ul>
        <li>
            <span class="highlight">REQUIRED (по умолчанию):</span> Использует существующую транзакцию или создаёт новую, если транзакция отсутствует.
        </li>
        <li>
            <span class="highlight">REQUIRES_NEW:</span> Всегда создаёт новую транзакцию, приостанавливая существующую.
        </li>
        <li>
            <span class="highlight">NESTED:</span> Создаёт вложенную транзакцию (если база данных поддерживает savepoints).
        </li>
        <li>
            <span class="highlight">MANDATORY:</span> Требует наличия активной транзакции, иначе выбрасывает исключение.
        </li>
        <li>
            <span class="highlight">SUPPORTS:</span> Использует существующую транзакцию, если она есть, иначе выполняется без транзакции.
        </li>
        <li>
            <span class="highlight">NOT_SUPPORTED:</span> Выполняет метод без транзакции, приостанавливая существующую.
        </li>
        <li>
            <span class="highlight">NEVER:</span> Запрещает выполнение метода в контексте транзакции, иначе выбрасывает исключение.
        </li>
    </ul>

    <h3>Атрибуты rollbackFor и noRollbackFor</h3>
    <p>
        Управляют поведением отката транзакции:
    </p>
    <ul>
        <li>
            <span class="highlight">rollbackFor:</span> Указывает исключения, которые должны вызывать откат транзакции.
            <pre><code>@Transactional(rollbackFor = Exception.class)</code></pre>
        </li>
        <li>
            <span class="highlight">noRollbackFor:</span> Указывает исключения, которые не должны вызывать откат транзакции.
            <pre><code>@Transactional(noRollbackFor = CustomException.class)</code></pre>
        </li>
    </ul>

    <h3>Атрибуты readOnly и timeout</h3>
    <p>
        Дополнительные параметры для настройки транзакций:
    </p>
    <ul>
        <li>
            <span class="highlight">readOnly:</span> Указывает, что транзакция предназначена только для чтения.
            <pre><code>@Transactional(readOnly = true)</code></pre>
        </li>
        <li>
            <span class="highlight">timeout:</span> Устанавливает таймаут для транзакции (в секундах).
            <pre><code>@Transactional(timeout = 10)</code></pre>
        </li>
    </ul>

    <h3>Атрибут isolation</h3>
    <p>
        Определяет уровень изоляции транзакции:
    </p>
    <ul>
        <li>
            <span class="highlight">DEFAULT:</span> Уровень изоляции по умолчанию для базы данных.
        </li>
        <li>
            <span class="highlight">READ_UNCOMMITTED:</span> Позволяет читать незафиксированные данные.
        </li>
        <li>
            <span class="highlight">READ_COMMITTED:</span> Гарантирует, что читаются только зафиксированные данные.
        </li>
        <li>
            <span class="highlight">REPEATABLE_READ:</span> Гарантирует, что данные, прочитанные в транзакции, не изменятся.
        </li>
        <li>
            <span class="highlight">SERIALIZABLE:</span> Самый строгий уровень изоляции, предотвращает любые конфликты.
        </li>
    </ul>

    <h2>Пример использования @Transactional</h2>
    <pre><code>@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Transactional
    public void createUser(User user) {
        userRepository.save(user);
    }

    @Transactional(readOnly = true)
    public User getUserById(Long id) {
        return userRepository.findById(id).orElse(null);
    }
}</code></pre>

    <h2>Включение управления транзакциями</h2>
    <p>
        Для включения управления транзакциями в Spring используется аннотация <code>@EnableTransactionManagement</code>:
    </p>
    <pre><code>@Configuration
@EnableTransactionManagement
public class AppConfig {
    // Конфигурация бинов
}</code></pre>

    <h2>Как работает проксирование транзакций?</h2>
    <p>
        Spring использует AOP-прокси для управления транзакциями:
    </p>
    <ol>
        <li>
            <span class="highlight">TransactionInterceptor:</span> Перехватывает вызовы методов, помеченных <code>@Transactional</code>, и добавляет логику управления транзакциями.
        </li>
        <li>
            <span class="highlight">TransactionManager:</span> Решает, нужно ли создавать новую транзакцию или использовать существующую.
        </li>
        <li>
            <span class="highlight">EntityManager proxy:</span> Управляет EntityManager, привязывая его к текущему потоку (ThreadLocal).
        </li>
    </ol>

    <h2>Ограничения и особенности</h2>
    <ul>
        <li>
            <span class="highlight">Self-invocation:</span> Если метод вызывает другой метод внутри того же класса, проксирование не сработает. Это можно обойти с помощью self-injection.
        </li>
        <li>
            <span class="highlight">Многопоточность:</span> Каждая транзакция привязана к текущему потоку (ThreadLocal), что обеспечивает изоляцию.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@Transactional</code> должна использоваться на уровне сервисов (Service), а не на уровне DAO или контроллеров.
        </p>
    </div>

    <h2>Преимущества @Transactional</h2>
    <ul>
        <li>
            <span class="highlight">Упрощение кода:</span> Управление транзакциями декларативно, без необходимости писать boilerplate-код.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Поддержка различных уровней изоляции, распространения и отката транзакций.
        </li>
        <li>
            <span class="highlight">Интеграция:</span> Легко интегрируется с JPA, Hibernate и другими технологиями.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('dd782d2b-9e8d-415e-912c-d4a0f5c4b632', 'Как использовать git stash и в каких сценариях это может быть полезно?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Использование git stash</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Использование git stash</h1>
    <p>
        <span class="highlight">git stash</span> — это команда в Git, которая позволяет временно сохранить изменения в рабочей
        директории и индексе, чтобы вы могли переключиться на другую ветку или выполнить другие
        задачи без необходимости фиксировать изменения. Это особенно полезно, когда вам нужно
        быстро переключиться между задачами или ветками.
    </p>

    <h2>Основные команды git stash</h2>
    <ul>
        <li>
            <span class="highlight">Сохранение изменений:</span>
            <p>
                Чтобы временно сохранить изменения, используйте команду <code>git stash</code>.
            </p>
            <pre><code>
git stash
            </code></pre>
            <p>
                Это сохранит все изменения в рабочей директории и индексе в отдельное хранилище
                (stash) и вернёт рабочую директорию к состоянию последнего коммита.
            </p>
        </li>
        <li>
            <span class="highlight">Просмотр списка stash:</span>
            <p>
                Чтобы просмотреть список всех сохранённых stash, используйте команду <code>git stash list</code>.
            </p>
            <pre><code>
git stash list
            </code></pre>
        </li>
        <li>
            <span class="highlight">Восстановление изменений:</span>
            <p>
                Чтобы восстановить последние сохранённые изменения, используйте команду
                <code>git stash apply</code>.
            </p>
            <pre><code>
git stash apply
            </code></pre>
            <p>
                Если вы хотите восстановить конкретный stash, укажите его идентификатор:
            </p>
            <pre><code>
git stash apply stash@{1}
            </code></pre>
        </li>
        <li>
            <span class="highlight">Удаление stash:</span>
            <p>
                Чтобы удалить последний stash после восстановления, используйте команду
                <code>git stash drop</code>.
            </p>
            <pre><code>
git stash drop
            </code></pre>
            <p>
                Чтобы удалить конкретный stash, укажите его идентификатор:
            </p>
            <pre><code>
git stash drop stash@{1}
            </code></pre>
        </li>
        <li>
            <span class="highlight">Восстановление и удаление stash:</span>
            <p>
                Чтобы восстановить и сразу удалить stash, используйте команду <code>git stash pop</code>.
            </p>
            <pre><code>
git stash pop
            </code></pre>
        </li>
    </ul>

    <h2>Сценарии использования git stash</h2>
    <ul>
        <li>
            <span class="highlight">Переключение между ветками:</span>
            <p>
                Если вы работаете над одной веткой и вам нужно переключиться на другую, но вы не
                хотите фиксировать текущие изменения, используйте <code>git stash</code>.
            </p>
            <pre><code>
# Сохраняем изменения
git stash

# Переключаемся на другую ветку
git checkout other-branch

# Возвращаемся к предыдущей ветке и восстанавливаем изменения
git checkout original-branch
git stash pop
            </code></pre>
        </li>
        <li>
            <span class="highlight">Обновление ветки:</span>
            <p>
                Если вам нужно обновить текущую ветку с удалённого репозитория, но у вас есть
                незафиксированные изменения, используйте <code>git stash</code>.
            </p>
            <pre><code>
# Сохраняем изменения
git stash

# Обновляем ветку
git pull origin main

# Восстанавливаем изменения
git stash pop
            </code></pre>
        </li>
        <li>
            <span class="highlight">Тестирование изменений:</span>
            <p>
                Если вы хотите протестировать изменения, но не хотите их фиксировать, используйте
                <code>git stash</code> для временного сохранения.
            </p>
            <pre><code>
# Сохраняем изменения
git stash

# Тестируем что-то другое
# ...

# Восстанавливаем изменения
git stash pop
            </code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>git stash</code> не сохраняет неотслеживаемые файлы (untracked files) по
            умолчанию. Чтобы сохранить и неотслеживаемые файлы, используйте опцию <code>--include-untracked</code>
            или <code>-u</code>.
        </p>
        <pre><code>
git stash -u
        </code></pre>
    </div>

    <h2>Пример рабочего процесса</h2>
    <pre><code>
# 1. Внесение изменений в рабочей директории
echo "Новый текст" > file.txt

# 2. Сохранение изменений в stash
git stash

# 3. Переключение на другую ветку
git checkout other-branch

# 4. Возвращение к предыдущей ветке и восстановление изменений
git checkout original-branch
git stash pop
    </code></pre>

    <h2>Заключение</h2>
    <p>
        <code>git stash</code> — это мощный инструмент для временного сохранения изменений в Git. Он полезен
        в сценариях, когда вам нужно быстро переключиться между задачами или ветками, не фиксируя
        текущие изменения. Используйте команды <code>git stash</code>, <code>git stash apply</code>, <code>git stash pop</code> и
        другие для эффективного управления изменениями в рабочей директории.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('eb1aa5ab-a6b0-40ed-92aa-86a4f3b50f99', 'Объясните разницу между Session и SessionFactory в Hibernate.', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между Session и SessionFactory в Hibernate</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <div class="content">
        <h1>Разница между Session и SessionFactory в Hibernate</h1>
        <p>
            В Hibernate <span class="highlight">SessionFactory</span> и <span class="highlight">Session</span> — это два ключевых компонента, которые играют разные роли в работе с базой данных. Понимание их различий важно для эффективного использования Hibernate.
        </p>

        <h2>Что такое SessionFactory?</h2>
        <p>
            <span class="highlight">SessionFactory</span> — это тяжёловесный объект, который создаётся один раз за время работы приложения. Он отвечает за создание и управление сессиями (<code>Session</code>), а также за кэширование метаданных и управление подключениями к базе данных.
        </p>
        <ul>
            <li>
                <span class="highlight">Инициализация:</span> SessionFactory создаётся на основе конфигурации Hibernate (например, из <code>hibernate.cfg.xml</code>).
            </li>
            <li>
                <span class="highlight">Потокобезопасность:</span> SessionFactory является потокобезопасным, поэтому его можно использовать в многопоточной среде.
            </li>
            <li>
                <span class="highlight">Кэширование:</span> SessionFactory кэширует метаданные, такие как маппинг сущностей и настройки Hibernate.
            </li>
            <li>
                <span class="highlight">Жизненный цикл:</span> SessionFactory существует на протяжении всего времени работы приложения и закрывается при его завершении.
            </li>
        </ul>

        <h2>Что такое Session?</h2>
        <p>
            <span class="highlight">Session</span> — это лёгковесный объект, который создаётся на основе SessionFactory. Он представляет собой единицу работы с базой данных и используется для выполнения операций, таких как сохранение, обновление, удаление и выборка данных.
        </p>
        <ul>
            <li>
                <span class="highlight">Инициализация:</span> Session создаётся с помощью метода <code>openSession()</code> объекта SessionFactory.
            </li>
            <li>
                <span class="highlight">Потокобезопасность:</span> Session не является потокобезопасным. Каждый поток должен использовать свою собственную сессию.
            </li>
            <li>
                <span class="highlight">Кэширование первого уровня:</span> Session поддерживает кэширование первого уровня, которое действует в пределах одной сессии.
            </li>
            <li>
                <span class="highlight">Жизненный цикл:</span> Session существует только во время выполнения операции с базой данных и закрывается после завершения работы.
            </li>
        </ul>

        <h2>Сравнение SessionFactory и Session</h2>
        <table>
            <thead>
                <tr>
                    <th>Характеристика</th>
                    <th>SessionFactory</th>
                    <th>Session</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Вес</td>
                    <td>Тяжёловесный объект</td>
                    <td>Лёгковесный объект</td>
                </tr>
                <tr>
                    <td>Потокобезопасность</td>
                    <td>Потокобезопасный</td>
                    <td>Не потокобезопасный</td>
                </tr>
                <tr>
                    <td>Кэширование</td>
                    <td>Кэширует метаданные и настройки</td>
                    <td>Кэширует объекты в пределах сессии (кэш первого уровня)</td>
                </tr>
                <tr>
                    <td>Жизненный цикл</td>
                    <td>Существует на протяжении всего времени работы приложения</td>
                    <td>Создаётся и закрывается для каждой операции</td>
                </tr>
                <tr>
                    <td>Использование</td>
                    <td>Используется для создания сессий</td>
                    <td>Используется для выполнения операций с базой данных</td>
                </tr>
            </tbody>
        </table>

        <h2>Пример использования SessionFactory и Session</h2>
        <p>
            Пример кода, демонстрирующий создание SessionFactory и использование Session для сохранения объекта:
        </p>
        <pre><code>import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Main {
    public static void main(String[] args) {
        // Создание SessionFactory
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

        // Открытие сессии
        Session session = sessionFactory.openSession();
        Transaction transaction = null;

        try {
            // Начало транзакции
            transaction = session.beginTransaction();

            // Создание и сохранение объекта
            User user = new User();
            user.setName("John");
            session.save(user);

            // Завершение транзакции
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            // Закрытие сессии
            session.close();
        }

        // Закрытие SessionFactory при завершении работы приложения
        sessionFactory.close();
    }
}</code></pre>

        <h2>Заключение</h2>
        <p>
            SessionFactory и Session играют разные роли в Hibernate. SessionFactory используется для создания сессий и управления метаданными, а Session — для выполнения операций с базой данных. Понимание их различий помогает эффективно использовать Hibernate в приложениях.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b4b540c8-97ad-48e7-b7bc-050f2cbc42b2', 'Расскажите про аннотацию @Autowired', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Autowired</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотация @Autowired</h1>
    <p>
        Аннотация <code>@Autowired</code> используется для автоматического внедрения подходящего бина в Spring-приложениях.
        Она позволяет контейнеру Spring управлять зависимостями между компонентами, упрощая процесс Dependency Injection (DI).
    </p>

    <h2>Как работает @Autowired?</h2>
    <ul>
        <li>
            <span class="highlight">Определение типа:</span> Контейнер Spring определяет тип объекта, который необходимо внедрить.
        </li>
        <li>
            <span class="highlight">Поиск бина:</span> Контейнер ищет соответствующий тип бина в своём контексте (контейнере).
        </li>
        <li>
            <span class="highlight">Использование @Primary:</span> Если найдено несколько кандидатов, и один из них помечен аннотацией <code>@Primary</code>, то внедряется именно он.
        </li>
        <li>
            <span class="highlight">Использование @Qualifier:</span> Если указана аннотация <code>@Qualifier</code>, контейнер использует её для выбора конкретного бина.
        </li>
        <li>
            <span class="highlight">Имя или ID бина:</span> Если другие способы не сработали, контейнер внедряет бин на основе его имени или ID.
        </li>
        <li>
            <span class="highlight">Исключение:</span> Если ни один из способов не сработал, контейнер выбрасывает исключение.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@Autowired</code> обрабатывается с помощью <code>AutowiredAnnotationBeanPostProcessor</code>.
            Она не может быть использована в <code>BeanFactoryPostProcessor</code> или <code>BeanPostProcessor</code>.
        </p>
    </div>

    <h2>Параметры аннотации @Autowired</h2>
    <ul>
        <li>
            <span class="highlight">required:</span> Параметр <code>required = true/false</code> указывает, обязательно ли внедрение.
            По умолчанию <code>true</code>. Если установлено <code>false</code>, поле останется <code>null</code>, если подходящий бин не найден.
        </li>
    </ul>

    <h2>Особенности использования</h2>
    <ul>
        <li>
            <span class="highlight">Циклические зависимости:</span> Аннотацию <code>@Autowired</code> нельзя использовать над конструктором при циклических зависимостях (когда объекты ссылаются друг на друга).
        </li>
        <li>
            <span class="highlight">Внедрение в поля:</span> При внедрении напрямую в поля не требуется предоставлять конструктор для создания экземпляра класса. Однако это может привести к проблемам:
            <ul>
                <li>Объект может быть создан с отсутствующими зависимостями, что вызовет <code>NullPointerException</code>.</li>
                <li>Класс становится зависимым от DI-контейнера и не может быть использован вне его (например, в тестах или других модулях).</li>
                <li>Неизменяемость: Внедрение через поля не позволяет использовать <code>final</code>-поля, что делает объекты изменяемыми.</li>
            </ul>
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('57ad3658-35d0-409f-8627-1c58dc29be90', 'Расскажите про красно-черное дерево', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Красно-черное дерево</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Красно-черное дерево</h1>
    <p>
        <span class="highlight">Красно-черное дерево</span> — это усовершенствованная версия бинарного дерева поиска, которая автоматически поддерживает сбалансированность. Каждый узел в красно-черном дереве имеет дополнительное поле — <span class="highlight">цвет</span> (красный или черный).
    </p>

    <h2>Основные свойства красно-черного дерева</h2>
    <ul>
        <li>
            <span class="highlight">Цвет узла:</span> Каждый узел либо красный, либо черный.
        </li>
        <li>
            <span class="highlight">Корень:</span> Корень дерева всегда черный.
        </li>
        <li>
            <span class="highlight">Листья:</span> Все листья (узлы без потомков) черные и не хранят данных.
        </li>
        <li>
            <span class="highlight">Потомки красного узла:</span> Оба потомка каждого красного узла должны быть черными.
        </li>
        <li>
            <span class="highlight">Черная высота:</span> Любой простой путь от узла-предка до листового узла-потомка содержит одинаковое количество черных узлов. Если это условие нарушается, дерево перебалансируется.
        </li>
    </ul>

    <h2>Преимущества красно-черного дерева</h2>
    <ul>
        <li>
            <span class="highlight">Сбалансированность:</span> Красно-черное дерево автоматически поддерживает баланс, что предотвращает вырождение в связанный список.
        </li>
        <li>
            <span class="highlight">Операции:</span> При добавлении или удалении узлов дерево может потребовать до двух или трёх поворотов для поддержания сбалансированности.
        </li>
    </ul>

    <h2>Асимптотическая сложность</h2>
    <ul>
        <li>
            <span class="highlight">Поиск, вставка и удаление:</span> <code>O(log(n))</code>, где <code>n</code> — количество узлов в дереве.
        </li>
    </ul>

    <h2>Пример использования</h2>
    <p>
        Красно-черные деревья широко используются в:
    </p>
    <ul>
        <li>Реализации ассоциативных массивов (например, в стандартных библиотеках C++ и Java).</li>
        <li>Базах данных для индексации.</li>
        <li>Реализации сбалансированных деревьев поиска.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Красно-черные деревья обеспечивают гарантированную производительность операций поиска, вставки и удаления, что делает их идеальными для задач, требующих сбалансированных структур данных.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('15180bbc-6a6f-4c47-99ae-238bc3489aa4', 'Как вы определяете, что поток завершил свою работу? Как это реализовать в вашем коде?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Определение завершения работы потока</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <div class="content">
        <h1>Как определить, что поток завершил свою работу?</h1>
        <p>
            В Java есть несколько способов определить, что поток завершил свою работу. Это важно для синхронизации потоков и управления выполнением задач. Рассмотрим основные подходы.
        </p>

        <h2>Способы определения завершения работы потока</h2>
        <p>
            Для определения завершения работы потока можно использовать следующие методы:
        </p>
        <ul>
            <li>
                <span class="highlight">Метод <code>join()</code>:</span> Позволяет текущему потоку дождаться завершения другого потока.
            </li>
            <li>
                <span class="highlight">Флаги и проверка состояния:</span> Использование флагов или проверка состояния потока через <code>isAlive()</code>.
            </li>
            <li>
                <span class="highlight">Использование <code>Future</code> и <code>ExecutorService</code>:</span> Позволяет управлять задачами и проверять их завершение.
            </li>
        </ul>

        <h2>1. Использование метода <code>join()</code></h2>
        <p>
            Метод <code>join()</code> блокирует текущий поток до тех пор, пока целевой поток не завершит своё выполнение.
        </p>
        <h3>Пример</h3>
        <pre><code>public class Main {
    public static void main(String[] args) {
        Thread thread = new Thread(() -> {
            System.out.println("Поток начал выполнение");
            try {
                Thread.sleep(2000); // Имитация работы
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Поток завершил выполнение");
        });

        thread.start();

        try {
            thread.join(); // Ожидание завершения потока
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println("Основной поток завершил выполнение");
    }
}</code></pre>
        <p>
            В этом примере основной поток ждёт завершения <code>thread</code> с помощью метода <code>join()</code>.
        </p>

        <h2>2. Использование флагов и метода <code>isAlive()</code></h2>
        <p>
            Можно использовать флаги или метод <code>isAlive()</code> для проверки состояния потока.
        </p>
        <h3>Пример с флагом</h3>
        <pre><code>public class Main {
    private static volatile boolean isFinished = false;

    public static void main(String[] args) {
        Thread thread = new Thread(() -> {
            System.out.println("Поток начал выполнение");
            try {
                Thread.sleep(2000); // Имитация работы
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            isFinished = true;
            System.out.println("Поток завершил выполнение");
        });

        thread.start();

        while (!isFinished) {
            // Ожидание завершения потока
        }

        System.out.println("Основной поток завершил выполнение");
    }
}</code></pre>
        <h3>Пример с <code>isAlive()</code></h3>
        <pre><code>public class Main {
    public static void main(String[] args) {
        Thread thread = new Thread(() -> {
            System.out.println("Поток начал выполнение");
            try {
                Thread.sleep(2000); // Имитация работы
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Поток завершил выполнение");
        });

        thread.start();

        while (thread.isAlive()) {
            // Ожидание завершения потока
        }

        System.out.println("Основной поток завершил выполнение");
    }
}</code></pre>

        <h2>3. Использование <code>Future</code> и <code>ExecutorService</code></h2>
        <p>
            <code>ExecutorService</code> и <code>Future</code> предоставляют более гибкий способ управления задачами и проверки их завершения.
        </p>
        <h3>Пример</h3>
        <pre><code>import java.util.concurrent.*;

public class Main {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newSingleThreadExecutor();

        Future&lt;?&gt; future = executor.submit(() -> {
            System.out.println("Задача начата");
            try {
                Thread.sleep(2000); // Имитация работы
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Задача завершена");
        });

        try {
            future.get(); // Ожидание завершения задачи
        } catch (InterruptedException | ExecutionException e) {
            e.printStackTrace();
        }

        executor.shutdown();
        System.out.println("Основной поток завершил выполнение");
    }
}</code></pre>
        <p>
            В этом примере <code>future.get()</code> блокирует выполнение до завершения задачи.
        </p>

        <h2>Преимущества и недостатки подходов</h2>
        <ul>
            <li>
                <span class="highlight">Метод <code>join()</code>:</span> Простота использования, но блокирует текущий поток.
            </li>
            <li>
                <span class="highlight">Флаги и <code>isAlive()</code>:</span> Гибкость, но требует активного ожидания.
            </li>
            <li>
                <span class="highlight">Использование <code>Future</code> и <code>ExecutorService</code>:</span> Гибкость и контроль над задачами, но требует больше кода.
            </li>
        </ul>

        <h2>Рекомендации по выбору подхода</h2>
        <ul>
            <li>
                <span class="highlight">Используйте <code>join()</code>:</span> Для простых сценариев, где нужно дождаться завершения одного потока.
            </li>
            <li>
                <span class="highlight">Используйте <code>Future</code> и <code>ExecutorService</code>:</span> Для сложных сценариев с множеством задач и необходимостью управления их выполнением.
            </li>
            <li>
                <span class="highlight">Избегайте активного ожидания:</span> Используйте <code>join()</code> или <code>Future</code> вместо активного ожидания с флагами.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Определение завершения работы потока — это важная задача в многопоточном программировании. В Java для этого можно использовать метод <code>join()</code>, флаги, метод <code>isAlive()</code>, а также <code>Future</code> и <code>ExecutorService</code>. Выбор подхода зависит от конкретных требований вашего приложения.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('95eac871-c794-41a5-a1b0-e45594bbe000', 'Что такое "remote" в Git, и как добавить удаленный репозиторий?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Удалённые репозитории в Git</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <div class="content">
        <h1>Что такое "remote" в Git?</h1>
        <p>
            В Git <span class="highlight">remote</span> (удалённый репозиторий) — это ссылка на версию вашего репозитория, которая хранится на удалённом сервере, например, на GitHub, GitLab или Bitbucket. Удалённые репозитории позволяют нескольким разработчикам работать над одним проектом, обмениваться изменениями и синхронизировать свои локальные репозитории с общей копией.
        </p>

        <h2>Для чего нужны удалённые репозитории?</h2>
        <ul>
            <li>
                <span class="highlight">Совместная работа:</span> Удалённые репозитории позволяют команде разработчиков работать над одним проектом, обмениваясь изменениями через общий сервер.
            </li>
            <li>
                <span class="highlight">Резервное копирование:</span> Хранение кода на удалённом сервере обеспечивает его сохранность в случае потери локальной копии.
            </li>
            <li>
                <span class="highlight">Синхронизация:</span> Удалённые репозитории позволяют синхронизировать изменения между локальными копиями разработчиков.
            </li>
        </ul>

        <h2>Как добавить удалённый репозиторий?</h2>
        <p>
            Чтобы добавить удалённый репозиторий в ваш локальный проект, используйте команду <code>git remote add</code>. Эта команда связывает ваш локальный репозиторий с удалённым сервером.
        </p>
        <pre><code>git remote add &lt;имя-удалённого-репозитория&gt; &lt;URL-репозитория&gt;</code></pre>
        <p>
            Например, чтобы добавить удалённый репозиторий с именем <code>origin</code>, используйте:
        </p>
        <pre><code>git remote add origin https://github.com/username/repository.git</code></pre>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Имя <code>origin</code> — это стандартное имя для основного удалённого репозитория, но вы можете использовать любое другое имя.
            </p>
        </div>

        <h2>Как просмотреть список удалённых репозиториев?</h2>
        <p>
            Чтобы просмотреть список всех удалённых репозиториев, связанных с вашим локальным проектом, используйте команду:
        </p>
        <pre><code>git remote -v</code></pre>
        <p>
            Эта команда покажет имена удалённых репозиториев и их URL-адреса.
        </p>

        <h2>Примеры команд</h2>
        <ul>
            <li>
                <code>git remote add origin &lt;URL&gt;</code> — добавляет удалённый репозиторий с именем <code>origin</code>.
            </li>
            <li>
                <code>git remote -v</code> — показывает список всех удалённых репозиториев.
            </li>
            <li>
                <code>git remote remove &lt;имя-удалённого-репозитория&gt;</code> — удаляет связь с указанным удалённым репозиторием.
            </li>
        </ul>
    </div>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('efc807be-d21d-4e43-8982-c2da1ed691a7', 'Расскажите про очередь и стек', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Очередь и стек</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Очередь и стек</h1>
    <p>
        <span class="highlight">Стек</span> и <span class="highlight">очередь</span> — это две основные структуры данных, которые используются для хранения и управления элементами в определённом порядке. Они отличаются принципами добавления и извлечения элементов.
    </p>

    <h2>Стек (Stack)</h2>
    <ul>
        <li>
            <span class="highlight">Принцип работы:</span> LIFO (Last In, First Out) — последний пришёл, первый ушёл.
        </li>
        <li>
            <span class="highlight">Описание:</span> Стек — это область памяти, где хранятся данные. Каждый раз, когда вызывается метод, в стеке создаётся новый блок (фрейм), который содержит локальные переменные и ссылки на объекты. После завершения работы метода блок освобождается.
        </li>
        <li>
            <span class="highlight">Основные операции:</span>
            <ul>
                <li><code>push</code> — добавление элемента на вершину стека.</li>
                <li><code>pop</code> — удаление элемента с вершины стека.</li>
                <li><code>peek</code> — получение элемента с вершины стека без его удаления.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Применение:</span> Управление вызовами методов, обработка выражений (например, обратная польская запись), отмена действий (undo).
        </li>
    </ul>

    <h2>Очередь (Queue)</h2>
    <ul>
        <li>
            <span class="highlight">Принцип работы:</span> FIFO (First In, First Out) — первый пришёл, первый ушёл.
        </li>
        <li>
            <span class="highlight">Описание:</span> Очередь — это структура данных, в которой элементы добавляются в конец, а извлекаются из начала. Однако существуют реализации, такие как <code>PriorityQueue</code>, которые нарушают этот принцип, используя порядок сортировки.
        </li>
        <li>
            <span class="highlight">Основные операции:</span>
            <ul>
                <li><code>add</code> или <code>offer</code> — добавление элемента в конец очереди.</li>
                <li><code>remove</code> или <code>poll</code> — удаление элемента из начала очереди.</li>
                <li><code>peek</code> — получение элемента из начала очереди без его удаления.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Применение:</span> Обработка задач в порядке их поступления, планирование процессов, буферизация данных.
        </li>
    </ul>

    <h2>Двусторонняя очередь (Deque)</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span> <code>Deque</code> (Double Ended Queue) расширяет интерфейс <code>Queue</code> и поддерживает добавление и удаление элементов с обоих концов. Она может работать как по принципу FIFO, так и LIFO.
        </li>
        <li>
            <span class="highlight">Основные операции:</span>
            <ul>
                <li><code>addFirst</code>, <code>addLast</code> — добавление элемента в начало или конец.</li>
                <li><code>removeFirst</code>, <code>removeLast</code> — удаление элемента из начала или конца.</li>
                <li><code>peekFirst</code>, <code>peekLast</code> — получение элемента из начала или конца без удаления.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Применение:</span> Реализация стеков и очередей, задачи, требующие гибкости в управлении элементами.
        </li>
    </ul>

    <h2>Сравнение стека и очереди</h2>
    <ul>
        <li>
            <span class="highlight">Стек:</span> LIFO, подходит для задач, где важен порядок выполнения (например, отмена действий).
        </li>
        <li>
            <span class="highlight">Очередь:</span> FIFO, подходит для задач, где важно обрабатывать элементы в порядке их поступления (например, планирование задач).
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Реализации <code>Queue</code> и <code>Deque</code> обычно не переопределяют методы <code>equals()</code> и <code>hashCode()</code>, используя унаследованные методы класса <code>Object</code>, основанные на сравнении ссылок.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('edb59ae2-2476-4e2d-a11a-e47dad18ff54', 'Чем отличаются аннотации @Bean и @Component?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отличия аннотаций @Bean и @Component в Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Отличия аннотаций @Bean и @Component в Spring</h1>
    <p>
        Аннотации <code>@Bean</code> и <code>@Component</code> используются в Spring для регистрации бинов в IoC-контейнере,
        но они имеют разные области применения и особенности.
    </p>

    <h2>Аннотация @Bean</h2>
    <ul>
        <li>
            <span class="highlight">Использование:</span>
            <ul>
                <li>Ставится над методами в классах с аннотацией <code>@Configuration</code> или <code>@Component</code>.</li>
                <li>Позволяет добавить в контейнер бины, которые уже реализованы в сторонних библиотеках или
                    требуют сложной настройки.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
@Configuration
public class AppConfig {

    @Bean
    public DataSource dataSource() {
        return new DataSource();
    }
}
            </code></pre>
        </li>
    </ul>

    <h2>Аннотация @Component</h2>
    <ul>
        <li>
            <span class="highlight">Использование:</span>
            <ul>
                <li>Ставится над классами, написанными программистом.</li>
                <li>Автоматически регистрирует класс как бин в IoC-контейнере.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
@Component
public class UserService {
    // Логика сервиса
}
            </code></pre>
        </li>
    </ul>

    <h2>Основные отличия</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>@Bean</th>
                <th>@Component</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Место использования</td>
                <td>Методы в классах с аннотацией <code>@Configuration</code> или <code>@Component</code>.</td>
                <td>Классы, написанные программистом.</td>
            </tr>
            <tr>
                <td>Назначение</td>
                <td>Добавление бинов сторонних библиотек или сложных бинов.</td>
                <td>Регистрация собственных классов как бинов.</td>
            </tr>
            <tr>
                <td>Гибкость</td>
                <td>Позволяет настраивать бины с помощью методов.</td>
                <td>Подходит для простых бинов, которые не требуют сложной настройки.</td>
            </tr>
        </tbody>
    </table>

    <h2>Пример совместного использования</h2>
    <pre><code>
@Configuration
public class AppConfig {

    @Bean
    public DataSource dataSource() {
        return new DataSource();
    }
}

@Component
public class UserService {
    private final DataSource dataSource;

    @Autowired
    public UserService(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void saveUser(User user) {
        // Логика сохранения пользователя
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Метод <code>dataSource()</code> помечен аннотацией <code>@Bean</code> и добавляет бин <code>DataSource</code> в
                контейнер.</li>
            <li>Класс <code>UserService</code> помечен аннотацией <code>@Component</code> и регистрируется как бин.</li>
            <li>Зависимость <code>DataSource</code> внедряется в <code>UserService</code> через конструктор.</li>
        </ul>
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>@Bean</code> для добавления бинов сторонних библиотек или сложных бинов.</li>
                <li>Используйте <code>@Component</code> для регистрации собственных классов как бинов.</li>
                <li>Аннотации <code>@Bean</code> и <code>@Component</code> могут использоваться вместе для создания гибких
                    конфигураций.</li>
            </ul>
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('30b73b47-c2e7-4113-8793-95d6b0456901', 'Что такое Transaction в Hibernate и как управлять транзакциями?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Управление транзакциями в Hibernate</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <div class="content">
        <h1>Что такое Transaction в Hibernate?</h1>
        <p>
            <span class="highlight">Транзакция (Transaction)</span> в Hibernate — это набор операций, которые выполняются как единое целое. Транзакции обеспечивают целостность данных, гарантируя, что либо все операции будут выполнены успешно, либо ни одна из них не будет применена (принцип ACID: Atomicity, Consistency, Isolation, Durability).
        </p>

        <h2>Основные понятия транзакций</h2>
        <ul>
            <li>
                <span class="highlight">Атомарность (Atomicity):</span> Все операции в транзакции выполняются как единое целое. Если одна операция завершается с ошибкой, вся транзакция откатывается.
            </li>
            <li>
                <span class="highlight">Согласованность (Consistency):</span> Транзакция переводит базу данных из одного согласованного состояния в другое.
            </li>
            <li>
                <span class="highlight">Изоляция (Isolation):</span> Транзакции изолированы друг от друга, чтобы предотвратить конфликты.
            </li>
            <li>
                <span class="highlight">Долговечность (Durability):</span> После завершения транзакции изменения сохраняются в базе данных, даже в случае сбоя системы.
            </li>
        </ul>

        <h2>Как управлять транзакциями в Hibernate?</h2>
        <p>
            Управление транзакциями в Hibernate осуществляется с помощью интерфейса <code>Transaction</code>. Рассмотрим основные шаги для работы с транзакциями.
        </p>

        <h3>1. Открытие транзакции</h3>
        <p>
            Для начала транзакции необходимо вызвать метод <code>beginTransaction()</code> у объекта <code>Session</code>:
        </p>
        <pre><code>Session session = sessionFactory.openSession();
Transaction transaction = session.beginTransaction();</code></pre>

        <h3>2. Выполнение операций</h3>
        <p>
            В рамках транзакции выполняются операции с базой данных, такие как сохранение, обновление или удаление объектов:
        </p>
        <pre><code>User user = new User();
user.setName("John");
session.save(user);</code></pre>

        <h3>3. Завершение транзакции</h3>
        <p>
            Если все операции выполнены успешно, транзакция завершается вызовом метода <code>commit()</code>:
        </p>
        <pre><code>transaction.commit();</code></pre>

        <h3>4. Откат транзакции</h3>
        <p>
            Если произошла ошибка, транзакция откатывается с помощью метода <code>rollback()</code>:
        </p>
        <pre><code>try {
    transaction.commit();
} catch (Exception e) {
    if (transaction != null) {
        transaction.rollback();
    }
    e.printStackTrace();
}</code></pre>

        <h3>5. Закрытие сессии</h3>
        <p>
            После завершения транзакции сессия должна быть закрыта:
        </p>
        <pre><code>session.close();</code></pre>

        <h2>Пример управления транзакцией</h2>
        <p>
            Полный пример управления транзакцией в Hibernate:
        </p>
        <pre><code>import org.hibernate.Session;
import org.hibernate.Transaction;

public class Main {
    public static void main(String[] args) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            // Начало транзакции
            transaction = session.beginTransaction();

            // Создание и сохранение объекта
            User user = new User();
            user.setName("John");
            session.save(user);

            // Завершение транзакции
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            // Закрытие сессии
            session.close();
        }
    }
}</code></pre>

        <h2>Уровни изоляции транзакций</h2>
        <p>
            Уровень изоляции определяет, как транзакции взаимодействуют друг с другом. Hibernate поддерживает стандартные уровни изоляции, определённые в SQL:
        </p>
        <ul>
            <li>
                <span class="highlight">READ UNCOMMITTED:</span> Транзакции могут видеть незафиксированные изменения других транзакций.
            </li>
            <li>
                <span class="highlight">READ COMMITTED:</span> Транзакции видят только зафиксированные изменения.
            </li>
            <li>
                <span class="highlight">REPEATABLE READ:</span> Гарантирует, что данные, прочитанные в транзакции, не изменятся другими транзакциями.
            </li>
            <li>
                <span class="highlight">SERIALIZABLE:</span> Наиболее строгий уровень изоляции, предотвращающий любые конфликты.
            </li>
        </ul>
        <p>
            Уровень изоляции можно настроить в конфигурации Hibernate:
        </p>
        <pre><code>&lt;property name="hibernate.connection.isolation"&gt;2&lt;/property&gt;</code></pre>
        <p>
            Где значение <code>2</code> соответствует уровню <code>READ COMMITTED</code>.
        </p>

        <h2>Преимущества управления транзакциями</h2>
        <ul>
            <li>
                <span class="highlight">Целостность данных:</span> Транзакции гарантируют, что данные остаются в согласованном состоянии.
            </li>
            <li>
                <span class="highlight">Контроль над операциями:</span> Возможность отката изменений в случае ошибки.
            </li>
            <li>
                <span class="highlight">Производительность:</span> Пакетная обработка операций в рамках одной транзакции.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Управление транзакциями в Hibernate — это важный аспект разработки приложений, работающих с базами данных. Транзакции обеспечивают целостность данных и позволяют эффективно управлять операциями. Правильное использование транзакций помогает избежать ошибок и повышает надёжность приложения.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('dea8b30a-767c-4d84-b458-b6d3674f6817', 'Что такое конкуренция (concurrency) и параллелизм (parallelism)? В чем между ними разница?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Конкуренция и параллелизм</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <div class="content">
        <h1>Что такое конкуренция (concurrency) и параллелизм (parallelism)?</h1>
        <p>
            <span class="highlight">Конкуренция (concurrency)</span> и <span class="highlight">параллелизм (parallelism)</span> — это два ключевых понятия в программировании, связанных с выполнением нескольких задач одновременно. Хотя они часто используются вместе, между ними есть существенные различия.
        </p>

        <h2>Что такое конкуренция (concurrency)?</h2>
        <p>
            <span class="highlight">Конкуренция</span> — это способ организации выполнения задач, при котором несколько задач выполняются <span class="highlight">поочерёдно</span> на одном процессоре, создавая иллюзию одновременного выполнения. Конкуренция полезна, когда задачи могут быть разделены на части, которые выполняются независимо.
        </p>
        <h3>Основные характеристики конкуренции</h3>
        <ul>
            <li>
                <span class="highlight">Чередование задач:</span> Задачи выполняются по частям, переключаясь между собой.
            </li>
            <li>
                <span class="highlight">Однопроцессорные системы:</span> Конкуренция может быть реализована даже на одном ядре процессора.
            </li>
            <li>
                <span class="highlight">Управление состоянием:</span> Конкуренция требует управления состоянием задач и синхронизации.
            </li>
        </ul>
        <h3>Пример конкуренции</h3>
        <p>
            Веб-сервер, который обрабатывает запросы от нескольких клиентов, может использовать конкуренцию для переключения между задачами обработки запросов.
        </p>

        <h2>Что такое параллелизм (parallelism)?</h2>
        <p>
            <span class="highlight">Параллелизм</span> — это способ выполнения задач, при котором несколько задач выполняются <span class="highlight">одновременно</span> на нескольких процессорах или ядрах. Параллелизм используется для повышения производительности за счёт распределения задач между несколькими вычислительными ресурсами.
        </p>
        <h3>Основные характеристики параллелизма</h3>
        <ul>
            <li>
                <span class="highlight">Одновременное выполнение:</span> Задачи выполняются одновременно на разных ядрах процессора.
            </li>
            <li>
                <span class="highlight">Многопроцессорные системы:</span> Параллелизм требует наличия нескольких ядер или процессоров.
            </li>
            <li>
                <span class="highlight">Повышение производительности:</span> Параллелизм позволяет ускорить выполнение задач за счёт распределения нагрузки.
            </li>
        </ul>
        <h3>Пример параллелизма</h3>
        <p>
            Обработка больших данных, где каждая часть данных обрабатывается на отдельном ядре процессора.
        </p>

        <h2>Разница между конкуренцией и параллелизмом</h2>
        <table>
            <thead>
                <tr>
                    <th>Характеристика</th>
                    <th>Конкуренция (Concurrency)</th>
                    <th>Параллелизм (Parallelism)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Выполнение задач</td>
                    <td>Поочерёдное (переключение между задачами)</td>
                    <td>Одновременное (на разных ядрах)</td>
                </tr>
                <tr>
                    <td>Требования к железу</td>
                    <td>Может работать на одном ядре</td>
                    <td>Требует нескольких ядер</td>
                </tr>
                <tr>
                    <td>Цель</td>
                    <td>Управление несколькими задачами</td>
                    <td>Повышение производительности</td>
                </tr>
                <tr>
                    <td>Пример</td>
                    <td>Веб-сервер, обрабатывающий запросы</td>
                    <td>Обработка больших данных на нескольких ядрах</td>
                </tr>
            </tbody>
        </table>

        <h2>Примеры использования</h2>
        <h3>Конкуренция</h3>
        <ul>
            <li>Обработка пользовательского интерфейса и фоновых задач в мобильных приложениях.</li>
            <li>Чередование задач в однопоточных приложениях (например, JavaScript в браузере).</li>
        </ul>
        <h3>Параллелизм</h3>
        <ul>
            <li>Параллельная обработка изображений или видео.</li>
            <li>Вычисления в научных исследованиях (например, моделирование физических процессов).</li>
        </ul>

        <h2>Преимущества и недостатки</h2>
        <h3>Конкуренция</h3>
        <ul>
            <li>
                <span class="highlight">Преимущества:</span> Упрощает управление задачами, подходит для систем с ограниченными ресурсами.
            </li>
            <li>
                <span class="highlight">Недостатки:</span> Не увеличивает производительность, требует синхронизации.
            </li>
        </ul>
        <h3>Параллелизм</h3>
        <ul>
            <li>
                <span class="highlight">Преимущества:</span> Значительно повышает производительность, эффективно использует ресурсы.
            </li>
            <li>
                <span class="highlight">Недостатки:</span> Требует многопроцессорных систем, сложнее в реализации.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Конкуренция и параллелизм — это два подхода к выполнению нескольких задач одновременно. Конкуренция позволяет управлять задачами на одном процессоре, создавая иллюзию одновременного выполнения, а параллелизм использует несколько процессоров для реального одновременного выполнения задач. Выбор между ними зависит от требований приложения и доступных ресурсов.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9136fb38-0650-4fba-9404-d21152e32a5a', 'Что такое рекурсия? Сравните преимущества и недостатки итеративных  и рекурсивных алгоритмов (с примерами)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Рекурсия и сравнение итеративных и рекурсивных алгоритмов</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Рекурсия и сравнение итеративных и рекурсивных алгоритмов</h1>
    <p>
        <span class="highlight">Рекурсия</span> — это способ отображения какого-либо процесса внутри самого этого процесса. То есть, это ситуация, когда процесс является частью самого себя.
    </p>

    <h2>Как работает рекурсия?</h2>
    <ul>
        <li>
            Рекурсия состоит из двух частей: <span class="highlight">базового случая</span> и <span class="highlight">шага рекурсии</span>.
        </li>
        <li>
            <span class="highlight">Базовый случай</span> — это самая простая задача, которая решается за одну итерацию. В базовом случае обязательно присутствует условие выхода из рекурсии (например, <code>if (n == 0) return 1;</code>).
        </li>
        <li>
            <span class="highlight">Шаг рекурсии</span> — это процесс уменьшения задачи на каждом шаге, пока она не достигнет базового случая.
        </li>
        <li>
            После нахождения базового случая стек рекурсивных вызовов разворачивается, и результат исходной задачи вычисляется на основе результата базового случая.
        </li>
    </ul>

    <h2>Пример рекурсивного вычисления факториала</h2>
    <pre><code>
int factorial(int n) {
    if (n == 0) return 1; // базовый случай с условием выхода
    else return n * factorial(n - 1); // шаг рекурсии (рекурсивный вызов)
}
    </code></pre>
    <p>
        Или в более компактной форме:
    </p>
    <pre><code>
return (n == 0) ? 1 : n * factorial(n - 1);
    </code></pre>

    <h2>Преимущества и недостатки рекурсии и итерации</h2>
    <ul>
        <li>
            <span class="highlight">Преимущества рекурсии:</span>
            <ul>
                <li>Удобство для решения задач, которые естественно описываются рекурсивно (например, обход деревьев).</li>
                <li>Код может быть более читаемым и понятным.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки рекурсии:</span>
            <ul>
                <li>Рекурсия имеет линейную сложность <code>O(n)</code> и может привести к переполнению стека при большом количестве вызовов.</li>
                <li>Вызовы методов потребляют больше ресурсов, чем исполнение обычных операторов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества итерации:</span>
            <ul>
                <li>Циклы дают лучшую производительность, так как не требуют дополнительных вызовов методов.</li>
                <li>Гарантируют отсутствие переполнения стека, так как не требуется выделения дополнительной памяти.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки итерации:</span>
            <ul>
                <li>Код может быть менее читаемым для задач, которые естественно описываются рекурсивно.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между рекурсией и итерацией зависит от задачи. Если уровней вложенности много или задача естественно описывается рекурсивно, предпочтительна рекурсия. Если уровней вложенности немного, лучше использовать циклы.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('307dba55-b840-4d4a-9f67-abe1bf983499', 'Расскажите про паттерн «Фабричный метод» (Factory Method)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн «Фабричный метод» (Factory Method)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерн «Фабричный метод» (Factory Method)</h1>
    <p>
        <span class="highlight">Factory Method</span> — это порождающий шаблон проектирования, в котором подклассы реализуют общий интерфейс с методом для создания объектов. Переопределённый метод в каждом наследнике возвращает нужный вариант объекта.
    </p>

    <h2>Как работает Factory Method?</h2>
    <ul>
        <li>
            Объекты создаются с помощью ключевого слова <code>new</code>, но это делает фабричный метод. Это позволяет переопределить фабричный метод в подклассе, чтобы изменить тип создаваемого продукта.
        </li>
        <li>
            Все возвращаемые объекты должны иметь общий интерфейс. Подклассы могут производить объекты различных классов, следующих одному и тому же интерфейсу.
        </li>
    </ul>

    <h2>Плюсы и минусы Factory Method</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Выделяет код производства объектов в одно место, упрощая поддержку кода.</li>
                <li>Реализует принцип открытости/закрытости (Open/Closed Principle).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минусы:</span>
            <ul>
                <li>Может привести к созданию больших параллельных иерархий классов, так как для каждого класса продукта нужно создать свой подкласс создателя.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> <code>SessionFactory</code> в Hibernate — это пример использования паттерна «Фабричный метод». Он создаёт объекты сессий, которые используются для взаимодействия с базой данных.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('437e77d2-f56f-4116-a432-1e5e5cd290b8', 'Расскажите про паттерн «Адаптер» (Adapter)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн «Адаптер» (Adapter)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерн «Адаптер» (Adapter)</h1>
    <p>
        <span class="highlight">Adapter</span> — это структурный паттерн проектирования, который позволяет объектам с несовместимыми интерфейсами работать вместе.
    </p>

    <h2>Как работает Adapter?</h2>
    <ul>
        <li>
            Адаптер — это объект-переводчик, который трансформирует интерфейс или данные одного объекта в такой вид, чтобы он стал понятен другому объекту.
        </li>
        <li>
            Адаптер оборачивает один из объектов так, что другой объект даже не знает о наличии первого.
        </li>
    </ul>

    <h2>Плюсы и минусы Adapter</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Отделяет и скрывает от клиента подробности преобразования различных интерфейсов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минусы:</span>
            <ul>
                <li>Усложняет код программы из-за введения дополнительных классов.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн «Адаптер» полезен, когда нужно интегрировать старый код с новым или когда требуется работа с объектами, имеющими несовместимые интерфейсы.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1d9c69db-df8d-4a74-a7a3-750f954101b7', ' Расскажите про паттерн «Прототип» (Prototype)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн «Прототип» (Prototype)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерн «Прототип» (Prototype)</h1>
    <p>
        <span class="highlight">Prototype</span> — это порождающий паттерн проектирования, который позволяет копировать объекты, не вдаваясь в подробности их реализации.
    </p>

    <h2>Как работает Prototype?</h2>
    <ul>
        <li>
            Паттерн поручает создание копий самим копируемым объектам. Он вводит общий интерфейс с методом <code>clone</code> для всех объектов, поддерживающих клонирование.
        </li>
        <li>
            Реализация метода <code>clone</code> в разных классах очень схожа. Метод создаёт новый объект текущего класса и копирует в него значения всех полей собственного объекта.
        </li>
    </ul>

    <h2>Плюсы и минусы Prototype</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Позволяет клонировать объекты, не привязываясь к их конкретным классам.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минусы:</span>
            <ul>
                <li>Сложно клонировать составные объекты, имеющие ссылки на другие объекты.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн «Прототип» особенно полезен, когда создание объекта требует больших ресурсов или когда объекты имеют сложную структуру, которую нужно копировать.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('28022c4c-8d90-4773-8186-0d009383729a', 'Расскажите про паттерн «Заместитель» (Proxy)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн «Заместитель» (Proxy)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерн «Заместитель» (Proxy)</h1>
    <p>
        <span class="highlight">Proxy</span> — это структурный паттерн проектирования, который позволяет подставлять вместо реальных объектов специальные объекты-заменители. Эти заменители перехватывают вызовы к оригинальному объекту, позволяя выполнить дополнительную логику до или после передачи вызова оригиналу.
    </p>

    <h2>Как работает Proxy?</h2>
    <ul>
        <li>
            Заместитель предлагает создать новый класс-дублёр, имеющий тот же интерфейс, что и оригинальный служебный объект.
        </li>
        <li>
            При получении запроса от клиента объект-заместитель сам создаёт экземпляр служебного объекта, выполняя промежуточную логику, которая выполняется до (или после) вызовов методов в настоящем объекте.
        </li>
    </ul>

    <h2>Плюсы и минусы Proxy</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Позволяет контролировать сервисный объект незаметно для клиента.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минусы:</span>
            <ul>
                <li>Увеличивает время отклика от сервиса из-за дополнительной логики.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн «Заместитель» полезен, когда нужно добавить дополнительную логику (например, кэширование, проверку доступа или логгирование) без изменения кода оригинального объекта.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('245795d2-fa15-4d59-8c3f-c43ba486026b', 'Аннотация PostConstruct', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @PostConstruct</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотация @PostConstruct</h1>
    <p>
        Аннотация <code>@PostConstruct</code> используется для указания метода, который должен быть вызван Spring сразу после инициализации свойств бина (зависимостей). Этот метод вызывается только один раз и позволяет выполнить дополнительную настройку бина перед его использованием.
    </p>

    <h2>Как работает @PostConstruct?</h2>
    <p>
        Spring вызывает методы, аннотированные <code>@PostConstruct</code>, после того, как все зависимости бина были внедрены (например, через <code>@Autowired</code>). За обработку этой аннотации отвечает один из <code>BeanPostProcessor</code>.
    </p>

    <h3>Основные характеристики метода с @PostConstruct:</h3>
    <ul>
        <li>
            <span class="highlight">Уровень доступа:</span> Метод может иметь любой уровень доступа (<code>public</code>, <code>protected</code>, <code>private</code>).
        </li>
        <li>
            <span class="highlight">Тип возвращаемого значения:</span> Метод может возвращать любой тип, но Spring игнорирует возвращаемое значение.
        </li>
        <li>
            <span class="highlight">Аргументы:</span> Метод не должен принимать аргументы.
        </li>
        <li>
            <span class="highlight">Статический метод:</span> Метод может быть статическим, но это лишает его доступа к нестатическим полям и методам бина, что делает такое использование бессмысленным для настройки бина.
        </li>
    </ul>

    <h2>Пример использования @PostConstruct</h2>
    <p>
        Один из распространённых примеров использования <code>@PostConstruct</code> – это инициализация данных, например, заполнение базы данных начальными значениями.
    </p>
    <pre><code>@Component
public class DatabaseInitializer {

    @Autowired
    private UserRepository userRepository;

    @PostConstruct
    public void init() {
        // Создание пользователей по умолчанию
        User admin = new User("admin", "admin123");
        User guest = new User("guest", "guest123");

        userRepository.save(admin);
        userRepository.save(guest);

        System.out.println("База данных инициализирована начальными данными");
    }
}</code></pre>

    <h2>Когда вызывается @PostConstruct?</h2>
    <p>
        Метод, аннотированный <code>@PostConstruct</code>, вызывается в следующем порядке:
    </p>
    <ol>
        <li>После создания экземпляра бина.</li>
        <li>После внедрения всех зависимостей (например, через <code>@Autowired</code>).</li>
        <li>Перед тем, как бин будет готов к использованию.</li>
    </ol>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@PostConstruct</code> является частью стандарта JSR-250 и может использоваться не только в Spring, но и в других фреймворках, поддерживающих этот стандарт.
        </p>
    </div>

    <h2>Преимущества @PostConstruct</h2>
    <ul>
        <li>
            <span class="highlight">Удобство:</span> Позволяет выполнить настройку бина после внедрения зависимостей, но до его использования.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Метод может содержать любую логику инициализации, например, загрузку данных, проверку состояния или настройку внутренних полей.
        </li>
        <li>
            <span class="highlight">Стандартизация:</span> Аннотация является частью стандарта Java, что обеспечивает совместимость с другими фреймворками.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Зависимость от контейнера:</span> Метод, аннотированный <code>@PostConstruct</code>, управляется Spring, что может усложнить тестирование вне контейнера.
        </li>
        <li>
            <span class="highlight">Однократный вызов:</span> Метод вызывается только один раз, что может быть ограничением в некоторых сценариях.
        </li>
    </ul>

    <h2>Пример использования в реальных приложениях</h2>
    <p>
        В реальных приложениях <code>@PostConstruct</code> часто используется для:
    </p>
    <ul>
        <li>Инициализации кэшей.</li>
        <li>Загрузки начальных данных в базу данных.</li>
        <li>Проверки конфигурации или состояния приложения.</li>
        <li>Настройки внутренних полей бина на основе внедрённых зависимостей.</li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2cc577ca-d1f5-4a36-8ab3-4db383416345', 'Что такое "Mutex Lock" и как он реализован в java?', e'<!DOCTYPE html><html lang="ru"> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <title>Mutex Lock</title> <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style> </head> <body> <h1>Mutex Lock</h1> <p> <span class="highlight">Mutex Lock</span> (взаимное исключение) — это механизм синхронизации, который используется для обеспечения того, что только один поток может выполнять определённый участок кода или доступ к определённому ресурсу в один момент времени. Это предотвращает состояние гонки (race condition) и обеспечивает безопасность данных. </p>
Copy
<h2>Для чего нужен Mutex Lock?</h2>
<ul>
    <li>
        <span class="highlight">Синхронизация потоков:</span> Mutex Lock гарантирует, что только один поток может выполнять критическую секцию кода, что предотвращает одновременное изменение общих данных несколькими потоками.
    </li>
    <li>
        <span class="highlight">Безопасность данных:</span> Он обеспечивает целостность данных, предотвращая их повреждение из-за одновременного доступа нескольких потоков.
    </li>
</ul>

<div class="note">
    <p>
        <span class="highlight">Важно:</span> Mutex Lock должен использоваться с осторожностью, так как неправильное его применение может привести к взаимоблокировкам (deadlocks), когда потоки блокируют друг друга, ожидая освобождения ресурсов.
    </p>
</div>

<h2>Как реализован Mutex Lock в Java?</h2>
<p>
    В Java Mutex Lock реализуется с использованием классов из пакета <code>java.util.concurrent.locks</code>, таких как <code>ReentrantLock</code>. Этот класс предоставляет более гибкий механизм блокировки по сравнению с синхронизированными методами и блоками.
</p>

<h3>Пример использования ReentrantLock:</h3>
<pre><code>
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class MutexExample {
private final Lock lock = new ReentrantLock();

Copy
public void criticalSection() {
    lock.lock();  // Блокировка
    try {
        // Критическая секция кода
        System.out.println("Критическая секция выполняется потоком: " + Thread.currentThread().getName());
    } finally {
        lock.unlock();  // Разблокировка
    }
}

public static void main(String[] args) {
    MutexExample example = new MutexExample();

    Runnable task = () -> {
        example.criticalSection();
    };

    Thread thread1 = new Thread(task);
    Thread thread2 = new Thread(task);

    thread1.start();
    thread2.start();
}
}
</code></pre>

Copy
<p>
    В этом примере <code>ReentrantLock</code> используется для защиты критической секции кода. Метод <code>lock()</code> блокирует доступ к критической секции для других потоков, а метод <code>unlock()</code> освобождает блокировку после выполнения кода.
</p>

<h2>Преимущества использования ReentrantLock</h2>
<ul>
    <li>
        <span class="highlight">Гибкость:</span> <code>ReentrantLock</code> позволяет более гибко управлять блокировками, например, поддерживает попытки захвата блокировки с таймаутом.
    </li>
    <li>
        <span class="highlight">Поддержка повторного входа:</span> Поток может повторно захватывать блокировку, если он уже владеет ею, что предотвращает взаимоблокировки в рекурсивных вызовах.
    </li>
</ul>

<div class="note">
    <p>
        <span class="highlight">Важно:</span> Всегда используйте блок <code>try-finally</code> для гарантии того, что блокировка будет освобождена даже в случае возникновения исключения.
    </p>
</div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d6b81c1e-322c-40fa-9576-0ee9fe63af19', 'Как вы разрешаете конфликты при слиянии веток в Git?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разрешение конфликтов при слиянии веток в Git</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Разрешение конфликтов при слиянии веток в Git</h1>
    <p>
        Конфликты при слиянии веток в Git возникают, когда изменения в одной ветке противоречат изменениям
        в другой. Git не может автоматически разрешить такие конфликты, и требуется ручное вмешательство.
        Давайте разберёмся, как правильно разрешать конфликты при слиянии.
    </p>

    <h2>Как возникают конфликты?</h2>
    <p>
        Конфликты возникают, когда:
    </p>
    <ul>
        <li>Один и тот же файл был изменён в обеих ветках.</li>
        <li>Изменения в одной ветке противоречат изменениям в другой.</li>
    </ul>
    <p>
        Git помечает такие файлы как конфликтующие и останавливает процесс слияния до тех пор, пока
        конфликт не будет разрешён.
    </p>

    <h2>Шаги для разрешения конфликтов</h2>
    <ol>
        <li>
            <span class="highlight">Инициируйте слияние:</span>
            <p>
                Попробуйте выполнить слияние веток с помощью команды <code>git merge</code>.
            </p>
            <pre><code>
git checkout main
git merge feature-branch
            </code></pre>
        </li>
        <li>
            <span class="highlight">Проверьте конфликтующие файлы:</span>
            <p>
                Если конфликт возникает, Git сообщит об этом и отметит конфликтующие файлы. Используйте
                команду <code>git status</code>, чтобы увидеть список таких файлов.
            </p>
            <pre><code>
git status
            </code></pre>
        </li>
        <li>
            <span class="highlight">Откройте конфликтующие файлы:</span>
            <p>
                Откройте файлы, в которых возник конфликт. Git помечает конфликтующие участки следующим
                образом:
            </p>
            <pre><code>
<<<<<<< HEAD
// Изменения из текущей ветки (например, main)
=======
// Изменения из ветки, которую вы сливаете (например, feature-branch)
>>>>>>> feature-branch
            </code></pre>
        </li>
        <li>
            <span class="highlight">Разрешите конфликт:</span>
            <p>
                Вручную отредактируйте файл, чтобы устранить конфликт. Удалите маркеры конфликта
                (<code><<<<<<</code>, <code>=======</code>, <code>>>>>>></code>) и оставьте нужные изменения.
            </p>
            <pre><code>
// Пример разрешённого конфликта
final String message = "Объединённые изменения из main и feature-branch";
            </code></pre>
        </li>
        <li>
            <span class="highlight">Добавьте разрешённые файлы в область подготовки:</span>
            <p>
                После разрешения конфликта добавьте файлы в область подготовки с помощью команды
                <code>git add</code>.
            </p>
            <pre><code>
git add conflicted-file.txt
            </code></pre>
        </li>
        <li>
            <span class="highlight">Завершите слияние:</span>
            <p>
                Зафиксируйте слияние с помощью команды <code>git commit</code>. Git создаст коммит слияния,
                если конфликты были успешно разрешены.
            </p>
            <pre><code>
git commit
            </code></pre>
        </li>
    </ol>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если вы хотите отменить слияние из-за конфликтов, используйте команду
            <code>git merge --abort</code>. Это вернёт ветку в состояние до начала слияния.
        </p>
    </div>

    <h2>Использование инструментов для разрешения конфликтов</h2>
    <p>
        Для упрощения разрешения конфликтов можно использовать графические инструменты, такие как:
    </p>
    <ul>
        <li><span class="highlight">GitKraken</span></li>
        <li><span class="highlight">SourceTree</span></li>
        <li><span class="highlight">VS Code (встроенный инструмент для разрешения конфликтов)</span></li>
    </ul>
    <p>
        Эти инструменты предоставляют удобный интерфейс для просмотра и разрешения конфликтов.
    </p>

    <h2>Пример рабочего процесса</h2>
    <pre><code>
# 1. Переключение на основную ветку
git checkout main

# 2. Попытка слияния с feature-branch
git merge feature-branch

# 3. Проверка конфликтующих файлов
git status

# 4. Открытие и редактирование конфликтующих файлов
# (например, в VS Code или другом редакторе)

# 5. Добавление разрешённых файлов в область подготовки
git add conflicted-file.txt

# 6. Завершение слияния
git commit -m "Разрешён конфликт при слиянии feature-branch в main"
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Разрешение конфликтов при слиянии веток — это важная часть работы с Git. Понимание того, как
        возникают конфликты и как их разрешать, позволяет эффективно управлять изменениями в проекте.
        Используйте команды <code>git status</code>, <code>git add</code> и <code>git commit</code> для ручного разрешения
        конфликтов или графические инструменты для упрощения процесса.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f3147d85-fc90-4782-92c2-8b53c92b0f4f', 'Расскажите про паттерн «Итератор» (Iterator)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн «Итератор» (Iterator)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерн «Итератор» (Iterator)</h1>
    <p>
        <span class="highlight">Iterator</span> — это поведенческий паттерн проектирования, который даёт возможность последовательно обходить элементы составных объектов, не раскрывая их внутреннего представления.
    </p>

    <h2>Как работает Iterator?</h2>
    <ul>
        <li>
            Идея паттерна заключается в том, чтобы вынести поведение обхода коллекции из самой коллекции в отдельный класс — итератор.
        </li>
        <li>
            Создаётся интерфейс, который возвращает итератор. В классе, который нужно обходить, имплементируется этот интерфейс, а сам итератор реализуется как нестатический вложенный класс, так как он больше нигде не используется.
        </li>
    </ul>

    <h2>Плюсы и минусы Iterator</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Упрощает классы коллекций, вынося логику обхода в отдельный класс.</li>
                <li>Позволяет реализовать различные способы обхода одной и той же коллекции.</li>
                <li>Скрывает внутреннюю структуру коллекции от клиента.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минусы:</span>
            <ul>
                <li>Может быть избыточным для простых коллекций, где обход можно реализовать напрямую.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн «Итератор» полезен, когда нужно предоставить унифицированный способ обхода различных структур данных, таких как списки, деревья или графы, без раскрытия их внутренней реализации.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5207503a-8715-43ff-9489-7c523c9ff7e5', 'Какая разница между git reset / git revert?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между git reset и git revert</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Разница между git reset и git revert</h1>
    <p>
        В Git <span class="highlight">reset</span> и <span class="highlight">revert</span> — это две команды, которые используются для отмены изменений.
        Однако они работают по-разному и имеют разные последствия для истории коммитов. Давайте разберёмся,
        в чём их основные отличия.
    </p>

    <h2>git reset</h2>
    <p>
        <span class="highlight">git reset</span> — это команда, которая перемещает указатель текущей ветки на определённый коммит,
        удаляя все последующие коммиты. Это мощная команда, которая может изменить историю коммитов.
    </p>
    <ul>
        <li>
            <span class="highlight">Как работает:</span>
            <p>
                <code>git reset</code> перемещает указатель ветки на указанный коммит, а также может изменить
                индекс (staging area) и рабочую директорию в зависимости от используемого режима:
                <ul>
                    <li><code>--soft</code>: Изменяет только указатель ветки, не затрагивая индекс и рабочую директорию.</li>
                    <li><code>--mixed</code> (по умолчанию): Изменяет указатель ветки и индекс, но не рабочую директорию.</li>
                    <li><code>--hard</code>: Изменяет указатель ветки, индекс и рабочую директорию, удаляя все изменения.</li>
                </ul>
            </p>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Позволяет полностью удалить коммиты из истории.</li>
                <li>Гибкость в управлении состоянием репозитория.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Изменяет историю коммитов, что может вызвать проблемы при работе с удалёнными репозиториями.</li>
                <li>Может привести к потере данных, особенно при использовании <code>--hard</code>.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
# Пример использования git reset
git reset --hard HEAD~1  # Удаляет последний коммит и все изменения
    </code></pre>

    <h2>git revert</h2>
    <p>
        <span class="highlight">git revert</span> — это команда, которая создаёт новый коммит, отменяющий изменения, внесённые
        указанным коммитом. В отличие от <code>git reset</code>, <code>git revert</code> не изменяет историю коммитов.
    </p>
    <ul>
        <li>
            <span class="highlight">Как работает:</span>
            <p>
                <code>git revert</code> создаёт новый коммит, который отменяет изменения, внесённые указанным коммитом.
                Это безопасный способ отмены изменений, так как история коммитов остаётся неизменной.
            </p>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Не изменяет историю коммитов, что делает её безопасной для использования в публичных ветках.</li>
                <li>Позволяет отменить конкретные изменения, не затрагивая другие коммиты.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Создаёт дополнительные коммиты в истории, что может сделать её более сложной.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
# Пример использования git revert
git revert HEAD  # Создаёт коммит, отменяющий последний коммит
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>git reset</code> изменяет историю коммитов, поэтому его не следует
            использовать для веток, которые уже были отправлены в удалённый репозиторий, если только
            вы не уверены в своих действиях. <code>git revert</code> безопасен для использования в любых
            ситуациях, так как не изменяет историю.
        </p>
    </div>

    <h2>Сравнение git reset и git revert</h2>
    <table>
        <thead>
            <tr>
                <th>Критерий</th>
                <th>git reset</th>
                <th>git revert</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Изменение истории</td>
                <td>Изменяет историю коммитов.</td>
                <td>Не изменяет историю коммитов.</td>
            </tr>
            <tr>
                <td>Безопасность</td>
                <td>Может вызвать проблемы с удалёнными репозиториями.</td>
                <td>Безопасен для использования в публичных ветках.</td>
            </tr>
            <tr>
                <td>Создание нового коммита</td>
                <td>Не создаёт новый коммит.</td>
                <td>Создаёт новый коммит, отменяющий изменения.</td>
            </tr>
            <tr>
                <td>Использование</td>
                <td>Подходит для локальных веток.</td>
                <td>Подходит для любых веток, включая публичные.</td>
            </tr>
            <tr>
                <td>Потеря данных</td>
                <td>Может привести к потере данных (особенно с <code>--hard</code>).</td>
                <td>Не приводит к потере данных.</td>
            </tr>
        </tbody>
    </table>

    <h2>Когда использовать git reset и git revert?</h2>
    <ul>
        <li>
            <span class="highlight">Используйте git reset:</span>
            <ul>
                <li>Для локальных веток, когда нужно удалить коммиты из истории.</li>
                <li>Когда нужно изменить состояние рабочей директории или индекса.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Используйте git revert:</span>
            <ul>
                <li>Для отмены изменений в публичных ветках.</li>
                <li>Когда нужно отменить конкретные изменения, не изменяя историю коммитов.</li>
            </ul>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        <code>git reset</code> и <code>git revert</code> — это две мощные команды для отмены изменений в Git. <code>git reset</code>
        изменяет историю коммитов и подходит для локальных веток, в то время как <code>git revert</code>
        создаёт новый коммит для отмены изменений и безопасен для использования в любых ветках. Выбор
        между ними зависит от конкретной задачи и контекста использования.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('588b8088-d9a3-4399-b1a8-1d15418dafa5', 'Расскажи про первичный ключ(Primary Key)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Первичный ключ (Primary Key)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Первичный ключ (Primary Key)</h1>
    <p>
        <span class="highlight">Первичный ключ (Primary Key)</span> — это один из основных концептов в реляционных базах данных.
        Он используется для уникальной идентификации каждой записи в таблице. Первичный ключ гарантирует, что
        каждая строка в таблице уникальна, и позволяет быстро находить и ссылаться на конкретные записи.
    </p>

    <h2>Основные характеристики первичного ключа</h2>
    <ul>
        <li>
            <span class="highlight">Уникальность:</span>
            <p>
                Каждое значение первичного ключа должно быть уникальным в пределах таблицы. Это означает, что
                две строки не могут иметь одинаковое значение первичного ключа.
            </p>
        </li>
        <li>
            <span class="highlight">Неизменяемость:</span>
            <p>
                Значение первичного ключа не должно изменяться после создания записи. Это обеспечивает
                стабильность ссылок на запись.
            </p>
        </li>
        <li>
            <span class="highlight">Отсутствие NULL:</span>
            <p>
                Первичный ключ не может содержать значение <code>NULL</code>. Каждая запись должна иметь
                уникальное значение первичного ключа.
            </p>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Первичный ключ может состоять из одного или нескольких столбцов.
            Если используется несколько столбцов, это называется <span class="highlight">составным первичным ключом (Composite Key)</span>.
        </p>
    </div>

    <h2>Типы первичных ключей</h2>
    <ul>
        <li>
            <span class="highlight">Естественный ключ (Natural Key):</span>
            <p>
                Естественный ключ — это столбец или набор столбцов, которые уже существуют в данных и
                уникально идентифицируют запись. Например, номер паспорта или email пользователя.
            </p>
        </li>
        <li>
            <span class="highlight">Суррогатный ключ (Surrogate Key):</span>
            <p>
                Суррогатный ключ — это искусственно созданный ключ, который не имеет смысла вне базы данных.
                Обычно это числовой идентификатор, который автоматически генерируется при добавлении записи.
                Например, автоинкрементное поле <code>id</code>.
            </p>
        </li>
    </ul>

    <h2>Примеры использования первичного ключа</h2>
    <pre><code>
-- Пример создания таблицы с первичным ключом в SQL
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Суррогатный ключ
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- Пример составного первичного ключа
CREATE TABLE orders (
    user_id INT,
    order_id INT,
    order_date DATE,
    PRIMARY KEY (user_id, order_id) -- Составной ключ
);
    </code></pre>
    <p>
        В первом примере используется суррогатный ключ <code>id</code>, который автоматически увеличивается
        при добавлении новой записи. Во втором примере используется составной ключ, состоящий из
        <code>user_id</code> и <code>order_id</code>.
    </p>

    <h2>Преимущества использования первичного ключа</h2>
    <ul>
        <li>
            <span class="highlight">Уникальная идентификация:</span>
            <p>
                Первичный ключ позволяет однозначно идентифицировать каждую запись в таблице.
            </p>
        </li>
        <li>
            <span class="highlight">Индексирование:</span>
            <p>
                Первичный ключ автоматически создаёт индекс, что ускоряет поиск и сортировку данных.
            </p>
        </li>
        <li>
            <span class="highlight">Целостность данных:</span>
            <p>
                Первичный ключ предотвращает дублирование записей и обеспечивает целостность данных.
            </p>
        </li>
    </ul>

    <h2>Недостатки неправильного использования первичного ключа</h2>
    <ul>
        <li>
            <span class="highlight">Сложность с естественными ключами:</span>
            <p>
                Естественные ключи могут изменяться со временем, что нарушает принцип неизменяемости.
            </p>
        </li>
        <li>
            <span class="highlight">Ограничения на составные ключи:</span>
            <p>
                Составные ключи могут усложнить запросы и увеличить время выполнения операций.
            </p>
        </li>
    </ul>

    <h2>Первичный ключ в ORM (на примере JPA)</h2>
    <pre><code>
// Пример сущности с первичным ключом в JPA
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // Первичный ключ

    @Column(name = "username")
    private String username;

    @Column(name = "email")
    private String email;

    // Геттеры и сеттеры
}
    </code></pre>
    <p>
        В этом примере поле <code>id</code> является первичным ключом и автоматически генерируется при
        добавлении новой записи.
    </p>

    <h2>Заключение</h2>
    <p>
        Первичный ключ — это важный элемент проектирования реляционных баз данных. Он обеспечивает
        уникальность, целостность и быстрый доступ к данным. Выбор между естественным и суррогатным
        ключом зависит от конкретных требований проекта, но в большинстве случаев суррогатные ключи
        являются более предпочтительными из-за их простоты и надёжности.
    </p>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4fe3a839-d577-412b-9ef6-8f6ed477e55d', 'Расскажите про жизненный цикл бина, аннотации @PostConstruct и  @PreDestroy()', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Жизненный цикл бина и аннотации @PostConstruct, @PreDestroy</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Жизненный цикл бина и аннотации @PostConstruct, @PreDestroy</h1>
    <p>
        Жизненный цикл бина в Spring Framework включает несколько этапов: от парсинга конфигурации до уничтожения бина. Аннотации <code>@PostConstruct</code> и <code>@PreDestroy</code> позволяют управлять поведением бина на этапах инициализации и уничтожения.
    </p>

    <h2>Этапы жизненного цикла бина</h2>
    <ol>
        <li>
            <span class="highlight">Парсирование конфигурации и создание BeanDefinition:</span>
            <ul>
                <li>XML-конфигурация: <code>ClassPathXmlApplicationContext("context.xml")</code>.</li>
                <li>Конфигурация через аннотации с указанием пакета: <code>AnnotationConfigApplicationContext("package.name")</code>.</li>
                <li>Конфигурация через аннотации с указанием класса: <code>AnnotationConfigApplicationContext(JavaConfig.class)</code> (JavaConfig).</li>
                <li>Groovy-конфигурация: <code>GenericGroovyApplicationContext("context.groovy")</code>.</li>
            </ul>
            <p>
                <code>BeanDefinition</code> – это объект, хранящий метаданные о бине, такие как класс, scope, ленивая инициализация, зависимости и методы init/destroy.
            </p>
        </li>
        <li>
            <span class="highlight">Настройка созданных BeanDefinition:</span>
            <p>
                Интерфейс <code>BeanFactoryPostProcessor</code> позволяет изменять <code>BeanDefinition</code> до создания бинов. Пример: <code>PropertySourcesPlaceholderConfigurer</code> для подстановки значений из property-файлов.
            </p>
        </li>
        <li>
            <span class="highlight">Создание кастомных FactoryBean:</span>
            <p>
                Интерфейс <code>FactoryBean</code> позволяет делегировать создание бинов определённого типа. Пример:
            </p>
            <pre><code>public class ColorFactory implements FactoryBean&lt;Color&gt; {
    @Override
    public Color getObject() throws Exception {
        Random random = new Random();
        return new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255));
    }

    @Override
    public Class&lt;?&gt; getObjectType() {
        return Color.class;
    }

    @Override
    public boolean isSingleton() {
        return false;
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">Создание экземпляров бинов:</span>
            <p>
                <code>BeanFactory</code> создаёт экземпляры бинов на основе <code>BeanDefinition</code>. Сначала создаются инфраструктурные бины (например, <code>BeanPostProcessor</code>), затем обычные бины.
            </p>
        </li>
        <li>
            <span class="highlight">Настройка созданных бинов:</span>
            <p>
                Интерфейс <code>BeanPostProcessor</code> позволяет настраивать бины до и после их инициализации. Примеры:
            </p>
            <ul>
                <li><code>postProcessBeforeInitialization</code>: Вызывается до init-метода.</li>
                <li><code>postProcessAfterInitialization</code>: Вызывается после init-метода (например, для создания прокси).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Бины созданы:</span>
            <p>
                Бины доступны через <code>ApplicationContext.getBean()</code>.
            </p>
        </li>
        <li>
            <span class="highlight">Закрытие контекста:</span>
            <p>
                При закрытии контекста (<code>close()</code>) вызываются методы, аннотированные <code>@PreDestroy</code>, и методы, указанные в <code>destroyMethod</code> аннотации <code>@Bean</code>.
            </p>
        </li>
    </ol>

    <h2>Аннотации @PostConstruct и @PreDestroy</h2>
    <p>
        Аннотации <code>@PostConstruct</code> и <code>@PreDestroy</code> используются для управления жизненным циклом бина:
    </p>
    <ul>
        <li>
            <span class="highlight">@PostConstruct:</span> Метод, аннотированный <code>@PostConstruct</code>, вызывается после создания бина и внедрения зависимостей, но до того, как бин будет готов к использованию.
            <pre><code>@PostConstruct
public void init() {
    // Логика инициализации
}</code></pre>
        </li>
        <li>
            <span class="highlight">@PreDestroy:</span> Метод, аннотированный <code>@PreDestroy</code>, вызывается перед уничтожением бина.
            <pre><code>@PreDestroy
public void destroy() {
    // Логика очистки
}</code></pre>
        </li>
    </ul>

    <h2>Хронология событий при инициализации бина</h2>
    <ol>
        <li>Вызов <code>postProcessBeforeInitialization()</code> всех <code>BeanPostProcessor</code>.</li>
        <li>Вызов метода, аннотированного <code>@PostConstruct</code>.</li>
        <li>Вызов метода <code>afterPropertiesSet()</code> (если бин реализует <code>InitializingBean</code>).</li>
        <li>Вызов метода, указанного в <code>initMethod</code> аннотации <code>@Bean</code>.</li>
        <li>Вызов <code>postProcessAfterInitialization()</code> всех <code>BeanPostProcessor</code> (создание прокси).</li>
    </ol>

    <h2>Пример использования</h2>
    <pre><code>@Component
public class MyBean {

    @PostConstruct
    public void init() {
        System.out.println("Бин инициализирован");
    }

    @PreDestroy
    public void destroy() {
        System.out.println("Бин уничтожен");
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотации <code>@PostConstruct</code> и <code>@PreDestroy</code> являются частью стандарта JSR-250 и могут использоваться не только в Spring.
        </p>
    </div>

    <h2>Преимущества</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет управлять инициализацией и уничтожением бинов.
        </li>
        <li>
            <span class="highlight">Стандартизация:</span> Аннотации являются частью стандарта Java, что обеспечивает совместимость.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Зависимость от контейнера:</span> Методы, аннотированные <code>@PostConstruct</code> и <code>@PreDestroy</code>, управляются Spring, что может усложнить тестирование вне контейнера.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f673e32b-8a71-4b5d-9db0-0ef8e37fba07', 'Как влияет операция refresh на Entity-объекты каждого из четырех  статусов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Влияние операции refresh на Entity-объекты</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Влияние операции refresh на Entity-объекты</h1>
    <p>
        Операция <code>refresh()</code> в JPA (Java Persistence API) по-разному влияет на Entity-объекты в зависимости от их
        текущего состояния (статуса). Ниже описано, как эта операция взаимодействует с каждым из четырёх статусов.
    </p>

    <h2>Влияние на каждый статус</h2>
    <ul>
        <li>
            <span class="highlight">Managed:</span>
            <ul>
                <li>Все изменения в объекте будут восстановлены из базы данных.</li>
                <li>Также произойдёт обновление (<code>refresh</code>) всех каскаднозависимых объектов, если они
                    помечены соответствующими аннотациями (например, <code>CascadeType.REFRESH</code>).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">New (Transient), Removed, Detached:</span>
            <ul>
                <li>Вызов <code>refresh()</code> для объектов в этих состояниях приведёт к исключению
                    (<code>IllegalArgumentException</code>).</li>
                <li>Операция <code>refresh()</code> применима только к объектам, управляемым контекстом
                    персистентности.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>refresh()</code> только для объектов в состоянии <code>Managed</code>.</li>
                <li>Операция <code>refresh()</code> полезна для синхронизации данных с базой данных, особенно
                    в многопользовательских приложениях, где данные могут изменяться параллельно.</li>
                <li>Для объектов в состояниях <code>New</code>, <code>Removed</code> или <code>Detached</code> операция
                    <code>refresh()</code> недопустима.</li>
            </ul>
        </p>
    </div>

    <h2>Примеры</h2>
    <pre><code>
EntityManager em = ...;

// Managed → Обновление данных из БД
MyEntity managedEntity = em.find(MyEntity.class, 1L);
em.refresh(managedEntity); // Данные объекта обновляются из БД

// New (Transient) → Исключение
MyEntity newEntity = new MyEntity();
em.refresh(newEntity); // Исключение!

// Detached → Исключение
MyEntity detachedEntity = em.find(MyEntity.class, 2L);
em.detach(detachedEntity);
em.refresh(detachedEntity); // Исключение!

// Removed → Исключение
MyEntity removedEntity = em.find(MyEntity.class, 3L);
em.remove(removedEntity);
em.refresh(removedEntity); // Исключение!
    </code></pre>
    <p>
        В этом примере показано, как операция <code>refresh()</code> влияет на объекты в разных состояниях.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ba249952-3a51-4376-ab07-31e89bc585bd', 'Что такое АОП? Как реализовано в спринге?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аспектно-ориентированное программирование (АОП) в Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аспектно-ориентированное программирование (АОП) в Spring</h1>
    <p>
        <strong>Аспектно-ориентированное программирование (АОП)</strong> — это парадигма программирования, которая позволяет повысить модульность приложения за счёт разделения сквозной функциональности (cross-cutting concerns). АОП предоставляет возможность добавлять дополнительное поведение к существующему коду без его изменения.
    </p>

    <h2>Основные концепции АОП</h2>
    <ul>
        <li>
            <span class="highlight">Аспект (Aspect):</span> Модуль или класс, который реализует сквозную функциональность. Аспект объединяет точки среза (pointcuts) и советы (advice).
        </li>
        <li>
            <span class="highlight">Совет (Advice):</span> Дополнительная логика, которая должна быть выполнена в определённых точках программы. Советы могут выполняться до, после или вокруг точки соединения.
        </li>
        <li>
            <span class="highlight">Точка соединения (Join Point):</span> Точка в выполняемой программе, где может быть применён совет. Например, вызов метода, создание объекта или обращение к переменной.
        </li>
        <li>
            <span class="highlight">Срез (Pointcut):</span> Набор точек соединения, где должен быть применён совет. Срез определяет, где именно будет выполняться дополнительная логика.
        </li>
    </ul>

    <h2>Как реализовано АОП в Spring?</h2>
    <p>
        В Spring АОП реализовано с использованием динамических прокси. Spring создаёт прокси-объекты для целевых объектов и "привязывает" к ним советы для выполнения сквозной логики. Есть два способа создания прокси:
    </p>
    <ul>
        <li>
            <span class="highlight">CGLIB:</span> Прокси создаётся путём наследования от оригинального класса и переопределения его методов.
        </li>
        <li>
            <span class="highlight">Dynamic Proxy (JDK):</span> Прокси создаётся путём реализации тех же интерфейсов, что и оригинальный класс.
        </li>
    </ul>

    <h3>Пример использования АОП в Spring:</h3>
    <pre><code>@Aspect
@Component
public class LoggingAspect {

    @Before("execution(* com.example.service.*.*(..))")
    public void logBefore(JoinPoint joinPoint) {
        System.out.println("Метод " + joinPoint.getSignature().getName() + " вызван");
    }

    @AfterReturning(pointcut = "execution(* com.example.service.*.*(..))", returning = "result")
    public void logAfterReturning(JoinPoint joinPoint, Object result) {
        System.out.println("Метод " + joinPoint.getSignature().getName() + " завершён с результатом: " + result);
    }
}</code></pre>

    <h2>Типы советов (Advice) в Spring</h2>
    <ul>
        <li>
            <span class="highlight">@Before:</span> Совет выполняется до вызова метода.
        </li>
        <li>
            <span class="highlight">@After:</span> Совет выполняется после завершения метода (независимо от результата).
        </li>
        <li>
            <span class="highlight">@AfterReturning:</span> Совет выполняется после успешного завершения метода.
        </li>
        <li>
            <span class="highlight">@AfterThrowing:</span> Совет выполняется, если метод завершился с исключением.
        </li>
        <li>
            <span class="highlight">@Around:</span> Совет выполняется до и после вызова метода, позволяя контролировать выполнение метода.
        </li>
    </ul>

    <h3>Пример использования @Around:</h3>
    <pre><code>@Aspect
@Component
public class TransactionAspect {

    @Around("execution(* com.example.service.*.*(..))")
    public Object manageTransaction(ProceedingJoinPoint joinPoint) throws Throwable {
        System.out.println("Начало транзакции");
        Object result = joinPoint.proceed(); // Выполнение целевого метода
        System.out.println("Завершение транзакции");
        return result;
    }
}</code></pre>

    <h2>Преимущества АОП в Spring</h2>
    <ul>
        <li>
            <span class="highlight">Модульность:</span> Сквозная функциональность (например, логирование, транзакции) выносится в отдельные модули.
        </li>
        <li>
            <span class="highlight">Упрощение кода:</span> Основной код приложения остаётся чистым и не перегруженным дополнительной логикой.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Возможность легко добавлять или изменять сквозную функциональность без изменения основного кода.
        </li>
    </ul>

    <h2>Ограничения АОП</h2>
    <ul>
        <li>
            <span class="highlight">Сложность отладки:</span> Из-за динамического добавления поведения может быть сложно отследить выполнение кода.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Создание прокси и выполнение дополнительной логики может повлиять на производительность.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> АОП в Spring предоставляет мощный механизм для реализации сквозной функциональности, что делает код более модульным и поддерживаемым. Однако его следует использовать с осторожностью, чтобы избежать излишней сложности.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('36c818e1-26d6-4871-9473-4d26c8bfe5e3', 'Расскажите про аннотации @Service и @Repository. Чем они отличаются?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотации @Service и @Repository в Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотации @Service и @Repository в Spring</h1>
    <p>
        Аннотации <code>@Service</code> и <code>@Repository</code> являются специализированными версиями аннотации
        <code>@Component</code> и используются для обозначения классов, выполняющих определённые роли в приложении.
        Они помогают структурировать код и предоставляют дополнительные возможности.
    </p>

    <h2>Аннотация @Repository</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li>Используется для классов, которые работают с поиском, получением и хранением данных.</li>
                <li>Подходит для реализации шаблона DAO (Data Access Object).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Автоматически перехватывает исключения, связанные с персистентностью (например,
                    <code>SQLException</code>), и пробрасывает их как непроверенные исключения Spring Framework.</li>
                <li>Для работы этой функции в контексте должен быть зарегистрирован
                    <code>PersistenceExceptionTranslationPostProcessor</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
@Repository
public class UserRepository {
    public void save(User user) {
        // Логика сохранения пользователя
    }
}
            </code></pre>
        </li>
    </ul>

    <h2>Аннотация @Service</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li>Используется для классов, которые реализуют бизнес-логику приложения.</li>
                <li>Подходит для сервисного слоя приложения.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Не предоставляет дополнительных функций, кроме обозначения роли класса.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
@Service
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void saveUser(User user) {
        userRepository.save(user);
    }
}
            </code></pre>
        </li>
    </ul>

    <h2>Основные отличия</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>@Repository</th>
                <th>@Service</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Назначение</td>
                <td>Классы для работы с данными (DAO).</td>
                <td>Классы для реализации бизнес-логики.</td>
            </tr>
            <tr>
                <td>Особенности</td>
                <td>Перехватывает исключения персистентности и пробрасывает их как исключения Spring.</td>
                <td>Не предоставляет дополнительных функций, кроме обозначения роли класса.</td>
            </tr>
        </tbody>
    </table>

    <h2>Пример совместного использования</h2>
    <pre><code>
@Repository
public class UserRepository {
    public void save(User user) {
        // Логика сохранения пользователя
    }
}

@Service
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void saveUser(User user) {
        userRepository.save(user);
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Класс <code>UserRepository</code> помечен аннотацией <code>@Repository</code> и отвечает за работу с данными.</li>
            <li>Класс <code>UserService</code> помечен аннотацией <code>@Service</code> и реализует бизнес-логику.</li>
            <li>Зависимость <code>UserRepository</code> внедряется в <code>UserService</code> через конструктор.</li>
        </ul>
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>@Repository</code> для классов, работающих с данными.</li>
                <li>Используйте <code>@Service</code> для классов, реализующих бизнес-логику.</li>
                <li>Обе аннотации являются специализированными версиями <code>@Component</code> и помогают структурировать
                    код.</li>
            </ul>
        </p>
    </div>

    <h2>Регистрация PersistenceExceptionTranslationPostProcessor</h2>
    <p>
        Для того чтобы <code>@Repository</code> корректно перехватывал исключения персистентности, в контексте Spring
        должен быть зарегистрирован <code>PersistenceExceptionTranslationPostProcessor</code>.
    </p>
    <pre><code>
@Configuration
public class AppConfig {

    @Bean
    public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
        return new PersistenceExceptionTranslationPostProcessor();
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Создаётся бин <code>PersistenceExceptionTranslationPostProcessor</code>, который обеспечивает
                перехват исключений персистентности.</li>
        </ul>
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ffef0512-c415-41a1-a188-caa153ee0b67', 'Что такое DispatcherServlet и как он работает в Spring MVC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DispatcherServlet в Spring MVC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>DispatcherServlet в Spring MVC</h1>
    <p>
        <span class="highlight">DispatcherServlet</span> — это центральный компонент Spring MVC, который играет роль фронт-контроллера (Front Controller). Он отвечает за обработку всех входящих HTTP-запросов, их маршрутизацию и управление жизненным циклом запроса в Spring-приложении.
    </p>

    <h2>Роль DispatcherServlet в Spring MVC</h2>
    <ul>
        <li>
            <span class="highlight">Централизованная обработка запросов:</span> DispatcherServlet принимает все входящие запросы и делегирует их обработку соответствующим контроллерам.
        </li>
        <li>
            <span class="highlight">Маршрутизация:</span> Определяет, какой контроллер и метод должны обработать запрос на основе URL и других параметров.
        </li>
        <li>
            <span class="highlight">Управление жизненным циклом запроса:</span> Обеспечивает выполнение всех этапов обработки запроса, включая вызов контроллеров, обработку исключений и формирование ответа.
        </li>
        <li>
            <span class="highlight">Интеграция с другими компонентами:</span> Взаимодействует с такими компонентами, как HandlerMapping, HandlerAdapter, ViewResolver и другими.
        </li>
    </ul>

    <h2>Как работает DispatcherServlet?</h2>
    <p>
        DispatcherServlet обрабатывает запросы в несколько этапов:
    </p>
    <ol>
        <li>
            <span class="highlight">Получение запроса:</span> DispatcherServlet получает HTTP-запрос от клиента.
        </li>
        <li>
            <span class="highlight">Определение контроллера:</span> Используя <code>HandlerMapping</code>, DispatcherServlet определяет, какой контроллер должен обработать запрос.
        </li>
        <li>
            <span class="highlight">Вызов контроллера:</span> DispatcherServlet передаёт запрос в соответствующий контроллер через <code>HandlerAdapter</code>.
        </li>
        <li>
            <span class="highlight">Обработка запроса:</span> Контроллер выполняет бизнес-логику и возвращает результат (например, имя представления или данные).
        </li>
        <li>
            <span class="highlight">Определение представления:</span> Используя <code>ViewResolver</code>, DispatcherServlet определяет, какое представление (View) должно быть использовано для отображения результата.
        </li>
        <li>
            <span class="highlight">Формирование ответа:</span> DispatcherServlet передаёт данные в представление, которое генерирует окончательный ответ (например, HTML, JSON или XML).
        </li>
        <li>
            <span class="highlight">Отправка ответа:</span> DispatcherServlet отправляет ответ клиенту.
        </li>
    </ol>

    <h2>Пример конфигурации DispatcherServlet</h2>
    <p>
        DispatcherServlet обычно настраивается в файле <code>web.xml</code> или через Java-конфигурацию. Пример настройки в <code>web.xml</code>:
    </p>
    <pre><code>
&lt;servlet&gt;
    &lt;servlet-name&gt;dispatcher&lt;/servlet-name&gt;
    &lt;servlet-class&gt;org.springframework.web.servlet.DispatcherServlet&lt;/servlet-class&gt;
    &lt;init-param&gt;
        &lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;
        &lt;param-value&gt;/WEB-INF/spring-mvc-config.xml&lt;/param-value&gt;
    &lt;/init-param&gt;
    &lt;load-on-startup&gt;1&lt;/load-on-startup&gt;
&lt;/servlet&gt;

&lt;servlet-mapping&gt;
    &lt;servlet-name&gt;dispatcher&lt;/servlet-name&gt;
    &lt;url-pattern&gt;/&lt;/url-pattern&gt;
&lt;/servlet-mapping&gt;
    </code></pre>
    <p>
        В этом примере DispatcherServlet настраивается для обработки всех запросов (<code>/</code>) и использует конфигурационный файл <code>spring-mvc-config.xml</code>.
    </p>

    <h2>Пример Java-конфигурации DispatcherServlet</h2>
    <p>
        В Spring Boot DispatcherServlet настраивается автоматически, но можно настроить его вручную с помощью Java-конфигурации:
    </p>
    <pre><code>
public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class&lt;?&gt;[] getRootConfigClasses() {
        return new Class[] { RootConfig.class };
    }

    @Override
    protected Class&lt;?&gt;[] getServletConfigClasses() {
        return new Class[] { WebConfig.class };
    }

    @Override
    protected String[] getServletMappings() {
        return new String[] { "/" };
    }
}
    </code></pre>
    <p>
        В этом примере <code>WebAppInitializer</code> настраивает DispatcherServlet для обработки всех запросов и указывает конфигурационные классы.
    </p>

    <h2>Компоненты, взаимодействующие с DispatcherServlet</h2>
    <ul>
        <li>
            <span class="highlight">HandlerMapping:</span> Определяет, какой контроллер должен обработать запрос.
        </li>
        <li>
            <span class="highlight">HandlerAdapter:</span> Вызывает соответствующий метод контроллера.
        </li>
        <li>
            <span class="highlight">ViewResolver:</span> Определяет, какое представление использовать для отображения результата.
        </li>
        <li>
            <span class="highlight">HandlerExceptionResolver:</span> Обрабатывает исключения, возникающие в процессе выполнения запроса.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> DispatcherServlet является центральным элементом Spring MVC, и его правильная настройка обеспечивает корректную работу всего приложения.
        </p>
    </div>

    <h2>Заключение</h2>
    <p>
        DispatcherServlet — это ключевой компонент Spring MVC, который управляет обработкой HTTP-запросов, их маршрутизацией и формированием ответов. Он взаимодействует с другими компонентами, такими как HandlerMapping, HandlerAdapter и ViewResolver, чтобы обеспечить выполнение всех этапов обработки запроса. Понимание работы DispatcherServlet помогает эффективно разрабатывать и настраивать Spring-приложения.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3870324f-6561-47b2-b6a8-8572ca34a723', 'Что такое JPQL/HQL и чем он отличается от SQL?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JPQL/HQL и их отличие от SQL</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>JPQL/HQL и их отличие от SQL</h1>
    <p>
        <strong>JPQL (Java Persistence Query Language)</strong> и <strong>HQL (Hibernate Query Language)</strong> — это объектно-ориентированные
        языки запросов, которые используются для работы с сущностями в JPA и Hibernate соответственно. Они
        похожи на SQL, но работают с объектами и их атрибутами, а не с таблицами и колонками базы данных.
    </p>

    <h2>Основные особенности JPQL и HQL</h2>
    <ul>
        <li>
            <span class="highlight">Объектно-ориентированный подход:</span>
            <ul>
                <li>Вместо таблиц и колонок используются сущности (Entity) и их атрибуты.</li>
                <li>Параметры запросов соответствуют типам данных атрибутов сущностей, а не полям базы данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Полиморфизм:</span>
            <ul>
                <li>Запросы автоматически поддерживают полиморфизм. Например, запрос к сущности возвращает
                    не только объекты этого класса, но и объекты всех его подклассов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Платформонезависимость:</span>
            <ul>
                <li>JPQL и HQL абстрагируются от конкретной базы данных, что делает запросы переносимыми.</li>
            </ul>
        </li>
    </ul>

    <h2>Отличия JPQL/HQL от SQL</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>JPQL/HQL</th>
                <th>SQL</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Объект запроса</td>
                <td>Сущности (Entity) и их атрибуты.</td>
                <td>Таблицы и колонки базы данных.</td>
            </tr>
            <tr>
                <td>Полиморфизм</td>
                <td>Поддерживается автоматически.</td>
                <td>Не поддерживается.</td>
            </tr>
            <tr>
                <td>Платформонезависимость</td>
                <td>Запросы не зависят от конкретной СУБД.</td>
                <td>Запросы зависят от диалекта SQL конкретной СУБД.</td>
            </tr>
            <tr>
                <td>Типы параметров</td>
                <td>Типы данных атрибутов сущностей.</td>
                <td>Типы данных колонок таблиц.</td>
            </tr>
        </tbody>
    </table>

    <h2>Примеры запросов</h2>
    <pre><code>
// Пример JPQL-запроса
TypedQuery<User> query = entityManager.createQuery(
    "SELECT u FROM User u WHERE u.name = :name", User.class);
query.setParameter("name", "John");
List<User> users = query.getResultList();

// Пример HQL-запроса
Query<User> query = session.createQuery(
    "FROM User WHERE name = :name", User.class);
query.setParameter("name", "John");
List<User> users = query.list();
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>JPQL-запрос использует <code>EntityManager</code> для создания запроса.</li>
            <li>HQL-запрос использует <code>Session</code> для создания запроса.</li>
            <li>Оба запроса возвращают список пользователей с именем "John".</li>
        </ul>
    </p>

    <h2>Именованные запросы</h2>
    <p>
        Именованные запросы позволяют определить запрос один раз и использовать его многократно. Они могут
        быть определены в аннотациях или в XML-файлах.
    </p>
    <pre><code>
// Пример именованного запроса в аннотации
@Entity
@NamedQuery(
    name = "User.findByName",
    query = "SELECT u FROM User u WHERE u.name = :name"
)
public class User {
    // Поля и методы
}

// Использование именованного запроса
TypedQuery<User> query = entityManager.createNamedQuery("User.findByName", User.class);
query.setParameter("name", "John");
List<User> users = query.getResultList();
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Именованный запрос <code>User.findByName</code> определён в аннотации <code>@NamedQuery</code>.</li>
            <li>Запрос используется через <code>EntityManager</code>.</li>
        </ul>
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>JPQL и HQL работают с сущностями, а не с таблицами базы данных.</li>
                <li>Они поддерживают полиморфизм и платформонезависимость.</li>
                <li>Именованные запросы упрощают повторное использование запросов.</li>
            </ul>
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9abf8d4e-5843-4b2f-a097-b4ecf4545db1', 'Для чего нужна аннотация @Cacheable?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Cacheable в JPA</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотация @Cacheable в JPA</h1>
    <p>
        Аннотация <code>@Cacheable</code> в JPA (Java Persistence API) используется для указания того, должна ли сущность
        храниться в кеше второго уровня. Это необязательная аннотация, которая позволяет управлять кешированием
        сущностей на уровне приложения.
    </p>

    <h2>Для чего нужна аннотация @Cacheable?</h2>
    <ul>
        <li>
            <span class="highlight">Управление кешированием:</span>
            <ul>
                <li>Определяет, должна ли сущность кешироваться на уровне второго уровня (Second-Level Cache).</li>
                <li>Позволяет явно указать, какие сущности кешируются, а какие нет.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Гибкость настройки:</span>
            <ul>
                <li>Работает в сочетании с параметром <code>shared-cache-mode</code> в <code>persistence.xml</code>, который определяет
                    общее поведение кеширования.</li>
            </ul>
        </li>
    </ul>

    <h2>Значения shared-cache-mode</h2>
    <p>
        В JPA определены пять значений параметра <code>shared-cache-mode</code>, которые влияют на кеширование сущностей:
    </p>
    <ul>
        <li>
            <span class="highlight">ENABLE_SELECTIVE:</span>
            <ul>
                <li>Только сущности с аннотацией <code>@Cacheable</code> (или <code>@Cacheable(true)</code>) будут сохраняться
                    в кеше второго уровня.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">DISABLE_SELECTIVE:</span>
            <ul>
                <li>Все сущности кешируются, за исключением тех, которые помечены <code>@Cacheable(false)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">ALL:</span>
            <ul>
                <li>Все сущности всегда кешируются, даже если они помечены как <code>@Cacheable(false)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">NONE:</span>
            <ul>
                <li>Ни одна сущность не кешируется, даже если она помечена как <code>@Cacheable(true)</code>.</li>
                <li>В этом случае рекомендуется отключить кеш второго уровня.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">UNSPECIFIED:</span>
            <ul>
                <li>Применяются значения по умолчанию для кеша второго уровня, определённые провайдером
                    (например, Hibernate).</li>
                <li>Если используется <code>UNSPECIFIED</code>, Hibernate не включает кеш второго уровня.</li>
            </ul>
        </li>
    </ul>

    <h2>Особенности использования @Cacheable</h2>
    <ul>
        <li>
            <span class="highlight">Размещение:</span>
            <ul>
                <li>Аннотация <code>@Cacheable</code> размещается над классом сущности.</li>
                <li>Её действие распространяется на эту сущность и её наследников, если они не переопределяют
                    поведение.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Значение по умолчанию:</span>
            <ul>
                <li>Если аннотация <code>@Cacheable</code> не указана, поведение зависит от параметра
                    <code>shared-cache-mode</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>@Cacheable</code> для явного управления кешированием сущностей.</li>
                <li>Настройте <code>shared-cache-mode</code> в <code>persistence.xml</code> для определения общего поведения
                    кеширования.</li>
            </ul>
        </p>
    </div>

    <h2>Пример использования</h2>
    <pre><code>
@Entity
@Cacheable(true) // Сущность будет кешироваться
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "user_name")
    private String name;
}

@Entity
@Cacheable(false) // Сущность не будет кешироваться
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "product_name")
    private String name;
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Сущность <code>User</code> будет кешироваться, так как она помечена <code>@Cacheable(true)</code>.</li>
            <li>Сущность <code>Product</code> не будет кешироваться, так как она помечена <code>@Cacheable(false)</code>.</li>
        </ul>
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('75a6cca4-5865-4802-ae6f-9e049451b247', 'Как работает команда git cherry-pick, и когда вы бы ее использовали?', e'<!DOCTYPE html><html lang="ru"> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <title>Команда git cherry-pick</title> <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style> </head> <body> <h1>Команда git cherry-pick</h1> <p> Команда <code>git cherry-pick</code> используется для применения изменений из определённого коммита из одной ветки в другую. Это позволяет выборочно переносить изменения, не сливая всю ветку. </p>
Copy
<h2>Для чего используется git cherry-pick?</h2>
<ul>
    <li>
        <span class="highlight">Выборочное применение изменений:</span> Если вам нужно перенести только
        определённые коммиты из одной ветки в другую, <code>git cherry-pick</code> позволяет это сделать
        без необходимости слияния всей ветки.
    </li>
    <li>
        <span class="highlight">Исправление ошибок:</span> Если вы обнаружили ошибку в одной ветке и исправили её,
        вы можете перенести это исправление в другие ветки с помощью <code>git cherry-pick</code>.
    </li>
    <li>
        <span class="highlight">Перенос функциональности:</span> Если вы разрабатываете новую функциональность
        в отдельной ветке и хотите перенести её в основную ветку, не сливая все коммиты,
        <code>git cherry-pick</code> может быть полезен.
    </li>
</ul>

<div class="note">
    <p>
        <span class="highlight">Важно:</span> <code>git cherry-pick</code> создаёт новый коммит в целевой ветке, даже если
        изменения были взяты из другого коммита. Это может привести к конфликтам, если
        изменения в исходном коммите зависят от других изменений, которых нет в целевой ветке.
    </p>
</div>

<h2>Пример использования git cherry-pick</h2>
<ul>
    <li>
        <code>git cherry-pick &lt;commit-hash&gt;</code> — применяет изменения из указанного коммита в
        текущую ветку.
    </li>
    <li>
        <code>git cherry-pick &lt;commit-hash-1&gt; &lt;commit-hash-2&gt;</code> — применяет изменения из
        нескольких коммитов в текущую ветку.
    </li>
    <li>
        <code>git cherry-pick &lt;start-commit&gt;^..&lt;end-commit&gt;</code> — применяет диапазон коммитов
        в текущую ветку.
    </li>
</ul>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('dc98cbee-5b44-4244-89a7-02991969c6cf', 'Как можно восстановить удаленную ветку в Git?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Восстановление удалённой ветки в Git</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Восстановление удалённой ветки в Git</h1>
    <p>
        В Git удалённые ветки можно восстановить, если они были удалены по ошибке. Это возможно,
        так как Git сохраняет историю изменений и ссылки на коммиты. Давайте разберём, как можно
        восстановить удалённую ветку.
    </p>

    <h2>Шаги для восстановления удалённой ветки</h2>
    <ol>
        <li>
            <span class="highlight">Найдите последний коммит удалённой ветки:</span>
            <p>
                Используйте команду <code>git reflog</code>, чтобы найти последний коммит, на который указывала
                удалённая ветка. <code>git reflog</code> показывает историю всех действий, включая удаление веток.
            </p>
            <pre><code>
git reflog
            </code></pre>
            <p>
                Найдите запись, соответствующую удалённой ветке. Обычно это будет что-то вроде
                <code>branch-name@{1}: commit: Сообщение коммита</code>.
            </p>
        </li>
        <li>
            <span class="highlight">Восстановите ветку:</span>
            <p>
                Используйте команду <code>git branch</code>, чтобы создать новую ветку на основе найденного коммита.
            </p>
            <pre><code>
git branch branch-name commit-hash
            </code></pre>
            <p>
                Здесь <code>branch-name</code> — это имя восстанавливаемой ветки, а <code>commit-hash</code> — хеш коммита,
                который вы нашли с помощью <code>git reflog</code>.
            </p>
        </li>
        <li>
            <span class="highlight">Проверьте восстановленную ветку:</span>
            <p>
                Переключитесь на восстановленную ветку и убедитесь, что она содержит нужные изменения.
            </p>
            <pre><code>
git checkout branch-name
            </code></pre>
        </li>
    </ol>

    <h2>Пример восстановления удалённой ветки</h2>
    <pre><code>
# 1. Просмотр истории действий
git reflog

# 2. Найдём последний коммит удалённой ветки
# Например: abc1234 HEAD@{2}: commit: Добавлен новый функционал

# 3. Восстановление ветки
git branch feature-branch abc1234

# 4. Переключение на восстановленную ветку
git checkout feature-branch
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если ветка была удалена из удалённого репозитория, её также нужно
            заново отправить на сервер с помощью команды <code>git push</code>.
        </p>
        <pre><code>
git push origin feature-branch
        </code></pre>
    </div>

    <h2>Восстановление ветки из удалённого репозитория</h2>
    <p>
        Если ветка была удалена из удалённого репозитория, но локальная копия ещё существует,
        вы можете восстановить её следующим образом:
    </p>
    <ol>
        <li>
            <span class="highlight">Найдите удалённую ветку:</span>
            <p>
                Используйте команду <code>git fetch</code>, чтобы получить информацию об удалённых ветках.
            </p>
            <pre><code>
git fetch origin
            </code></pre>
        </li>
        <li>
            <span class="highlight">Восстановите ветку:</span>
            <p>
                Используйте команду <code>git checkout</code>, чтобы создать локальную ветку на основе удалённой.
            </p>
            <pre><code>
git checkout -b feature-branch origin/feature-branch
            </code></pre>
        </li>
    </ol>

    <h2>Заключение</h2>
    <p>
        Восстановление удалённой ветки в Git возможно благодаря тому, что Git сохраняет историю
        изменений и ссылки на коммиты. Используйте команды <code>git reflog</code> и <code>git branch</code> для
        восстановления локальной ветки, а также <code>git fetch</code> и <code>git checkout</code> для восстановления
        ветки из удалённого репозитория. Это позволяет вернуть потерянные данные и продолжить
        работу над проектом.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8d73b9d9-52c5-4ad9-8e13-14b0864496b6', 'Для чего нужна аннотация Basic?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Basic в JPA</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотация @Basic в JPA</h1>
    <p>
        Аннотация <code>@Basic</code> в JPA (Java Persistence API) используется для указания простейшего типа маппинга
        данных на колонку таблицы базы данных. Она может быть применена к полям различных типов и позволяет
        настроить стратегию загрузки данных и обязательность поля.
    </p>

    <h2>Для чего нужна аннотация @Basic?</h2>
    <ul>
        <li>
            <span class="highlight">Маппинг простых типов:</span>
            <ul>
                <li>Аннотация <code>@Basic</code> применяется для маппинга полей примитивных типов, их обёрток, строк,
                    дат, массивов, перечислений и других типов, реализующих <code>Serializable</code>.</li>
                <li>Она указывает, что поле должно быть сохранено в базе данных как простая колонка.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Настройка загрузки и обязательности:</span>
            <ul>
                <li>Аннотация <code>@Basic</code> позволяет настроить стратегию загрузки данных (<code>EAGER</code> или
                    <code>LAZY</code>).</li>
                <li>Также можно указать, может ли значение поля быть <code>null</code> (атрибут <code>optional</code>).</li>
            </ul>
        </li>
    </ul>

    <h2>Типы, поддерживаемые @Basic</h2>
    <p>
        Аннотация <code>@Basic</code> может быть применена к полям следующих типов:
    </p>
    <ul>
        <li>Примитивы и их обёртки (<code>int</code>, <code>Integer</code>, <code>boolean</code>, <code>Boolean</code> и т.д.).</li>
        <li><code>java.lang.String</code>.</li>
        <li><code>java.math.BigInteger</code> и <code>java.math.BigDecimal</code>.</li>
        <li><code>java.util.Date</code>, <code>java.util.Calendar</code>.</li>
        <li><code>java.sql.Date</code>, <code>java.sql.Time</code>, <code>java.sql.Timestamp</code>.</li>
        <li>Массивы: <code>byte[]</code>, <code>Byte[]</code>, <code>char[]</code>, <code>Character[]</code>.</li>
        <li>Перечисления (<code>enums</code>).</li>
        <li>Любые другие типы, реализующие <code>Serializable</code>.</li>
    </ul>

    <h2>Атрибуты аннотации @Basic</h2>
    <ul>
        <li>
            <span class="highlight">optional:</span>
            <ul>
                <li>Тип: <code>boolean</code> (по умолчанию <code>true</code>).</li>
                <li>Определяет, может ли значение поля быть <code>null</code>.</li>
                <li>Игнорируется для примитивных типов, но для непримитивных типов, если <code>optional=false</code>,
                    попытка сохранения сущности с <code>null</code> значением вызовет исключение.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">fetch:</span>
            <ul>
                <li>Тип: <code>FetchType</code> (по умолчанию <code>EAGER</code>).</li>
                <li>Определяет стратегию загрузки данных: <code>EAGER</code> (немедленная) или <code>LAZY</code> (ленивая).</li>
                <li>Это нестрогое требование, и провайдеры JPA могут загружать данные немедленно, даже если
                    указана ленивая загрузка.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Аннотация <code>@Basic</code> не является обязательной. По умолчанию все поля базовых типов
                    маппируются как <code>@Basic</code> с <code>fetch=EAGER</code> и <code>optional=true</code>.</li>
                <li>Используйте <code>@Basic</code> для явного указания настроек маппинга, если это необходимо.</li>
            </ul>
        </p>
    </div>

    <h2>Пример использования</h2>
    <pre><code>
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Basic(optional = false, fetch = FetchType.EAGER)
    private String name;

    @Basic(fetch = FetchType.LAZY)
    private String description;

    @Basic(optional = false)
    private int age;
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Поле <code>name</code> обязательно (<code>optional=false</code>) и загружается немедленно (<code>EAGER</code>).</li>
            <li>Поле <code>description</code> загружается лениво (<code>LAZY</code>).</li>
            <li>Поле <code>age</code> обязательно (<code>optional=false</code>), но стратегия загрузки по умолчанию (<code>EAGER</code>).</li>
        </ul>
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('25ab1bef-608c-4ef5-9a91-214e59818e94', 'Назовите три основные группы паттернов', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Группы паттернов</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Группы паттернов</h1>
    <p>
        Паттерны проектирования делятся на три основные группы, каждая из которых решает определённые задачи в разработке программного обеспечения.
    </p>

    <h2>Три основные группы паттернов</h2>
    <ul>
        <li>
            <span class="highlight">Порождающие:</span> Отвечают за удобное и безопасное создание новых объектов или даже целых семейств объектов без внесения в программу лишних зависимостей.
        </li>
        <li>
            <span class="highlight">Структурные:</span> Отвечают за построение удобных в поддержке иерархий классов.
        </li>
        <li>
            <span class="highlight">Поведенческие:</span> Заботятся об эффективной коммуникации между объектами.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Помимо основных групп, существуют также базовые строительные блоки, используемые для построения других шаблонов. Например, интерфейсы.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5f858e6f-de94-4ffc-b217-869b60d4a49a', 'Что такое Criteria API и для чего он используется?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Criteria API в JPA</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Criteria API в JPA</h1>
    <p>
        <strong>Criteria API</strong> — это часть JPA (Java Persistence API), которая позволяет создавать запросы к базе данных
        в объектно-ориентированном стиле. Начиная с версии 5.2, Hibernate Criteria API объявлен устаревшим
        (<code>deprecated</code>), и вместо него рекомендуется использовать JPA Criteria API.
    </p>

    <h2>Для чего используется Criteria API?</h2>
    <ul>
        <li>
            <span class="highlight">Динамические запросы:</span>
            <ul>
                <li>Позволяет динамически формировать запросы на этапе выполнения приложения.</li>
                <li>Полезно, когда структура запроса зависит от условий, которые известны только во время выполнения.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Объектно-ориентированный подход:</span>
            <ul>
                <li>Запросы строятся с использованием объектов и методов, что делает код более читаемым и
                    поддерживаемым.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Обнаружение ошибок на этапе компиляции:</span>
            <ul>
                <li>Ошибки в запросах могут быть обнаружены на этапе компиляции, что снижает вероятность
                    ошибок в рантайме.</li>
            </ul>
        </li>
    </ul>

    <h2>Преимущества Criteria API</h2>
    <ul>
        <li>
            <span class="highlight">Типобезопасность:</span>
            <ul>
                <li>Использование типизированных объектов и методов снижает вероятность ошибок.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Гибкость:</span>
            <ul>
                <li>Позволяет динамически строить запросы в зависимости от условий.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Поддержка сложных запросов:</span>
            <ul>
                <li>Поддерживает проекции, агрегатные функции, соединения таблиц и сортировку.</li>
            </ul>
        </li>
    </ul>

    <h2>Недостатки Criteria API</h2>
    <ul>
        <li>
            <span class="highlight">Сложность отладки:</span>
            <ul>
                <li>Нет прямого контроля над SQL-запросом, что затрудняет отладку.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Производительность:</span>
            <ul>
                <li>Использование множества классов и методов может повлиять на производительность.</li>
            </ul>
        </li>
    </ul>

    <h2>Основные возможности Criteria API</h2>
    <ul>
        <li>
            <span class="highlight">Проекции:</span>
            <ul>
                <li>Поддержка агрегатных функций, таких как <code>sum()</code>, <code>min()</code>, <code>max()</code>.</li>
                <li>Использование <code>ProjectionList</code> для выбора определённых колонок.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Соединения таблиц:</span>
            <ul>
                <li>Методы <code>createAlias()</code>, <code>setFetchMode()</code> и <code>setProjection()</code> для выполнения JOIN-запросов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Условия (ограничения):</span>
            <ul>
                <li>Метод <code>add()</code> для добавления условий (например, <code>Restrictions.eq()</code>, <code>Restrictions.like()</code>).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Сортировка:</span>
            <ul>
                <li>Метод <code>addOrder()</code> для добавления сортировки результатов.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования Criteria API</h2>
    <pre><code>
// Пример запроса с использованием Criteria API
CriteriaBuilder cb = entityManager.getCriteriaBuilder();
CriteriaQuery<User> query = cb.createQuery(User.class);
Root<User> user = query.from(User.class);

// Условие: имя пользователя равно "John"
query.select(user).where(cb.equal(user.get("name"), "John"));

// Выполнение запроса
List<User> users = entityManager.createQuery(query).getResultList();
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Создаётся запрос для выборки пользователей с именем "John".</li>
            <li>Используются методы <code>CriteriaBuilder</code> для создания условий.</li>
        </ul>
    </p>

    <h2>Пример с проекцией и сортировкой</h2>
    <pre><code>
// Пример с проекцией и сортировкой
CriteriaBuilder cb = entityManager.getCriteriaBuilder();
CriteriaQuery<Object[]> query = cb.createQuery(Object[].class);
Root<User> user = query.from(User.class);

// Проекция: выбор имени и возраста
query.multiselect(user.get("name"), user.get("age"));

// Сортировка по возрасту
query.orderBy(cb.asc(user.get("age")));

// Выполнение запроса
List<Object[]> results = entityManager.createQuery(query).getResultList();
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Выбираются только имя и возраст пользователей.</li>
            <li>Результаты сортируются по возрасту в порядке возрастания.</li>
        </ul>
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Criteria API предоставляет типобезопасный и гибкий способ создания запросов.</li>
                <li>Используйте его для динамических запросов, где структура запроса зависит от условий.</li>
                <li>Для простых запросов предпочтительнее использовать JPQL или HQL.</li>
            </ul>
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0a974c88-42ae-48e1-a1bc-52af1c3fe0b4', 'Как вы можете различать ветки, которые находятся впереди или позади относительно других веток?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сравнение веток в Git</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <div class="content">
        <h1>Как определить, какие ветки впереди или позади относительно других?</h1>
        <p>
            В Git можно сравнивать ветки, чтобы определить, какие коммиты находятся в одной ветке, но отсутствуют в другой. Это помогает понять, насколько одна ветка опережает или отстаёт от другой.
        </p>

        <h2>Как сравнить ветки?</h2>
        <ul>
            <li>
                <span class="highlight">Использование <code>git status</code>:</span> Если вы находитесь на одной ветке, вы можете использовать команду <code>git status</code>, чтобы узнать, насколько текущая ветка отстаёт или опережает удалённую ветку.
                <pre><code>git status</code></pre>
                Эта команда покажет сообщение вида:
                <pre><code>Your branch is ahead of \'origin/main\' by 2 commits.</code></pre>
                или
                <pre><code>Your branch is behind \'origin/main\' by 3 commits.</code></pre>
            </li>
            <li>
                <span class="highlight">Использование <code>git log</code>:</span> Вы можете сравнить две ветки с помощью команды <code>git log</code>, чтобы увидеть разницу в коммитах.
                <pre><code>git log branch1..branch2</code></pre>
                Эта команда покажет коммиты, которые есть в <code>branch2</code>, но отсутствуют в <code>branch1</code>.
            </li>
            <li>
                <span class="highlight">Использование <code>git diff</code>:</span> Чтобы увидеть различия в файлах между двумя ветками, используйте команду:
                <pre><code>git diff branch1..branch2</code></pre>
                Это покажет изменения в файлах между указанными ветками.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Если ветка опережает другую, это означает, что в ней есть коммиты, которых нет в другой ветке. Если ветка отстаёт, это означает, что в другой ветке есть коммиты, которых нет в текущей.
            </p>
        </div>

        <h2>Примеры команд</h2>
        <ul>
            <li>
                <code>git status</code> — показывает статус текущей ветки относительно удалённой.
            </li>
            <li>
                <code>git log branch1..branch2</code> — показывает коммиты, которые есть в <code>branch2</code>, но отсутствуют в <code>branch1</code>.
            </li>
            <li>
                <code>git diff branch1..branch2</code> — показывает различия в файлах между двумя ветками.
            </li>
        </ul>

        <h2>Как синхронизировать ветки?</h2>
        <p>
            Если одна ветка отстаёт от другой, вы можете синхронизировать их с помощью следующих команд:
        </p>
        <ul>
            <li>
                <span class="highlight">Слияние:</span> Переключитесь на отстающую ветку и выполните слияние с опережающей веткой.
                <pre><code>git checkout отстающая-ветка
git merge опережающая-ветка</code></pre>
            </li>
            <li>
                <span class="highlight">Перебазирование:</span> Переключитесь на отстающую ветку и выполните перебазирование на опережающую ветку.
                <pre><code>git checkout отстающая-ветка
git rebase опережающая-ветка</code></pre>
            </li>
        </ul>
    </div>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('815c1f0e-9c2a-4fd8-ba99-9d13fbdb888d', 'Расскажите про бинарное дерево', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Бинарное дерево</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Бинарное дерево</h1>
    <p>
        <span class="highlight">Бинарное дерево</span> — это иерархическая структура данных, в которой каждый узел может иметь не более двух потомков. Обычно эти потомки называются <span class="highlight">левым</span> и <span class="highlight">правым</span> узлами. Каждый узел в дереве задаёт поддерево, корнем которого он является.
    </p>

    <h2>Основные понятия</h2>
    <ul>
        <li>
            <span class="highlight">Родительский узел:</span> Узел, который имеет потомков.
        </li>
        <li>
            <span class="highlight">Листья:</span> Узлы, которые не имеют потомков.
        </li>
        <li>
            <span class="highlight">Левый и правый узлы:</span> Потомки текущего узла. Левый узел содержит значение меньше, чем родительский узел, а правый — больше или равно.
        </li>
    </ul>

    <h2>Свойства бинарного дерева</h2>
    <ul>
        <li>
            У всех узлов <span class="highlight">левого поддерева</span> произвольного узла <code>X</code> значения ключей данных меньше, чем значение ключа данных самого узла <code>X</code>.
        </li>
        <li>
            У всех узлов <span class="highlight">правого поддерева</span> произвольного узла <code>X</code> значения ключей данных больше или равны значению ключа данных самого узла <code>X</code>.
        </li>
        <li>
            Благодаря этим свойствам бинарное дерево всегда остаётся упорядоченной структурой данных.
        </li>
    </ul>

    <h2>Асимптотическая сложность</h2>
    <ul>
        <li>
            <span class="highlight">Лучший случай:</span> <code>O(log(n))</code>, где <code>n</code> — количество узлов в дереве. Это достигается при сбалансированном дереве.
        </li>
        <li>
            <span class="highlight">Худший случай:</span> <code>O(n)</code>, если дерево вырождается в связанный список (например, при добавлении элементов в отсортированном порядке).
        </li>
    </ul>

    <h2>Пример использования</h2>
    <p>
        Бинарные деревья широко используются для реализации:
    </p>
    <ul>
        <li>Бинарных деревьев поиска (Binary Search Tree).</li>
        <li>Деревьев выражений (Expression Trees).</li>
        <li>Очередей с приоритетами (Priority Queues).</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Бинарные деревья эффективны для задач поиска, вставки и удаления элементов, если дерево остаётся сбалансированным. В противном случае производительность может значительно ухудшиться.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e970ed4c-37ed-4af4-90e2-1de21a857b08', 'Расскажите про аннотацию @Component?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Component в Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотация @Component в Spring</h1>
    <p>
        Аннотация <code>@Component</code> используется в Spring для указания того, что класс является компонентом
        Spring. Классы, помеченные этой аннотацией, автоматически обнаруживаются и регистрируются как бины
        в IoC-контейнере.
    </p>

    <h2>Основные особенности аннотации @Component</h2>
    <ul>
        <li>
            <span class="highlight">Автоматическое обнаружение:</span>
            <ul>
                <li>Классы с аннотацией <code>@Component</code> автоматически обнаруживаются Spring в процессе
                    сканирования компонентов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Регистрация как бин:</span>
            <ul>
                <li>Класс регистрируется как бин в IoC-контейнере, и его экземпляр управляется Spring.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Имя бина:</span>
            <ul>
                <li>По умолчанию имя бина совпадает с именем класса, но с маленькой буквы (например,
                    <code>userService</code> для класса <code>UserService</code>).</li>
                <li>Имя можно задать явно с помощью параметра аннотации: <code>@Component("myBeanName")</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования @Component</h2>
    <pre><code>
@Component
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void saveUser(User user) {
        userRepository.save(user);
    }
}

@Repository
public class UserRepository {
    public void save(User user) {
        // Логика сохранения пользователя
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Класс <code>UserService</code> помечен аннотацией <code>@Component</code> и регистрируется как бин в
                IoC-контейнере.</li>
            <li>Класс <code>UserRepository</code> помечен аннотацией <code>@Repository</code>, которая является
                специализированной версией <code>@Component</code>.</li>
        </ul>
    </p>

    <h2>Специализированные аннотации, наследующие @Component</h2>
    <p>
        В Spring существуют специализированные аннотации, которые являются наследниками <code>@Component</code> и
        используются для более конкретных целей:
    </p>
    <ul>
        <li>
            <span class="highlight">@Service:</span>
            <ul>
                <li>Используется для обозначения классов, реализующих бизнес-логику.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@Repository:</span>
            <ul>
                <li>Используется для обозначения классов, работающих с данными (например, DAO или репозитории).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@Controller:</span>
            <ul>
                <li>Используется для обозначения классов, являющихся контроллерами в веб-приложениях.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования специализированных аннотаций</h2>
    <pre><code>
@Service
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void saveUser(User user) {
        userRepository.save(user);
    }
}

@Repository
public class UserRepository {
    public void save(User user) {
        // Логика сохранения пользователя
    }
}

@Controller
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    public void createUser(User user) {
        userService.saveUser(user);
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Класс <code>UserService</code> помечен аннотацией <code>@Service</code>.</li>
            <li>Класс <code>UserRepository</code> помечен аннотацией <code>@Repository</code>.</li>
            <li>Класс <code>UserController</code> помечен аннотацией <code>@Controller</code>.</li>
        </ul>
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>@Component</code> для регистрации классов как бинов в Spring.</li>
                <li>Для более конкретных целей используйте специализированные аннотации, такие как
                    <code>@Service</code>, <code>@Repository</code> и <code>@Controller</code>.</li>
                <li>Имя бина по умолчанию совпадает с именем класса, но его можно задать явно.</li>
            </ul>
        </p>
    </div>

    <h2>Сравнение @Component и @Bean</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>@Component</th>
                <th>@Bean</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Использование</td>
                <td>Классы, которые автоматически обнаруживаются как бины.</td>
                <td>Методы в классах с аннотацией <code>@Configuration</code> или <code>@Component</code>.</td>
            </tr>
            <tr>
                <td>Гибкость</td>
                <td>Подходит для простых бинов, которые не требуют сложной настройки.</td>
                <td>Позволяет создавать бины с более сложной логикой инициализации.</td>
            </tr>
            <tr>
                <td>Имя бина</td>
                <td>Имя бина по умолчанию совпадает с именем класса.</td>
                <td>Может быть задано через свойство <code>name</code>.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b51f3797-d162-4fb9-ba45-7629c2982569', 'Расскажите про паттерн MVC, как он реализован в Spring?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн MVC в Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерн MVC в Spring</h1>
    <p>
        Паттерн <strong>MVC (Model-View-Controller)</strong> — это архитектурный шаблон проектирования, который разделяет приложение на три основных компонента: <strong>Model</strong>, <strong>View</strong> и <strong>Controller</strong>. В Spring Framework этот паттерн реализован с помощью Spring MVC, который обеспечивает чёткое разделение задач и гибкость в разработке веб-приложений.
    </p>

    <h2>Основные компоненты MVC</h2>
    <ul>
        <li>
            <span class="highlight">Model (Модель):</span> Отвечает за хранение и управление данными приложения. Модель не зависит от представления и контроллера.
        </li>
        <li>
            <span class="highlight">View (Представление):</span> Отвечает за отображение данных пользователю. В Spring MVC представления могут быть реализованы с использованием шаблонизаторов, таких как Thymeleaf, FreeMarker, JSP и других.
        </li>
        <li>
            <span class="highlight">Controller (Контроллер):</span> Обрабатывает запросы пользователя, взаимодействует с моделью и возвращает представление с данными. Контроллеры в Spring MVC обычно аннотируются <code>@Controller</code> или <code>@RestController</code>.
        </li>
    </ul>

    <h2>Реализация MVC в Spring</h2>
    <p>
        Spring MVC реализует паттерн MVC с использованием двух основных шаблонов проектирования: <strong>Front Controller</strong> и <strong>MVC</strong>. Основные компоненты Spring MVC:
    </p>
    <ul>
        <li>
            <span class="highlight">DispatcherServlet:</span> Главный контроллер, который обрабатывает все входящие HTTP-запросы и распределяет их между соответствующими контроллерами.
        </li>
        <li>
            <span class="highlight">HandlerMapping:</span> Определяет, какой контроллер и метод должны обработать запрос.
        </li>
        <li>
            <span class="highlight">Controller:</span> Обрабатывает запросы, взаимодействует с моделью и возвращает данные и имя представления.
        </li>
        <li>
            <span class="highlight">ViewResolver:</span> Определяет, какое представление использовать на основе имени, возвращённого контроллером.
        </li>
        <li>
            <span class="highlight">View:</span> Отвечает за отображение данных пользователю.
        </li>
    </ul>

    <h2>Как работает Spring MVC?</h2>
    <p>
        Последовательность обработки запроса в Spring MVC:
    </p>
    <ol>
        <li>
            <span class="highlight">Получение запроса:</span> <code>DispatcherServlet</code> получает HTTP-запрос и передаёт его в <code>HandlerMapping</code>.
        </li>
        <li>
            <span class="highlight">Определение контроллера:</span> <code>HandlerMapping</code> определяет, какой контроллер и метод должны обработать запрос.
        </li>
        <li>
            <span class="highlight">Обработка запроса:</span> Контроллер обрабатывает запрос, взаимодействует с моделью и возвращает данные и имя представления.
        </li>
        <li>
            <span class="highlight">Определение представления:</span> <code>ViewResolver</code> определяет, какое представление использовать на основе имени, возвращённого контроллером.
        </li>
        <li>
            <span class="highlight">Отображение данных:</span> Представление (View) отображает данные пользователю.
        </li>
    </ol>

    <h3>Пример работы Spring MVC:</h3>
    <pre><code>@Controller
public class MyController {

    @GetMapping("/hello")
    public String sayHello(Model model) {
        model.addAttribute("message", "Привет, мир!");
        return "hello"; // Возвращает имя представления (например, hello.html)
    }
}</code></pre>

    <h2>Основные интерфейсы и классы Spring MVC</h2>
    <ul>
        <li>
            <span class="highlight">DispatcherServlet:</span> Главный контроллер, который обрабатывает все запросы.
        </li>
        <li>
            <span class="highlight">HandlerMapping:</span> Определяет, какой контроллер и метод должны обработать запрос.
        </li>
        <li>
            <span class="highlight">HandlerAdapter:</span> Помогает <code>DispatcherServlet</code> вызвать метод контроллера.
        </li>
        <li>
            <span class="highlight">ViewResolver:</span> Определяет, какое представление использовать.
        </li>
        <li>
            <span class="highlight">View:</span> Отвечает за отображение данных.
        </li>
    </ul>

    <h2>Преимущества Spring MVC</h2>
    <ul>
        <li>
            <span class="highlight">Разделение задач:</span> Чёткое разделение между моделью, представлением и контроллером упрощает разработку и тестирование.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Поддержка различных шаблонизаторов (Thymeleaf, FreeMarker, JSP) и RESTful сервисов.
        </li>
        <li>
            <span class="highlight">Модульность:</span> Возможность настройки каждого компонента Spring MVC.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span> Настройка и конфигурация Spring MVC может быть сложной для новичков.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Централизованная обработка запросов через <code>DispatcherServlet</code> может стать узким местом при высокой нагрузке.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring MVC предоставляет мощный и гибкий механизм для создания веб-приложений, следуя принципам паттерна MVC. Это позволяет разработчикам создавать поддерживаемые и масштабируемые приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d37fdad5-adb8-4dbb-8b44-09b642ee0359', 'Различия жизненного цикла бина у singleton и у prototype', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Различия жизненного цикла бина у Singleton и Prototype</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Различия жизненного цикла бина у Singleton и Prototype</h1>
    <p>
        В Spring Framework <span class="highlight">бины (beans)</span> — это объекты, которые управляются контейнером Spring.
        Жизненный цикл бина зависит от его <span class="highlight">области видимости (scope)</span>. Два наиболее распространённых
        типа областей видимости — это <span class="highlight">singleton</span> и <span class="highlight">prototype</span>. Давайте разберёмся, в чём их основные различия.
    </p>

    <h2>Singleton</h2>
    <p>
        <span class="highlight">Singleton</span> — это область видимости по умолчанию в Spring. Бин с областью видимости <code>singleton</code>
        создаётся один раз за время жизни контейнера Spring, и один и тот же экземпляр бина используется
        всеми запросами.
    </p>
    <ul>
        <li>
            <span class="highlight">Жизненный цикл:</span>
            <ul>
                <li>Создаётся при старте контейнера Spring или при первом запросе.</li>
                <li>Существует в единственном экземпляре на протяжении всего жизненного цикла контейнера.</li>
                <li>Уничтожается при завершении работы контейнера Spring.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Экономия памяти, так как создаётся только один экземпляр.</li>
                <li>Высокая производительность, так как не требуется создавать новый экземпляр для каждого запроса.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Не подходит для состояния, которое должно быть уникальным для каждого запроса.</li>
                <li>Требует осторожности при работе с многопоточностью.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
// Пример бина с областью видимости singleton
@Component
@Scope("singleton")
public class SingletonBean {
    // Логика бина
}
    </code></pre>

    <h2>Prototype</h2>
    <p>
        <span class="highlight">Prototype</span> — это область видимости, при которой каждый запрос на получение бина создаёт новый
        экземпляр. Бин с областью видимости <code>prototype</code> не управляется контейнером Spring после
        создания, и его жизненный цикл зависит от кода, который его использует.
    </p>
    <ul>
        <li>
            <span class="highlight">Жизненный цикл:</span>
            <ul>
                <li>Создаётся новый экземпляр при каждом запросе.</li>
                <li>Не управляется контейнером Spring после создания.</li>
                <li>Уничтожается сборщиком мусора, когда больше не используется.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Подходит для состояния, которое должно быть уникальным для каждого запроса.</li>
                <li>Не требует осторожности при работе с многопоточностью.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Может потреблять больше памяти, так как создаётся новый экземпляр для каждого запроса.</li>
                <li>Меньшая производительность из-за создания новых экземпляров.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
// Пример бина с областью видимости prototype
@Component
@Scope("prototype")
public class PrototypeBean {
    // Логика бина
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Бин с областью видимости <code>prototype</code> не уничтожается контейнером Spring,
            поэтому, если бин использует ресурсы, требующие освобождения (например, файлы или соединения с
            базой данных), необходимо самостоятельно управлять их освобождением.
        </p>
    </div>

    <h2>Сравнение Singleton и Prototype</h2>
    <table>
        <thead>
            <tr>
                <th>Критерий</th>
                <th>Singleton</th>
                <th>Prototype</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Количество экземпляров</td>
                <td>Один экземпляр на контейнер.</td>
                <td>Новый экземпляр для каждого запроса.</td>
            </tr>
            <tr>
                <td>Управление жизненным циклом</td>
                <td>Управляется контейнером Spring.</td>
                <td>Не управляется контейнером Spring после создания.</td>
            </tr>
            <tr>
                <td>Память</td>
                <td>Экономит память.</td>
                <td>Может потреблять больше памяти.</td>
            </tr>
            <tr>
                <td>Производительность</td>
                <td>Высокая, так как экземпляр создаётся один раз.</td>
                <td>Меньшая, так как создаётся новый экземпляр для каждого запроса.</td>
            </tr>
            <tr>
                <td>Многопоточность</td>
                <td>Требует осторожности.</td>
                <td>Безопасен для многопоточности.</td>
            </tr>
            <tr>
                <td>Использование</td>
                <td>Подходит для stateless-бинов.</td>
                <td>Подходит для stateful-бинов.</td>
            </tr>
        </tbody>
    </table>

    <h2>Когда использовать Singleton и Prototype?</h2>
    <ul>
        <li>
            <span class="highlight">Используйте Singleton:</span>
            <ul>
                <li>Для stateless-бинов, которые не хранят состояние.</li>
                <li>Для бинов, которые используются часто и должны быть доступны в одном экземпляре.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Используйте Prototype:</span>
            <ul>
                <li>Для stateful-бинов, которые хранят уникальное состояние для каждого запроса.</li>
                <li>Для бинов, которые требуют изоляции между запросами.</li>
            </ul>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        <code>Singleton</code> и <code>prototype</code> — это две основные области видимости бинов в Spring. <code>Singleton</code> подходит для
        stateless-бинов и обеспечивает высокую производительность, в то время как <code>prototype</code> идеален
        для stateful-бинов и обеспечивает изоляцию между запросами. Выбор между ними зависит от
        конкретных требований приложения.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('523a11a2-5243-431f-b445-f5aecffaab8d', 'Расскажите про паттерн «Одиночка» (Singleton)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн «Одиночка» (Singleton)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерн «Одиночка» (Singleton)</h1>
    <p>
        <span class="highlight">Singleton</span> — это порождающий паттерн проектирования, который гарантирует, что у класса есть только один экземпляр, и предоставляет к нему глобальную точку доступа.
    </p>

    <h2>Как работает Singleton?</h2>
    <ul>
        <li>
            Конструктор класса помечается как <code>private</code>, чтобы предотвратить создание экземпляров класса извне.
        </li>
        <li>
            Для создания или получения экземпляра используется специальный метод <code>getInstance()</code>. Этот метод либо создаёт новый объект, если он ещё не был создан, либо возвращает существующий.
        </li>
    </ul>

    <pre><code>
private static Singleton instance;

public static Singleton getInstance() {
    if (instance == null) {
        instance = new Singleton();
    }
    return instance;
}
    </code></pre>

    <h2>Плюсы и минусы Singleton</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Можно не создавать множество объектов для ресурсоёмких задач, а пользоваться одним.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минусы:</span>
            <ul>
                <li>Нарушает принцип единой ответственности, так как его могут использовать множество объектов.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Почему Singleton считается антипаттерном?</span>
            <ul>
                <li>Нельзя тестировать с помощью mock, но можно использовать PowerMock.</li>
                <li>Нарушает принцип единой ответственности.</li>
                <li>Нарушает принцип Open/Close, так как его нельзя расширить.</li>
            </ul>
        </p>
    </div>

    <h2>Синхронизация Singleton без synchronized у метода</h2>
    <ul>
        <li>
            <span class="highlight">1. Использование Enum (eager):</span>
            <ul>
                <li>Enum — это статический <code>final</code> класс с константами. JVM загружает <code>final</code> и <code>static</code> классы на этапе компиляции, что гарантирует, что несколько потоков не смогут создать несколько экземпляров.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Double Checked Locking (lazy):</span>
            <ul>
                <li>Используется <code>volatile</code> и синхронизация внутри метода для обеспечения потокобезопасности.</li>
            </ul>
        </li>
    </ul>

    <pre><code>
private static volatile Singleton instance;

public static Singleton getInstance() {
    Singleton localInstance = instance;
    if (localInstance == null) {                       // Первая проверка
        synchronized (Singleton.class) {
            localInstance = instance;
            if (localInstance == null) {               // Вторая проверка
                instance = localInstance = new Singleton();
            }
        }
    }
    return localInstance;
}
    </code></pre>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b104dfca-8b48-4ec2-bb64-1b57732a4eda', 'Можно ли передать в запросе один и тот же параметр несколько раз? Как?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Передача одного параметра несколько раз в запросе</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Можно ли передать в запросе один и тот же параметр несколько раз? Как?</h1>
    <p>
        Да, в HTTP-запросе можно передать один и тот же параметр несколько раз. Это может быть полезно, например, когда нужно передать несколько значений для одного параметра. В Spring Framework можно легко обработать такие запросы, используя массивы или коллекции в методах контроллера.
    </p>

    <h2>Как передать параметр несколько раз?</h2>
    <p>
        В HTTP-запросе параметры могут передаваться в URL в следующем формате:
    </p>
    <pre><code>http://localhost:8080/login?name=Ranga&name=Ravi&name=Sathish</code></pre>
    <p>
        Здесь параметр <code>name</code> передаётся три раза с разными значениями.
    </p>

    <h2>Как принять несколько значений параметра в Spring?</h2>
    <p>
        В Spring Framework можно использовать массивы или коллекции для приёма нескольких значений одного параметра. Для этого используется аннотация <code>@RequestParam</code>.
    </p>

    <h3>Пример с массивом:</h3>
    <pre><code>@GetMapping("/login")
public String method(@RequestParam(value = "name") String[] names) {
    // Обработка массива значений
    for (String name : names) {
        System.out.println(name);
    }
    return "login";
}</code></pre>
    <p>
        В этом примере все значения параметра <code>name</code> будут переданы в массив <code>names</code>.
    </p>

    <h3>Пример с коллекцией:</h3>
    <pre><code>@GetMapping("/api/foos")
public String getFoos(@RequestParam List&lt;String&gt; id) {
    // Обработка списка значений
    for (String item : id) {
        System.out.println(item);
    }
    return "foos";
}</code></pre>
    <p>
        В этом примере значения параметра <code>id</code> будут переданы в список <code>id</code>.
    </p>

    <h2>Пример запроса с несколькими значениями параметра</h2>
    <p>
        Рассмотрим пример запроса, где параметр передаётся несколько раз:
    </p>
    <pre><code>http://localhost:8080/api/foos?id=1,2,3</code></pre>
    <p>
        В этом случае Spring автоматически разделит значения по запятой и передаст их в список <code>id</code>.
    </p>

    <h2>Преимущества использования массивов и коллекций</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет передавать и обрабатывать несколько значений одного параметра.
        </li>
        <li>
            <span class="highlight">Удобство:</span> Упрощает обработку данных, так как все значения передаются в одном параметре.
        </li>
        <li>
            <span class="highlight">Поддержка Spring:</span> Spring автоматически преобразует значения в массив или коллекцию.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Формат данных:</span> Если значения передаются через запятую, необходимо убедиться, что они не содержат запятых внутри.
        </li>
        <li>
            <span class="highlight">Ограничения URL:</span> Длина URL ограничена, поэтому передача большого количества значений может быть проблематичной.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование массивов или коллекций для приёма нескольких значений параметра — это удобный и гибкий способ обработки данных в Spring. Однако следует учитывать ограничения на длину URL и формат данных.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0a65b8e1-c942-4545-a1c1-f96fda454524', 'Какие основные интерфейсы и классы присутствуют в JDBC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Основные интерфейсы и классы JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Основные интерфейсы и классы JDBC</h1>
    <p>
        <span class="highlight">JDBC (Java Database Connectivity)</span> предоставляет набор интерфейсов и классов, которые позволяют Java-приложениям
        взаимодействовать с базами данных. Эти компоненты являются основой для выполнения SQL-запросов, управления соединениями и обработки результатов.
    </p>

    <h2>Основные интерфейсы и классы JDBC</h2>
    <ul>
        <li>
            <span class="highlight">DriverManager:</span>
            <ul>
                <li>Этот класс управляет подключением к базе данных.</li>
                <li>Он регистрирует драйверы и предоставляет методы для установления соединения с базой данных.</li>
                <li>Основной метод: <code>getConnection(String url, String user, String password)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Connection:</span>
            <ul>
                <li>Интерфейс, представляющий соединение с базой данных.</li>
                <li>Используется для создания объектов <code>Statement</code>, <code>PreparedStatement</code> и <code>CallableStatement</code>.</li>
                <li>Также позволяет управлять транзакциями (например, <code>commit()</code>, <code>rollback()</code>).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Statement:</span>
            <ul>
                <li>Интерфейс для выполнения статических SQL-запросов.</li>
                <li>Основные методы: <code>executeQuery(String sql)</code>, <code>executeUpdate(String sql)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">PreparedStatement:</span>
            <ul>
                <li>Расширяет интерфейс <code>Statement</code> и позволяет выполнять параметризованные SQL-запросы.</li>
                <li>Повышает производительность и безопасность за счёт предварительной компиляции запросов.</li>
                <li>Основные методы: <code>setInt(int parameterIndex, int value)</code>, <code>setString(int parameterIndex, String value)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">CallableStatement:</span>
            <ul>
                <li>Расширяет интерфейс <code>PreparedStatement</code> и используется для вызова хранимых процедур в базе данных.</li>
                <li>Основные методы: <code>registerOutParameter(int parameterIndex, int sqlType)</code>, <code>execute()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">ResultSet:</span>
            <ul>
                <li>Интерфейс, представляющий результат выполнения SQL-запроса (например, <code>SELECT</code>).</li>
                <li>Позволяет перемещаться по строкам результата и извлекать данные.</li>
                <li>Основные методы: <code>next()</code>, <code>getInt(String columnName)</code>, <code>getString(String columnName)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">SQLException:</span>
            <ul>
                <li>Класс, который обрабатывает ошибки, возникающие при работе с базой данных.</li>
                <li>Содержит информацию об ошибке, такую как код ошибки и сообщение.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Эти интерфейсы и классы являются основой для работы с базами данных в Java. Они позволяют
            выполнять запросы, управлять соединениями и обрабатывать результаты, что делает JDBC мощным инструментом
            для взаимодействия с различными СУБД.
        </p>
    </div>
</body>
</html>', 'ORM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1168a2bb-455b-42a8-a8c2-93a01711dad7', 'Что такое DriverManager и как он работает?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DriverManager в JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>DriverManager в JDBC</h1>
    <p>
        <span class="highlight">DriverManager</span> — это ключевой класс в JDBC, который управляет подключением к базе данных. Он отвечает за регистрацию
        драйверов и предоставление соединений с базой данных на основе указанных параметров.
    </p>

    <h2>Как работает DriverManager?</h2>
    <ul>
        <li>
            <span class="highlight">Регистрация драйверов:</span>
            <ul>
                <li>DriverManager автоматически регистрирует драйверы, которые находятся в classpath.</li>
                <li>Также можно зарегистрировать драйвер вручную с помощью метода <code>Class.forName("имя.драйвера")</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Установление соединения:</span>
            <ul>
                <li>Для установления соединения с базой данных используется метод <code>getConnection(String url, String user, String password)</code>.</li>
                <li>Параметр <code>url</code> указывает путь к базе данных и её тип (например, <code>jdbc:mysql://localhost:3306/mydatabase</code>).</li>
                <li>Параметры <code>user</code> и <code>password</code> используются для аутентификации.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Выбор подходящего драйвера:</span>
            <ul>
                <li>DriverManager проверяет все зарегистрированные драйверы и выбирает тот, который может работать с указанным URL.</li>
                <li>Если подходящий драйвер найден, создаётся соединение с базой данных.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> DriverManager является центральным компонентом JDBC, который упрощает процесс подключения к базе данных.
            Он автоматически управляет драйверами и предоставляет удобный интерфейс для установления соединений.
        </p>
    </div>

    <h2>Пример использования DriverManager</h2>
    <pre><code>
try {
    // Регистрация драйвера (необязательно в современных версиях JDBC)
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Установление соединения с базой данных
    Connection connection = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mydatabase",
        "username",
        "password"
    );

    // Использование соединения для выполнения запросов
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery("SELECT * FROM users");

    // Обработка результатов
    while (resultSet.next()) {
        System.out.println(resultSet.getString("username"));
    }

    // Закрытие соединения
    connection.close();
} catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
}
    </code></pre>
</body>
</html>', 'ORM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f134364e-c33d-4024-979d-43026323bc41', 'В чем разница между Statement, PreparedStatement и CallableStatement?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между Statement, PreparedStatement и CallableStatement</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Разница между Statement, PreparedStatement и CallableStatement</h1>
    <p>
        В JDBC существует три основных интерфейса для выполнения SQL-запросов: <span class="highlight">Statement</span>,
        <span class="highlight">PreparedStatement</span> и <span class="highlight">CallableStatement</span>. Каждый из них
        имеет свои особенности и используется в разных сценариях.
    </p>

    <h2>Statement</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Интерфейс <code>Statement</code> используется для выполнения простых SQL-запросов без параметров.</li>
                <li>Запросы создаются в виде строк и передаются напрямую в метод <code>executeQuery</code> или <code>executeUpdate</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Простота использования для статических запросов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Не поддерживает параметризацию, что может привести к уязвимостям, таким как SQL-инъекции.</li>
                <li>Каждый запрос компилируется заново, что снижает производительность при многократном выполнении.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
Statement statement = connection.createStatement();
ResultSet resultSet = statement.executeQuery("SELECT * FROM users");
            </code></pre>
        </li>
    </ul>

    <h2>PreparedStatement</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Интерфейс <code>PreparedStatement</code> расширяет <code>Statement</code> и позволяет выполнять параметризованные SQL-запросы.</li>
                <li>Запросы компилируются заранее, а параметры передаются через методы <code>setInt</code>, <code>setString</code> и другие.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Повышенная производительность за счёт предварительной компиляции запросов.</li>
                <li>Защита от SQL-инъекций благодаря параметризации.</li>
                <li>Удобство для многократного выполнения одного и того же запроса с разными параметрами.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Требует больше кода для настройки параметров.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM users WHERE id = ?");
preparedStatement.setInt(1, 10);
ResultSet resultSet = preparedStatement.executeQuery();
            </code></pre>
        </li>
    </ul>

    <h2>CallableStatement</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Интерфейс <code>CallableStatement</code> расширяет <code>PreparedStatement</code> и используется для вызова хранимых процедур в базе данных.</li>
                <li>Поддерживает входные (<code>IN</code>), выходные (<code>OUT</code>) и входно-выходные (<code>INOUT</code>) параметры.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Позволяет использовать сложную логику, реализованную на стороне базы данных.</li>
                <li>Поддерживает возврат нескольких результатов и выходных параметров.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Требует знания синтаксиса вызова хранимых процедур для конкретной СУБД.</li>
                <li>Может быть сложнее в использовании по сравнению с <code>Statement</code> и <code>PreparedStatement</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
CallableStatement callableStatement = connection.prepareCall("{call get_user_details(?, ?)}");
callableStatement.setInt(1, 10);
callableStatement.registerOutParameter(2, Types.VARCHAR);
callableStatement.execute();
String userName = callableStatement.getString(2);
            </code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между <code>Statement</code>, <code>PreparedStatement</code> и <code>CallableStatement</code> зависит
            от конкретной задачи. Используйте <code>Statement</code> для простых запросов, <code>PreparedStatement</code> для параметризованных запросов
            и <code>CallableStatement</code> для работы с хранимыми процедурами.
        </p>
    </div>
</body>
</html>', 'ORM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('02c46047-7e45-47bd-8e06-440423591e82', 'Как вы осуществляете подключение к базе данных в JDBC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Подключение к базе данных в JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Подключение к базе данных в JDBC</h1>
    <p>
        Подключение к базе данных в JDBC осуществляется с помощью класса <span class="highlight">DriverManager</span> и интерфейса
        <span class="highlight">Connection</span>. Этот процесс включает регистрацию драйвера базы данных и установление соединения
        с использованием URL, имени пользователя и пароля.
    </p>

    <h2>Шаги для подключения к базе данных</h2>
    <ul>
        <li>
            <span class="highlight">1. Регистрация драйвера:</span>
            <ul>
                <li>Драйвер базы данных должен быть зарегистрирован в приложении.</li>
                <li>В современных версиях JDBC (начиная с JDBC 4.0) драйвер регистрируется автоматически, если он находится в classpath.</li>
                <li>Для ручной регистрации можно использовать метод <code>Class.forName("имя.драйвера")</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Установление соединения:</span>
            <ul>
                <li>Используйте метод <code>DriverManager.getConnection(String url, String user, String password)</code> для подключения к базе данных.</li>
                <li>Параметр <code>url</code> указывает путь к базе данных и её тип (например, <code>jdbc:mysql://localhost:3306/mydatabase</code>).</li>
                <li>Параметры <code>user</code> и <code>password</code> используются для аутентификации.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Использование соединения:</span>
            <ul>
                <li>После успешного подключения объект <code>Connection</code> используется для создания объектов <code>Statement</code>,
                    <code>PreparedStatement</code> или <code>CallableStatement</code>.</li>
                <li>Эти объекты позволяют выполнять SQL-запросы и обрабатывать результаты.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Закрытие соединения:</span>
            <ul>
                <li>После завершения работы с базой данных соединение должно быть закрыто с помощью метода <code>close()</code>.</li>
                <li>Это освобождает ресурсы и предотвращает утечки памяти.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Всегда закрывайте соединение с базой данных после завершения работы, чтобы избежать
            утечек ресурсов. Для этого можно использовать блок <code>try-with-resources</code>, который автоматически
            закрывает ресурсы.
        </p>
    </div>

    <h2>Пример подключения к базе данных</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnectionExample {
    public static void main(String[] args) {
        // URL для подключения к базе данных MySQL
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        // Использование try-with-resources для автоматического закрытия соединения
        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            System.out.println("Соединение с базой данных установлено!");

            // Выполнение SQL-запросов через connection
            // Например, создание Statement и выполнение запроса
        } catch (SQLException e) {
            System.out.println("Ошибка при подключении к базе данных:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Типичные URL для разных СУБД</h2>
    <ul>
        <li><span class="highlight">MySQL:</span> <code>jdbc:mysql://localhost:3306/имя_базы</code></li>
        <li><span class="highlight">PostgreSQL:</span> <code>jdbc:postgresql://localhost:5432/имя_базы</code></li>
        <li><span class="highlight">Oracle:</span> <code>jdbc:oracle:thin:@localhost:1521:имя_базы</code></li>
        <li><span class="highlight">SQLite:</span> <code>jdbc:sqlite:путь_к_файлу_базы</code></li>
    </ul>
</body>
</html>', 'ORM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6605a4ea-2078-4af6-9b71-ae08a36572b7', 'Как вы обрабатываете транзакции в JDBC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Обработка транзакций в JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Обработка транзакций в JDBC</h1>
    <p>
        В JDBC транзакции позволяют группировать несколько SQL-операций в одну логическую единицу работы. Это обеспечивает
        целостность данных, так как все операции либо выполняются успешно, либо откатываются в случае ошибки. Управление
        транзакциями осуществляется через интерфейс <span class="highlight">Connection</span>.
    </p>

    <h2>Основные шаги для работы с транзакциями</h2>
    <ul>
        <li>
            <span class="highlight">1. Отключение автоматического коммита:</span>
            <ul>
                <li>По умолчанию JDBC автоматически фиксирует (коммитит) каждую операцию.</li>
                <li>Для управления транзакциями вручную необходимо отключить автоматический коммит с помощью метода
                    <code>setAutoCommit(false)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Выполнение операций:</span>
            <ul>
                <li>После отключения автоматического коммита выполняются SQL-операции (например, <code>INSERT</code>,
                    <code>UPDATE</code>, <code>DELETE</code>).</li>
                <li>Все операции будут частью одной транзакции.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Фиксация транзакции:</span>
            <ul>
                <li>Если все операции выполнены успешно, транзакция фиксируется с помощью метода <code>commit()</code>.</li>
                <li>После этого изменения сохраняются в базе данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Откат транзакции:</span>
            <ul>
                <li>Если произошла ошибка, транзакция откатывается с помощью метода <code>rollback()</code>.</li>
                <li>Все изменения, сделанные в рамках транзакции, отменяются.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">5. Включение автоматического коммита (опционально):</span>
            <ul>
                <li>После завершения работы с транзакциями можно снова включить автоматический коммит с помощью
                    <code>setAutoCommit(true)</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Всегда используйте блок <code>try-catch</code> для обработки исключений при работе
            с транзакциями. Это гарантирует, что в случае ошибки транзакция будет откачена, а ресурсы корректно закрыты.
        </p>
    </div>

    <h2>Пример работы с транзакциями</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class TransactionExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            // Отключение автоматического коммита
            connection.setAutoCommit(false);

            try (Statement statement = connection.createStatement()) {
                // Выполнение операций в рамках транзакции
                statement.executeUpdate("INSERT INTO users (name, email) VALUES (\'Alice\', \'alice@example.com\')");
                statement.executeUpdate("UPDATE accounts SET balance = balance - 100 WHERE user_id = 1");
                statement.executeUpdate("UPDATE accounts SET balance = balance + 100 WHERE user_id = 2");

                // Фиксация транзакции
                connection.commit();
                System.out.println("Транзакция успешно завершена.");
            } catch (SQLException e) {
                // Откат транзакции в случае ошибки
                connection.rollback();
                System.out.println("Транзакция откачена из-за ошибки:");
                e.printStackTrace();
            }
        } catch (SQLException e) {
            System.out.println("Ошибка при подключении к базе данных:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Ключевые методы для управления транзакциями</h2>
    <ul>
        <li><span class="highlight">setAutoCommit(boolean autoCommit):</span> Включает или отключает автоматический коммит.</li>
        <li><span class="highlight">commit():</span> Фиксирует текущую транзакцию.</li>
        <li><span class="highlight">rollback():</span> Откатывает текущую транзакцию.</li>
        <li><span class="highlight">setSavepoint():</span> Создаёт точку сохранения (savepoint) внутри транзакции, к которой можно вернуться.</li>
        <li><span class="highlight">releaseSavepoint(Savepoint savepoint):</span> Освобождает точку сохранения.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Совет:</span> Используйте точки сохранения (savepoints) для более гибкого управления транзакциями.
            Это позволяет откатить часть транзакции, не отменяя её полностью.
        </p>
    </div>
</body>
</html>', 'ORM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d4170597-3a52-47d2-acbb-984ad1f47418', 'Как обрабатывать исключения в JDBC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Обработка исключений в JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Обработка исключений в JDBC</h1>
    <p>
        В JDBC исключения обрабатываются с помощью класса <span class="highlight">SQLException</span>, который предоставляет информацию
        об ошибках, возникающих при работе с базой данных. Правильная обработка исключений важна для обеспечения
        стабильности приложения и корректного управления ресурсами.
    </p>

    <h2>Основные аспекты обработки исключений в JDBC</h2>
    <ul>
        <li>
            <span class="highlight">1. Использование try-catch:</span>
            <ul>
                <li>Все операции, связанные с базой данных, должны быть обёрнуты в блок <code>try-catch</code> для обработки
                    возможных исключений.</li>
                <li>Класс <code>SQLException</code> является проверяемым исключением, поэтому его необходимо явно обрабатывать.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Получение информации об ошибке:</span>
            <ul>
                <li>Класс <code>SQLException</code> предоставляет методы для получения деталей об ошибке, такие как
                    <code>getMessage()</code>, <code>getErrorCode()</code> и <code>getSQLState()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Закрытие ресурсов:</span>
            <ul>
                <li>Все ресурсы (например, <code>Connection</code>, <code>Statement</code>, <code>ResultSet</code>) должны быть
                    закрыты в блоке <code>finally</code> или с использованием <code>try-with-resources</code>.</li>
                <li>Это предотвращает утечки ресурсов и обеспечивает стабильность приложения.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Обработка транзакций:</span>
            <ul>
                <li>В случае ошибки транзакции должны быть откачены с помощью метода <code>rollback()</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Всегда закрывайте ресурсы, даже если возникло исключение. Это можно сделать
            в блоке <code>finally</code> или с помощью <code>try-with-resources</code>, который автоматически закрывает ресурсы.
        </p>
    </div>

    <h2>Пример обработки исключений в JDBC</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ExceptionHandlingExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";
        Connection connection = null;
        Statement statement = null;

        try {
            // Установление соединения
            connection = DriverManager.getConnection(url, user, password);
            statement = connection.createStatement();

            // Выполнение SQL-запроса
            statement.executeUpdate("INSERT INTO users (name, email) VALUES (\'Bob\', \'bob@example.com\')");
        } catch (SQLException e) {
            // Обработка исключения
            System.out.println("Произошла ошибка SQL:");
            System.out.println("Сообщение: " + e.getMessage());
            System.out.println("Код ошибки: " + e.getErrorCode());
            System.out.println("SQLState: " + e.getSQLState());
        } finally {
            // Закрытие ресурсов
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                System.out.println("Ошибка при закрытии ресурсов:");
                e.printStackTrace();
            }
        }
    }
}
    </code></pre>

    <h2>Методы класса SQLException</h2>
    <ul>
        <li><span class="highlight">getMessage():</span> Возвращает сообщение об ошибке.</li>
        <li><span class="highlight">getErrorCode():</span> Возвращает код ошибки, специфичный для базы данных.</li>
        <li><span class="highlight">getSQLState():</span> Возвращает стандартный код состояния SQL (SQLState).</li>
        <li><span class="highlight">getNextException():</span> Возвращает следующее исключение в цепочке (если есть).</li>
    </ul>

    <h2>Использование try-with-resources</h2>
    <p>
        Начиная с Java 7, можно использовать <code>try-with-resources</code> для автоматического закрытия ресурсов. Это
        упрощает код и гарантирует, что ресурсы будут закрыты даже в случае исключения.
    </p>
    <pre><code>
try (Connection connection = DriverManager.getConnection(url, user, password);
     Statement statement = connection.createStatement()) {
    // Выполнение SQL-запроса
    statement.executeUpdate("INSERT INTO users (name, email) VALUES (\'Charlie\', \'charlie@example.com\')");
} catch (SQLException e) {
    System.out.println("Ошибка SQL: " + e.getMessage());
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Совет:</span> Используйте <code>try-with-resources</code> для работы с ресурсами, так как это
            упрощает код и предотвращает утечки ресурсов.
        </p>
    </div>
</body>
</html>', 'ORM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('89c4702c-d44b-420a-a669-6bba5b979682', 'Как выполнить запрос к базе данных и получить данные с помощью JDBC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Выполнение запросов и получение данных в JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Выполнение запросов и получение данных в JDBC</h1>
    <p>
        В JDBC выполнение запросов к базе данных и получение данных осуществляется с помощью интерфейсов
        <span class="highlight">Statement</span>, <span class="highlight">PreparedStatement</span> и <span class="highlight">ResultSet</span>.
        Эти интерфейсы позволяют выполнять SQL-запросы и обрабатывать результаты.
    </p>

    <h2>Основные шаги для выполнения запроса и получения данных</h2>
    <ul>
        <li>
            <span class="highlight">1. Установление соединения:</span>
            <ul>
                <li>Используйте <code>DriverManager.getConnection()</code> для подключения к базе данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Создание Statement или PreparedStatement:</span>
            <ul>
                <li>Для выполнения SQL-запросов создайте объект <code>Statement</code> или <code>PreparedStatement</code>.</li>
                <li><code>Statement</code> используется для простых запросов, а <code>PreparedStatement</code> — для параметризованных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Выполнение запроса:</span>
            <ul>
                <li>Используйте метод <code>executeQuery()</code> для выполнения SELECT-запросов и получения данных.</li>
                <li>Используйте метод <code>executeUpdate()</code> для выполнения INSERT, UPDATE или DELETE-запросов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Обработка результатов:</span>
            <ul>
                <li>Результаты SELECT-запросов возвращаются в виде объекта <code>ResultSet</code>.</li>
                <li>Используйте методы <code>next()</code>, <code>getInt()</code>, <code>getString()</code> и другие для извлечения данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">5. Закрытие ресурсов:</span>
            <ul>
                <li>После завершения работы с результатами закройте <code>ResultSet</code>, <code>Statement</code> и <code>Connection</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Всегда закрывайте ресурсы (<code>ResultSet</code>, <code>Statement</code>, <code>Connection</code>)
            после использования, чтобы избежать утечек памяти и ресурсов.
        </p>
    </div>

    <h2>Пример выполнения SELECT-запроса</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SelectExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password);
             Statement statement = connection.createStatement()) {

            // Выполнение SELECT-запроса
            String sql = "SELECT id, name, email FROM users";
            ResultSet resultSet = statement.executeQuery(sql);

            // Обработка результатов
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");

                System.out.println("ID: " + id + ", Name: " + name + ", Email: " + email);
            }
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении запроса:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Пример выполнения параметризованного запроса с PreparedStatement</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PreparedStatementExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            // Создание параметризованного запроса
            String sql = "SELECT name, email FROM users WHERE id = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                // Установка параметра
                preparedStatement.setInt(1, 10);

                // Выполнение запроса
                ResultSet resultSet = preparedStatement.executeQuery();

                // Обработка результатов
                while (resultSet.next()) {
                    String name = resultSet.getString("name");
                    String email = resultSet.getString("email");

                    System.out.println("Name: " + name + ", Email: " + email);
                }
            }
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении запроса:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Основные методы ResultSet</h2>
    <ul>
        <li><span class="highlight">next():</span> Перемещает курсор к следующей строке результата.</li>
        <li><span class="highlight">getInt(String columnName):</span> Возвращает значение столбца как <code>int</code>.</li>
        <li><span class="highlight">getString(String columnName):</span> Возвращает значение столбца как <code>String</code>.</li>
        <li><span class="highlight">getBoolean(String columnName):</span> Возвращает значение столбца как <code>boolean</code>.</li>
        <li><span class="highlight">getDate(String columnName):</span> Возвращает значение столбца как <code>java.sql.Date</code>.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Совет:</span> Используйте <code>PreparedStatement</code> для параметризованных запросов, так как это
            повышает безопасность (защита от SQL-инъекций) и производительность (предварительная компиляция запросов).
        </p>
    </div>
</body>
</html>', 'ORM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ab172469-a25b-4338-a4b6-25d982d23ce9', 'Что такое соединение с пулом соединений и зачем оно нужно?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Соединение с пулом соединений в JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Соединение с пулом соединений в JDBC</h1>
    <p>
        <span class="highlight">Пул соединений (Connection Pooling)</span> — это механизм управления соединениями с базой данных, который позволяет
        повторно использовать уже установленные соединения вместо создания новых для каждого запроса. Это значительно
        повышает производительность и эффективность работы с базой данных.
    </p>

    <h2>Зачем нужен пул соединений?</h2>
    <ul>
        <li>
            <span class="highlight">1. Улучшение производительности:</span>
            <ul>
                <li>Создание нового соединения с базой данных — это ресурсоёмкая операция.</li>
                <li>Пул соединений позволяет повторно использовать существующие соединения, что снижает накладные расходы.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Эффективное управление ресурсами:</span>
            <ul>
                <li>Пул ограничивает количество одновременно открытых соединений, предотвращая перегрузку базы данных.</li>
                <li>Это особенно важно для приложений с высокой нагрузкой.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Упрощение управления соединениями:</span>
            <ul>
                <li>Пул автоматически управляет жизненным циклом соединений (открытие, закрытие, проверка активности).</li>
                <li>Разработчику не нужно вручную управлять соединениями.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Масштабируемость:</span>
            <ul>
                <li>Пул соединений позволяет приложению эффективно масштабироваться, обрабатывая больше запросов без
                    увеличения нагрузки на базу данных.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование пула соединений особенно полезно в многопоточных приложениях и
            веб-приложениях, где множество пользователей одновременно обращаются к базе данных.
        </p>
    </div>

    <h2>Как работает пул соединений?</h2>
    <ul>
        <li>
            <span class="highlight">1. Инициализация пула:</span>
            <ul>
                <li>При запуске приложения создаётся фиксированное количество соединений с базой данных.</li>
                <li>Эти соединения хранятся в пуле в состоянии "ожидания".</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Запрос соединения:</span>
            <ul>
                <li>Когда приложению нужно выполнить запрос к базе данных, оно запрашивает соединение из пула.</li>
                <li>Если в пуле есть доступное соединение, оно предоставляется приложению.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Использование соединения:</span>
            <ul>
                <li>Приложение использует соединение для выполнения SQL-запросов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Возврат соединения:</span>
            <ul>
                <li>После завершения работы соединение возвращается в пул для повторного использования.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">5. Управление пулом:</span>
            <ul>
                <li>Пул отслеживает состояние соединений (активные, неактивные) и при необходимости создаёт новые
                    или закрывает неиспользуемые соединения.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования пула соединений (на примере HikariCP)</h2>
    <pre><code>
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectionPoolExample {
    public static void main(String[] args) {
        // Настройка пула соединений
        HikariConfig config = new HikariConfig();
        config.setJdbcUrl("jdbc:mysql://localhost:3306/mydatabase");
        config.setUsername("username");
        config.setPassword("password");
        config.setMaximumPoolSize(10); // Максимальное количество соединений в пуле

        // Создание пула
        try (HikariDataSource dataSource = new HikariDataSource(config)) {
            // Получение соединения из пула
            try (Connection connection = dataSource.getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM users")) {

                // Выполнение запроса
                ResultSet resultSet = preparedStatement.executeQuery();

                // Обработка результатов
                while (resultSet.next()) {
                    System.out.println("User: " + resultSet.getString("name"));
                }
            }
        } catch (SQLException e) {
            System.out.println("Ошибка при работе с базой данных:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Популярные библиотеки для пула соединений</h2>
    <ul>
        <li><span class="highlight">HikariCP:</span> Высокопроизводительный пул соединений, рекомендуемый для большинства приложений.</li>
        <li><span class="highlight">Apache DBCP:</span> Пул соединений от Apache, широко используемый в Java-приложениях.</li>
        <li><span class="highlight">C3P0:</span> Ещё одна популярная библиотека для пула соединений.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Совет:</span> Используйте HikariCP, так как он является одним из самых быстрых и надёжных пулов
            соединений на сегодняшний день.
        </p>
    </div>
</body>
</html>', 'ORM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('58d00764-3924-4873-895d-9279ffeff5ed', 'Как вы можете избежать SQL-инъекций при работе с JDBC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Избежание SQL-инъекций в JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Избежание SQL-инъекций в JDBC</h1>
    <p>
        <span class="highlight">SQL-инъекция</span> — это уязвимость, которая возникает, когда злоумышленник может вставить вредоносный SQL-код
        в запрос к базе данных. Это может привести к утечке данных, повреждению базы данных или несанкционированному
        доступу. В JDBC можно избежать SQL-инъекций, следуя определённым практикам.
    </p>

    <h2>Основные методы предотвращения SQL-инъекций</h2>
    <ul>
        <li>
            <span class="highlight">1. Использование PreparedStatement:</span>
            <ul>
                <li>Параметризованные запросы с использованием <code>PreparedStatement</code> — это самый эффективный способ
                    предотвращения SQL-инъекций.</li>
                <li>Параметры передаются отдельно от SQL-запроса, что исключает возможность вставки вредоносного кода.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Валидация входных данных:</span>
            <ul>
                <li>Проверяйте и очищайте все входные данные перед использованием в SQL-запросах.</li>
                <li>Используйте регулярные выражения или библиотеки для валидации.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Использование ORM:</span>
            <ul>
                <li>ORM (Object-Relational Mapping) frameworks, такие как Hibernate, автоматически экранируют входные данные
                    и предотвращают SQL-инъекции.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Ограничение прав доступа:</span>
            <ul>
                <li>Используйте учётные записи с минимальными правами доступа для выполнения SQL-запросов.</li>
                <li>Это ограничит потенциальный ущерб в случае успешной атаки.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Никогда не используйте конкатенацию строк для создания SQL-запросов, так как это
            делает приложение уязвимым к SQL-инъекциям.
        </p>
    </div>

    <h2>Пример использования PreparedStatement для предотвращения SQL-инъекций</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PreventSQLInjectionExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            // Параметризованный запрос
            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                // Установка параметров
                preparedStatement.setString(1, "admin");
                preparedStatement.setString(2, "password123");

                // Выполнение запроса
                ResultSet resultSet = preparedStatement.executeQuery();

                // Обработка результатов
                while (resultSet.next()) {
                    System.out.println("User: " + resultSet.getString("username"));
                }
            }
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении запроса:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Пример уязвимого кода (не используйте так!)</h2>
    <pre><code>
// Уязвимый код: конкатенация строк
String username = "admin"; // Предположим, что это ввод пользователя
String password = "password123"; // Предположим, что это ввод пользователя
String sql = "SELECT * FROM users WHERE username = \'" + username + "\' AND password = \'" + password + "\'";
Statement statement = connection.createStatement();
ResultSet resultSet = statement.executeQuery(sql);
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Почему это опасно:</span> Если злоумышленник введёт <code>\' OR \'1\'=\'1</code> в поле пароля, запрос
            станет <code>SELECT * FROM users WHERE username = \'admin\' AND password = \'\' OR \'1\'=\'1\'</code>, что вернёт
            все строки из таблицы.
        </p>
    </div>

    <h2>Дополнительные рекомендации</h2>
    <ul>
        <li><span class="highlight">Используйте хранимые процедуры:</span> Хранимые процедуры также помогают предотвратить SQL-инъекции, так как параметры передаются отдельно от SQL-кода.</li>
        <li><span class="highlight">Экранируйте специальные символы:</span> Если вы не можете использовать <code>PreparedStatement</code>, экранируйте специальные символы (например, кавычки) в пользовательском вводе.</li>
        <li><span class="highlight">Логируйте ошибки безопасно:</span> Не выводите SQL-запросы или ошибки базы данных в логах, так как это может помочь злоумышленнику.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Совет:</span> Всегда используйте <code>PreparedStatement</code> для работы с пользовательским вводом.
            Это самый надёжный способ предотвращения SQL-инъекций.
        </p>
    </div>
</body>
</html>', 'ORM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9e504d89-fbcc-4f57-8e39-1fa1e53c0506', 'Какие методы вы можете использовать для повышения производительности JDBC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Повышение производительности JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Повышение производительности JDBC</h1>
    <p>
        Производительность JDBC-приложений может быть значительно улучшена за счёт использования различных методов и
        оптимизаций. Ниже приведены основные подходы для повышения эффективности работы с базой данных.
    </p>

    <h2>Основные методы повышения производительности</h2>
    <ul>
        <li>
            <span class="highlight">1. Использование пула соединений:</span>
            <ul>
                <li>Пул соединений позволяет повторно использовать соединения с базой данных, что снижает накладные
                    расходы на их создание и закрытие.</li>
                <li>Пример библиотек: HikariCP, Apache DBCP.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Использование PreparedStatement:</span>
            <ul>
                <li>Параметризованные запросы с <code>PreparedStatement</code> компилируются один раз и могут
                    выполняться многократно, что повышает производительность.</li>
                <li>Также предотвращает SQL-инъекции.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Пакетная обработка запросов:</span>
            <ul>
                <li>Используйте метод <code>addBatch()</code> и <code>executeBatch()</code> для выполнения нескольких
                    запросов за один раз.</li>
                <li>Это уменьшает количество сетевых запросов к базе данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Оптимизация запросов:</span>
            <ul>
                <li>Используйте индексы в базе данных для ускорения поиска.</li>
                <li>Избегайте сложных запросов с множеством JOIN, если это возможно.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">5. Кэширование данных:</span>
            <ul>
                <li>Кэшируйте часто запрашиваемые данные на уровне приложения, чтобы уменьшить количество запросов
                    к базе данных.</li>
                <li>Пример библиотек: Ehcache, Redis.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">6. Использование правильного размера выборки:</span>
            <ul>
                <li>Указывайте разумный размер выборки (fetch size) для <code>ResultSet</code>, чтобы уменьшить
                    количество сетевых запросов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">7. Минимизация количества соединений:</span>
            <ul>
                <li>Используйте транзакции для группировки операций и уменьшения количества открытых соединений.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">8. Использование ORM:</span>
            <ul>
                <li>ORM frameworks, такие как Hibernate, могут автоматически оптимизировать запросы и управлять
                    соединениями.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Оптимизация производительности должна быть сбалансированной. Не стоит
            чрезмерно оптимизировать код, если это не даёт значительного прироста производительности.
        </p>
    </div>

    <h2>Пример использования пакетной обработки</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BatchProcessingExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password);
             PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users (name, email) VALUES (?, ?)")) {

            // Добавление запросов в пакет
            preparedStatement.setString(1, "Alice");
            preparedStatement.setString(2, "alice@example.com");
            preparedStatement.addBatch();

            preparedStatement.setString(1, "Bob");
            preparedStatement.setString(2, "bob@example.com");
            preparedStatement.addBatch();

            // Выполнение пакета
            int[] results = preparedStatement.executeBatch();
            System.out.println("Добавлено строк: " + results.length);
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении пакетной обработки:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Пример настройки размера выборки (fetch size)</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class FetchSizeExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password);
             Statement statement = connection.createStatement()) {

            // Установка размера выборки
            statement.setFetchSize(100);

            // Выполнение запроса
            ResultSet resultSet = statement.executeQuery("SELECT * FROM users");

            // Обработка результатов
            while (resultSet.next()) {
                System.out.println("User: " + resultSet.getString("name"));
            }
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении запроса:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Дополнительные рекомендации</h2>
    <ul>
        <li><span class="highlight">Используйте индексы:</span> Убедитесь, что в базе данных созданы индексы для часто используемых столбцов.</li>
        <li><span class="highlight">Минимизируйте количество запросов:</span> Объединяйте несколько запросов в один, если это возможно.</li>
        <li><span class="highlight">Используйте асинхронные запросы:</span> Для приложений с высокой нагрузкой рассмотрите возможность использования асинхронных запросов.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Совет:</span> Регулярно анализируйте производительность вашего приложения с помощью
            профилировщиков и инструментов мониторинга баз данных, чтобы выявлять узкие места.
        </p>
    </div>
</body>
</html>', 'ORM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('701a9492-c037-42a5-b52c-e097c5076155', 'Как получить текущую дату с использованием Date Time API из Java 8?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Получение текущей даты с использованием Date Time API в Java 8</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Получение текущей даты с использованием Date Time API в Java 8</h1>
    <p>
        В Java 8 для получения текущей даты можно использовать класс <code>LocalDate</code> из пакета
        <code>java.time</code>. Этот класс предоставляет простой и удобный способ работы с датами.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код демонстрирует, как получить текущую дату:
    </p>
    <pre><code>import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
        LocalDate currentDate = LocalDate.now(); // получение текущей даты
        System.out.println("Текущая дата: " + currentDate);
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">LocalDate.now():</span> Статический метод <code>now()</code> возвращает объект <code>LocalDate</code>,
            содержащий текущую дату.
        </li>
        <li>
            <span class="highlight">System.out.println():</span> Выводит текущую дату на экран.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>Текущая дата: 2023-10-05</code></pre>

    <h2>Итог</h2>
    <p>
        Использование <code>LocalDate.now()</code> — это простой и эффективный способ получить
        текущую дату в Java 8. Класс <code>LocalDate</code> предоставляет множество методов для
        работы с датами, что делает его удобным инструментом для выполнения различных
        операций с датами.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6da384e6-2602-4e6f-bad3-55906cdd28d8', 'Каким образом из вложенного класса получить доступ к полю внешнего  класса?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Доступ к полю внешнего класса из вложенного класса</title>
     <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Доступ к полю внешнего класса из вложенного класса</h1>
        <p>
            В Java вложенные классы могут обращаться к полям внешнего класса, но способ доступа зависит
            от типа вложенного класса:
        </p>
        <ul>
            <li>
                <span class="highlight">Статический вложенный класс:</span> Имеет прямой доступ только к статическим полям
                обрамляющего класса.
            </li>
            <li>
                <span class="highlight">Простой внутренний класс (нестатический):</span> Может обратиться к любому полю
                внешнего класса напрямую. Если у вложенного класса уже существует поле с таким же именем,
                то обращаться к полю внешнего класса следует через ссылку на его экземпляр. Например:
                <code>Outer.this.field</code>.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Использование <code>Outer.this.field</code> позволяет явно указать, что вы обращаетесь
                к полю внешнего класса, а не к полю вложенного класса с таким же именем. Это особенно
                полезно в случаях, когда имена полей совпадают.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7fa0732a-7ae5-4ee1-832d-96ef6e08c4c2', 'Для чего используется PushbackInputStream?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PushbackInputStream в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>PushbackInputStream в Java</h1>
    <p>
        Класс <code>PushbackInputStream</code> является подклассом <code>InputStream</code> и предоставляет возможность "заглянуть" во входной поток, не извлекая данные окончательно. Это достигается за счет возврата прочитанного байта обратно в поток с помощью метода <code>unread()</code>.
    </p>

    <h2>Основные особенности PushbackInputStream</h2>
    <ul>
        <li>
            <span class="highlight">Возврат байта в поток:</span> <code>PushbackInputStream</code> позволяет прочитать байт из потока, а затем вернуть его обратно в поток с помощью метода <code>unread()</code>.
        </li>
        <li>
            <span class="highlight">Буферизация:</span> Класс использует внутренний буфер для хранения возвращенных байтов, что позволяет "заглянуть" в поток и увидеть, что будет прочитано следующим.
        </li>
        <li>
            <span class="highlight">Метод unread():</span> Этот метод позволяет вернуть один или несколько байтов обратно в поток, чтобы они могли быть прочитаны снова.
        </li>
    </ul>

    <h2>Пример использования PushbackInputStream</h2>
    <pre>
        <code>
import java.io.*;

public class PushbackInputStreamExample {
    public static void main(String[] args) throws IOException {
        String data = "Hello, PushbackInputStream!";
        byte[] byteArray = data.getBytes();

        try (InputStream inputStream = new ByteArrayInputStream(byteArray);
             PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream)) {

            int byteRead;
            while ((byteRead = pushbackInputStream.read()) != -1) {
                System.out.print((char) byteRead);

                // Возвращаем байт обратно в поток, если это буква \'P\'
                if ((char) byteRead == \'P\') {
                    pushbackInputStream.unread(byteRead);
                    System.out.print(" (Returned) ");
                }
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используется <code>PushbackInputStream</code> для чтения данных из массива байтов. Если прочитанный байт является буквой \'P\', он возвращается обратно в поток с помощью метода <code>unread()</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>PushbackInputStream</code> полезен в ситуациях, когда необходимо проанализировать данные перед их окончательным чтением, например, при разборе текстовых данных или лексическом анализе.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <code>PushbackInputStream</code> позволяет "заглянуть" в поток и вернуть байты обратно с помощью метода <code>unread()</code>.
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream);
int byteRead = pushbackInputStream.read();
pushbackInputStream.unread(byteRead);
                </code>
            </pre>
        </li>
        <li>
            Применяется для анализа данных перед их окончательным чтением.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5529c9f2-0583-42b9-afd1-4e869dec0a1c', 'Какие классы позволяют преобразовать байтовые потоки в символьные и  обратно?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Преобразование байтовых потоков в символьные и обратно</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Преобразование байтовых потоков в символьные и обратно</h1>
    <p>
        В Java для преобразования байтовых потоков в символьные и обратно используются классы <code>OutputStreamWriter</code> и <code>InputStreamReader</code>. Эти классы служат "мостами" между байтовыми и символьными потоками.
    </p>

    <h2>OutputStreamWriter</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span> Класс <code>OutputStreamWriter</code> преобразует символы в байты и записывает их в байтовый поток <code>OutputStream</code>.
        </li>
        <li>
            <span class="highlight">Использование:</span> Этот класс полезен, когда нужно записать текстовые данные в байтовый поток, например, в файл или сетевое соединение.
        </li>
    </ul>

    <h2>InputStreamReader</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span> Класс <code>InputStreamReader</code> читает байты из байтового потока <code>InputStream</code> и преобразует их в символы.
        </li>
        <li>
            <span class="highlight">Использование:</span> Этот класс полезен, когда нужно прочитать текстовые данные из байтового потока, например, из файла или сетевого соединения.
        </li>
    </ul>

    <h2>Пример использования OutputStreamWriter</h2>
    <pre>
        <code>
import java.io.*;

public class OutputStreamWriterExample {
    public static void main(String[] args) throws IOException {
        try (OutputStream outputStream = new FileOutputStream("output.txt");
             Writer writer = new OutputStreamWriter(outputStream, "UTF-8")) {
            writer.write("Hello, OutputStreamWriter!");
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере <code>OutputStreamWriter</code> используется для записи текстовых данных в файл в кодировке UTF-8.
    </p>

    <h2>Пример использования InputStreamReader</h2>
    <pre>
        <code>
import java.io.*;

public class InputStreamReaderExample {
    public static void main(String[] args) throws IOException {
        try (InputStream inputStream = new FileInputStream("input.txt");
             Reader reader = new InputStreamReader(inputStream, "UTF-8")) {
            int data;
            while ((data = reader.read()) != -1) {
                System.out.print((char) data);
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере <code>InputStreamReader</code> используется для чтения текстовых данных из файла в кодировке UTF-8.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При использовании <code>OutputStreamWriter</code> и <code>InputStreamReader</code> можно указать кодировку, которая будет использоваться для преобразования символов в байты и обратно. Если кодировка не указана, используется кодировка по умолчанию.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <code>OutputStreamWriter</code>:
            <ul>
                <li>Преобразует символы в байты.</li>
                <li>Используется для записи текстовых данных в байтовый поток.</li>
            </ul>
        </li>
        <li>
            <code>InputStreamReader</code>:
            <ul>
                <li>Преобразует байты в символы.</li>
                <li>Используется для чтения текстовых данных из байтового потока.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
Writer writer = new OutputStreamWriter(outputStream, "UTF-8");
Reader reader = new InputStreamReader(inputStream, "UTF-8");
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('11e4f1ea-c223-4554-bc59-7a6f81edf51f', 'Как вы обрабатываете большие объемы данных, например, ResultSet с большим количеством записей?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Обработка больших объемов данных в JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Обработка больших объемов данных в JDBC</h1>
    <p>
        При работе с большими объемами данных в JDBC, например, при обработке <span class="highlight">ResultSet</span> с тысячами или миллионами записей,
        важно использовать правильные подходы, чтобы избежать переполнения памяти и повысить производительность.
    </p>

    <h2>Основные методы обработки больших объемов данных</h2>
    <ul>
        <li>
            <span class="highlight">1. Использование потоковой обработки (fetch size):</span>
            <ul>
                <li>Установите размер выборки (<code>fetch size</code>) для <code>ResultSet</code>, чтобы данные загружались
                    частями, а не все сразу.</li>
                <li>Это уменьшает использование памяти и ускоряет обработку.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Постепенная обработка данных:</span>
            <ul>
                <li>Обрабатывайте данные построчно с помощью метода <code>next()</code>, не загружая весь <code>ResultSet</code>
                    в память.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Использование курсоров на стороне сервера:</span>
            <ul>
                <li>Некоторые базы данных поддерживают серверные курсоры, которые позволяют обрабатывать данные
                    постепенно, не загружая их полностью в память клиента.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Пакетная обработка:</span>
            <ul>
                <li>Если данные нужно записать в другую таблицу или систему, используйте пакетную обработку
                    (<code>batch processing</code>) для уменьшения количества сетевых запросов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">5. Ограничение выборки:</span>
            <ul>
                <li>Если возможно, ограничьте количество данных, возвращаемых запросом, с помощью <code>LIMIT</code> и
                    <code>OFFSET</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">6. Использование временных таблиц:</span>
            <ul>
                <li>Для сложных операций с большими данными можно использовать временные таблицы на стороне базы данных.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При обработке больших объемов данных избегайте загрузки всех данных в память,
            так как это может привести к <code>OutOfMemoryError</code>.
        </p>
    </div>

    <h2>Пример использования fetch size для потоковой обработки</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class FetchSizeExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password);
             Statement statement = connection.createStatement()) {

            // Установка размера выборки
            statement.setFetchSize(100); // Загружать по 100 записей за раз

            // Выполнение запроса
            ResultSet resultSet = statement.executeQuery("SELECT * FROM large_table");

            // Постепенная обработка данных
            while (resultSet.next()) {
                String data = resultSet.getString("column_name");
                System.out.println(data);
            }
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении запроса:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Пример использования пакетной обработки для записи данных</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BatchProcessingExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password);
             PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO target_table (column_name) VALUES (?)")) {

            // Отключение автоматического коммита
            connection.setAutoCommit(false);

            // Добавление данных в пакет
            for (int i = 0; i < 10000; i++) {
                preparedStatement.setString(1, "Data " + i);
                preparedStatement.addBatch();

                // Выполнение пакета каждые 1000 записей
                if (i % 1000 == 0) {
                    preparedStatement.executeBatch();
                }
            }

            // Выполнение оставшихся запросов
            preparedStatement.executeBatch();

            // Фиксация транзакции
            connection.commit();
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении пакетной обработки:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Дополнительные рекомендации</h2>
    <ul>
        <li><span class="highlight">Используйте индексы:</span> Убедитесь, что в базе данных созданы индексы для столбцов, используемых в запросах.</li>
        <li><span class="highlight">Оптимизируйте запросы:</span> Убедитесь, что запросы написаны эффективно и не возвращают лишних данных.</li>
        <li><span class="highlight">Используйте параллельную обработку:</span> Если данные можно обрабатывать независимо, рассмотрите возможность использования многопоточности.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Совет:</span> Для работы с очень большими объемами данных рассмотрите использование
            специализированных инструментов, таких как Apache Spark или Hadoop.
        </p>
    </div>
</body>
</html>', 'ORM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8e28ac83-bb1a-4212-8704-d5e0186b251a', 'Как вы можете настроить JDBC для работы с различными базами данных?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Настройка JDBC для работы с различными базами данных</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Настройка JDBC для работы с различными базами данных</h1>
    <p>
        JDBC (Java Database Connectivity) предоставляет универсальный интерфейс для работы с различными базами данных.
        Однако для подключения к каждой СУБД требуется настройка, включая использование правильного драйвера, URL-адреса
        и параметров подключения.
    </p>

    <h2>Основные шаги для настройки JDBC</h2>
    <ul>
        <li>
            <span class="highlight">1. Выбор драйвера:</span>
            <ul>
                <li>Каждая база данных требует своего JDBC-драйвера. Например:
                    <ul>
                        <li>MySQL: <code>com.mysql.cj.jdbc.Driver</code></li>
                        <li>PostgreSQL: <code>org.postgresql.Driver</code></li>
                        <li>Oracle: <code>oracle.jdbc.OracleDriver</code></li>
                        <li>SQLite: <code>org.sqlite.JDBC</code></li>
                    </ul>
                </li>
                <li>Драйвер должен быть добавлен в classpath вашего проекта.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Формирование URL-адреса:</span>
            <ul>
                <li>URL-адрес для подключения к базе данных зависит от типа СУБД. Примеры:
                    <ul>
                        <li>MySQL: <code>jdbc:mysql://localhost:3306/mydatabase</code></li>
                        <li>PostgreSQL: <code>jdbc:postgresql://localhost:5432/mydatabase</code></li>
                        <li>Oracle: <code>jdbc:oracle:thin:@localhost:1521:ORCL</code></li>
                        <li>SQLite: <code>jdbc:sqlite:/path/to/database.db</code></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Установление соединения:</span>
            <ul>
                <li>Используйте метод <code>DriverManager.getConnection()</code> для подключения к базе данных.</li>
                <li>Пример:
                    <pre><code>
Connection connection = DriverManager.getConnection(url, user, password);
                    </code></pre>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Настройка параметров подключения:</span>
            <ul>
                <li>Некоторые базы данных поддерживают дополнительные параметры подключения, такие как кодировка,
                    таймауты и настройки пула соединений.</li>
                <li>Пример для MySQL:
                    <pre><code>
String url = "jdbc:mysql://localhost:3306/mydatabase?useUnicode=true&characterEncoding=UTF-8";
                    </code></pre>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Убедитесь, что используемая версия JDBC-драйвера совместима с версией
            вашей базы данных.
        </p>
    </div>

    <h2>Пример подключения к различным базам данных</h2>

    <h3>MySQL</h3>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            System.out.println("Соединение с MySQL установлено!");
        } catch (SQLException e) {
            System.out.println("Ошибка при подключении к MySQL:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h3>PostgreSQL</h3>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class PostgreSQLExample {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            System.out.println("Соединение с PostgreSQL установлено!");
        } catch (SQLException e) {
            System.out.println("Ошибка при подключении к PostgreSQL:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h3>Oracle</h3>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class OracleExample {
    public static void main(String[] args) {
        String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            System.out.println("Соединение с Oracle установлено!");
        } catch (SQLException e) {
            System.out.println("Ошибка при подключении к Oracle:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h3>SQLite</h3>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLiteExample {
    public static void main(String[] args) {
        String url = "jdbc:sqlite:/path/to/database.db";

        try (Connection connection = DriverManager.getConnection(url)) {
            System.out.println("Соединение с SQLite установлено!");
        } catch (SQLException e) {
            System.out.println("Ошибка при подключении к SQLite:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Дополнительные рекомендации</h2>
    <ul>
        <li><span class="highlight">Используйте пул соединений:</span> Для повышения производительности используйте пул соединений, например, HikariCP.</li>
        <li><span class="highlight">Настройте таймауты:</span> Установите таймауты для запросов и соединений, чтобы избежать зависаний.</li>
        <li><span class="highlight">Используйте ORM:</span> Для упрощения работы с различными базами данных рассмотрите использование ORM, таких как Hibernate.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Совет:</span> Для работы с различными базами данных в одном приложении используйте
            абстракции, такие как интерфейсы или шаблон проектирования DAO (Data Access Object).
        </p>
    </div>
</body>
</html>', 'ORM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('48f511c2-d8c9-4197-a816-d872f4e3fdeb', 'Какие существуют unchecked exception?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unchecked исключения в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Unchecked исключения в Java</h1>
    <p>
        <span class="highlight">Unchecked исключения</span> (непроверяемые исключения) в Java — это исключения,
        которые не проверяются на этапе компиляции. Они являются подклассами
        <code>RuntimeException</code> и могут быть выброшены во время выполнения программы.
    </p>

    <h2>Наиболее часто встречающиеся unchecked исключения</h2>
    <ul>
        <li>
            <span class="highlight">ConcurrentModificationException:</span> Возникает при попытке изменить
            коллекцию во время итерации по ней.
        </li>
        <li>
            <span class="highlight">ArithmeticException:</span> Возникает при выполнении некорректной
            арифметической операции, например, деления на ноль.
        </li>
        <li>
            <span class="highlight">IllegalArgumentException:</span> Возникает при передаче недопустимого
            аргумента в метод.
        </li>
        <li>
            <span class="highlight">IndexOutOfBoundsException:</span> Возникает при попытке доступа к
            элементу массива или коллекции по недопустимому индексу.
        </li>
        <li>
            <span class="highlight">UnsupportedOperationException:</span> Возникает при вызове
            неподдерживаемой операции, например, попытке изменить неизменяемую коллекцию.
        </li>
        <li>
            <span class="highlight">NoSuchElementException:</span> Возникает при попытке получить
            следующий элемент, когда элементы закончились (например, в итераторе).
        </li>
        <li>
            <span class="highlight">ClassCastException:</span> Возникает при попытке привести объект к
            несовместимому типу.
        </li>
        <li>
            <span class="highlight">IllegalStateException:</span> Возникает при вызове метода в
            неподходящем состоянии объекта.
        </li>
        <li>
            <span class="highlight">NullPointerException:</span> Возникает при попытке обращения к
            объекту по ссылке <code>null</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Unchecked исключения не требуют обязательной обработки с
            помощью блока <code>try-catch</code> или объявления в сигнатуре метода с помощью
            <code>throws</code>.
        </p>
    </div>

    <h2>Примеры unchecked исключений</h2>
    <p>
        Примеры кода, которые могут вызвать unchecked исключения:
    </p>
    <pre><code>// NullPointerException
String str = null;
System.out.println(str.length());

// ArithmeticException
int result = 10 / 0;

// IndexOutOfBoundsException
int[] array = new int[5];
System.out.println(array[10]);

// ClassCastException
Object obj = "Hello";
Integer num = (Integer) obj;</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этих примерах показаны типичные ситуации, которые
            приводят к возникновению unchecked исключений.
        </p>
    </div>

    <h2>Обработка unchecked исключений</h2>
    <p>
        Хотя unchecked исключения не требуют обязательной обработки, их можно
        обрабатывать с помощью блока <code>try-catch</code>:
    </p>
    <pre><code>try {
    int[] array = new int[5];
    System.out.println(array[10]); // IndexOutOfBoundsException
} catch (IndexOutOfBoundsException e) {
    System.out.println("Ошибка: выход за пределы массива");
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Обработка unchecked исключений может быть полезной для
            предотвращения аварийного завершения программы и предоставления
            пользователю информативного сообщения об ошибке.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('99e880a2-64aa-4407-b00a-dd6a0cf53bd7', 'Что представляет из себя ошибки класса Error?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ошибки класса Error</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Ошибки класса Error</h1>
    <p>
        Ошибки класса <span class="highlight">Error</span> представляют собой наиболее серьёзные проблемы,
        возникающие на уровне виртуальной машины Java (JVM). Они указывают на
        критические ситуации, которые обычно не могут быть обработаны в программе.
    </p>

    <h2>Особенности ошибок класса Error</h2>
    <ul>
        <li>
            <span class="highlight">Серьёзные проблемы:</span> Ошибки класса <code>Error</code> возникают в
            ситуациях, когда JVM сталкивается с проблемами, которые она не может
            решить. Например, нехватка памяти или переполнение стека.
        </li>
        <li>
            <span class="highlight">Не рекомендуется обрабатывать:</span> Хотя технически возможно
            обработать такие ошибки с помощью блока <code>try-catch</code>, делать это не
            рекомендуется, так как они указывают на серьёзные проблемы, которые
            программа не может исправить.
        </li>
        <li>
            <span class="highlight">Наследование:</span> Ошибки класса <code>Error</code> являются подклассами
            класса <code>Throwable</code>, как и исключения класса <code>Exception</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Ошибки класса <code>Error</code> не следует путать с исключениями
            класса <code>Exception</code>. Исключения <code>Exception</code> обычно указывают на проблемы,
            которые можно обработать в программе, тогда как <code>Error</code> — на проблемы
            уровня JVM.
        </p>
    </div>

    <h2>Примеры ошибок класса Error</h2>
    <p>
        Наиболее распространённые ошибки класса <code>Error</code>:
    </p>
    <ul>
        <li>
            <span class="highlight">OutOfMemoryError:</span> Возникает, когда JVM не может выделить
            достаточно памяти для создания нового объекта.
        </li>
        <li>
            <span class="highlight">StackOverflowError:</span> Возникает, когда стек вызовов методов
            переполняется, например, из-за бесконечной рекурсии.
        </li>
        <li>
            <span class="highlight">VirtualMachineError:</span> Общий класс для ошибок, связанных с
            работой виртуальной машины.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span>
            <pre><code>public void infiniteRecursion() {
    infiniteRecursion();
}

public static void main(String[] args) {
    new Main().infiniteRecursion(); // StackOverflowError
}</code></pre>
            В этом примере бесконечная рекурсия приводит к переполнению стека и
            возникновению ошибки <code>StackOverflowError</code>.
        </p>
    </div>

    <h2>Почему не рекомендуется обрабатывать Error?</h2>
    <ul>
        <li>
            <span class="highlight">Критические проблемы:</span> Ошибки класса <code>Error</code> указывают на
            проблемы, которые программа не может исправить. Например, если
            закончилась память, программа не сможет продолжить работу.
        </li>
        <li>
            <span class="highlight">Непредсказуемость:</span> Попытка обработать такие ошибки может
            привести к непредсказуемому поведению программы.
        </li>
        <li>
            <span class="highlight">Лучшая практика:</span> Вместо обработки ошибок класса <code>Error</code>
            рекомендуется устранять их причины, например, оптимизировать использование
            памяти или исправлять логику программы.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Ошибки класса <code>Error</code> обычно указывают на
            серьёзные проблемы, которые требуют вмешательства на уровне JVM или
            операционной системы.
        </p>
    </div>

    <h2>Пример OutOfMemoryError</h2>
    <p>
        Пример кода, который может вызвать ошибку <code>OutOfMemoryError</code>:
    </p>
    <pre><code>public void createLargeArray() {
    int[] array = new int[Integer.MAX_VALUE]; // OutOfMemoryError
}

public static void main(String[] args) {
    new Main().createLargeArray();
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере попытка создать массив огромного размера
            приводит к нехватке памяти и возникновению ошибки <code>OutOfMemoryError</code>.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('43ebe779-1b69-4963-9964-b197370169d7', 'Какой символ является разделителем при указании пути в файловой  системе?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разделитель пути в файловой системе</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Разделитель пути в файловой системе</h1>
    <p>
        В различных операционных системах используются разные символы для разделения путей в файловой системе. В Java можно получить разделитель для текущей операционной системы с помощью статического поля <code>File.separator</code>.
    </p>

    <h2>Разделители путей в разных ОС</h2>
    <ul>
        <li>
            <span class="highlight">Windows:</span> В Windows в качестве разделителя используется обратная косая черта (<code>\\</code>).
        </li>
        <li>
            <span class="highlight">Linux/Unix:</span> В Linux и Unix-подобных системах в качестве разделителя используется прямая косая черта (<code>/</code>).
        </li>
    </ul>

    <h2>Получение разделителя в Java</h2>
    <p>
        В Java разделитель для текущей операционной системы можно получить с помощью статического поля <code>File.separator</code>. Это позволяет писать кроссплатформенный код, который будет работать корректно на разных операционных системах.
    </p>
    <pre>
        <code>
import java.io.File;

public class FileSeparatorExample {
    public static void main(String[] args) {
        // Получение разделителя для текущей ОС
        String separator = File.separator;
        System.out.println("Разделитель пути: " + separator);

        // Пример использования разделителя
        String path = "dir" + separator + "file.txt";
        System.out.println("Сформированный путь: " + path);
    }
}
        </code>
    </pre>
    <p>
        В этом примере программа выводит разделитель пути для текущей операционной системы и использует его для формирования корректного пути к файлу.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование <code>File.separator</code> вместо жестко заданного символа разделителя делает код более переносимым и устойчивым к изменениям операционной системы.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Разделитель пути зависит от операционной системы:
            <ul>
                <li>Windows — <code>\\</code>.</li>
                <li>Linux/Unix — <code>/</code>.</li>
            </ul>
        </li>
        <li>
            В Java разделитель можно получить через <code>File.separator</code>.
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
String separator = File.separator;
String path = "dir" + separator + "file.txt";
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ea826ce0-ecb2-4947-83da-762d3c9ffb2c', 'В чем отличие класса PrintWriter от PrintStream?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отличие PrintWriter от PrintStream</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Отличие PrintWriter от PrintStream</h1>
    <p>
        Классы <code>PrintWriter</code> и <code>PrintStream</code> используются для форматированного вывода данных. Однако между ними есть несколько важных отличий, которые делают их применимыми в разных ситуациях.
    </p>

    <h2>Основные отличия</h2>
    <ul>
        <li>
            <span class="highlight">Работа с символами Unicode:</span> <code>PrintWriter</code> использует усовершенствованный способ работы с символами Unicode, что делает его более подходящим для работы с текстовыми данными.
        </li>
        <li>
            <span class="highlight">Механизм буферизации:</span> В <code>PrintStream</code> буфер вывода сбрасывается каждый раз при вызове методов <code>print()</code> или <code>println()</code>. В <code>PrintWriter</code> можно управлять буферизацией вручную, вызывая метод <code>flush()</code> только тогда, когда это необходимо.
        </li>
        <li>
            <span class="highlight">Обработка ошибок:</span> Методы <code>PrintWriter</code> никогда не выбрасывают исключений. Для проверки ошибок необходимо явно вызвать метод <code>checkError()</code>. В <code>PrintStream</code> также можно использовать <code>checkError()</code>, но он менее гибок в управлении ошибками.
        </li>
    </ul>

    <h2>Пример использования PrintWriter</h2>
    <pre>
        <code>
import java.io.*;

public class PrintWriterExample {
    public static void main(String[] args) throws IOException {
        try (PrintWriter printWriter = new PrintWriter(new FileWriter("output.txt"))) {
            printWriter.println("Hello, PrintWriter!");
            printWriter.printf("Formatted output: %d %f", 123, 45.67);
            printWriter.flush(); // Явный сброс буфера
            if (printWriter.checkError()) {
                System.out.println("An error occurred while writing.");
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используется <code>PrintWriter</code> для записи данных в файл. Буфер сбрасывается вручную с помощью метода <code>flush()</code>, а ошибки проверяются с помощью <code>checkError()</code>.
    </p>

    <h2>Пример использования PrintStream</h2>
    <pre>
        <code>
import java.io.*;

public class PrintStreamExample {
    public static void main(String[] args) throws IOException {
        try (PrintStream printStream = new PrintStream(new FileOutputStream("output.txt"))) {
            printStream.println("Hello, PrintStream!");
            printStream.printf("Formatted output: %d %f", 123, 45.67);
            if (printStream.checkError()) {
                System.out.println("An error occurred while writing.");
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используется <code>PrintStream</code> для записи данных в файл. Буфер сбрасывается автоматически при каждом вызове <code>print()</code> или <code>println()</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>PrintWriter</code> рекомендуется использовать для работы с текстовыми данными, особенно в многопоточных приложениях, где требуется более гибкое управление буферизацией. <code>PrintStream</code> чаще используется для вывода в консоль или для работы с байтовыми потоками.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <code>PrintWriter</code>:
            <ul>
                <li>Усовершенствованная работа с Unicode.</li>
                <li>Ручное управление буферизацией через <code>flush()</code>.</li>
                <li>Ошибки проверяются с помощью <code>checkError()</code>.</li>
            </ul>
        </li>
        <li>
            <code>PrintStream</code>:
            <ul>
                <li>Автоматический сброс буфера при каждом вызове <code>print()</code> или <code>println()</code>.</li>
                <li>Чаще используется для вывода в консоль.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
PrintWriter printWriter = new PrintWriter(new FileWriter("output.txt"));
PrintStream printStream = new PrintStream(new FileOutputStream("output.txt"));
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('607ea3d7-59cf-49cb-8275-8cf88457bccd', 'Чем отличаются и что общего у InputStream, OutputStream, Reader, Writer?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InputStream, OutputStream, Reader, Writer</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>InputStream, OutputStream, Reader, Writer</h1>
    <p>
        В Java классы <code>InputStream</code>, <code>OutputStream</code>, <code>Reader</code> и <code>Writer</code> используются для работы с потоками ввода и вывода данных. Они различаются по типу данных, с которыми работают, и по их назначению.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">InputStream и OutputStream:</span> Эти классы работают с байтовыми данными. Они предназначены для чтения и записи байтов из/в различные источники, такие как файлы, сетевые соединения и т.д.
        </li>
        <li>
            <span class="highlight">Reader и Writer:</span> Эти классы работают с символьными данными (Unicode). Они предназначены для чтения и записи текстовых данных, таких как строки, символы и т.д.
        </li>
    </ul>

    <h2>Общие черты</h2>
    <ul>
        <li>
            <span class="highlight">Абстрактные классы:</span> Все четыре класса являются абстрактными и предоставляют базовые методы для работы с потоками данных.
        </li>
        <li>
            <span class="highlight">Иерархия классов:</span> Каждый из этих классов имеет множество подклассов, которые расширяют их функциональность для работы с конкретными типами данных или источниками.
        </li>
        <li>
            <span class="highlight">Потоковая обработка:</span> Все они работают с потоками данных, что позволяет обрабатывать данные последовательно, без необходимости загружать их полностью в память.
        </li>
    </ul>

    <h2>Пример использования InputStream и OutputStream</h2>
    <pre>
        <code>
import java.io.*;

public class ByteStreamExample {
    public static void main(String[] args) throws IOException {
        // Чтение данных из файла
        try (InputStream inputStream = new FileInputStream("input.txt")) {
            int data;
            while ((data = inputStream.read()) != -1) {
                System.out.print((char) data);
            }
        }

        // Запись данных в файл
        try (OutputStream outputStream = new FileOutputStream("output.txt")) {
            outputStream.write("Hello, OutputStream!".getBytes());
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используются <code>InputStream</code> и <code>OutputStream</code> для чтения и записи байтовых данных.
    </p>

    <h2>Пример использования Reader и Writer</h2>
    <pre>
        <code>
import java.io.*;

public class CharStreamExample {
    public static void main(String[] args) throws IOException {
        // Чтение данных из файла
        try (Reader reader = new FileReader("input.txt")) {
            int data;
            while ((data = reader.read()) != -1) {
                System.out.print((char) data);
            }
        }

        // Запись данных в файл
        try (Writer writer = new FileWriter("output.txt")) {
            writer.write("Hello, Writer!");
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используются <code>Reader</code> и <code>Writer</code> для чтения и записи символьных данных.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между <code>InputStream</code>/<code>OutputStream</code> и <code>Reader</code>/<code>Writer</code> зависит от типа данных, с которыми вы работаете. Для байтовых данных используйте <code>InputStream</code> и <code>OutputStream</code>, а для текстовых данных — <code>Reader</code> и <code>Writer</code>.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <code>InputStream</code> и <code>OutputStream</code>:
            <ul>
                <li>Работают с байтовыми данными.</li>
                <li>Используются для чтения и записи байтов.</li>
            </ul>
        </li>
        <li>
            <code>Reader</code> и <code>Writer</code>:
            <ul>
                <li>Работают с символьными данными (Unicode).</li>
                <li>Используются для чтения и записи текстовых данных.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
InputStream inputStream = new FileInputStream("input.txt");
OutputStream outputStream = new FileOutputStream("output.txt");

Reader reader = new FileReader("input.txt");
Writer writer = new FileWriter("output.txt");
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('557aad09-42fd-45ae-bec5-3ee2c5a9fbb5', 'Чем интерфейсы отличаются от абстрактных классов? В каких случаях  следует использовать абстрактный класс, а в каких интерфейс?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отличия интерфейсов от абстрактных классов</title>
     <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Отличия интерфейсов от абстрактных классов</h1>
        <p>
            Интерфейсы и абстрактные классы в Java имеют несколько ключевых различий, которые
            определяют их использование в различных ситуациях:
        </p>

        <h2>Основные различия:</h2>
        <ul>
            <li>
                <span class="highlight">Состояние:</span> Интерфейс описывает только поведение (методы) объекта, а состояний
                (полей) у него нет (кроме <code>public static final</code>). Абстрактный класс может содержать
                поля и методы с реализацией.
            </li>
            <li>
                <span class="highlight">Наследование:</span> Класс может наследовать только один абстрактный класс, но может
                реализовать несколько интерфейсов. Интерфейс может наследовать (extends) другой
                интерфейс или несколько интерфейсов.
            </li>
            <li>
                <span class="highlight">Отношения:</span> Абстрактные классы используются, когда есть отношение «is-a» (является),
                то есть класс-наследник расширяет базовый абстрактный класс. Интерфейсы могут быть
                реализованы разными классами, которые не связаны друг с другом.
            </li>
            <li>
                <span class="highlight">Реализация методов:</span> Абстрактный класс может реализовывать методы. Интерфейс может
                реализовывать статические методы и методы по умолчанию (default methods) начиная с
                Java 8.
            </li>
            <li>
                <span class="highlight">Конструктор:</span> У интерфейса нет конструктора, в то время как абстрактный класс может
                иметь конструкторы.
            </li>
        </ul>

        <h2>Когда использовать абстрактный класс, а когда интерфейс?</h2>
        <ul>
            <li>
                <span class="highlight">Абстрактный класс:</span> Используется, когда есть необходимость в частичной реализации
                поведения, которое будет расширено или дополнено в подклассах. Абстрактные классы
                подходят для создания иерархии однотипных классов, которые имеют общую логику.
            </li>
            <li>
                <span class="highlight">Интерфейс:</span> Используется для описания контракта, который могут реализовать разные
                классы, не связанные друг с другом. Интерфейсы позволяют создавать гибкие и
                расширяемые архитектуры, поддерживая множественное наследование.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Абстрактные классы подходят для случаев, когда классы имеют общую логику и
                находятся в иерархии «is-a». Интерфейсы используются для описания поведения, которое
                может быть реализовано разными классами, не связанными между собой.
            </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('42b39838-6929-4e22-89a6-69c9b7599329', 'Для чего нужна сериализация?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Для чего нужна сериализация?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Для чего нужна сериализация?</h1>
    <p>
        <span class="highlight">Сериализация</span> используется для компактного сохранения состояния объекта и
        последующего восстановления этого состояния. Это позволяет передавать объекты
        между различными системами, сохранять их в файлы или базы данных, а также
        восстанавливать их в исходное состояние после завершения работы программы.
    </p>

    <h2>Основные цели сериализации</h2>
    <ul>
        <li>
            <span class="highlight">Сохранение состояния объекта:</span> Сериализация позволяет сохранить
            состояние объекта в виде последовательности байтов, которую можно
            записать в файл или передать по сети.
        </li>
        <li>
            <span class="highlight">Восстановление состояния объекта:</span> Десериализация позволяет
            восстановить объект из последовательности байтов, вернув его в исходное
            состояние.
        </li>
        <li>
            <span class="highlight">Передача данных:</span> Сериализация используется для передачи объектов
            между различными системами, например, между клиентом и сервером.
        </li>
        <li>
            <span class="highlight">Сохранение данных:</span> Сериализованные объекты можно сохранять в
            файлы или базы данных для последующего использования.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Сериализация используется в таких технологиях, как RMI (Remote
            Method Invocation), где объекты передаются между JVM, или в ORM (Object-Relational
            Mapping), где объекты сохраняются в базах данных.
        </p>
    </div>

    <h2>Пример использования сериализации</h2>
    <p>
        Пример сериализации и десериализации объекта:
    </p>
    <pre><code>import java.io.*;

class MyClass implements Serializable {
    private int id;
    private String name;

    // Конструкторы, геттеры, сеттеры
}

public class SerializationExample {
    public static void main(String[] args) {
        // Сериализация
        try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("data.ser"))) {
            MyClass obj = new MyClass(1, "Example");
            oos.writeObject(obj);
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Десериализация
        try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream("data.ser"))) {
            MyClass obj = (MyClass) ois.readObject();
            System.out.println("Десериализованный объект: " + obj);
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере объект класса <code>MyClass</code> сериализуется в
            файл <code>data.ser</code>, а затем десериализуется обратно в объект.
        </p>
    </div>

    <h2>Преимущества сериализации</h2>
    <ul>
        <li>
            <span class="highlight">Компактность:</span> Сериализованные данные занимают меньше места, чем
            текстовые форматы, такие как XML или JSON.
        </li>
        <li>
            <span class="highlight">Простота использования:</span> Сериализация в Java реализована через
            интерфейс <code>Serializable</code>, что делает её простой в использовании.
        </li>
        <li>
            <span class="highlight">Поддержка сложных объектов:</span> Сериализация поддерживает
            сохранение и восстановление сложных объектов, включая графы объектов.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример сложного объекта:</span>
            <pre><code>class MyClass implements Serializable {
    private int id;
    private List<String> names; // Список также будет сериализован
}</code></pre>
            В этом примере список <code>names</code> также будет сериализован вместе с объектом.
        </p>
    </div>

    <h2>Ограничения сериализации</h2>
    <ul>
        <li>
            <span class="highlight">Зависимость от версии класса:</span> Сериализованные данные могут
            быть несовместимы с новой версией класса, если в нём произошли значительные
            изменения.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Сериализация и десериализация могут
            быть медленными для больших объектов или сложных графов объектов.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Для повышения производительности и обеспечения
            совместимости можно использовать альтернативные форматы, такие как JSON или
            Protocol Buffers.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('94e1bba8-d63b-44bc-bae7-e21623ec07da', 'Как получить вторую субботу текущего месяца, используя Date Time API?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Получение второй субботы текущего месяца с использованием Date Time API</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Получение второй субботы текущего месяца с использованием Date Time API</h1>
    <p>
        В Java 8 с использованием Date Time API можно легко получить дату второй субботы
        текущего месяца. Для этого используются методы класса <code>TemporalAdjusters</code> и
        <code>LocalDate</code>.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код демонстрирует, как получить дату второй субботы текущего месяца:
    </p>
    <pre><code>import java.time.LocalDate;
import java.time.DayOfWeek;
import java.time.temporal.TemporalAdjusters;

public class Main {
    public static void main(String[] args) {
        LocalDate secondSaturday = LocalDate
            .of(LocalDate.now().getYear(), LocalDate.now().getMonth(), 1) // начало текущего месяца
            .with(TemporalAdjusters.nextOrSame(DayOfWeek.SATURDAY)) // первая суббота
            .with(TemporalAdjusters.next(DayOfWeek.SATURDAY)); // вторая суббота

        System.out.println("Вторая суббота текущего месяца: " + secondSaturday);
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">LocalDate.of(LocalDate.now().getYear(), LocalDate.now().getMonth(), 1):</span>
            Создаёт объект <code>LocalDate</code>, представляющий первый день текущего месяца.
        </li>
        <li>
            <span class="highlight">with(TemporalAdjusters.nextOrSame(DayOfWeek.SATURDAY)):</span> Находит первую
            субботу текущего месяца. Если первый день месяца — суббота, возвращает его.
        </li>
        <li>
            <span class="highlight">with(TemporalAdjusters.next(DayOfWeek.SATURDAY)):</span> Находит следующую
            субботу после первой, то есть вторую субботу месяца.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>Вторая суббота текущего месяца: 2023-10-14</code></pre>

    <h2>Итог</h2>
    <p>
        Использование методов <code>TemporalAdjusters.nextOrSame()</code> и <code>TemporalAdjusters.next()</code>
        позволяет легко находить вторую субботу текущего месяца. Этот подход демонстрирует
        удобство и мощь Date Time API для работы с датами и временем в Java 8.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7d95a19d-a0fa-4708-9c42-1d3dca22bb59', ' Какие дополнительные методы для работы с ассоциативными массивами  (maps) появились в Java 8?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Дополнительные методы для работы с ассоциативными массивами в Java 8</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Дополнительные методы для работы с ассоциативными массивами в Java 8</h1>
    <p>
        В Java 8 появились новые методы для работы с ассоциативными массивами (<code>Map</code>),
        которые упрощают выполнение распространённых операций, таких как добавление,
        обновление и обработка элементов.
    </p>

    <h2>Новые методы в Java 8</h2>
    <ul>
        <li>
            <span class="highlight">putIfAbsent():</span> Добавляет пару «ключ-значение», только если ключ отсутствовал.
            <pre><code>map.putIfAbsent("a", "Aa");</code></pre>
        </li>
        <li>
            <span class="highlight">forEach():</span> Принимает функцию, которая производит операцию над каждым элементом.
            <pre><code>map.forEach((k, v) -> System.out.println(v));</code></pre>
        </li>
        <li>
            <span class="highlight">compute():</span> Создаёт или обновляет текущее значение на основе ключа и текущего значения.
            <pre><code>map.compute("a", (k, v) -> String.valueOf(k).concat(v)); // ["a", "aAa"]</code></pre>
        </li>
        <li>
            <span class="highlight">computeIfPresent():</span> Обновляет значение, если ключ существует.
            <pre><code>map.computeIfPresent("a", (k, v) -> k.concat(v));</code></pre>
        </li>
        <li>
            <span class="highlight">computeIfAbsent():</span> Создаёт ключ с вычисляемым значением, если ключ отсутствует.
            <pre><code>map.computeIfAbsent("a", k -> "A".concat(k)); // ["a", "Aa"]</code></pre>
        </li>
        <li>
            <span class="highlight">getOrDefault():</span> Возвращает значение по умолчанию, если ключ отсутствует.
            <pre><code>map.getOrDefault("a", "not found");</code></pre>
        </li>
        <li>
            <span class="highlight">merge():</span> Объединяет текущее и передаваемое значения, если ключ существует, или записывает передаваемое значение, если ключ отсутствует.
            <pre><code>map.merge("a", "z", (value, newValue) -> value.concat(newValue)); // ["a", "Aaz"]</code></pre>
        </li>
    </ul>

    <h2>Примеры использования</h2>

    <h3>Пример с putIfAbsent()</h3>
    <pre><code>Map<String, String> map = new HashMap<>();
map.putIfAbsent("a", "Aa");
System.out.println(map.get("a")); // Aa</code></pre>

    <h3>Пример с forEach()</h3>
    <pre><code>Map<String, String> map = new HashMap<>();
map.put("a", "Aa");
map.put("b", "Bb");
map.forEach((k, v) -> System.out.println(k + " -> " + v));
// a -> Aa
// b -> Bb</code></pre>

    <h3>Пример с compute()</h3>
    <pre><code>Map<String, String> map = new HashMap<>();
map.put("a", "Aa");
map.compute("a", (k, v) -> k.concat(v));
System.out.println(map.get("a")); // aAa</code></pre>

    <h3>Пример с computeIfPresent()</h3>
    <pre><code>Map<String, String> map = new HashMap<>();
map.put("a", "Aa");
map.computeIfPresent("a", (k, v) -> k.concat(v));
System.out.println(map.get("a")); // aAa</code></pre>

    <h3>Пример с computeIfAbsent()</h3>
    <pre><code>Map<String, String> map = new HashMap<>();
map.computeIfAbsent("a", k -> "A".concat(k));
System.out.println(map.get("a")); // Aa</code></pre>

    <h3>Пример с getOrDefault()</h3>
    <pre><code>Map<String, String> map = new HashMap<>();
System.out.println(map.getOrDefault("a", "not found")); // not found</code></pre>

    <h3>Пример с merge()</h3>
    <pre><code>Map<String, String> map = new HashMap<>();
map.put("a", "Aa");
map.merge("a", "z", (value, newValue) -> value.concat(newValue));
System.out.println(map.get("a")); // Aaz</code></pre>

    <h2>Итог</h2>
    <p>
        Новые методы для работы с ассоциативными массивами в Java 8, такие как
        <code>putIfAbsent()</code>, <code>forEach()</code>, <code>compute()</code>, <code>computeIfPresent()</code>, <code>computeIfAbsent()</code>,
        <code>getOrDefault()</code> и <code>merge()</code>, значительно упрощают выполнение операций с
        элементами <code>Map</code>. Они делают код более читаемым и выразительным, а также
        уменьшают количество шаблонного кода.
    </p>
</body>
</html>', 'STREAM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f8ee47ba-edc6-46ff-b6b1-394e4d2e5e6c', 'Как вы можете выполнять запросы на обновление, такие как INSERT, UPDATE и DELETE?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Выполнение запросов на обновление в JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Выполнение запросов на обновление в JDBC</h1>
    <p>
        В JDBC запросы на обновление данных, такие как <span class="highlight">INSERT</span>, <span class="highlight">UPDATE</span> и <span class="highlight">DELETE</span>,
        выполняются с помощью методов <code>executeUpdate()</code> интерфейсов <code>Statement</code> и <code>PreparedStatement</code>.
        Эти методы возвращают количество изменённых строк.
    </p>

    <h2>Основные шаги для выполнения запросов на обновление</h2>
    <ul>
        <li>
            <span class="highlight">1. Установление соединения:</span>
            <ul>
                <li>Используйте <code>DriverManager.getConnection()</code> для подключения к базе данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Создание Statement или PreparedStatement:</span>
            <ul>
                <li>Для выполнения запросов создайте объект <code>Statement</code> или <code>PreparedStatement</code>.</li>
                <li><code>PreparedStatement</code> рекомендуется для параметризованных запросов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Выполнение запроса:</span>
            <ul>
                <li>Используйте метод <code>executeUpdate()</code> для выполнения запросов <code>INSERT</code>, <code>UPDATE</code> и <code>DELETE</code>.</li>
                <li>Метод возвращает количество изменённых строк.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Закрытие ресурсов:</span>
            <ul>
                <li>После выполнения запроса закройте <code>Statement</code> и <code>Connection</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Всегда закрывайте ресурсы (<code>Statement</code>, <code>Connection</code>) после
            использования, чтобы избежать утечек памяти и ресурсов.
        </p>
    </div>

    <h2>Пример выполнения запросов на обновление</h2>

    <h3>INSERT</h3>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password);
             PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users (name, email) VALUES (?, ?)")) {

            // Установка параметров
            preparedStatement.setString(1, "Alice");
            preparedStatement.setString(2, "alice@example.com");

            // Выполнение запроса
            int rowsAffected = preparedStatement.executeUpdate();
            System.out.println("Добавлено строк: " + rowsAffected);
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении INSERT:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h3>UPDATE</h3>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password);
             PreparedStatement preparedStatement = connection.prepareStatement("UPDATE users SET email = ? WHERE id = ?")) {

            // Установка параметров
            preparedStatement.setString(1, "new_email@example.com");
            preparedStatement.setInt(2, 1);

            // Выполнение запроса
            int rowsAffected = preparedStatement.executeUpdate();
            System.out.println("Обновлено строк: " + rowsAffected);
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении UPDATE:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h3>DELETE</h3>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password);
             PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM users WHERE id = ?")) {

            // Установка параметров
            preparedStatement.setInt(1, 1);

            // Выполнение запроса
            int rowsAffected = preparedStatement.executeUpdate();
            System.out.println("Удалено строк: " + rowsAffected);
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении DELETE:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Дополнительные рекомендации</h2>
    <ul>
        <li><span class="highlight">Используйте транзакции:</span> Для группировки нескольких операций обновления используйте транзакции.</li>
        <li><span class="highlight">Пакетная обработка:</span> Для выполнения множества операций используйте пакетную обработку (<code>addBatch()</code> и <code>executeBatch()</code>).</li>
        <li><span class="highlight">Проверка результата:</span> Всегда проверяйте количество изменённых строк (<code>rowsAffected</code>), чтобы убедиться, что запрос выполнен успешно.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Совет:</span> Для повышения безопасности и производительности всегда используйте
            <code>PreparedStatement</code> вместо <code>Statement</code> для выполнения запросов на обновление.
        </p>
    </div>
</body>
</html>', 'ORM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c672b4b3-6140-4e6d-aeb6-c856746e950c', 'Что такое Batch Processing и как это реализуется в JDBC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Пакетная обработка (Batch Processing) в JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Пакетная обработка (Batch Processing) в JDBC</h1>
    <p>
        <span class="highlight">Пакетная обработка (Batch Processing)</span> — это механизм в JDBC, который позволяет выполнять несколько SQL-запросов
        за один раз, отправляя их в базу данных как единый пакет. Это значительно повышает производительность,
        особенно при работе с большими объемами данных.
    </p>

    <h2>Преимущества пакетной обработки</h2>
    <ul>
        <li>
            <span class="highlight">1. Увеличение производительности:</span>
            <ul>
                <li>Снижение количества сетевых запросов к базе данных.</li>
                <li>Уменьшение накладных расходов на выполнение каждого запроса.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Упрощение кода:</span>
            <ul>
                <li>Возможность группировки множества операций в один пакет.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Атомарность:</span>
            <ul>
                <li>Все операции в пакете могут быть выполнены в рамках одной транзакции.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Пакетная обработка особенно полезна при выполнении множества операций
            <code>INSERT</code>, <code>UPDATE</code> или <code>DELETE</code>.
        </p>
    </div>

    <h2>Основные шаги для реализации пакетной обработки</h2>
    <ul>
        <li>
            <span class="highlight">1. Создание Statement или PreparedStatement:</span>
            <ul>
                <li>Используйте <code>Statement</code> или <code>PreparedStatement</code> для добавления запросов в пакет.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Добавление запросов в пакет:</span>
            <ul>
                <li>Используйте метод <code>addBatch()</code> для добавления SQL-запросов в пакет.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Выполнение пакета:</span>
            <ul>
                <li>Используйте метод <code>executeBatch()</code> для выполнения всех запросов в пакете.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Обработка результатов:</span>
            <ul>
                <li>Метод <code>executeBatch()</code> возвращает массив целых чисел, где каждый элемент соответствует
                    количеству изменённых строк для каждого запроса.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">5. Очистка пакета:</span>
            <ul>
                <li>Используйте метод <code>clearBatch()</code> для очистки пакета, если нужно начать новый.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример пакетной обработки с использованием PreparedStatement</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BatchProcessingExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password);
             PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users (name, email) VALUES (?, ?)")) {

            // Отключение автоматического коммита
            connection.setAutoCommit(false);

            // Добавление запросов в пакет
            for (int i = 1; i <= 1000; i++) {
                preparedStatement.setString(1, "User " + i);
                preparedStatement.setString(2, "user" + i + "@example.com");
                preparedStatement.addBatch();

                // Выполнение пакета каждые 100 запросов
                if (i % 100 == 0) {
                    preparedStatement.executeBatch();
                }
            }

            // Выполнение оставшихся запросов
            preparedStatement.executeBatch();

            // Фиксация транзакции
            connection.commit();
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении пакетной обработки:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Пример пакетной обработки с использованием Statement</h2>
    <pre><code>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class BatchProcessingStatementExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String user = "username";
        String password = "password";

        try (Connection connection = DriverManager.getConnection(url, user, password);
             Statement statement = connection.createStatement()) {

            // Отключение автоматического коммита
            connection.setAutoCommit(false);

            // Добавление запросов в пакет
            statement.addBatch("INSERT INTO users (name, email) VALUES (\'User1\', \'user1@example.com\')");
            statement.addBatch("INSERT INTO users (name, email) VALUES (\'User2\', \'user2@example.com\')");
            statement.addBatch("UPDATE users SET email = \'new_email@example.com\' WHERE id = 1");

            // Выполнение пакета
            int[] rowsAffected = statement.executeBatch();

            // Фиксация транзакции
            connection.commit();

            // Вывод результатов
            for (int rows : rowsAffected) {
                System.out.println("Изменено строк: " + rows);
            }
        } catch (SQLException e) {
            System.out.println("Ошибка при выполнении пакетной обработки:");
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Дополнительные рекомендации</h2>
    <ul>
        <li><span class="highlight">Используйте транзакции:</span> Всегда отключайте автоматический коммит и управляйте транзакциями вручную при пакетной обработке.</li>
        <li><span class="highlight">Ограничивайте размер пакета:</span> Не добавляйте слишком много запросов в один пакет, чтобы избежать переполнения памяти.</li>
        <li><span class="highlight">Обрабатывайте ошибки:</span> В случае ошибки откатывайте транзакцию и обрабатывайте исключения.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Совет:</span> Для повышения производительности используйте <code>PreparedStatement</code> вместо
            <code>Statement</code>, так как он поддерживает предварительную компиляцию запросов.
        </p>
    </div>
</body>
</html>', 'ORM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5118fe9b-77df-4bf0-b14e-3778e9253d01', 'Для чего используется SequenceInputStream?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SequenceInputStream в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>SequenceInputStream в Java</h1>
    <p>
        Класс <code>SequenceInputStream</code> используется для объединения нескольких потоков <code>InputStream</code> в один. Это позволяет последовательно читать данные из нескольких источников, как если бы они были одним потоком.
    </p>

    <h2>Основные особенности SequenceInputStream</h2>
    <ul>
        <li>
            <span class="highlight">Объединение потоков:</span> <code>SequenceInputStream</code> позволяет объединить несколько потоков <code>InputStream</code> в один. Это полезно, когда данные разбиты на несколько частей, но их нужно обрабатывать как единое целое.
        </li>
        <li>
            <span class="highlight">Последовательное чтение:</span> Данные читаются из первого потока до его конца, затем автоматически переключается на следующий поток.
        </li>
        <li>
            <span class="highlight">Закрытие потоков:</span> Когда <code>SequenceInputStream</code> достигает конца последнего потока, все связанные потоки автоматически закрываются.
        </li>
    </ul>

    <h2>Пример использования SequenceInputStream</h2>
    <pre>
        <code>
import java.io.*;
import java.util.*;

public class SequenceInputStreamExample {
    public static void main(String[] args) throws IOException {
        // Создаем несколько потоков InputStream
        InputStream inputStream1 = new ByteArrayInputStream("Hello, ".getBytes());
        InputStream inputStream2 = new ByteArrayInputStream("SequenceInputStream!".getBytes());

        // Объединяем потоки с помощью SequenceInputStream
        try (InputStream sequenceInputStream = new SequenceInputStream(inputStream1, inputStream2)) {
            int data;
            while ((data = sequenceInputStream.read()) != -1) {
                System.out.print((char) data);
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере два потока <code>InputStream</code> объединяются в один с помощью <code>SequenceInputStream</code>. Данные читаются последовательно из обоих потоков, как если бы они были одним потоком.
    </p>

    <h2>Использование Enumeration</h2>
    <p>
        <code>SequenceInputStream</code> также может принимать объект, реализующий интерфейс <code>Enumeration</code>, который предоставляет последовательный доступ к нескольким потокам <code>InputStream</code>.
    </p>
    <pre>
        <code>
import java.io.*;
import java.util.*;

public class SequenceInputStreamEnumerationExample {
    public static void main(String[] args) throws IOException {
        // Создаем список потоков InputStream
        Vector<InputStream> inputStreams = new Vector<>();
        inputStreams.add(new ByteArrayInputStream("First part. ".getBytes()));
        inputStreams.add(new ByteArrayInputStream("Second part. ".getBytes()));
        inputStreams.add(new ByteArrayInputStream("Third part.".getBytes()));

        // Создаем Enumeration для списка потоков
        Enumeration<InputStream> enumeration = inputStreams.elements();

        // Объединяем потоки с помощью SequenceInputStream
        try (InputStream sequenceInputStream = new SequenceInputStream(enumeration)) {
            int data;
            while ((data = sequenceInputStream.read()) != -1) {
                System.out.print((char) data);
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используется <code>Enumeration</code> для объединения нескольких потоков <code>InputStream</code> в один с помощью <code>SequenceInputStream</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>SequenceInputStream</code> автоматически закрывает все связанные потоки при достижении конца последнего потока. Это упрощает управление ресурсами.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <code>SequenceInputStream</code> используется для объединения нескольких потоков <code>InputStream</code> в один.
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
InputStream sequenceInputStream = new SequenceInputStream(inputStream1, inputStream2);
                </code>
            </pre>
        </li>
        <li>
            Поддерживает объединение потоков через <code>Enumeration</code>.
        </li>
        <li>
            Автоматически закрывает все связанные потоки при завершении.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6f60c116-b71f-4cd3-91e3-80b09b00f1dd', 'Опишите процесс сериализации/десериализации с использованием  Serializable', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сериализация и десериализация с использованием Serializable</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Сериализация и десериализация с использованием Serializable</h1>
    <p>
        При использовании интерфейса <code>Serializable</code> применяется алгоритм сериализации, который с помощью рефлексии (Reflection API) выполняет следующие шаги:
    </p>

    <h2>Процесс сериализации</h2>
    <ul>
        <li>
            <span class="highlight">Запись метаданных:</span> В поток записываются метаданные о классе, ассоциированном с объектом, включая имя класса, идентификатор <code>SerialVersionUID</code> и идентификаторы полей класса.
        </li>
        <li>
            <span class="highlight">Рекурсивная запись суперклассов:</span> Происходит рекурсивная запись в поток описания суперклассов до класса <code>java.lang.Object</code> (не включительно).
        </li>
        <li>
            <span class="highlight">Запись примитивных значений:</span> Записываются примитивные значения полей сериализуемого экземпляра, начиная с полей самого верхнего суперкласса.
        </li>
        <li>
            <span class="highlight">Рекурсивная запись объектов:</span> Рекурсивно записываются объекты, которые являются полями сериализуемого объекта. При этом ранее сериализованные объекты повторно не сериализуются, что позволяет алгоритму корректно работать с циклическими ссылками.
        </li>
    </ul>

    <h2>Процесс десериализации</h2>
    <ul>
        <li>
            <span class="highlight">Выделение памяти:</span> Под объект выделяется память, после чего его поля заполняются значениями из потока. Конструктор объекта при этом не вызывается.
        </li>
        <li>
            <span class="highlight">Конструктор родительского класса:</span> При десериализации будет вызван конструктор без параметров родительского несериализуемого класса. Отсутствие такого конструктора повлечет ошибку десериализации.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Сериализация и десериализация с использованием <code>Serializable</code> позволяют сохранять и восстанавливать состояние объектов, что особенно полезно для передачи данных между приложениями или сохранения их в файлы. Однако важно учитывать, что процесс десериализации не вызывает конструктор объекта, что может повлиять на его состояние.
        </p>
    </div>

    <h2>Пример использования Serializable</h2>
    <ul>
        <li>
            <code>Serializable</code> — интерфейс, который указывает, что объект может быть сериализован (преобразован в последовательность байтов для сохранения или передачи).
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ca78f858-9d46-4bdf-be10-b719f865d081', 'Как изменить стандартное поведение сериализации/десериализации?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Изменение стандартного поведения сериализации/десериализации</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Изменение стандартного поведения сериализации/десериализации</h1>
    <p>
        Для изменения стандартного поведения сериализации и десериализации можно использовать несколько подходов. Один из них — реализация интерфейса <code>java.io.Externalizable</code>, который позволяет применять пользовательскую логику сериализации.
    </p>

    <h2>Реализация интерфейса Externalizable</h2>
    <ul>
        <li>
            <span class="highlight">Методы интерфейса:</span> Интерфейс <code>Externalizable</code> требует реализации двух методов:
            <ul>
                <li><code>writeExternal(ObjectOutput out)</code> — описывает способ сериализации объекта.</li>
                <li><code>readExternal(ObjectInput in)</code> — описывает способ десериализации объекта.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Десериализация:</span> Во время десериализации сначала вызывается конструктор без параметров, а затем на созданном объекте вызывается метод <code>readExternal</code>.
        </li>
    </ul>

    <h2>Использование специальных методов</h2>
    <p>
        Если у сериализуемого объекта реализован один из следующих методов, механизм сериализации будет использовать его вместо стандартного поведения:
    </p>
    <ul>
        <li>
            <span class="highlight">writeObject(ObjectOutputStream out):</span> Позволяет определить пользовательскую логику записи объекта в поток.
        </li>
        <li>
            <span class="highlight">readObject(ObjectInputStream in):</span> Позволяет определить пользовательскую логику чтения объекта из потока.
        </li>
        <li>
            <span class="highlight">writeReplace():</span> Позволяет заменить текущий объект другим экземпляром перед записью в поток.
        </li>
        <li>
            <span class="highlight">readResolve():</span> Позволяет заменить прочитанный объект другим экземпляром после десериализации.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование этих методов позволяет гибко управлять процессом сериализации и десериализации, например, для шифрования данных, сжатия или замены объектов на прокси.
        </p>
    </div>

    <h2>Пример использования</h2>
    <ul>
        <li>
            <code>Externalizable</code> — интерфейс, который позволяет полностью контролировать процесс сериализации и десериализации.
        </li>
        <li>
            <code>writeObject</code>, <code>readObject</code>, <code>writeReplace</code>, <code>readResolve</code> — методы, которые позволяют изменить стандартное поведение сериализации/десериализации.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d343cf64-b399-483d-93c3-3082a02cada3', 'Какая роль поля serialVersionUID в сериализации?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Роль поля serialVersionUID в сериализации</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Роль поля serialVersionUID в сериализации</h1>
    <p>
        Поле <code>serialVersionUID</code> играет важную роль в процессе сериализации и десериализации объектов. Оно используется для указания версии сериализованных данных и обеспечения совместимости между классами.
    </p>

    <h2>Назначение serialVersionUID</h2>
    <ul>
        <li>
            <span class="highlight">Идентификатор версии:</span> <code>serialVersionUID</code> используется для проверки совместимости версий класса при десериализации. Если идентификатор версии сериализованного объекта не совпадает с текущим значением <code>serialVersionUID</code> в классе, выбрасывается исключение <code>InvalidClassException</code>.
        </li>
        <li>
            <span class="highlight">Автоматическая генерация:</span> Если <code>serialVersionUID</code> не объявлен явно, среда выполнения Java генерирует его автоматически на основе метаданных класса, таких как количество полей, их типы, модификаторы доступа и реализованные интерфейсы.
        </li>
    </ul>

    <h2>Почему рекомендуется явно объявлять serialVersionUID?</h2>
    <ul>
        <li>
            <span class="highlight">Чувствительность к изменениям:</span> Автоматически сгенерированный <code>serialVersionUID</code> может измениться при изменении структуры класса (например, при добавлении или удалении полей). Это приведет к ошибке <code>InvalidClassException</code> при десериализации.
        </li>
        <li>
            <span class="highlight">Контроль версий:</span> Явное объявление <code>serialVersionUID</code> позволяет контролировать версии класса и избежать проблем с совместимостью при изменении его структуры.
        </li>
    </ul>

    <h2>Пример объявления serialVersionUID</h2>
    <pre>
        <code>
public class ExampleClass implements Serializable {
    private static final long serialVersionUID = 20161013L; // Явное объявление serialVersionUID
    private String name;
    private int age;

    // Конструкторы, геттеры, сеттеры и другие методы
}
        </code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Явное объявление <code>serialVersionUID</code> рекомендуется для предотвращения ошибок при десериализации, особенно если класс может изменяться в будущем. Это обеспечивает стабильность и предсказуемость процесса сериализации.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <code>serialVersionUID</code> — уникальный идентификатор версии класса, используемый для проверки совместимости при десериализации.
        </li>
        <li>
            Явное объявление <code>serialVersionUID</code> помогает избежать ошибок, связанных с изменением структуры класса.
        </li>
        <li>
            Пример объявления: <code>private static final long serialVersionUID = 20161013L;</code>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('24cd634e-6d16-4e3a-bd25-3fa3b957fb1a', 'Что такое LocalDateTime?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LocalDateTime в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>LocalDateTime в Java</h1>
    <p>
        <span class="highlight">LocalDateTime</span> — это класс в Java, который объединяет дату и время в календарной системе
        ISO-8601 без привязки к часовому поясу. Он является частью пакета <code>java.time</code>,
        появившегося в Java 8, и предоставляет удобные методы для работы с датой и временем.
    </p>

    <h2>Особенности LocalDateTime</h2>
    <ul>
        <li>
            <span class="highlight">Объединение даты и времени:</span> <code>LocalDateTime</code> содержит как дату (<code>LocalDate</code>),
            так и время (<code>LocalTime</code>).
        </li>
        <li>
            <span class="highlight">Точность:</span> Время хранится с точностью до наносекунды.
        </li>
        <li>
            <span class="highlight">Неизменяемость:</span> Объекты <code>LocalDateTime</code> являются неизменяемыми, что
            делает их потокобезопасными.
        </li>
        <li>
            <span class="highlight">Без привязки к часовому поясу:</span> <code>LocalDateTime</code> не содержит информации о
            часовом поясе.
        </li>
    </ul>

    <h2>Примеры использования</h2>

    <h3>Создание LocalDateTime</h3>
    <pre><code>import java.time.LocalDateTime;

public class Main {
    public static void main(String[] args) {
        LocalDateTime now = LocalDateTime.now(); // текущая дата и время
        System.out.println(now); // 2023-10-05T14:30:45.123456789

        LocalDateTime specificDateTime = LocalDateTime.of(2023, 10, 5, 14, 30); // заданная дата и время
        System.out.println(specificDateTime); // 2023-10-05T14:30
    }
}</code></pre>

    <h3>Методы LocalDateTime</h3>
    <p>
        <code>LocalDateTime</code> предоставляет множество удобных методов для работы с датой и временем:
    </p>
    <ul>
        <li>
            <span class="highlight">plusMinutes(), plusHours():</span> Добавляют минуты или часы к текущему времени.
            <pre><code>LocalDateTime updatedDateTime = now.plusMinutes(30).plusHours(2);</code></pre>
        </li>
        <li>
            <span class="highlight">isAfter(), isBefore():</span> Проверяют, является ли одна дата и время позже или раньше другой.
            <pre><code>boolean isAfter = now.isAfter(specificDateTime);</code></pre>
        </li>
        <li>
            <span class="highlight">toSecondOfDay():</span> Возвращает количество секунд с начала дня.
            <pre><code>int seconds = now.toLocalTime().toSecondOfDay();</code></pre>
        </li>
    </ul>

    <h3>Пример с методами</h3>
    <pre><code>import java.time.LocalDateTime;

public class Main {
    public static void main(String[] args) {
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime futureDateTime = now.plusHours(3).plusMinutes(15);

        System.out.println("Текущее время: " + now);
        System.out.println("Время через 3 часа 15 минут: " + futureDateTime);

        if (futureDateTime.isAfter(now)) {
            System.out.println("Будущее время позже текущего.");
        }
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        <code>LocalDateTime</code> — это мощный и удобный класс для работы с датой и временем в Java.
        Он предоставляет множество методов для выполнения операций с датой и временем, таких
        как добавление часов или минут, сравнение дат и преобразование времени в секунды.
        Благодаря своей неизменяемости и отсутствию привязки к часовому поясу, он идеально
        подходит для работы с локальными датами и временем.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('42175695-816c-403d-82b2-d2ff5929e6b5', 'Оцените количество памяти для хранения одного примитива типа byte в  LinkedList?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Память для хранения byte в LinkedList</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Память для хранения byte в LinkedList</h1>
    <p>
        При хранении примитива типа <code>byte</code> в <code>LinkedList</code> необходимо учитывать не только сам примитив, но и структуру узла (<code>Node</code>), который используется для хранения элементов в списке.
    </p>

    <h2>Структура узла LinkedList</h2>
    <ul>
        <li>
            <span class="highlight">Узел (Node):</span>
            <ul>
                <li>Каждый узел в <code>LinkedList</code> содержит:
                    <ul>
                        <li>Ссылку на данные (<code>item</code>).</li>
                        <li>Ссылку на следующий узел (<code>next</code>).</li>
                        <li>Ссылку на предыдущий узел (<code>prev</code>).</li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>

    <h2>Расчёт памяти для 32-битной JVM</h2>
    <ul>
        <li>
            <span class="highlight">Ссылки и заголовок:</span>
            <ul>
                <li>Каждая ссылка занимает 32 бита (4 байта).</li>
                <li>Заголовок объекта <code>Node</code> занимает 8 байт.</li>
                <li>Итого: 4 + 4 + 4 + 8 = 20 байт. С учётом выравнивания до 8 байт: 24 байта.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Упакованный byte:</span>
            <ul>
                <li>Примитив <code>byte</code> упаковывается в объект <code>Byte</code>.</li>
                <li>Объект <code>Byte</code> занимает 16 байт (8 байт на заголовок, 1 байт на значение и 7 байт для выравнивания).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Итого:</span>
            <ul>
                <li>24 байта на узел + 16 байт на объект <code>Byte</code> = 40 байт.</li>
            </ul>
        </li>
    </ul>

    <h2>Расчёт памяти для 64-битной JVM</h2>
    <ul>
        <li>
            <span class="highlight">Ссылки и заголовок:</span>
            <ul>
                <li>Каждая ссылка занимает 64 бита (8 байт).</li>
                <li>Заголовок объекта <code>Node</code> занимает 16 байт.</li>
                <li>Итого: 8 + 8 + 8 + 16 = 40 байт.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Упакованный byte:</span>
            <ul>
                <li>Объект <code>Byte</code> занимает 24 байта (16 байт на заголовок, 1 байт на значение и 7 байт для выравнивания).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Итого:</span>
            <ul>
                <li>40 байт на узел + 24 байта на объект <code>Byte</code> = 64 байта.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Хранение примитива <code>byte</code> в <code>LinkedList</code> требует значительного объёма памяти из-за накладных расходов на узел и упаковку примитива. Для 32-битной JVM это 40 байт, а для 64-битной – 64 байта.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ff3229f3-5699-4f92-a361-6d2b18108586', 'Какие подклассы класса OutputStream вы знаете, для чего они  предназначены?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Подклассы класса OutputStream</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Подклассы класса OutputStream</h1>
    <p>
        Класс <code>OutputStream</code> является абстрактным базовым классом для всех потоков вывода байтов. В Java существует множество подклассов <code>OutputStream</code>, каждый из которых предназначен для выполнения специфических задач.
    </p>

    <h2>Основные подклассы OutputStream</h2>
    <ul>
        <li>
            <span class="highlight">BufferedOutputStream:</span> Буферизированный выходной поток, который улучшает производительность за счет использования внутреннего буфера.
        </li>
        <li>
            <span class="highlight">ByteArrayOutputStream:</span> Все данные, посылаемые в этот поток, размещаются в предварительно созданном буфере в памяти.
        </li>
        <li>
            <span class="highlight">DataOutputStream:</span> Выходной поток, который включает методы для записи стандартных типов данных Java, таких как <code>int</code>, <code>double</code>, <code>boolean</code> и т.д.
        </li>
        <li>
            <span class="highlight">FileOutputStream:</span> Выходной поток для записи данных в файл на физическом носителе.
        </li>
        <li>
            <span class="highlight">FilterOutputStream:</span> Абстрактный класс, предоставляющий интерфейс для классов-надстроек, которые добавляют к существующим потокам полезные свойства.
        </li>
        <li>
            <span class="highlight">ObjectOutputStream:</span> Выходной поток для записи объектов, которые могут быть сериализованы.
        </li>
        <li>
            <span class="highlight">PipedOutputStream:</span> Реализует понятие выходного канала, который может быть соединен с <code>PipedInputStream</code> для передачи данных между потоками.
        </li>
    </ul>

    <h2>Пример использования подклассов OutputStream</h2>
    <pre>
        <code>
import java.io.*;

public class OutputStreamExample {
    public static void main(String[] args) throws IOException {
        // Использование FileOutputStream
        try (OutputStream fileOutputStream = new FileOutputStream("file.txt")) {
            fileOutputStream.write("Hello, FileOutputStream!".getBytes());
        }

        // Использование BufferedOutputStream
        try (OutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream("file.txt"))) {
            bufferedOutputStream.write("Hello, BufferedOutputStream!".getBytes());
        }

        // Использование ByteArrayOutputStream
        try (ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream()) {
            byteArrayOutputStream.write("Hello, ByteArrayOutputStream!".getBytes());
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            System.out.println(new String(byteArray));
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере показано использование различных подклассов <code>OutputStream</code> для записи данных в файл и в массив байтов.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор подкласса <code>OutputStream</code> зависит от конкретной задачи. Например, <code>BufferedOutputStream</code> улучшает производительность, а <code>DataOutputStream</code> позволяет записывать стандартные типы данных.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Основные подклассы <code>OutputStream</code>:
            <ul>
                <li><code>BufferedOutputStream</code> — буферизированный поток.</li>
                <li><code>ByteArrayOutputStream</code> — поток для записи в массив байтов.</li>
                <li><code>DataOutputStream</code> — поток для записи стандартных типов данных.</li>
                <li><code>FileOutputStream</code> — поток для записи в файл.</li>
                <li><code>ObjectOutputStream</code> — поток для записи объектов.</li>
                <li><code>PipedOutputStream</code> — выходной канал.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
OutputStream fileOutputStream = new FileOutputStream("file.txt");
OutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d26349a2-8800-4ef5-9743-f98792ce5f94', 'Как выбрать все элементы определенного каталога по критерию  (например, с определенным расширением)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Фильтрация элементов каталога по критерию</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Фильтрация элементов каталога по критерию</h1>
    <p>
        Для выбора всех элементов каталога по определенному критерию, например, с конкретным расширением, можно использовать метод <code>File.listFiles()</code> с передачей объекта, реализующего интерфейс <code>FileFilter</code>. Этот метод возвращает массив объектов <code>File</code>, соответствующих условию фильтрации.
    </p>

    <h2>Метод File.listFiles(FileFilter filter)</h2>
    <ul>
        <li>
            <span class="highlight">File[] listFiles(FileFilter filter):</span> Возвращает массив объектов <code>File</code>, содержащихся в каталоге, которые соответствуют условию, заданному в методе <code>accept</code> интерфейса <code>FileFilter</code>.
        </li>
    </ul>

    <h2>Пример фильтрации файлов по расширению</h2>
    <pre>
        <code>
import java.io.File;
import java.io.FileFilter;

public class FileFilterByExtensionExample {
    public static void main(String[] args) {
        // Создаем объект File для каталога
        File dir = new File(".");

        // Создаем фильтр, который отбирает только файлы с расширением .txt
        FileFilter txtFileFilter = new FileFilter() {
            @Override
            public boolean accept(File file) {
                return file.isFile() && file.getName().endsWith(".txt");
            }
        };

        // Получаем список файлов с расширением .txt
        File[] txtFiles = dir.listFiles(txtFileFilter);

        // Выводим имена файлов
        if (txtFiles != null) {
            for (File txtFile : txtFiles) {
                System.out.println(txtFile.getName());
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере создается фильтр, который отбирает только файлы с расширением <code>.txt</code>. Метод <code>accept</code> проверяет, является ли объект файлом и заканчивается ли его имя на <code>.txt</code>. Затем этот фильтр применяется для получения списка файлов с расширением <code>.txt</code> в текущей директории.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Метод <code>listFiles(FileFilter filter)</code> позволяет гибко фильтровать файлы и каталоги по различным критериям, таким как расширение файла, длина имени, тип (файл или каталог) и т.д.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Для фильтрации элементов каталога по критерию используется метод <code>File.listFiles(FileFilter filter)</code>.
        </li>
        <li>
            Пример фильтрации файлов по расширению:
            <pre>
                <code>
FileFilter filter = new FileFilter() {
    @Override
    public boolean accept(File file) {
        return file.isFile() && file.getName().endsWith(".txt");
    }
};
File[] files = dir.listFiles(filter);
                </code>
            </pre>
        </li>
        <li>
            Этот подход позволяет гибко настраивать критерии фильтрации для выбора нужных файлов или каталогов.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5094a6d7-a041-4bfa-b265-c969e889493f', 'Какие преимущества даёт инкапсуляция?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Преимущества инкапсуляции</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Преимущества инкапсуляции</h1>
    <p>
        Инкапсуляция — это один из ключевых принципов объектно-ориентированного программирования, который позволяет
        скрыть внутреннюю реализацию объекта и предоставить контролируемый доступ к его данным.
    </p>

    <h2>Какие преимущества даёт инкапсуляция?</h2>
    <ul>
        <li>
            <span class="highlight">Сокрытие реализации:</span> Инкапсуляция позволяет скрыть детали реализации класса,
            предоставляя только необходимый интерфейс для взаимодействия с объектом. Это упрощает использование класса
            и снижает вероятность ошибок.
        </li>
        <li>
            <span class="highlight">Упрощение поддержки кода:</span> Поскольку внутренняя реализация скрыта, изменения
            внутри класса не влияют на код, который его использует. Это делает код более устойчивым к изменениям и
            упрощает его поддержку.
        </li>
        <li>
            <span class="highlight">Контроль доступа:</span> Инкапсуляция позволяет контролировать доступ к данным
            объекта, например, через методы get и set. Это помогает предотвратить некорректное изменение состояния
            объекта.
        </li>
        <li>
            <span class="highlight">Повышение безопасности:</span> Скрытие данных и предоставление доступа только через
            определённые методы снижает риск несанкционированного доступа или изменения данных.
        </li>
        <li>
            <span class="highlight">Улучшение модульности:</span> Инкапсуляция способствует созданию независимых модулей,
            которые могут быть легко повторно использованы в других частях программы или в других проектах.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Инкапсуляция не только защищает данные, но и делает код более
            структурированным и понятным, что особенно важно в больших проектах с множеством взаимодействующих
            компонентов.
        </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fc13fd67-2f2e-4586-9d6d-45674e9a0516', 'Как создать собственный протокол сериализации?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Создание собственного протокола сериализации</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Создание собственного протокола сериализации</h1>
    <p>
        Для создания собственного протокола сериализации необходимо реализовать интерфейс <code>java.io.Externalizable</code>. Этот интерфейс позволяет полностью контролировать процесс сериализации и десериализации, в отличие от стандартной сериализации, где многие действия выполняются автоматически.
    </p>

    <h2>Реализация интерфейса Externalizable</h2>
    <ul>
        <li>
            <span class="highlight">Методы интерфейса:</span> Интерфейс <code>Externalizable</code> требует реализации двух методов:
            <ul>
                <li><code>writeExternal(ObjectOutput out)</code> — определяет, как объект будет записан в поток.</li>
                <li><code>readExternal(ObjectInput in)</code> — определяет, как объект будет восстановлен из потока.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Полный контроль:</span> В отличие от стандартной сериализации, при использовании <code>Externalizable</code> ничего не делается автоматически. Вы полностью управляете процессом записи и чтения данных.
        </li>
    </ul>

    <h2>Пример реализации</h2>
    <p>
        Для создания собственного протокола сериализации достаточно реализовать интерфейс <code>Externalizable</code> и определить логику в методах <code>writeExternal</code> и <code>readExternal</code>.
    </p>
    <pre>
        <code>
public class CustomObject implements Externalizable {
    private String name;
    private int age;

    // Конструктор без параметров (обязателен для Externalizable)
    public CustomObject() {}

    public CustomObject(String name, int age) {
        this.name = name;
        this.age = age;
    }

    @Override
    public void writeExternal(ObjectOutput out) throws IOException {
        out.writeUTF(name); // Сериализация поля name
        out.writeInt(age); // Сериализация поля age
    }

    @Override
    public void readExternal(ObjectInput in) throws IOException, ClassNotFoundException {
        name = in.readUTF(); // Десериализация поля name
        age = in.readInt();  // Десериализация поля age
    }

    @Override
    public String toString() {
        return "CustomObject{name=\'" + name + "\', age=" + age + "}";
    }
}
        </code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При использовании <code>Externalizable</code> необходимо реализовать конструктор без параметров, так как он будет вызван при десериализации перед вызовом метода <code>readExternal</code>.
        </p>
    </div>

    <h2>Преимущества собственного протокола</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Вы можете полностью контролировать, какие данные сериализуются и как они восстанавливаются.
        </li>
        <li>
            <span class="highlight">Оптимизация:</span> Возможность оптимизировать процесс сериализации, например, исключая избыточные данные или сжимая их.
        </li>
        <li>
            <span class="highlight">Безопасность:</span> Возможность добавления шифрования или других механизмов защиты данных.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9b96c1e1-b83f-461e-854c-e06d7e8f759e', 'Какие режимы доступа к файлу есть у RandomAccessFile?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Режимы доступа к файлу в RandomAccessFile</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Режимы доступа к файлу в RandomAccessFile</h1>
    <p>
        Класс <code>RandomAccessFile</code> в Java поддерживает несколько режимов доступа к файлу, которые определяют, как файл будет открыт и какие операции с ним можно выполнять. Эти режимы задаются в качестве второго параметра при создании объекта <code>RandomAccessFile</code>.
    </p>

    <h2>Режимы доступа</h2>
    <ul>
        <li>
            <span class="highlight">"r":</span> Открывает файл только для чтения. Любые попытки записи данных приведут к выбросу исключения <code>IOException</code>.
        </li>
        <li>
            <span class="highlight">"rw":</span> Открывает файл для чтения и записи. Если файл не существует, он будет создан.
        </li>
        <li>
            <span class="highlight">"rws":</span> Открывает файл для чтения и записи, как и режим <code>"rw"</code>, но требует от системы синхронно записывать изменения содержимого файла и его метаданных на физический носитель при каждом изменении.
        </li>
        <li>
            <span class="highlight">"rwd":</span> Открывает файл для чтения и записи, как и режим <code>"rw"</code>, но требует от системы синхронно записывать изменения содержимого файла на физический носитель при каждом изменении. Изменения метаданных могут быть записаны асинхронно.
        </li>
    </ul>

    <h2>Пример использования режимов доступа</h2>
    <pre>
        <code>
import java.io.IOException;
import java.io.RandomAccessFile;

public class RandomAccessFileModesExample {
    public static void main(String[] args) {
        try {
            // Открываем файл только для чтения
            RandomAccessFile readOnlyFile = new RandomAccessFile("example.txt", "r");
            System.out.println("Файл открыт для чтения.");

            // Открываем файл для чтения и записи
            RandomAccessFile readWriteFile = new RandomAccessFile("example.txt", "rw");
            System.out.println("Файл открыт для чтения и записи.");

            // Открываем файл с синхронной записью изменений
            RandomAccessFile syncFile = new RandomAccessFile("example.txt", "rws");
            System.out.println("Файл открыт с синхронной записью изменений.");

            // Открываем файл с синхронной записью только данных
            RandomAccessFile syncDataFile = new RandomAccessFile("example.txt", "rwd");
            System.out.println("Файл открыт с синхронной записью только данных.");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере демонстрируется открытие файла в различных режимах доступа с использованием <code>RandomAccessFile</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Режимы <code>"rws"</code> и <code>"rwd"</code> обеспечивают более высокую надежность, так как изменения записываются на физический носитель сразу, что предотвращает потерю данных в случае сбоя системы.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Режимы доступа к файлу в <code>RandomAccessFile</code>:
            <ul>
                <li><code>"r"</code> — только чтение.</li>
                <li><code>"rw"</code> — чтение и запись.</li>
                <li><code>"rws"</code> — чтение и запись с синхронной записью изменений и метаданных.</li>
                <li><code>"rwd"</code> — чтение и запись с синхронной записью только данных.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
RandomAccessFile file = new RandomAccessFile("example.txt", "rw");
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2c863dc6-7dfc-4af5-a9da-3d7e0d0dbb62', 'Существует ли возможность перенаправить потоки стандартного  ввода/вывода?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Перенаправление стандартных потоков ввода/вывода</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Перенаправление стандартных потоков ввода/вывода</h1>
    <p>
        В Java существует возможность перенаправить стандартные потоки ввода, вывода и вывода ошибок с помощью класса <code>System</code>. Это позволяет изменить источник ввода или назначение вывода на лету.
    </p>

    <h2>Методы для перенаправления потоков</h2>
    <ul>
        <li>
            <span class="highlight">setIn(InputStream in):</span> Перенаправляет стандартный поток ввода (<code>System.in</code>) на указанный <code>InputStream</code>.
        </li>
        <li>
            <span class="highlight">setOut(PrintStream out):</span> Перенаправляет стандартный поток вывода (<code>System.out</code>) на указанный <code>PrintStream</code>.
        </li>
        <li>
            <span class="highlight">setErr(PrintStream err):</span> Перенаправляет стандартный поток вывода ошибок (<code>System.err</code>) на указанный <code>PrintStream</code>.
        </li>
    </ul>

    <h2>Пример перенаправления стандартного вывода</h2>
    <pre>
        <code>
import java.io.*;

public class RedirectOutputExample {
    public static void main(String[] args) throws IOException {
        // Перенаправляем стандартный вывод в файл
        try (PrintStream fileOut = new PrintStream(new FileOutputStream("output.txt"))) {
            System.setOut(fileOut);
            System.out.println("Этот текст будет записан в файл output.txt");
        }

        // Восстанавливаем стандартный вывод
        System.setOut(new PrintStream(new FileOutputStream(FileDescriptor.out)));
        System.out.println("Этот текст будет выведен в консоль");
    }
}
        </code>
    </pre>
    <p>
        В этом примере стандартный вывод перенаправляется в файл <code>output.txt</code>, а затем восстанавливается обратно в консоль.
    </p>

    <h2>Пример перенаправления стандартного ввода</h2>
    <pre>
        <code>
import java.io.*;

public class RedirectInputExample {
    public static void main(String[] args) throws IOException {
        // Перенаправляем стандартный ввод из файла
        try (InputStream fileIn = new FileInputStream("input.txt")) {
            System.setIn(fileIn);
            BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
        }

        // Восстанавливаем стандартный ввод
        System.setIn(new FileInputStream(FileDescriptor.in));
        System.out.println("Ввод восстановлен в консоль");
    }
}
        </code>
    </pre>
    <p>
        В этом примере стандартный ввод перенаправляется из файла <code>input.txt</code>, а затем восстанавливается обратно в консоль.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Перенаправление стандартных потоков может быть полезно для тестирования, логирования или изменения поведения программы в зависимости от источника ввода или назначения вывода.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Методы для перенаправления потоков:
            <ul>
                <li><code>System.setIn(InputStream in)</code> — перенаправляет стандартный ввод.</li>
                <li><code>System.setOut(PrintStream out)</code> — перенаправляет стандартный вывод.</li>
                <li><code>System.setErr(PrintStream err)</code> — перенаправляет стандартный вывод ошибок.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
System.setOut(new PrintStream(new FileOutputStream("output.txt")));
System.setIn(new FileInputStream("input.txt"));
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('86be4847-6be5-44e2-91b0-4dc8b73b9ec3', 'Что такое класс Object?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Класс Object</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Класс Object</h1>
    <p>
        <span class="highlight">Класс Object</span> является корневым суперклассом для всех классов в Java. Это означает, что
        все классы, даже если это не указано явно, являются наследниками класса <code>Object</code>.
        Благодаря этому объект типа <code>Object</code> может ссылаться на объект любого другого класса.
    </p>

    <h2>Особенности класса Object</h2>
    <ul>
        <li>
            <span class="highlight">Корневой суперкласс:</span> Все классы в Java неявно наследуются от <code>Object</code>,
            даже если это не указано в коде.
        </li>
        <li>
            <span class="highlight">Универсальная ссылка:</span> Переменная типа <code>Object</code> может хранить ссылку на объект
            любого класса, так как все классы являются его наследниками.
        </li>
        <li>
            <span class="highlight">Базовые методы:</span> Класс <code>Object</code> предоставляет набор методов, которые доступны
            всем классам. Например:
            <ul>
                <li><code>toString()</code> — возвращает строковое представление объекта.</li>
                <li><code>equals()</code> — сравнивает объекты на равенство.</li>
                <li><code>hashCode()</code> — возвращает хэш-код объекта.</li>
                <li><code>getClass()</code> — возвращает класс объекта.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Класс <code>Object</code> является основой для всех классов в Java, что делает его
            ключевым элементом объектно-ориентированной системы языка.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Пример использования переменной типа <code>Object</code>:
    </p>
    <pre><code>Object obj = new String("Пример");
System.out.println(obj.toString()); // Вывод: Пример</code></pre>
    <p>
        В этом примере переменная <code>obj</code> типа <code>Object</code> ссылается на объект класса <code>String</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Класс <code>Object</code> предоставляет базовую функциональность, которую
            можно переопределить в дочерних классах для реализации специфического поведения.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('60c489b8-1302-4ec4-81b3-20d9c0555b44', 'Какие методы есть у класса Object (перечислить все)? Что они делают?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Методы класса Object</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Методы класса Object</h1>
    <p>
        <span class="highlight">Object</span> — это базовый класс для всех объектов в Java. Любой класс неявно наследуется от
        <code>Object</code> и, соответственно, наследует его методы. Эти методы предоставляют
        базовую функциональность, которую можно переопределить в дочерних классах.
    </p>

    <h2>Список методов класса Object</h2>
    <ul>
        <li>
            <span class="highlight">public boolean equals(Object obj):</span> Сравнивает объекты по значению. По умолчанию
            сравнивает ссылки на объекты, но может быть переопределён для сравнения по
            содержимому.
        </li>
        <li>
            <span class="highlight">int hashCode():</span> Возвращает хэш-код объекта. Используется в структурах данных,
            таких как <code>HashMap</code> или <code>HashSet</code>.
        </li>
        <li>
            <span class="highlight">String toString():</span> Возвращает строковое представление объекта. По умолчанию
            возвращает имя класса и хэш-код, но часто переопределяется для удобства.
        </li>
        <li>
            <span class="highlight">Class getClass():</span> Возвращает класс объекта во время выполнения. Полезен для
            получения метаинформации о классе.
        </li>
        <li>
            <span class="highlight">protected Object clone():</span> Создаёт и возвращает копию объекта. Требует
            реализации интерфейса <code>Cloneable</code>.
        </li>
        <li>
            <span class="highlight">void notify():</span> Возобновляет выполнение одного потока, ожидающего монитор
            данного объекта.
        </li>
        <li>
            <span class="highlight">void notifyAll():</span> Возобновляет выполнение всех потоков, ожидающих монитор
            данного объекта.
        </li>
        <li>
            <span class="highlight">void wait():</span> Останавливает вызвавший метод поток до тех пор, пока другой поток
            не вызовет <code>notify()</code> или <code>notifyAll()</code> для этого объекта.
        </li>
        <li>
            <span class="highlight">void wait(long timeout):</span> Останавливает вызвавший метод поток на указанное
            время (в миллисекундах) или до вызова <code>notify()</code>/<code>notifyAll()</code>.
        </li>
        <li>
            <span class="highlight">void wait(long timeout, int nanos):</span> Останавливает вызвавший метод поток на
            указанное время (в миллисекундах и наносекундах) или до вызова
            <code>notify()</code>/<code>notifyAll()</code>.
        </li>
        <li>
            <span class="highlight">protected void finalize():</span> Вызывается сборщиком мусора перед удалением объекта.
            Может быть переопределён для выполнения cleanup-операций.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Методы <code>notify()</code>, <code>notifyAll()</code> и <code>wait()</code> используются для
            управления потоками и синхронизации. Они должны вызываться только в
            синхронизированных блоках или методах.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Пример переопределения методов <code>equals()</code>, <code>hashCode()</code> и <code>toString()</code>:
    </p>
    <pre><code>class Person {
    private String name;
    private int age;

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Person person = (Person) obj;
        return age == person.age && name.equals(person.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, age);
    }

    @Override
    public String toString() {
        return "Person{name=\'" + name + "\', age=" + age + "}";
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Переопределение методов <code>equals()</code>, <code>hashCode()</code> и <code>toString()</code>
            является стандартной практикой для улучшения читаемости и функциональности
            классов.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('74367428-2c37-492c-8a08-7b35d6a8ef70', 'Расскажите про equals и hashcode', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Методы equals и hashCode</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Методы equals и hashCode</h1>
    <p>
        Методы <span class="highlight">equals</span> и <span class="highlight">hashCode</span> являются важными методами класса <code>Object</code>, которые
        используются для сравнения объектов и работы с коллекциями, такими как <code>HashMap</code>
        или <code>HashSet</code>.
    </p>

    <h2>Метод hashCode</h2>
    <p>
        <span class="highlight">Хэш-код</span> — это целочисленный результат работы метода <code>hashCode()</code>, который
        рассчитывается на основе состояния объекта. Хэш-код используется для быстрого
        поиска и сравнения объектов в коллекциях.
    </p>
    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Хэш-код не обязательно должен быть уникальным, но разные объекты должны
            стараться возвращать разные хэш-коды для повышения эффективности работы
            коллекций.
        </p>
    </div>

    <h2>Метод equals</h2>
    <p>
        <span class="highlight">Метод equals</span> используется для сравнения объектов по их состоянию. В отличие от
        оператора <code>==</code>, который сравнивает ссылки на объекты, <code>equals()</code> сравнивает
        содержимое объектов.
    </p>
    <div class="note">
        <p>
            <span class="highlight">По умолчанию:</span> Метод <code>equals()</code> в классе <code>Object</code> сравнивает ссылки на объекты.
            Чтобы сравнивать объекты по их состоянию, метод необходимо переопределить.
        </p>
    </div>

    <h2>Свойства метода equals</h2>
    <ul>
        <li>
            <span class="highlight">Рефлексивность:</span> Для любой ссылки на значение <code>x</code>, <code>x.equals(x)</code>
            должно возвращать <code>true</code>.
        </li>
        <li>
            <span class="highlight">Симметричность:</span> Для любых ссылок на значения <code>x</code> и <code>y</code>, если
            <code>x.equals(y)</code> возвращает <code>true</code>, то и <code>y.equals(x)</code> должно возвращать
            <code>true</code>.
        </li>
        <li>
            <span class="highlight">Транзитивность:</span> Для любых ссылок на значения <code>x</code>, <code>y</code> и <code>z</code>, если
            <code>x.equals(y)</code> и <code>y.equals(z)</code> возвращают <code>true</code>, то и <code>x.equals(z)</code> должно
            возвращать <code>true</code>.
        </li>
        <li>
            <span class="highlight">Непротиворечивость:</span> Для любых ссылок на значения <code>x</code> и <code>y</code>, если
            несколько раз вызвать <code>x.equals(y)</code>, результат должен быть одинаковым
            (либо всегда <code>true</code>, либо всегда <code>false</code>), при условии, что состояние
            объектов не изменилось.
        </li>
        <li>
            <span class="highlight">Совместимость с hashCode:</span> Если два объекта равны по <code>equals()</code>, они
            должны возвращать одинаковый хэш-код.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При переопределении метода <code>equals()</code> обязательно нужно
            переопределить метод <code>hashCode()</code>, чтобы соблюсти контракт между этими
            методами.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Пример переопределения методов <code>equals()</code> и <code>hashCode()</code>:
    </p>
    <pre><code>class Person {
    private String name;
    private int age;

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Person person = (Person) obj;
        return age == person.age && name.equals(person.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, age);
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Переопределение методов <code>equals()</code> и <code>hashCode()</code> позволяет
            корректно сравнивать объекты и использовать их в коллекциях, таких как
            <code>HashMap</code> или <code>HashSet</code>.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9e985ef5-a31b-4cd9-b61d-b2853649c0e9', 'Как вывести на экран 10 случайных чисел, используя forEach()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вывод 10 случайных чисел с использованием forEach()</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Вывод 10 случайных чисел с использованием forEach()</h1>
    <p>
        В Java можно легко вывести на экран 10 случайных чисел, используя стримы и метод
        <code>forEach()</code>. Для этого можно воспользоваться классом <code>Random</code>, который генерирует
        поток случайных чисел.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код генерирует 10 случайных чисел и выводит их на экран:
    </p>
    <pre><code>import java.util.Random;

public class Main {
    public static void main(String[] args) {
        (new Random())
            .ints() // создание стрима случайных чисел
            .limit(10) // ограничение стрима 10 числами
            .forEach(System.out::println); // вывод каждого числа на экран
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">new Random():</span> Создаёт объект класса <code>Random</code>, который используется для
            генерации случайных чисел.
        </li>
        <li>
            <span class="highlight">ints():</span> Возвращает стрим случайных целых чисел.
        </li>
        <li>
            <span class="highlight">limit(10):</span> Ограничивает стрим 10 элементами.
        </li>
        <li>
            <span class="highlight">forEach(System.out::println):</span> Применяет метод <code>println</code> к каждому элементу
            стрима, выводя его на экран.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>123456789
-987654321
456789123
-123456789
987654321
-456789123
123456789
-987654321
456789123
-123456789</code></pre>

    <h2>Итог</h2>
    <p>
        Использование стримов и метода <code>forEach()</code> позволяет легко и компактно выводить
        случайные числа на экран. Этот подход особенно удобен для задач, где требуется
        быстрая генерация и обработка данных.
    </p>
</body>
</html>', 'STREAM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('673a5559-27b8-4b24-a5bb-dd9d90defcbb', 'Как получить текущее время с точностью до миллисекунд, используя Date  Time API?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Получение текущего времени с точностью до миллисекунд с использованием Date Time API</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Получение текущего времени с точностью до миллисекунд с использованием Date Time API</h1>
    <p>
        В Java 8 с использованием Date Time API можно получить текущее время с точностью до
        миллисекунд. Для этого можно использовать класс <code>Instant</code>, который представляет
        временную метку в формате UTC.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код демонстрирует, как получить текущее время с точностью до миллисекунд:
    </p>
    <pre><code>import java.util.Date;
import java.time.Instant;

public class Main {
    public static void main(String[] args) {
        Instant currentTime = new Date().toInstant(); // текущее время с точностью до миллисекунд
        System.out.println("Текущее время: " + currentTime);
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">new Date():</span> Создаёт объект <code>Date</code>, представляющий текущее время.
        </li>
        <li>
            <span class="highlight">toInstant():</span> Преобразует объект <code>Date</code> в <code>Instant</code>, который
            представляет время в формате UTC с точностью до наносекунд.
        </li>
        <li>
            <span class="highlight">System.out.println():</span> Выводит текущее время на экран.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>Текущее время: 2023-10-05T14:30:45.123Z</code></pre>

    <h2>Итог</h2>
    <p>
        Использование метода <code>toInstant()</code> позволяет легко получить текущее время с
        точностью до миллисекунд. Класс <code>Instant</code> предоставляет удобный способ работы с
        временными метками в формате UTC, что делает его полезным для задач, требующих
        высокой точности.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fd04963b-d268-4bb5-a61d-03229c085cb3', 'Какие подклассы класса Reader вы знаете, для чего они предназначены?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Подклассы класса Reader</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Подклассы класса Reader</h1>
    <p>
        Класс <code>Reader</code> является абстрактным базовым классом для всех потоков ввода символов. В Java существует множество подклассов <code>Reader</code>, каждый из которых предназначен для выполнения специфических задач.
    </p>

    <h2>Основные подклассы Reader</h2>
    <ul>
        <li>
            <span class="highlight">BufferedReader:</span> Буферизованный входной символьный поток, который улучшает производительность за счет использования внутреннего буфера.
        </li>
        <li>
            <span class="highlight">CharArrayReader:</span> Входной поток, который читает данные из символьного массива.
        </li>
        <li>
            <span class="highlight">FileReader:</span> Входной поток, предназначенный для чтения данных из файла.
        </li>
        <li>
            <span class="highlight">FilterReader:</span> Абстрактный класс, предоставляющий интерфейс для классов-надстроек, которые добавляют к существующим потокам полезные свойства.
        </li>
        <li>
            <span class="highlight">InputStreamReader:</span> Входной поток, который транслирует байты в символы, используя указанную кодировку.
        </li>
        <li>
            <span class="highlight">LineNumberReader:</span> Входной поток, который подсчитывает строки при чтении данных.
        </li>
        <li>
            <span class="highlight">PipedReader:</span> Входной канал, который может быть соединен с <code>PipedWriter</code> для передачи данных между потоками.
        </li>
        <li>
            <span class="highlight">PushbackReader:</span> Входной поток, который позволяет возвращать символы обратно в поток.
        </li>
        <li>
            <span class="highlight">StringReader:</span> Входной поток, который читает данные из строки.
        </li>
    </ul>

    <h2>Пример использования подклассов Reader</h2>
    <pre>
        <code>
import java.io.*;

public class ReaderExample {
    public static void main(String[] args) throws IOException {
        // Использование FileReader
        try (Reader fileReader = new FileReader("file.txt")) {
            int data;
            while ((data = fileReader.read()) != -1) {
                System.out.print((char) data);
            }
        }

        // Использование BufferedReader
        try (Reader bufferedReader = new BufferedReader(new FileReader("file.txt"))) {
            String line;
            while ((line = ((BufferedReader) bufferedReader).readLine()) != null) {
                System.out.println(line);
            }
        }

        // Использование StringReader
        try (Reader stringReader = new StringReader("Hello, StringReader!")) {
            int data;
            while ((data = stringReader.read()) != -1) {
                System.out.print((char) data);
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере показано использование различных подклассов <code>Reader</code> для чтения данных из файла и строки.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор подкласса <code>Reader</code> зависит от конкретной задачи. Например, <code>BufferedReader</code> улучшает производительность, а <code>InputStreamReader</code> позволяет читать данные в указанной кодировке.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Основные подклассы <code>Reader</code>:
            <ul>
                <li><code>BufferedReader</code> — буферизированный поток.</li>
                <li><code>CharArrayReader</code> — поток для чтения из символьного массива.</li>
                <li><code>FileReader</code> — поток для чтения из файла.</li>
                <li><code>InputStreamReader</code> — поток для трансляции байтов в символы.</li>
                <li><code>LineNumberReader</code> — поток с подсчетом строк.</li>
                <li><code>PipedReader</code> — входной канал.</li>
                <li><code>PushbackReader</code> — поток с возможностью возврата символов.</li>
                <li><code>StringReader</code> — поток для чтения из строки.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
Reader fileReader = new FileReader("file.txt");
Reader bufferedReader = new BufferedReader(fileReader);
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1a5b19ed-5958-4bae-9faf-b7f5de44b686', 'Как получить текущее время по местному времени с точностью до  миллисекунд, используя Date Time API?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Получение текущего времени по местному времени с точностью до миллисекунд</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Получение текущего времени по местному времени с точностью до миллисекунд</h1>
    <p>
        В Java 8 с использованием Date Time API можно получить текущее время по местному
        времени с точностью до миллисекунд. Для этого используется класс <code>LocalDateTime</code>
        и метод <code>ofInstant()</code>, который преобразует временную метку в формате UTC в
        локальное время.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код демонстрирует, как получить текущее время по местному времени с
        точностью до миллисекунд:
    </p>
    <pre><code>import java.util.Date;
import java.time.LocalDateTime;
import java.time.ZoneId;

public class Main {
    public static void main(String[] args) {
        LocalDateTime localTime = LocalDateTime.ofInstant(
            new Date().toInstant(), // текущее время в формате UTC
            ZoneId.systemDefault() // текущая временная зона
        );
        System.out.println("Текущее время по местному времени: " + localTime);
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">new Date().toInstant():</span> Получает текущее время в формате UTC с точностью до
            миллисекунд.
        </li>
        <li>
            <span class="highlight">ZoneId.systemDefault():</span> Возвращает текущую временную зону системы.
        </li>
        <li>
            <span class="highlight">LocalDateTime.ofInstant():</span> Преобразует временную метку в формате UTC в
            локальное время с учётом временной зоны.
        </li>
        <li>
            <span class="highlight">System.out.println():</span> Выводит текущее локальное время на экран.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>Текущее время по местному времени: 2023-10-05T17:30:45.123</code></pre>

    <h2>Итог</h2>
    <p>
        Использование метода <code>LocalDateTime.ofInstant()</code> позволяет легко получить текущее
        время по местному времени с точностью до миллисекунд. Этот подход демонстрирует
        удобство и мощь Date Time API для работы с временными метками и временными зонами
        в Java 8.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('352da9de-cccc-433c-8478-cc8f7066943c', 'Что вы знаете об интерфейсе FileFilter?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Интерфейс FileFilter</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Интерфейс FileFilter</h1>
    <p>
        Интерфейс <code>FileFilter</code> используется для проверки, соответствует ли объект <code>File</code> определенному условию. Этот интерфейс содержит единственный метод <code>accept(File pathName)</code>, который необходимо переопределить и реализовать для выполнения пользовательской фильтрации.
    </p>

    <h2>Метод accept(File pathName)</h2>
    <ul>
        <li>
            <span class="highlight">boolean accept(File pathName):</span> Этот метод принимает объект <code>File</code> и возвращает <code>true</code>, если файл или каталог соответствует условию фильтрации, и <code>false</code> в противном случае.
        </li>
    </ul>

    <h2>Пример использования FileFilter</h2>
    <pre>
        <code>
import java.io.File;
import java.io.FileFilter;

public class FileFilterExample {
    public static void main(String[] args) {
        // Создаем объект File для каталога
        File dir = new File(".");

        // Создаем фильтр, который отбирает только каталоги
        FileFilter directoryFilter = new FileFilter() {
            @Override
            public boolean accept(File file) {
                return file.exists() && file.isDirectory();
            }
        };

        // Получаем список каталогов
        File[] directories = dir.listFiles(directoryFilter);

        // Выводим имена каталогов
        if (directories != null) {
            for (File directory : directories) {
                System.out.println(directory.getName());
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере создается фильтр, который отбирает только каталоги. Метод <code>accept</code> проверяет, существует ли файл и является ли он каталогом. Затем этот фильтр применяется для получения списка каталогов в текущей директории.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Интерфейс <code>FileFilter</code> часто используется в сочетании с методом <code>listFiles(FileFilter filter)</code> класса <code>File</code> для фильтрации файлов и каталогов по определенным критериям.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Интерфейс <code>FileFilter</code> используется для фильтрации файлов и каталогов.
        </li>
        <li>
            Основной метод:
            <ul>
                <li><code>boolean accept(File pathName)</code> — проверяет, соответствует ли файл или каталог условию фильтрации.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
FileFilter filter = new FileFilter() {
    @Override
    public boolean accept(File file) {
        return file.exists() && file.isDirectory();
    }
};
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4bd7b39e-9db3-4033-b0d7-492998eee16e', 'Какие преимущества даёт полиморфизм?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Преимущества полиморфизма</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Преимущества полиморфизма</h1>
    <p>
        Полиморфизм — это один из основных принципов объектно-ориентированного программирования, который позволяет
        объектам разных классов обрабатываться через единый интерфейс. Это делает код более гибким и расширяемым.
    </p>

    <h2>Какие преимущества даёт полиморфизм?</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость кода:</span> Полиморфизм позволяет использовать один и тот же интерфейс
            для работы с объектами разных классов. Это упрощает добавление новых классов и изменение поведения программы
            без изменения существующего кода.
        </li>
        <li>
            <span class="highlight">Упрощение кода:</span> Благодаря полиморфизму можно писать более общий и лаконичный
            код, который работает с объектами через их общий интерфейс, не заботясь о конкретной реализации.
        </li>
        <li>
            <span class="highlight">Расширяемость:</span> Полиморфизм позволяет легко добавлять новые классы, которые
            реализуют уже существующий интерфейс, без необходимости изменять код, который использует этот интерфейс.
        </li>
        <li>
            <span class="highlight">Упрощение тестирования:</span> Полиморфизм позволяет использовать моки или заглушки
            для тестирования, что упрощает процесс написания unit-тестов и проверки отдельных компонентов системы.
        </li>
        <li>
            <span class="highlight">Повторное использование кода:</span> Полиморфизм способствует созданию универсальных
            решений, которые могут быть применены в разных частях программы или в других проектах.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Полиморфизм не только упрощает разработку и поддержку кода, но и
            делает его более адаптивным к изменениям, что особенно важно в больших и сложных проектах.
        </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('91893601-b014-49a0-995a-9fa271489b5e', 'Как получить сумму всех чисел в наборе?(STREAM)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Получение суммы всех чисел в наборе</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Получение суммы всех чисел в наборе</h1>
    <p>
        В Java можно легко получить сумму всех чисел в наборе, используя стримы и метод
        <code>sum()</code>. Этот метод возвращает сумму всех элементов числового стрима.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код вычисляет сумму всех чисел в наборе:
    </p>
    <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        int sum = Stream.of(5, 3, 4, 55, 2) // создание стрима из чисел
                        .mapToInt(a -> a) // преобразование в IntStream
                        .sum(); // вычисление суммы
        System.out.println(sum); // вывод суммы
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">Stream.of(5, 3, 4, 55, 2):</span> Создаёт стрим из чисел.
        </li>
        <li>
            <span class="highlight">mapToInt(a -> a):</span> Преобразует стрим объектов в <code>IntStream</code> (стрим примитивов <code>int</code>).
        </li>
        <li>
            <span class="highlight">sum():</span> Возвращает сумму всех элементов стрима.
        </li>
        <li>
            <span class="highlight">System.out.println(sum):</span> Выводит сумму на экран.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>69</code></pre>

    <h2>Итог</h2>
    <p>
        Использование стримов и метода <code>sum()</code> позволяет легко вычислять сумму всех
        чисел в наборе. Этот подход демонстрирует удобство и эффективность работы со
        стримами в Java для обработки данных.
    </p>
</body>
</html>', 'STREAM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('46fe95b2-5616-4c28-8f31-b1c59a464002', 'Какие поля не будут сериализованы при сериализации? Будет ли  сериализовано final-поле?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Поля, не участвующие в сериализации</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Поля, не участвующие в сериализации</h1>
    <p>
        При сериализации объекта не все его поля сохраняются. Некоторые поля исключаются из процесса сериализации в зависимости от их модификаторов и типа.
    </p>

    <h2>Поля, которые не сериализуются</h2>
    <ul>
        <li>
            <span class="highlight">Поля с модификатором transient:</span> Поля, помеченные ключевым словом <code>transient</code>, не участвуют в сериализации. После десериализации такие поля будут иметь значение <code>null</code> (или значение по умолчанию для примитивных типов).
        </li>
        <li>
            <span class="highlight">Статические поля (static):</span> Значения статических полей не сохраняются при сериализации, так как они принадлежат классу, а не конкретному объекту.
        </li>
    </ul>

    <h2>Сериализация final-полей</h2>
    <ul>
        <li>
            <span class="highlight">Стандартная сериализация (Serializable):</span> Поля с модификатором <code>final</code> сериализуются так же, как и обычные поля. Однако их десериализация возможна только при использовании стандартной сериализации, так как <code>final</code>-поля должны быть инициализированы в конструкторе. При использовании <code>Externalizable</code> изменить значение <code>final</code>-поля после десериализации невозможно.
        </li>
        <li>
            <span class="highlight">Исключение для кастомных final-полей:</span> Если <code>final</code>-поля не являются кастомными (например, примитивные типы или строки), они будут успешно десериализованы.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если вам необходимо сериализовать объект с <code>final</code>-полями, рекомендуется использовать стандартную сериализацию (<code>Serializable</code>), так как она работает за счет рефлексии и позволяет обойти ограничения, связанные с инициализацией <code>final</code>-полей.
        </p>
    </div>

    <h2>Примеры</h2>
    <ul>
        <li>
            <code>transient int id;</code> — поле не будет сериализовано.
        </li>
        <li>
            <code>static String name;</code> — статическое поле не сохраняется при сериализации.
        </li>
        <li>
            <code>final String description;</code> — <code>final</code>-поле будет сериализовано, но его десериализация возможна только при использовании <code>Serializable</code>.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cf5bacb0-8cf2-4dad-ad9a-291161f1df7c', 'Как управлять состояниями завершения потоков и предотвращать утечки ресурсов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Управление состояниями завершения потоков и предотвращение утечек ресурсов</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Управление состояниями завершения потоков и предотвращение утечек ресурсов</h1>
    <p>
        В многопоточных приложениях важно корректно управлять завершением потоков и освобождать ресурсы, чтобы избежать утечек памяти, файловых дескрипторов, сетевых соединений и других ресурсов. Неправильное управление завершением потоков может привести к нестабильности приложения и ухудшению производительности.
    </p>

    <h2>Проблема: Утечки ресурсов и незавершённые потоки</h2>
    <p>
        <span class="highlight">Проблема:</span> Если потоки не завершаются корректно, ресурсы, которые они используют, могут остаться неосвобождёнными. Это может привести к утечкам памяти, исчерпанию файловых дескрипторов и другим проблемам.
    </p>

    <h2>Решение: Управление завершением потоков и освобождение ресурсов</h2>
    <p>
        Для управления завершением потоков и предотвращения утечек ресурсов можно использовать следующие подходы:
        <ul>
            <li>
                <span class="highlight">1. Использование <code>try-finally</code>:</span> Гарантируйте освобождение ресурсов в блоке <code>finally</code>.
            </li>
            <li>
                <span class="highlight">2. Использование <code>ExecutorService</code>:</span> Управляйте потоками через пулы потоков, которые автоматически завершают потоки и освобождают ресурсы.
            </li>
            <li>
                <span class="highlight">3. Использование флагов завершения:</span> Используйте флаги для корректного завершения потоков.
            </li>
            <li>
                <span class="highlight">4. Использование <code>shutdown()</code> и <code>shutdownNow()</code>:</span> Корректно завершайте пулы потоков.
            </li>
        </ul>
    </p>

    <h3>Пример использования <code>try-finally</code>:</h3>
    <pre><code>
public class ResourceCleanupExample {
    public void useResource() {
        Resource resource = new Resource();
        try {
            // Работа с ресурсом
        } finally {
            resource.close();  // Освобождение ресурса
        }
    }
}
    </code></pre>

    <h3>Пример использования <code>ExecutorService</code>:</h3>
    <pre><code>
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ExecutorServiceExample {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(4);

        for (int i = 0; i < 10; i++) {
            executor.submit(() -> {
                System.out.println("Задача выполняется потоком: " + Thread.currentThread().getName());
            });
        }

        executor.shutdown();  // Корректное завершение пула потоков
    }
}
    </code></pre>

    <h3>Пример использования флага завершения:</h3>
    <pre><code>
public class FlagShutdownExample {
    private volatile boolean running = true;

    public void stop() {
        running = false;
    }

    public void run() {
        while (running) {
            // Выполнение задачи
            System.out.println("Поток работает...");
        }
        System.out.println("Поток завершён.");
    }

    public static void main(String[] args) throws InterruptedException {
        FlagShutdownExample example = new FlagShutdownExample();
        Thread thread = new Thread(example::run);
        thread.start();

        Thread.sleep(1000);  // Даём потоку поработать 1 секунду
        example.stop();  // Останавливаем поток
    }
}
    </code></pre>

    <h3>Пример использования <code>shutdownNow()</code>:</h3>
    <pre><code>
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ShutdownNowExample {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(4);

        for (int i = 0; i < 10; i++) {
            executor.submit(() -> {
                System.out.println("Задача выполняется потоком: " + Thread.currentThread().getName());
            });
        }

        executor.shutdownNow();  // Принудительное завершение всех задач
    }
}
    </code></pre>

    <h2>Рекомендации по управлению завершением потоков</h2>
    <p>
        <span class="highlight">1. Всегда освобождайте ресурсы:</span> Используйте блоки <code>try-finally</code> или <code>try-with-resources</code> для гарантии освобождения ресурсов.
    </p>
    <p>
        <span class="highlight">2. Используйте пулы потоков:</span> Пул потоков упрощает управление потоками и их завершение.
    </p>
    <p>
        <span class="highlight">3. Корректно завершайте потоки:</span> Используйте флаги завершения или методы <code>shutdown()</code> и <code>shutdownNow()</code> для корректного завершения потоков.
    </p>
    <p>
        <span class="highlight">4. Мониторинг состояния потоков:</span> Регулярно проверяйте состояние потоков и ресурсов, чтобы избежать утечек.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Корректное управление завершением потоков и освобождение ресурсов — это ключ к стабильности и производительности многопоточных приложений. Следуйте лучшим практикам, чтобы избежать утечек и других проблем.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b51317f0-98d2-484a-aad5-4c6526312f4c', 'Как получить следующий вторник, используя Date Time API?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Получение следующего вторника с использованием Date Time API</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Получение следующего вторника с использованием Date Time API</h1>
    <p>
        В Java 8 с использованием Date Time API можно легко получить дату следующего вторника.
        Для этого используется класс <code>TemporalAdjusters</code>, который предоставляет методы для
        выполнения различных корректировок даты.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код демонстрирует, как получить дату следующего вторника:
    </p>
    <pre><code>import java.time.LocalDate;
import java.time.DayOfWeek;
import java.time.temporal.TemporalAdjusters;

public class Main {
    public static void main(String[] args) {
        LocalDate nextTuesday = LocalDate.now()
                                        .with(TemporalAdjusters.next(DayOfWeek.TUESDAY)); // следующий вторник
        System.out.println("Следующий вторник: " + nextTuesday);
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">LocalDate.now():</span> Получает текущую дату.
        </li>
        <li>
            <span class="highlight">with(TemporalAdjusters.next(DayOfWeek.TUESDAY)):</span> Использует метод
            <code>next()</code> из класса <code>TemporalAdjusters</code>, чтобы найти следующий вторник.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>Следующий вторник: 2023-10-10</code></pre>

    <h2>Итог</h2>
    <p>
        Использование <code>TemporalAdjusters.next()</code> позволяет легко находить следующую дату
        определённого дня недели. Этот подход демонстрирует удобство и мощь Date Time API
        для работы с датами и временем в Java 8.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('46c5e5d4-8a62-48c6-a88e-09472ea7e190', 'Когда стоит изменять значение поля serialVersionUID?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Когда изменять значение поля serialVersionUID</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Когда изменять значение поля serialVersionUID</h1>
    <p>
        Поле <code>serialVersionUID</code> используется для контроля версий класса при сериализации и десериализации. Его значение следует изменять только в определенных случаях, чтобы избежать ошибок и обеспечить корректную работу приложения.
    </p>

    <h2>Когда нужно изменять serialVersionUID?</h2>
    <ul>
        <li>
            <span class="highlight">Несовместимые изменения:</span> Значение <code>serialVersionUID</code> следует изменять при внесении в класс несовместимых изменений. Например:
            <ul>
                <li>Удаление поля или метода.</li>
                <li>Изменение типа поля.</li>
                <li>Изменение модификаторов доступа поля (например, с <code>public</code> на <code>private</code>).</li>
                <li>Изменение структуры класса, которое может повлиять на процесс сериализации/десериализации.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Совместимые изменения:</span> Если изменения в классе обратно совместимы (например, добавление новых полей или методов), изменять <code>serialVersionUID</code> не требуется. Десериализация будет работать корректно.
        </li>
    </ul>

    <h2>Пример несовместимых изменений</h2>
    <p>
        Рассмотрим пример, когда изменение <code>serialVersionUID</code> необходимо:
    </p>
    <pre>
        <code>
public class User implements Serializable {
    private static final long serialVersionUID = 1L; // Исходное значение
    private String name;
    private int age;

    // Конструкторы, геттеры, сеттеры
}
        </code>
    </pre>
    <p>
        Если мы удалим поле <code>age</code>, это будет несовместимое изменение:
    </p>
    <pre>
        <code>
public class User implements Serializable {
    private static final long serialVersionUID = 2L; // Новое значение, так как изменение несовместимо
    private String name;

    // Конструкторы, геттеры, сеттеры
}
        </code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если не изменить <code>serialVersionUID</code> при несовместимых изменениях, при десериализации может быть выброшено исключение <code>InvalidClassException</code>, так как среда выполнения Java обнаружит несоответствие версий.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Изменяйте <code>serialVersionUID</code> только при внесении несовместимых изменений в класс.
        </li>
        <li>
            Совместимые изменения (например, добавление новых полей) не требуют изменения <code>serialVersionUID</code>.
        </li>
        <li>
            Пример изменения: <code>private static final long serialVersionUID = 2L;</code> (после удаления поля).
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b611985e-b939-4733-aeae-aeb7216e6bf0', 'Какие преимущества даёт наследование?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Преимущества наследования</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Преимущества наследования</h1>
    <p>
        Наследование — это один из ключевых принципов объектно-ориентированного программирования, который позволяет
        создавать новые классы на основе существующих, заимствуя их свойства и методы. Это способствует повторному
        использованию кода и упрощает структуру программы.
    </p>

    <h2>Какие преимущества даёт наследование?</h2>
    <ul>
        <li>
            <span class="highlight">Повторное использование кода:</span> Наследование позволяет использовать методы и
            свойства родительского класса в дочерних классах, что уменьшает дублирование кода и упрощает его
            поддержку.
        </li>
        <li>
            <span class="highlight">Упрощение разработки:</span> Создание новых классов на основе существующих
            сокращает время разработки, так как не требуется заново реализовывать уже существующую функциональность.
        </li>
        <li>
            <span class="highlight">Иерархическая организация:</span> Наследование позволяет создавать иерархии классов,
            что делает структуру программы более логичной и понятной. Это упрощает навигацию по коду и его анализ.
        </li>
        <li>
            <span class="highlight">Расширяемость:</span> Дочерние классы могут расширять функциональность родительских
            классов, добавляя новые методы или переопределяя существующие. Это делает код более гибким и адаптивным
            к изменениям.
        </li>
        <li>
            <span class="highlight">Упрощение тестирования:</span> Поскольку дочерние классы наследуют поведение
            родительских, можно тестировать базовую функциональность в родительском классе, что снижает необходимость
            дублирования тестов.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Наследование не только упрощает разработку и поддержку кода, но и
            способствует созданию более структурированных и масштабируемых программ. Однако важно использовать
            наследование с умом, чтобы избежать излишней сложности иерархии классов.
        </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7fdd6d35-4422-46f5-8111-530314f59369', ' Как найти минимальное число в наборе?(STREAM)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Поиск минимального числа в наборе</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Поиск минимального числа в наборе</h1>
    <p>
        В Java можно легко найти минимальное число в наборе, используя стримы и метод
        <code>min()</code>. Этот метод возвращает минимальный элемент стрима, если он существует.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код находит минимальное число в наборе:
    </p>
    <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        int minNumber = Stream.of(5, 3, 4, 55, 2) // создание стрима из чисел
                              .mapToInt(a -> a) // преобразование в IntStream
                              .min() // поиск минимального числа
                              .getAsInt(); // получение результата
        System.out.println(minNumber); // вывод минимального числа
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">Stream.of(5, 3, 4, 55, 2):</span> Создаёт стрим из чисел.
        </li>
        <li>
            <span class="highlight">mapToInt(a -> a):</span> Преобразует стрим объектов в <code>IntStream</code> (стрим примитивов <code>int</code>).
        </li>
        <li>
            <span class="highlight">min():</span> Возвращает <code>OptionalInt</code>, содержащий минимальное число.
        </li>
        <li>
            <span class="highlight">getAsInt():</span> Извлекает значение из <code>OptionalInt</code>.
        </li>
        <li>
            <span class="highlight">System.out.println(minNumber):</span> Выводит минимальное число на экран.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>2</code></pre>

    <h2>Итог</h2>
    <p>
        Использование стримов и метода <code>min()</code> позволяет легко находить минимальное
        число в наборе. Этот подход демонстрирует удобство и эффективность работы со
        стримами в Java для обработки данных.
    </p>
</body>
</html>', 'STREAM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('83ac55a2-339e-42be-8c03-005c8cbb3d31', ' Как получить среднее значение всех чисел?(STREAM)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Получение среднего значения всех чисел</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Получение среднего значения всех чисел</h1>
    <p>
        В Java можно легко получить среднее значение всех чисел в наборе, используя стримы и
        метод <code>average()</code>. Этот метод возвращает среднее арифметическое всех элементов
        числового стрима.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код вычисляет среднее значение всех чисел в наборе:
    </p>
    <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        double average = Stream.of(5, 3, 4, 55, 2) // создание стрима из чисел
                               .mapToInt(a -> a) // преобразование в IntStream
                               .average() // вычисление среднего значения
                               .getAsDouble(); // получение результата
        System.out.println(average); // вывод среднего значения
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">Stream.of(5, 3, 4, 55, 2):</span> Создаёт стрим из чисел.
        </li>
        <li>
            <span class="highlight">mapToInt(a -> a):</span> Преобразует стрим объектов в <code>IntStream</code> (стрим примитивов <code>int</code>).
        </li>
        <li>
            <span class="highlight">average():</span> Возвращает <code>OptionalDouble</code>, содержащий среднее значение.
        </li>
        <li>
            <span class="highlight">getAsDouble():</span> Извлекает значение из <code>OptionalDouble</code>.
        </li>
        <li>
            <span class="highlight">System.out.println(average):</span> Выводит среднее значение на экран.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>13.8</code></pre>

    <h2>Итог</h2>
    <p>
        Использование стримов и метода <code>average()</code> позволяет легко вычислять среднее
        значение всех чисел в наборе. Этот подход демонстрирует удобство и эффективность
        работы со стримами в Java для обработки данных.
    </p>
</body>
</html>', 'STREAM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('abfe7b85-9e86-4dc8-b619-77babb1319cb', ' Как добавить 1 неделю, 1 месяц, 1 год, 10 лет к текущей дате с  использованием Date Time API?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Добавление времени к текущей дате с использованием Date Time API</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Добавление времени к текущей дате с использованием Date Time API</h1>
    <p>
        В Java 8 с использованием Date Time API можно легко добавлять дни, недели, месяцы,
        годы и даже десятилетия к текущей дате. Для этого используются методы класса
        <code>LocalDate</code>.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код демонстрирует, как добавить 1 неделю, 1 месяц, 1 год и 10 лет к текущей
        дате:
    </p>
    <pre><code>import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class Main {
    public static void main(String[] args) {
        LocalDate currentDate = LocalDate.now(); // текущая дата

        LocalDate nextWeek = currentDate.plusWeeks(1); // добавить 1 неделю
        LocalDate nextMonth = currentDate.plusMonths(1); // добавить 1 месяц
        LocalDate nextYear = currentDate.plusYears(1); // добавить 1 год
        LocalDate nextDecade = currentDate.plus(1, ChronoUnit.DECADES); // добавить 10 лет

        System.out.println("Текущая дата: " + currentDate);
        System.out.println("Через 1 неделю: " + nextWeek);
        System.out.println("Через 1 месяц: " + nextMonth);
        System.out.println("Через 1 год: " + nextYear);
        System.out.println("Через 10 лет: " + nextDecade);
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">LocalDate.now():</span> Получает текущую дату.
        </li>
        <li>
            <span class="highlight">plusWeeks(1):</span> Добавляет 1 неделю к текущей дате.
        </li>
        <li>
            <span class="highlight">plusMonths(1):</span> Добавляет 1 месяц к текущей дате.
        </li>
        <li>
            <span class="highlight">plusYears(1):</span> Добавляет 1 год к текущей дате.
        </li>
        <li>
            <span class="highlight">plus(1, ChronoUnit.DECADES):</span> Добавляет 10 лет (1 декаду) к текущей дате.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>Текущая дата: 2023-10-05
Через 1 неделю: 2023-10-12
Через 1 месяц: 2023-11-05
Через 1 год: 2024-10-05
Через 10 лет: 2033-10-05</code></pre>

    <h2>Итог</h2>
    <p>
        Использование методов <code>plusWeeks()</code>, <code>plusMonths()</code>, <code>plusYears()</code> и <code>plus()</code>
        позволяет легко добавлять время к текущей дате. Класс <code>LocalDate</code> предоставляет
        удобные и мощные инструменты для работы с датами, что делает его идеальным выбором
        для выполнения операций с временными интервалами.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d1f12436-1a18-437f-9bbb-80fc5d1ac768', ' Для чего нужны функциональные интерфейсы ObjDoubleConsumer<T>,  ObjIntConsumer<T> и ObjLongConsumer<T>?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональные интерфейсы ObjDoubleConsumer, ObjIntConsumer и ObjLongConsumer</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональные интерфейсы ObjDoubleConsumer, ObjIntConsumer и ObjLongConsumer</h1>
    <p>
        В Java 8 функциональные интерфейсы <code>ObjDoubleConsumer&lt;T&gt;</code>,
        <code>ObjIntConsumer&lt;T&gt;</code> и <code>ObjLongConsumer&lt;T&gt;</code> используются для
        реализации операций, которые принимают два аргумента (один объект и одно числовое
        значение) и выполняют над ними действия без возврата результата. Эти интерфейсы
        полезны для задач, связанных с обработкой данных, где требуется выполнение
        операций над объектом и числовым значением.
    </p>

    <h2>Примеры использования</h2>

    <h3>ObjDoubleConsumer&lt;T&gt;</h3>
    <p>
        Интерфейс <code>ObjDoubleConsumer&lt;T&gt;</code> принимает объект типа <code>T</code> и значение
        типа <code>double</code>, выполняет действие и ничего не возвращает.
    </p>
    <pre><code>import java.util.function.ObjDoubleConsumer;

public class Main {
    public static void main(String[] args) {
        ObjDoubleConsumer<String> printWithDouble = (s, d) ->
            System.out.println(s + ": " + d); // вывод строки и числа
        printWithDouble.accept("Значение", 3.14); // Значение: 3.14
    }
}</code></pre>

    <h3>ObjIntConsumer&lt;T&gt;</h3>
    <p>
        Интерфейс <code>ObjIntConsumer&lt;T&gt;</code> принимает объект типа <code>T</code> и значение
        типа <code>int</code>, выполняет действие и ничего не возвращает.
    </p>
    <pre><code>import java.util.function.ObjIntConsumer;

public class Main {
    public static void main(String[] args) {
        ObjIntConsumer<String> printWithInt = (s, i) ->
            System.out.println(s + ": " + i); // вывод строки и числа
        printWithInt.accept("Число", 42); // Число: 42
    }
}</code></pre>

    <h3>ObjLongConsumer&lt;T&gt;</h3>
    <p>
        Интерфейс <code>ObjLongConsumer&lt;T&gt;</code> принимает объект типа <code>T</code> и значение
        типа <code>long</code>, выполняет действие и ничего не возвращает.
    </p>
    <pre><code>import java.util.function.ObjLongConsumer;

public class Main {
    public static void main(String[] args) {
        ObjLongConsumer<String> printWithLong = (s, l) ->
            System.out.println(s + ": " + l); // вывод строки и числа
        printWithLong.accept("Время", 1696523445123L); // Время: 1696523445123
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональные интерфейсы <code>ObjDoubleConsumer&lt;T&gt;</code>,
        <code>ObjIntConsumer&lt;T&gt;</code> и <code>ObjLongConsumer&lt;T&gt;</code> предоставляют удобный
        способ выполнения операций над объектом и числовым значением без возврата
        результата. Они полезны для задач, связанных с обработкой данных, выводом
        информации или модификацией объектов.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4b5ec485-a9f4-4a2e-87f4-300caf69e3d5', 'Для чего нужны функциональные интерфейсы вида _To_Function?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональные интерфейсы вида _To_Function</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональные интерфейсы вида _To_Function</h1>
    <p>
        В Java 8 функциональные интерфейсы вида <code>_To_Function</code> используются для реализации
        операций, которые принимают один аргумент определённого типа и возвращают результат
        другого типа. Эти интерфейсы полезны для задач, связанных с преобразованием данных
        между различными числовыми типами.
    </p>

    <h2>Примеры интерфейсов _To_Function</h2>
    <ul>
        <li>
            <span class="highlight">DoubleToIntFunction:</span> Принимает значение типа <code>double</code> и возвращает результат типа <code>int</code>.
            <pre><code>DoubleToIntFunction doubleToInt = d -> (int) d; // преобразование double в int
System.out.println(doubleToInt.applyAsInt(3.14)); // 3</code></pre>
        </li>
        <li>
            <span class="highlight">DoubleToLongFunction:</span> Принимает значение типа <code>double</code> и возвращает результат типа <code>long</code>.
            <pre><code>DoubleToLongFunction doubleToLong = d -> (long) d; // преобразование double в long
System.out.println(doubleToLong.applyAsLong(3.14)); // 3</code></pre>
        </li>
        <li>
            <span class="highlight">IntToDoubleFunction:</span> Принимает значение типа <code>int</code> и возвращает результат типа <code>double</code>.
            <pre><code>IntToDoubleFunction intToDouble = i -> (double) i; // преобразование int в double
System.out.println(intToDouble.applyAsDouble(5)); // 5.0</code></pre>
        </li>
        <li>
            <span class="highlight">IntToLongFunction:</span> Принимает значение типа <code>int</code> и возвращает результат типа <code>long</code>.
            <pre><code>IntToLongFunction intToLong = i -> (long) i; // преобразование int в long
System.out.println(intToLong.applyAsLong(10)); // 10</code></pre>
        </li>
        <li>
            <span class="highlight">LongToDoubleFunction:</span> Принимает значение типа <code>long</code> и возвращает результат типа <code>double</code>.
            <pre><code>LongToDoubleFunction longToDouble = l -> (double) l; // преобразование long в double
System.out.println(longToDouble.applyAsDouble(100L)); // 100.0</code></pre>
        </li>
        <li>
            <span class="highlight">LongToIntFunction:</span> Принимает значение типа <code>long</code> и возвращает результат типа <code>int</code>.
            <pre><code>LongToIntFunction longToInt = l -> (int) l; // преобразование long в int
System.out.println(longToInt.applyAsInt(100L)); // 100</code></pre>
        </li>
    </ul>

    <h2>Итог</h2>
    <p>
        Функциональные интерфейсы вида <code>_To_Function</code> предоставляют удобный способ
        преобразования данных между различными числовыми типами. Они полезны для задач,
        связанных с приведением типов, вычислениями или обработкой данных, где требуется
        преобразование одного типа в другой.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9a6101c2-41b6-441f-aae5-81080ba387f7', 'Какие преимущества и недостатки монолитной архитектуры?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Преимущества и недостатки монолитной архитектуры</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Преимущества и недостатки монолитной архитектуры</h1>
    <p>
        Монолитная архитектура — это подход к разработке программного обеспечения, при котором все компоненты системы
        объединены в единое целое. Это традиционный способ построения приложений, который имеет свои сильные и слабые
        стороны.
    </p>

    <h2>Преимущества монолитной архитектуры</h2>
    <ul>
        <li>
            <span class="highlight">Простота разработки:</span> Монолитная архитектура проста в понимании и реализации,
            особенно на начальных этапах проекта. Все компоненты находятся в одном месте, что упрощает отладку и тестирование.
        </li>
        <li>
            <span class="highlight">Лёгкость развёртывания:</span> Поскольку приложение представляет собой единое целое,
            его развёртывание сводится к запуску одного исполняемого файла или пакета.
        </li>
        <li>
            <span class="highlight">Производительность:</span> В монолитных приложениях вызовы между компонентами
            происходят быстрее, так как они находятся в одном процессе, что снижает задержки.
        </li>
        <li>
            <span class="highlight">Минимальные накладные расходы:</span> Отсутствие необходимости в межпроцессном
            взаимодействии или сетевых вызовах между компонентами уменьшает накладные расходы.
        </li>
    </ul>

    <h2>Недостатки монолитной архитектуры</h2>
    <ul>
        <li>
            <span class="highlight">Сложность масштабирования:</span> Монолитные приложения сложно масштабировать, так как
            для увеличения производительности приходится масштабировать всё приложение целиком, даже если нагрузка
            приходится только на одну его часть.
        </li>
        <li>
            <span class="highlight">Сложность поддержки:</span> По мере роста приложения его кодовая база становится
            сложнее, что затрудняет внесение изменений и повышает риск появления ошибок.
        </li>
        <li>
            <span class="highlight">Ограниченная гибкость:</span> Использование новых технологий или языков программирования
            в монолите может быть затруднено, так как всё приложение тесно связано.
        </li>
        <li>
            <span class="highlight">Риск "хрупкости":</span> Изменения в одной части приложения могут непредсказуемо
            повлиять на другие части, что делает систему более уязвимой к сбоям.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Монолитная архитектура подходит для небольших проектов или приложений с
            простой логикой. Однако для крупных и сложных систем стоит рассмотреть другие подходы, такие как
            микросервисная архитектура, чтобы избежать проблем с масштабируемостью и поддержкой.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('db9ca45f-61f2-4cc9-b675-a32d9e07bc0e', 'Какие преимущества и недостатки микросервисной архитектуры?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Преимущества и недостатки микросервисной архитектуры</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Преимущества и недостатки микросервисной архитектуры</h1>
    <p>
        Микросервисная архитектура — это подход к разработке программного обеспечения, при котором приложение
        разбивается на небольшие, независимые сервисы, каждый из которых выполняет определённую бизнес-функцию.
        Этот подход имеет свои сильные и слабые стороны.
    </p>

    <h2>Преимущества микросервисной архитектуры</h2>
    <ul>
        <li>
            <span class="highlight">Масштабируемость:</span> Каждый сервис может масштабироваться независимо, что
            позволяет эффективно распределять ресурсы и обрабатывать нагрузку только на те компоненты, которые в этом
            нуждаются.
        </li>
        <li>
            <span class="highlight">Гибкость технологий:</span> Разные микросервисы могут быть написаны на разных языках
            программирования и использовать различные технологии, что позволяет выбирать оптимальные инструменты для
            каждой задачи.
        </li>
        <li>
            <span class="highlight">Упрощение поддержки и разработки:</span> Небольшие, изолированные сервисы проще
            понимать, тестировать и поддерживать. Команды могут работать над разными сервисами независимо друг от друга.
        </li>
        <li>
            <span class="highlight">Устойчивость к сбоям:</span> Отказ одного сервиса не обязательно приводит к остановке
            всего приложения, что повышает отказоустойчивость системы.
        </li>
        <li>
            <span class="highlight">Независимое развёртывание:</span> Каждый сервис может развёртываться независимо, что
            ускоряет процесс выпуска новых функций и исправлений.
        </li>
    </ul>

    <h2>Недостатки микросервисной архитектуры</h2>
    <ul>
        <li>
            <span class="highlight">Сложность управления:</span> Микросервисная архитектура требует дополнительных усилий
            для управления множеством сервисов, включая их мониторинг, логирование и orchestration.
        </li>
        <li>
            <span class="highlight">Накладные расходы:</span> Взаимодействие между сервисами происходит через сеть, что
            увеличивает задержки и требует дополнительных ресурсов для обработки сетевых запросов.
        </li>
        <li>
            <span class="highlight">Сложность отладки:</span> Распределённая природа микросервисов усложняет отладку и
            поиск проблем, особенно если ошибка затрагивает несколько сервисов.
        </li>
        <li>
            <span class="highlight">Требования к инфраструктуре:</span> Для работы микросервисной архитектуры необходима
            мощная инфраструктура, включая инструменты для контейнеризации, оркестрации и мониторинга.
        </li>
        <li>
            <span class="highlight">Сложность обеспечения согласованности данных:</span> В распределённой системе
            обеспечение консистентности данных между сервисами может быть сложной задачей, особенно при использовании
            разных баз данных.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Микросервисная архитектура подходит для крупных и сложных систем, где
            важны гибкость, масштабируемость и независимость компонентов. Однако для небольших проектов или команд с
            ограниченными ресурсами она может быть избыточной и сложной в реализации.
        </p>
    </div>
</body>
</html>
', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b59b7e09-31f1-4a7f-8960-29c3a23f0fd3', 'Что такое протокол?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое протокол?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Что такое протокол?</h1>
    <p>
        Протокол — это набор правил и соглашений, которые определяют, как устройства или программы взаимодействуют друг
        с другом. Протоколы используются для обеспечения корректной передачи данных, управления сетевыми соединениями
        и выполнения других задач в компьютерных сетях и системах.
    </p>

    <h2>Основные характеристики протоколов</h2>
    <ul>
        <li>
            <span class="highlight">Стандартизация:</span> Протоколы обычно стандартизированы, что позволяет устройствам
            и программам от разных производителей взаимодействовать друг с другом.
        </li>
        <li>
            <span class="highlight">Форматы данных:</span> Протоколы определяют, как данные должны быть структурированы
            и переданы, включая заголовки, типы сообщений и порядок их обработки.
        </li>
        <li>
            <span class="highlight">Процедуры взаимодействия:</span> Протоколы описывают последовательность действий,
            которые должны быть выполнены для установления связи, передачи данных и завершения сеанса.
        </li>
        <li>
            <span class="highlight">Обработка ошибок:</span> Протоколы включают механизмы для обнаружения и исправления
            ошибок, которые могут возникнуть при передаче данных.
        </li>
    </ul>

    <h2>Примеры протоколов</h2>
    <ul>
        <li>
            <span class="highlight">HTTP/HTTPS:</span> Протоколы для передачи веб-страниц и других данных в интернете.
            HTTPS обеспечивает шифрование для безопасной передачи.
        </li>
        <li>
            <span class="highlight">TCP/IP:</span> Основные протоколы для передачи данных в интернете. TCP обеспечивает
            надёжную доставку данных, а IP отвечает за маршрутизацию.
        </li>
        <li>
            <span class="highlight">FTP:</span> Протокол для передачи файлов между компьютерами в сети.
        </li>
        <li>
            <span class="highlight">SMTP/POP3/IMAP:</span> Протоколы для отправки и получения электронной почты.
        </li>
        <li>
            <span class="highlight">WebSocket:</span> Протокол для двусторонней связи между клиентом и сервером в
            реальном времени.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Протоколы играют ключевую роль в обеспечении совместимости и
            взаимодействия между различными системами. Без них было бы невозможно организовать эффективную передачу
            данных в современных сетях.
        </p>
    </div>
</body>
</html>', 'HTTP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0909300b-4dba-495d-afa6-f6f3722d9485', 'Что такое http и htpps?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое HTTP и HTTPS?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Что такое HTTP и HTTPS?</h1>
    <p>
        HTTP (HyperText Transfer Protocol) и HTTPS (HyperText Transfer Protocol Secure) — это протоколы, используемые
        для передачи данных в интернете. Они являются основой взаимодействия между веб-браузерами и серверами.
    </p>

    <h2>HTTP (HyperText Transfer Protocol)</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> HTTP — это протокол прикладного уровня, который используется для
            передачи веб-страниц и других данных между клиентом (например, браузером) и сервером.
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Работает по принципу "запрос-ответ": клиент отправляет запрос, сервер возвращает ответ.</li>
                <li>Данные передаются в открытом виде, без шифрования.</li>
                <li>Использует порт 80 по умолчанию.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span> Поскольку данные передаются в открытом виде, HTTP уязвим к
            перехвату и атакам "человек посередине" (Man-in-the-Middle).
        </li>
    </ul>

    <h2>HTTPS (HyperText Transfer Protocol Secure)</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> HTTPS — это расширение HTTP, которое добавляет шифрование данных
            с использованием протоколов SSL/TLS. Это обеспечивает безопасную передачу данных между клиентом и сервером.
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Данные передаются в зашифрованном виде, что защищает их от перехвата.</li>
                <li>Использует порт 443 по умолчанию.</li>
                <li>Требует наличия SSL-сертификата на сервере для подтверждения подлинности.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Обеспечивает конфиденциальность и целостность данных.</li>
                <li>Повышает доверие пользователей, так как браузеры отображают HTTPS-сайты как безопасные.</li>
                <li>Способствует улучшению SEO, так как поисковые системы предпочитают HTTPS-сайты.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> HTTPS стал стандартом для современных веб-сайтов, так как обеспечивает
            безопасность данных и защищает пользователей от кибератак. Переход с HTTP на HTTPS рекомендуется для всех
            сайтов, особенно тех, которые обрабатывают конфиденциальную информацию.
        </p>
    </div>
</body>
</html>', 'HTTP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('736cc258-52ea-4631-9cf6-4e283664a0f9', 'Расскажи про идемпотентные методы в http', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Идемпотентные методы в HTTP</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Идемпотентные методы в HTTP</h1>
    <p>
        Идемпотентность — это свойство HTTP-метода, при котором многократное выполнение одного и того же запроса
        приводит к одинаковому результату. Это важное понятие в проектировании RESTful API и веб-приложений.
    </p>

    <h2>Что такое идемпотентность?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> Метод считается идемпотентным, если повторение одного и того же
            запроса несколько раз не изменяет состояние сервера после первого успешного выполнения.
        </li>
        <li>
            <span class="highlight">Пример:</span> Если вы отправляете запрос на удаление ресурса несколько раз, результат
            будет одинаковым — ресурс будет удалён, и последующие запросы не изменят состояние сервера.
        </li>
    </ul>

    <h2>Идемпотентные методы в HTTP</h2>
    <ul>
        <li>
            <span class="highlight">GET:</span> Используется для получения данных. Повторные GET-запросы не изменяют
            состояние сервера и всегда возвращают одинаковый результат (если данные не изменились).
        </li>
        <li>
            <span class="highlight">PUT:</span> Используется для обновления или создания ресурса. Повторные PUT-запросы
            с одинаковыми данными не изменяют состояние сервера после первого выполнения.
        </li>
        <li>
            <span class="highlight">DELETE:</span> Используется для удаления ресурса. После первого успешного выполнения
            повторные DELETE-запросы не изменяют состояние сервера, так как ресурс уже удалён.
        </li>
        <li>
            <span class="highlight">HEAD:</span> Аналогичен GET, но возвращает только заголовки ответа без тела.
            Идемпотентен, так как не изменяет состояние сервера.
        </li>
    </ul>

    <h2>Неидемпотентные методы</h2>
    <ul>
        <li>
            <span class="highlight">POST:</span> Используется для создания ресурсов или выполнения действий. Повторные
            POST-запросы могут создавать новые ресурсы или изменять состояние сервера каждый раз, поэтому POST не является
            идемпотентным.
        </li>
        <li>
            <span class="highlight">PATCH:</span> Используется для частичного обновления ресурса. Повторные PATCH-запросы
            могут изменять состояние сервера по-разному в зависимости от содержимого запроса.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Идемпотентность важна для обеспечения надёжности и предсказуемости
            веб-приложений. Она позволяет безопасно повторять запросы в случае сбоев сети или других ошибок без
            риска нежелательных изменений на сервере.
        </p>
    </div>
</body>
</html>', 'HTTP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('365d9753-7ddc-4d47-86b4-a5390e15b33b', 'Расскажи про не идемпотентные методы в http', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Неидемпотентные методы в HTTP</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Неидемпотентные методы в HTTP</h1>
    <p>
        Неидемпотентные методы — это HTTP-методы, при которых повторное выполнение одного и того же запроса может
        приводить к разным результатам или изменять состояние сервера каждый раз. Эти методы требуют осторожности при
        использовании, так как их повторение может вызвать нежелательные побочные эффекты.
    </p>

    <h2>Что такое неидемпотентность?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> Метод считается неидемпотентным, если повторное выполнение одного
            и того же запроса может изменять состояние сервера или приводить к разным результатам.
        </li>
        <li>
            <span class="highlight">Пример:</span> Если вы отправляете POST-запрос для создания нового ресурса несколько
            раз, на сервере каждый раз будет создаваться новый ресурс, что приведёт к изменению состояния.
        </li>
    </ul>

    <h2>Неидемпотентные методы в HTTP</h2>
    <ul>
        <li>
            <span class="highlight">POST:</span>
            <ul>
                <li>Используется для создания ресурсов или выполнения действий.</li>
                <li>Повторные POST-запросы могут создавать новые ресурсы или изменять состояние сервера каждый раз.</li>
                <li>Пример: Создание нового пользователя, отправка формы.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">PATCH:</span>
            <ul>
                <li>Используется для частичного обновления ресурса.</li>
                <li>Повторные PATCH-запросы могут изменять состояние сервера по-разному в зависимости от содержимого
                    запроса.</li>
                <li>Пример: Обновление определённых полей пользователя.</li>
            </ul>
        </li>
    </ul>

    <h2>Почему эти методы неидемпотентны?</h2>
    <ul>
        <li>
            <span class="highlight">POST:</span> Каждый POST-запрос может создавать новый ресурс или выполнять действие,
            которое изменяет состояние сервера. Например, отправка одного и того же запроса на создание заказа приведёт к
            созданию нескольких заказов.
        </li>
        <li>
            <span class="highlight">PATCH:</span> Частичное обновление ресурса может зависеть от текущего состояния
            ресурса. Повторные запросы могут применять изменения по-разному, что делает результат непредсказуемым.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Неидемпотентные методы требуют особого внимания при проектировании API и
            веб-приложений. Повторение таких запросов может привести к дублированию данных или нежелательным изменениям
            состояния сервера. Рекомендуется использовать механизмы предотвращения дублирования, такие как токены или
            уникальные идентификаторы запросов.
        </p>
    </div>
</body>
</html>
', 'HTTP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9bc60d6a-ee8f-459b-8b79-91dde62d5110', 'Объясните разницу между протоколами TCP и UDP', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между TCP и UDP</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Разница между TCP и UDP</h1>
    <p>
        TCP (Transmission Control Protocol) и UDP (User Datagram Protocol) — это два основных протокола транспортного уровня,
        используемых для передачи данных в сетях. Они имеют разные характеристики и применяются в зависимости от
        требований к надёжности, скорости и задержкам.
    </p>

    <h2>TCP (Transmission Control Protocol)</h2>
    <ul>
        <li>
            <span class="highlight">Надёжность:</span> TCP гарантирует доставку данных без ошибок и в правильном порядке.
            Если данные теряются или искажаются, протокол повторяет их передачу.
        </li>
        <li>
            <span class="highlight">Установление соединения:</span> TCP использует трёхэтапное рукопожатие (three-way handshake)
            для установления соединения между отправителем и получателем.
        </li>
        <li>
            <span class="highlight">Контроль потока:</span> TCP регулирует скорость передачи данных, чтобы избежать перегрузки
            сети и обеспечить стабильную работу.
        </li>
        <li>
            <span class="highlight">Использование:</span> TCP применяется в приложениях, где важна надёжность передачи данных,
            таких как веб-браузеры (HTTP/HTTPS), электронная почта (SMTP) и передача файлов (FTP).
        </li>
        <li>
            <span class="highlight">Недостатки:</span> Более высокая задержка из-за накладных расходов на установление соединения,
            подтверждение доставки и контроль потока.
        </li>
    </ul>

    <h2>UDP (User Datagram Protocol)</h2>
    <ul>
        <li>
            <span class="highlight">Скорость:</span> UDP работает быстрее, чем TCP, так как не требует установления соединения
            и не подтверждает доставку данных.
        </li>
        <li>
            <span class="highlight">Ненадёжность:</span> UDP не гарантирует доставку данных. Пакеты могут быть потеряны,
            продублированы или доставлены в неправильном порядке.
        </li>
        <li>
            <span class="highlight">Отсутствие контроля потока:</span> UDP не регулирует скорость передачи данных, что может
            привести к перегрузке сети.
        </li>
        <li>
            <span class="highlight">Использование:</span> UDP применяется в приложениях, где важна низкая задержка и допустима
            потеря данных, таких как потоковое видео, онлайн-игры и VoIP (например, Skype).
        </li>
        <li>
            <span class="highlight">Преимущества:</span> Низкая задержка и минимальные накладные расходы, что делает UDP
            идеальным для реального времени.
        </li>
    </ul>

    <h2>Сравнение TCP и UDP</h2>
    <ul>
        <li>
            <span class="highlight">Надёжность:</span> TCP надёжен, UDP — нет.
        </li>
        <li>
            <span class="highlight">Скорость:</span> UDP быстрее, чем TCP.
        </li>
        <li>
            <span class="highlight">Установление соединения:</span> TCP требует установления соединения, UDP — нет.
        </li>
        <li>
            <span class="highlight">Контроль потока:</span> TCP регулирует поток данных, UDP — нет.
        </li>
        <li>
            <span class="highlight">Использование:</span> TCP подходит для приложений, где важна точность, UDP — для приложений
            реального времени.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между TCP и UDP зависит от требований приложения. Если важна надёжность
            и точность передачи данных, выбирайте TCP. Если приоритетом является скорость и низкая задержка, используйте UDP.
        </p>
    </div>
</body>
</html>', 'HTTP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8d230d5a-17f7-4f1d-a6fc-5a53ef220c5c', 'В чем проблема сериализации Singleton?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Проблема сериализации Singleton</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Проблема сериализации Singleton</h1>
    <p>
        Паттерн Singleton гарантирует, что в приложении существует только один экземпляр класса. Однако при сериализации и десериализации Singleton может быть нарушен, так как после десериализации создается новый объект, что противоречит принципу Singleton.
    </p>

    <h2>Проблема сериализации Singleton</h2>
    <ul>
        <li>
            <span class="highlight">Создание нового объекта:</span> При десериализации создается новый объект, даже если класс реализует паттерн Singleton. Это приводит к тому, что в системе может существовать несколько экземпляров класса, что нарушает принцип Singleton.
        </li>
        <li>
            <span class="highlight">Пример проблемы:</span>
            <pre>
                <code>
public class Singleton implements Serializable {
    private static final Singleton INSTANCE = new Singleton();

    private Singleton() {}

    public static Singleton getInstance() {
        return INSTANCE;
    }
}
                </code>
            </pre>
            После десериализации объекта <code>Singleton</code> будет создан новый экземпляр, отличный от <code>INSTANCE</code>.
        </li>
    </ul>

    <h2>Способы решения проблемы</h2>
    <p>
        Существует два основных способа избежать нарушения Singleton при сериализации:
    </p>
    <ul>
        <li>
            <span class="highlight">Явный запрет сериализации:</span> Можно запретить сериализацию Singleton, не реализуя интерфейс <code>Serializable</code> или выбрасывая исключение в методе <code>writeObject</code>.
            <pre>
                <code>
private void writeObject(ObjectOutputStream out) throws IOException {
    throw new NotSerializableException("Singleton cannot be serialized");
}
                </code>
            </pre>
        </li>
        <li>
            <span class="highlight">Использование метода readResolve:</span> Метод <code>readResolve</code> позволяет заменить десериализованный объект на существующий экземпляр Singleton.
            <pre>
                <code>
public class Singleton implements Serializable {
    private static final Singleton INSTANCE = new Singleton();

    private Singleton() {}

    public static Singleton getInstance() {
        return INSTANCE;
    }

    protected Object readResolve() throws ObjectStreamException {
        return INSTANCE; // Возвращаем существующий экземпляр
    }
}
                </code>
            </pre>
            Метод <code>readResolve</code> вызывается после десериализации и позволяет вернуть замещающий объект (в данном случае — существующий экземпляр Singleton).
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если Singleton должен поддерживать сериализацию, использование метода <code>readResolve</code> является предпочтительным способом сохранения единственности экземпляра.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Сериализация Singleton может привести к созданию нового объекта, что нарушает его принцип.
        </li>
        <li>
            Решения:
            <ul>
                <li>Явный запрет сериализации.</li>
                <li>Использование метода <code>readResolve</code> для возврата существующего экземпляра.</li>
            </ul>
        </li>
        <li>
            Пример метода <code>readResolve</code>:
            <pre>
                <code>
protected Object readResolve() throws ObjectStreamException {
    return INSTANCE;
}
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f14284ec-087c-4c1f-971f-fdaf13c1142c', 'Что такое сокеты и как они соотносятся с протоколами?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое сокеты и их связь с протоколами</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Что такое сокеты и их связь с протоколами</h1>
    <p>
        Сокеты — это механизм, используемый для обмена данными между процессами, которые могут находиться на одном компьютере
        или на разных устройствах в сети. Они являются основой сетевого взаимодействия и тесно связаны с сетевыми протоколами,
        такими как TCP и UDP.
    </p>

    <h2>Что такое сокет?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> Сокет — это программный интерфейс, который позволяет приложениям
            взаимодействовать через сеть. Он представляет собой конечную точку соединения, состоящую из IP-адреса и порта.
        </li>
        <li>
            <span class="highlight">Типы сокетов:</span>
            <ul>
                <li><strong>Потоковые сокеты (TCP):</strong> Обеспечивают надёжную передачу данных с установлением соединения.</li>
                <li><strong>Дейтаграммные сокеты (UDP):</strong> Обеспечивают быструю передачу данных без установления соединения.</li>
                <li><strong>Сырые сокеты:</strong> Позволяют работать с низкоуровневыми протоколами, такими как ICMP.</li>
            </ul>
        </li>
    </ul>

    <h2>Как сокеты связаны с протоколами?</h2>
    <ul>
        <li>
            <span class="highlight">TCP и потоковые сокеты:</span> TCP использует потоковые сокеты для установления соединения
            между клиентом и сервером. Это обеспечивает надёжную передачу данных с подтверждением доставки и контролем ошибок.
        </li>
        <li>
            <span class="highlight">UDP и дейтаграммные сокеты:</span> UDP использует дейтаграммные сокеты для передачи данных
            без установления соединения. Это обеспечивает высокую скорость, но без гарантии доставки.
        </li>
        <li>
            <span class="highlight">Протоколы прикладного уровня:</span> Сокеты используются для реализации протоколов прикладного
            уровня, таких как HTTP, FTP, SMTP и других. Например, веб-браузер использует сокеты для отправки HTTP-запросов
            и получения ответов от сервера.
        </li>
    </ul>

    <h2>Как работают сокеты?</h2>
    <ul>
        <li>
            <span class="highlight">Создание сокета:</span> Программа создаёт сокет, указывая тип (например, TCP или UDP) и
            привязывая его к определённому IP-адресу и порту.
        </li>
        <li>
            <span class="highlight">Установление соединения (для TCP):</span> Для TCP сокеты на клиенте и сервере выполняют
            трёхэтапное рукопожатие для установления соединения.
        </li>
        <li>
            <span class="highlight">Передача данных:</span> Данные передаются через сокет с использованием методов отправки
            и получения (например, <code>send()</code> и <code>recv()</code>).
        </li>
        <li>
            <span class="highlight">Закрытие сокета:</span> После завершения передачи данных сокет закрывается, освобождая
            ресурсы.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Сокеты являются основой сетевого программирования и позволяют приложениям
            взаимодействовать через сеть, используя различные протоколы. Понимание работы сокетов и их связи с протоколами
            важно для разработки сетевых приложений.
        </p>
    </div>
</body>
</html>', 'HTTP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e68eec6a-2f98-4da0-8e75-3f5091c7cd3f', 'Объясните разницу между HTTP и HTTPS', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между HTTP и HTTPS</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Разница между HTTP и HTTPS</h1>
    <p>
        HTTP (HyperText Transfer Protocol) и HTTPS (HyperText Transfer Protocol Secure) — это протоколы, используемые для
        передачи данных в интернете. Основное различие между ними заключается в уровне безопасности, который обеспечивает HTTPS.
    </p>

    <h2>HTTP (HyperText Transfer Protocol)</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> HTTP — это протокол прикладного уровня, используемый для передачи
            веб-страниц и других данных между клиентом (например, браузером) и сервером.
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Данные передаются в открытом виде, без шифрования.</li>
                <li>Использует порт 80 по умолчанию.</li>
                <li>Подходит для сайтов, где не требуется защита конфиденциальных данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Уязвим к перехвату данных (атаки "человек посередине").</li>
                <li>Не обеспечивает целостность данных.</li>
                <li>Сайты на HTTP считаются менее безопасными.</li>
            </ul>
        </li>
    </ul>

    <h2>HTTPS (HyperText Transfer Protocol Secure)</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> HTTPS — это расширение HTTP, которое добавляет шифрование данных с
            использованием протоколов SSL/TLS. Это обеспечивает безопасную передачу данных между клиентом и сервером.
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Данные передаются в зашифрованном виде, что защищает их от перехвата.</li>
                <li>Использует порт 443 по умолчанию.</li>
                <li>Требует наличия SSL-сертификата на сервере для подтверждения подлинности.</li>
                <li>Подходит для сайтов, где важна защита конфиденциальных данных (например, интернет-магазины, банковские сайты).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Обеспечивает конфиденциальность и целостность данных.</li>
                <li>Повышает доверие пользователей, так как браузеры отображают HTTPS-сайты как безопасные.</li>
                <li>Способствует улучшению SEO, так как поисковые системы предпочитают HTTPS-сайты.</li>
            </ul>
        </li>
    </ul>

    <h2>Основные различия между HTTP и HTTPS</h2>
    <ul>
        <li>
            <span class="highlight">Шифрование:</span> HTTPS шифрует данные, HTTP передаёт их в открытом виде.
        </li>
        <li>
            <span class="highlight">Безопасность:</span> HTTPS защищает от перехвата данных и атак, HTTP уязвим к ним.
        </li>
        <li>
            <span class="highlight">Порты:</span> HTTP использует порт 80, HTTPS — порт 443.
        </li>
        <li>
            <span class="highlight">SSL-сертификат:</span> HTTPS требует установки SSL-сертификата, HTTP — нет.
        </li>
        <li>
            <span class="highlight">Доверие пользователей:</span> HTTPS повышает доверие к сайту, HTTP считается менее безопасным.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> HTTPS стал стандартом для современных веб-сайтов, так как обеспечивает
            безопасность данных и защищает пользователей от кибератак. Переход с HTTP на HTTPS рекомендуется для всех
            сайтов, особенно тех, которые обрабатывают конфиденциальную информацию.
        </p>
    </div>
</body>
</html>', 'HTTP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('57d0d249-ad0a-4dd8-bcf9-fbc2014cf5c3', 'Что такое статус-коды HTTP? Приведите примеры.', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Статус-коды HTTP</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Статус-коды HTTP</h1>
    <p>
        Статус-коды HTTP — это трёхзначные числа, которые возвращаются сервером в ответ на HTTP-запрос. Они указывают на
        результат выполнения запроса и помогают клиенту понять, что произошло с его запросом.
    </p>

    <h2>Категории статус-кодов</h2>
    <ul>
        <li>
            <span class="highlight">1xx (Информационные):</span> Указывают, что запрос получен и обработка продолжается.
            <ul>
                <li><strong>100 Continue:</strong> Сервер получил начальную часть запроса и ожидает остальные данные.</li>
                <li><strong>101 Switching Protocols:</strong> Сервер согласен сменить протокол, например, с HTTP на WebSocket.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2xx (Успешные):</span> Указывают, что запрос был успешно обработан.
            <ul>
                <li><strong>200 OK:</strong> Запрос успешно выполнен, и сервер возвращает запрашиваемые данные.</li>
                <li><strong>201 Created:</strong> Запрос успешно выполнен, и на сервере создан новый ресурс.</li>
                <li><strong>204 No Content:</strong> Запрос успешно выполнен, но сервер не возвращает содержимого.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3xx (Перенаправления):</span> Указывают, что для завершения запроса требуется
            дополнительное действие, например, перенаправление.
            <ul>
                <li><strong>301 Moved Permanently:</strong> Запрашиваемый ресурс был permanently moved на новый URL.</li>
                <li><strong>302 Found:</strong> Запрашиваемый ресурс временно доступен по другому URL.</li>
                <li><strong>304 Not Modified:</strong> Ресурс не изменился, и клиент может использовать кэшированную версию.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4xx (Ошибки клиента):</span> Указывают, что запрос содержит ошибку или не может быть
            выполнен из-за действий клиента.
            <ul>
                <li><strong>400 Bad Request:</strong> Запрос содержит синтаксическую ошибку или некорректные данные.</li>
                <li><strong>401 Unauthorized:</strong> Для доступа к ресурсу требуется аутентификация.</li>
                <li><strong>403 Forbidden:</strong> Доступ к ресурсу запрещён, даже если клиент аутентифицирован.</li>
                <li><strong>404 Not Found:</strong> Запрашиваемый ресурс не найден на сервере.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">5xx (Ошибки сервера):</span> Указывают, что сервер не смог выполнить запрос из-за
            внутренней ошибки.
            <ul>
                <li><strong>500 Internal Server Error:</strong> Общая ошибка сервера, которая не подходит под другие категории.</li>
                <li><strong>502 Bad Gateway:</strong> Сервер, выступая в роли шлюза или прокси, получил недействительный ответ.</li>
                <li><strong>503 Service Unavailable:</strong> Сервер временно недоступен из-за перегрузки или технических работ.</li>
                <li><strong>504 Gateway Timeout:</strong> Сервер, выступая в роли шлюза или прокси, не дождался ответа от
                upstream-сервера.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Статус-коды HTTP помогают разработчикам и системам анализировать результат
            выполнения запросов. Понимание этих кодов важно для отладки, мониторинга и улучшения работы веб-приложений.
        </p>
    </div>
</body>
</html>', 'HTTP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0265e752-5656-48cd-892a-2b97f80b6299', 'Что такое REST и как он соотносится с HTTP?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое REST и его связь с HTTP</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Что такое REST и его связь с HTTP</h1>
    <p>
        REST (Representational State Transfer) — это архитектурный стиль, используемый для разработки веб-сервисов.
        Он основан на принципах, которые делают веб-приложения масштабируемыми, простыми в поддержке и легко интегрируемыми.
        REST тесно связан с протоколом HTTP, так как использует его методы и концепции для взаимодействия между клиентом и сервером.
    </p>

    <h2>Основные принципы REST</h2>
    <ul>
        <li>
            <span class="highlight">Клиент-серверная архитектура:</span> REST разделяет клиент и сервер, что позволяет
            им развиваться независимо друг от друга.
        </li>
        <li>
            <span class="highlight">Stateless (без состояния):</span> Каждый запрос от клиента к серверу должен содержать
            всю необходимую информацию для его выполнения. Сервер не хранит состояние клиента между запросами.
        </li>
        <li>
            <span class="highlight">Кэширование:</span> Ответы сервера могут быть кэшированы, что улучшает производительность
            и снижает нагрузку на сервер.
        </li>
        <li>
            <span class="highlight">Единообразие интерфейса:</span> REST использует стандартные методы HTTP (GET, POST, PUT, DELETE)
            для выполнения операций с ресурсами.
        </li>
        <li>
            <span class="highlight">Слоистая система:</span> REST позволяет использовать промежуточные слои (например, прокси или
            балансировщики нагрузки) для улучшения масштабируемости и безопасности.
        </li>
    </ul>

    <h2>Как REST связан с HTTP?</h2>
    <ul>
        <li>
            <span class="highlight">Использование методов HTTP:</span> RESTful API использует стандартные HTTP-методы для выполнения
            операций с ресурсами:
            <ul>
                <li><strong>GET:</strong> Получение ресурса.</li>
                <li><strong>POST:</strong> Создание нового ресурса.</li>
                <li><strong>PUT:</strong> Обновление существующего ресурса.</li>
                <li><strong>DELETE:</strong> Удаление ресурса.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ресурсы и URI:</span> В REST каждый ресурс идентифицируется уникальным URI (Uniform Resource Identifier).
            Например, <code>/users/123</code> может представлять пользователя с ID 123.
        </li>
        <li>
            <span class="highlight">Форматы данных:</span> RESTful API обычно использует JSON или XML для передачи данных между клиентом и сервером.
        </li>
        <li>
            <span class="highlight">Stateless взаимодействие:</span> Как и HTTP, REST не хранит состояние клиента на сервере. Каждый запрос
            должен содержать всю необходимую информацию для его выполнения.
        </li>
    </ul>

    <h2>Пример RESTful API</h2>
    <ul>
        <li>
            <span class="highlight">Получение списка пользователей:</span>
            <ul>
                <li>Метод: <code>GET</code></li>
                <li>URI: <code>/users</code></li>
            </ul>
        </li>
        <li>
            <span class="highlight">Создание нового пользователя:</span>
            <ul>
                <li>Метод: <code>POST</code></li>
                <li>URI: <code>/users</code></li>
                <li>Тело запроса: <code>{ "name": "John", "email": "john@example.com" }</code></li>
            </ul>
        </li>
        <li>
            <span class="highlight">Обновление пользователя:</span>
            <ul>
                <li>Метод: <code>PUT</code></li>
                <li>URI: <code>/users/123</code></li>
                <li>Тело запроса: <code>{ "name": "John Doe" }</code></li>
            </ul>
        </li>
        <li>
            <span class="highlight">Удаление пользователя:</span>
            <ul>
                <li>Метод: <code>DELETE</code></li>
                <li>URI: <code>/users/123</code></li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> REST — это не протокол, а набор принципов и рекомендаций для создания веб-сервисов.
            Он тесно связан с HTTP, так как использует его методы и концепции для взаимодействия между клиентом и сервером.
            RESTful API широко используются благодаря своей простоте, масштабируемости и удобству интеграции.
        </p>
    </div>
</body>
</html>', 'HTTP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ff02a15d-c98e-4fed-a7ff-0f8a21f57635', 'Какое влияние оказывают на сериализуемость модификаторы полей static и  final?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Влияние модификаторов static и final на сериализацию</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Влияние модификаторов static и final на сериализацию</h1>
    <p>
        Модификаторы полей <code>static</code> и <code>final</code> оказывают различное влияние на процесс сериализации и десериализации объектов. Понимание их поведения важно для корректной работы с сериализуемыми классами.
    </p>

    <h2>Модификатор static</h2>
    <ul>
        <li>
            <span class="highlight">Не сериализуется:</span> Поля, помеченные модификатором <code>static</code>, не участвуют в процессе сериализации. Это связано с тем, что статические поля принадлежат классу, а не конкретному объекту.
        </li>
        <li>
            <span class="highlight">После десериализации:</span> Значение статического поля остается неизменным, так как оно не сериализуется и не восстанавливается из потока данных.
        </li>
        <li>
            <span class="highlight">Использование с Externalizable:</span> Технически, при использовании <code>Externalizable</code>, можно вручную сериализовать и десериализовать статические поля, но это не рекомендуется из-за возможных трудноуловимых ошибок.
        </li>
    </ul>

    <h2>Модификатор final</h2>
    <ul>
        <li>
            <span class="highlight">Сериализация:</span> Поля с модификатором <code>final</code> сериализуются так же, как и обычные поля. Однако их десериализация имеет особенности.
        </li>
        <li>
            <span class="highlight">Ограничение при использовании Externalizable:</span> При использовании <code>Externalizable</code> десериализация <code>final</code>-полей невозможна, так как они должны быть инициализированы в конструкторе, а метод <code>readExternal()</code> не может изменить их значение после создания объекта.
        </li>
        <li>
            <span class="highlight">Рекомендация:</span> Если необходимо сериализовать объект с <code>final</code>-полями, следует использовать стандартную сериализацию (<code>Serializable</code>), так как она работает через рефлексию и не требует изменения значений <code>final</code>-полей после создания объекта.
        </li>
    </ul>

    <h2>Примеры</h2>
    <pre>
        <code>
public class Example implements Serializable {
    private static final long serialVersionUID = 1L;
    private static int staticField = 10; // Не сериализуется
    private final String finalField;    // Сериализуется, но с ограничениями

    public Example(String finalField) {
        this.finalField = finalField;
    }

    @Override
    public String toString() {
        return "Example{staticField=" + staticField + ", finalField=\'" + finalField + "\'}";
    }
}
        </code>
    </pre>
    <p>
        В этом примере поле <code>staticField</code> не будет сериализовано, а поле <code>finalField</code> будет сериализовано, но только при использовании стандартной сериализации.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При работе с <code>final</code>-полями и сериализацией убедитесь, что вы используете стандартную сериализацию (<code>Serializable</code>), чтобы избежать ошибок, связанных с инициализацией полей.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <span class="highlight">static-поля:</span> Не сериализуются. Их значения остаются неизменными после десериализации.
        </li>
        <li>
            <span class="highlight">final-поля:</span> Сериализуются, но десериализация возможна только при использовании стандартной сериализации (<code>Serializable</code>).
        </li>
        <li>
            Пример:
            <pre>
                <code>
private static int staticField = 10; // Не сериализуется
private final String finalField;    // Сериализуется с ограничениями
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('070595d9-9a7e-460d-8e54-fc8a5f532558', 'Какие существуют способы контроля за значениями десериализованного объекта?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Контроль за значениями десериализованного объекта</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Контроль за значениями десериализованного объекта</h1>
    <p>
        Для контроля за значениями десериализованного объекта можно использовать различные подходы, включая валидацию данных, шифрование и подписывание. Эти методы позволяют убедиться, что данные не были изменены и соответствуют ожидаемым значениям.
    </p>

    <h2>Использование интерфейса ObjectInputValidation</h2>
    <ul>
        <li>
            <span class="highlight">Валидация данных:</span> Интерфейс <code>ObjectInputValidation</code> позволяет выполнить проверку значений десериализованного объекта. Для этого нужно переопределить метод <code>validateObject()</code>.
        </li>
        <li>
            <span class="highlight">Пример реализации:</span>
            <pre>
                <code>
public class Person implements java.io.Serializable, java.io.ObjectInputValidation {
    private static final long serialVersionUID = 1L;
    private int age;

    public Person(int age) {
        this.age = age;
    }

    @Override
    public void validateObject() throws InvalidObjectException {
        if (age < 39 || age > 60) {
            throw new InvalidObjectException("Invalid age");
        }
    }
}
                </code>
            </pre>
            В этом примере, если значение поля <code>age</code> находится за пределами диапазона 39–60, будет выброшено исключение <code>InvalidObjectException</code>.
        </li>
    </ul>

    <h2>Шифрование и подписывание данных</h2>
    <ul>
        <li>
            <span class="highlight">Шифрование:</span> Для защиты данных от несанкционированного доступа можно использовать класс <code>javax.crypto.SealedObject</code>. Этот класс позволяет зашифровать объект перед сериализацией.
            <pre>
                <code>
// Пример использования SealedObject для шифрования
Cipher cipher = Cipher.getInstance("AES");
cipher.init(Cipher.ENCRYPT_MODE, secretKey);
SealedObject sealedObject = new SealedObject(objectToEncrypt, cipher);
                </code>
            </pre>
        </li>
        <li>
            <span class="highlight">Подписывание:</span> Для проверки целостности данных можно использовать класс <code>java.security.SignedObject</code>. Этот класс позволяет подписать объект, чтобы убедиться, что он не был изменен.
            <pre>
                <code>
// Пример использования SignedObject для подписывания
Signature signature = Signature.getInstance("SHA256withRSA");
signature.initSign(privateKey);
SignedObject signedObject = new SignedObject(objectToSign, privateKey, signature);
                </code>
            </pre>
        </li>
    </ul>

    <h2>Кастомная логика в writeObject() и readObject()</h2>
    <ul>
        <li>
            <span class="highlight">Контроль данных:</span> Можно описать кастомную логику в методах <code>writeObject()</code> и <code>readObject()</code> для выполнения дополнительных проверок или преобразований данных.
            <pre>
                <code>
private void writeObject(ObjectOutputStream out) throws IOException {
    // Кастомная логика записи
    out.defaultWriteObject();
}

private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
    // Кастомная логика чтения
    in.defaultReadObject();
    // Дополнительные проверки
}
                </code>
            </pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование шифрования и подписывания требует управления симметричными ключами, которые должны храниться в безопасном месте.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Для контроля значений десериализованного объекта можно использовать:
            <ul>
                <li>Интерфейс <code>ObjectInputValidation</code> с методом <code>validateObject()</code>.</li>
                <li>Шифрование с помощью <code>SealedObject</code>.</li>
                <li>Подписывание с помощью <code>SignedObject</code>.</li>
                <li>Кастомную логику в методах <code>writeObject()</code> и <code>readObject()</code>.</li>
            </ul>
        </li>
        <li>
            Пример валидации:
            <pre>
                <code>
public void validateObject() throws InvalidObjectException {
    if (age < 39 || age > 60) {
        throw new InvalidObjectException("Invalid age");
    }
}
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('500e476f-28d0-4af7-bcda-fcc7460feb83', 'Как создать глубокую копию объекта (2 способа)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Создание глубокой копии объекта</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Создание глубокой копии объекта</h1>
    <p>
        Глубокая копия объекта создается таким образом, чтобы все вложенные объекты также копировались, а не просто копировались ссылки на них. В Java существует несколько способов создания глубокой копии объекта.
    </p>

    <h2>Способ 1: Использование метода clone()</h2>
    <ul>
        <li>
            <span class="highlight">Правила глубокого клонирования:</span>
            <ul>
                <li>Примитивные типы копируются автоматически.</li>
                <li>Все классы-члены должны поддерживать клонирование.</li>
                <li>Для каждого члена класса должен вызываться метод <code>super.clone()</code>.</li>
                <li>Если член класса не поддерживает клонирование, необходимо создать новый экземпляр и скопировать все его атрибуты вручную.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre>
                <code>
public class Person implements Cloneable {
    private String name;
    private Address address;

    public Person(String name, Address address) {
        this.name = name;
        this.address = address;
    }

    @Override
    public Person clone() throws CloneNotSupportedException {
        Person cloned = (Person) super.clone();
        cloned.address = this.address.clone(); // Глубокое клонирование
        return cloned;
    }
}

public class Address implements Cloneable {
    private String city;

    public Address(String city) {
        this.city = city;
    }

    @Override
    public Address clone() throws CloneNotSupportedException {
        return (Address) super.clone();
    }
}
                </code>
            </pre>
            В этом примере метод <code>clone()</code> класса <code>Person</code> вызывает метод <code>clone()</code> для объекта <code>Address</code>, чтобы создать глубокую копию.
        </li>
    </ul>

    <h2>Способ 2: Использование сериализации</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span> Сериализация позволяет сохранить объект в поток байтов, а затем восстановить его из этого потока. Этот процесс автоматически создает глубокую копию объекта.
        </li>
        <li>
            <span class="highlight">Требования:</span> Объект и все вложенные объекты должны реализовывать интерфейс <code>Serializable</code>.
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre>
                <code>
import java.io.*;

public class Person implements Serializable {
    private String name;
    private Address address;

    public Person(String name, Address address) {
        this.name = name;
        this.address = address;
    }

    public Person deepCopy() throws IOException, ClassNotFoundException {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream out = new ObjectOutputStream(bos);
        out.writeObject(this);

        ByteArrayInputStream bis = new ByteArrayInputStream(bos.toByteArray());
        ObjectInputStream in = new ObjectInputStream(bis);
        return (Person) in.readObject();
    }
}

public class Address implements Serializable {
    private String city;

    public Address(String city) {
        this.city = city;
    }
}
                </code>
            </pre>
            В этом примере метод <code>deepCopy()</code> использует сериализацию для создания глубокой копии объекта <code>Person</code>.
        </li>
    </ul>

    <h2>Сравнение способов</h2>
    <table>
        <thead>
            <tr>
                <th>Способ</th>
                <th>Преимущества</th>
                <th>Недостатки</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Метод <code>clone()</code></td>
                <td>Более высокая производительность</td>
                <td>Требует поддержки клонирования всеми вложенными объектами</td>
            </tr>
            <tr>
                <td>Сериализация</td>
                <td>Простота реализации, автоматическое глубокое копирование</td>
                <td>Низкая производительность, требует реализации <code>Serializable</code></td>
            </tr>
        </tbody>
    </table>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор способа создания глубокой копии зависит от требований к производительности и структуры объекта. Сериализация проще в реализации, но может быть медленнее, чем использование метода <code>clone()</code>.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Глубокая копия объекта может быть создана с использованием метода <code>clone()</code> или сериализации.
        </li>
        <li>
            Пример использования метода <code>clone()</code>:
            <pre>
                <code>
@Override
public Person clone() throws CloneNotSupportedException {
    Person cloned = (Person) super.clone();
    cloned.address = this.address.clone();
    return cloned;
}
                </code>
            </pre>
        </li>
        <li>
            Пример использования сериализации:
            <pre>
                <code>
public Person deepCopy() throws IOException, ClassNotFoundException {
    ByteArrayOutputStream bos = new ByteArrayOutputStream();
    ObjectOutputStream out = new ObjectOutputStream(bos);
    out.writeObject(this);

    ByteArrayInputStream bis = new ByteArrayInputStream(bos.toByteArray());
    ObjectInputStream in = new ObjectInputStream(bis);
    return (Person) in.readObject();
}
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cdb829dc-3912-4fcd-8ae0-0019e69f16b6', 'Что такое кэширование в HTTP и какие существуют заголовки, связанные с ним?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Кэширование в HTTP и связанные заголовки</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Кэширование в HTTP и связанные заголовки</h1>
    <p>
        Кэширование в HTTP — это механизм, который позволяет сохранять копии ресурсов (например, HTML-страниц, изображений, CSS-файлов)
        на стороне клиента или промежуточных серверов (прокси) для уменьшения времени загрузки и снижения нагрузки на сервер.
        Кэширование управляется с помощью специальных HTTP-заголовков.
    </p>

    <h2>Как работает кэширование?</h2>
    <ul>
        <li>
            <span class="highlight">Клиент запрашивает ресурс:</span> Браузер отправляет HTTP-запрос на сервер.
        </li>
        <li>
            <span class="highlight">Сервер возвращает ответ с заголовками кэширования:</span> Сервер указывает, как долго ресурс
            может храниться в кэше и при каких условиях его нужно обновлять.
        </li>
        <li>
            <span class="highlight">Клиент сохраняет ресурс в кэше:</span> Если ресурс можно кэшировать, браузер сохраняет его
            для повторного использования.
        </li>
        <li>
            <span class="highlight">Повторное использование кэшированного ресурса:</span> При повторном запросе браузер проверяет,
            можно ли использовать кэшированную версию, или запрашивает новую.
        </li>
    </ul>

    <h2>Основные HTTP-заголовки для кэширования</h2>
    <ul>
        <li>
            <span class="highlight">Cache-Control:</span> Управляет поведением кэширования. Основные директивы:
            <ul>
                <li><strong>max-age=seconds:</strong> Указывает, сколько секунд ресурс может храниться в кэше.</li>
                <li><strong>no-cache:</strong> Требует проверки актуальности ресурса на сервере перед использованием кэша.</li>
                <li><strong>no-store:</strong> Запрещает кэширование ресурса.</li>
                <li><strong>public:</strong> Разрешает кэширование ресурса на всех уровнях (клиент, прокси).</li>
                <li><strong>private:</strong> Разрешает кэширование только на стороне клиента.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Expires:</span> Указывает дату и время, после которых ресурс считается устаревшим.
            Пример: <code>Expires: Wed, 21 Oct 2023 07:28:00 GMT</code>.
        </li>
        <li>
            <span class="highlight">ETag:</span> Уникальный идентификатор версии ресурса. Используется для проверки актуальности
            кэшированной копии. Пример: <code>ETag: "33a64df551425fcc55e4d42a148795d9f25f89d4"</code>.
        </li>
        <li>
            <span class="highlight">Last-Modified:</span> Указывает дату и время последнего изменения ресурса. Используется для
            проверки актуальности кэша. Пример: <code>Last-Modified: Wed, 21 Oct 2023 07:28:00 GMT</code>.
        </li>
        <li>
            <span class="highlight">Vary:</span> Указывает, какие заголовки запроса должны учитываться при выборе кэшированной
            версии ресурса. Пример: <code>Vary: Accept-Encoding</code>.
        </li>
    </ul>

    <h2>Примеры использования заголовков кэширования</h2>
    <ul>
        <li>
            <span class="highlight">Кэширование на 1 час:</span>
            <pre><code>Cache-Control: max-age=3600</code></pre>
        </li>
        <li>
            <span class="highlight">Запрет кэширования:</span>
            <pre><code>Cache-Control: no-store</code></pre>
        </li>
        <li>
            <span class="highlight">Проверка актуальности ресурса:</span>
            <pre><code>Cache-Control: no-cache</code></pre>
        </li>
        <li>
            <span class="highlight">Использование ETag для проверки изменений:</span>
            <pre><code>ETag: "33a64df551425fcc55e4d42a148795d9f25f89d4"</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Кэширование значительно улучшает производительность веб-приложений, уменьшая
            время загрузки и снижая нагрузку на сервер. Однако неправильная настройка кэширования может привести к устаревшим
            данным, поэтому важно правильно использовать HTTP-заголовки для управления кэшем.
        </p>
    </div>
</body>
</html>', 'HTTP', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('921ad0c4-fa5e-4fba-9d77-77115f369ff5', 'Что такое сетевой протокол и для чего он нужен?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое сетевой протокол и для чего он нужен</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Что такое сетевой протокол и для чего он нужен</h1>
    <p>
        Сетевой протокол — это набор правил и соглашений, которые определяют, как устройства взаимодействуют друг с другом
        в сети. Протоколы обеспечивают стандартизированный способ передачи данных, что позволяет различным устройствам и
        программам понимать друг друга.
    </p>

    <h2>Для чего нужны сетевые протоколы?</h2>
    <ul>
        <li>
            <span class="highlight">Обеспечение взаимодействия:</span> Протоколы позволяют устройствам и программам
            взаимодействовать друг с другом, даже если они используют разные операционные системы или аппаратные платформы.
        </li>
        <li>
            <span class="highlight">Стандартизация:</span> Протоколы устанавливают единые правила передачи данных, что
            упрощает разработку сетевых приложений и интеграцию различных систем.
        </li>
        <li>
            <span class="highlight">Надёжность передачи данных:</span> Многие протоколы включают механизмы для обнаружения
            и исправления ошибок, что обеспечивает надёжную передачу данных.
        </li>
        <li>
            <span class="highlight">Безопасность:</span> Современные протоколы поддерживают шифрование и аутентификацию,
            что защищает данные от несанкционированного доступа.
        </li>
    </ul>

    <h2>Основные типы сетевых протоколов</h2>
    <ul>
        <li>
            <span class="highlight">Протоколы передачи данных:</span>
            <ul>
                <li><strong>TCP (Transmission Control Protocol):</strong> Обеспечивает надёжную передачу данных с
                установлением соединения.</li>
                <li><strong>UDP (User Datagram Protocol):</strong> Обеспечивает быструю передачу данных без установления
                соединения.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Протоколы маршрутизации:</span>
            <ul>
                <li><strong>IP (Internet Protocol):</strong> Определяет адресацию и маршрутизацию пакетов в сети.</li>
                <li><strong>BGP (Border Gateway Protocol):</strong> Используется для маршрутизации между автономными
                системами в интернете.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Протоколы прикладного уровня:</span>
            <ul>
                <li><strong>HTTP (HyperText Transfer Protocol):</strong> Используется для передачи веб-страниц.</li>
                <li><strong>FTP (File Transfer Protocol):</strong> Используется для передачи файлов.</li>
                <li><strong>SMTP (Simple Mail Transfer Protocol):</strong> Используется для отправки электронной почты.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Протоколы безопасности:</span>
            <ul>
                <li><strong>SSL/TLS (Secure Sockets Layer / Transport Layer Security):</strong> Обеспечивает шифрование
                данных для безопасной передачи.</li>
                <li><strong>IPSec (Internet Protocol Security):</strong> Обеспечивает защиту данных на сетевом уровне.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример работы сетевого протокола</h2>
    <ul>
        <li>
            <span class="highlight">Запрос веб-страницы:</span>
            <ul>
                <li>Браузер отправляет HTTP-запрос на сервер.</li>
                <li>Запрос передаётся через TCP/IP, который разбивает данные на пакеты и обеспечивает их доставку.</li>
                <li>Сервер обрабатывает запрос и возвращает веб-страницу, используя тот же набор протоколов.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Сетевые протоколы являются основой современных коммуникаций. Они
            обеспечивают стандартизированное взаимодействие между устройствами, что делает возможным работу интернета,
            локальных сетей и других сетевых технологий.
        </p>
    </div>
</body>
</html>', 'HTTP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('51fda3e9-7c98-41e1-8ecb-85f284bca267', 'Как работает триуровневая модель TCP/IP?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Трёхуровневая модель TCP/IP</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Трёхуровневая модель TCP/IP</h1>
    <p>
        Трёхуровневая модель TCP/IP — это упрощённая версия модели сетевого взаимодействия, которая описывает, как данные
        передаются по сети. Она состоит из трёх уровней: сетевого, транспортного и прикладного. Эта модель лежит в основе
        современного интернета.
    </p>

    <h2>Уровни трёхуровневой модели TCP/IP</h2>
    <ul>
        <li>
            <span class="highlight">Сетевой уровень (Internet Layer):</span>
            <ul>
                <li><strong>Основная задача:</strong> Обеспечение маршрутизации и доставки данных между устройствами в сети.</li>
                <li><strong>Протоколы:</strong> IP (Internet Protocol), ICMP (Internet Control Message Protocol), ARP (Address Resolution Protocol).</li>
                <li><strong>Функции:</strong>
                    <ul>
                        <li>Определение IP-адресов.</li>
                        <li>Маршрутизация пакетов между сетями.</li>
                        <li>Фрагментация и сборка пакетов.</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Транспортный уровень (Transport Layer):</span>
            <ul>
                <li><strong>Основная задача:</strong> Обеспечение надёжной или быстрой передачи данных между приложениями.</li>
                <li><strong>Протоколы:</strong> TCP (Transmission Control Protocol), UDP (User Datagram Protocol).</li>
                <li><strong>Функции:</strong>
                    <ul>
                        <li>Установление соединения (для TCP).</li>
                        <li>Гарантия доставки данных (для TCP).</li>
                        <li>Контроль потока и ошибок.</li>
                        <li>Мультиплексирование (передача данных для нескольких приложений через один канал).</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Прикладной уровень (Application Layer):</span>
            <ul>
                <li><strong>Основная задача:</strong> Обеспечение взаимодействия приложений с сетью.</li>
                <li><strong>Протоколы:</strong> HTTP, HTTPS, FTP, SMTP, DNS, SSH и другие.</li>
                <li><strong>Функции:</strong>
                    <ul>
                        <li>Обработка запросов пользователей (например, загрузка веб-страниц).</li>
                        <li>Передача файлов, электронной почты и других данных.</li>
                        <li>Преобразование доменных имён в IP-адреса (DNS).</li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>

    <h2>Как работает трёхуровневая модель TCP/IP?</h2>
    <ul>
        <li>
            <span class="highlight">Пример передачи данных:</span>
            <ul>
                <li><strong>Приложение:</strong> Браузер отправляет HTTP-запрос на получение веб-страницы.</li>
                <li><strong>Транспортный уровень:</strong> TCP разбивает данные на сегменты, добавляет порты и обеспечивает
                надёжную доставку.</li>
                <li><strong>Сетевой уровень:</strong> IP добавляет IP-адреса и маршрутизирует пакеты через сеть.</li>
                <li><strong>Получатель:</strong> На стороне сервера процесс происходит в обратном порядке: пакеты
                собираются, данные передаются приложению (веб-серверу), которое формирует ответ.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Трёхуровневая модель TCP/IP упрощает понимание сетевого взаимодействия,
            разделяя задачи на логические уровни. Это позволяет разработчикам и администраторам эффективно настраивать
            и поддерживать сети, а также разрабатывать приложения, которые работают поверх этих протоколов.
        </p>
    </div>
</body>
</html>', 'HTTP', 'AVERAGE');