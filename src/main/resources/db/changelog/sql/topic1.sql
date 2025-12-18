INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fa7f5226-7948-4493-9386-950b2d8abfd9', 'Расскажите про аннотацию @ComponentScan', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @ComponentScan</title>
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
    <h1>Аннотация @ComponentScan</h1>
    <p>
        Аннотация <code>@ComponentScan</code> используется в Spring для указания пакетов, которые должны сканироваться на наличие классов, помеченных аннотациями <code>@Component</code> или её производными (<code>@Service</code>, <code>@Repository</code>, <code>@Controller</code>). Это позволяет Spring автоматически обнаруживать и регистрировать бины в контексте приложения.
    </p>

    <h2>Основное использование @ComponentScan</h2>
    <p>
        По умолчанию <code>@ComponentScan</code> сканирует текущий пакет и все его подпакеты. Однако можно явно указать пакеты для сканирования:
    </p>
    <pre><code>@Configuration
@ComponentScan("com.example.package")
public class AppConfig {
    // Конфигурация приложения
}</code></pre>
    <p>
        В этом примере Spring будет сканировать пакет <code>com.example.package</code> и все его подпакеты на наличие классов, помеченных аннотациями <code>@Component</code>.
    </p>

    <h2>Параметры @ComponentScan</h2>
    <p>
        Аннотация <code>@ComponentScan</code> поддерживает несколько параметров для настройки процесса сканирования:
    </p>
    <ul>
        <li>
            <span class="highlight">basePackages:</span> Указывает пакеты для сканирования. Можно передать массив строк.
            <pre><code>@ComponentScan(basePackages = {"com.example.package1", "com.example.package2"})</code></pre>
        </li>
        <li>
            <span class="highlight">basePackageClasses:</span> Указывает классы, пакеты которых будут сканироваться.
            <pre><code>@ComponentScan(basePackageClasses = {MyService.class, MyRepository.class})</code></pre>
        </li>
        <li>
            <span class="highlight">includeFilters:</span> Позволяет включать только определённые классы, соответствующие фильтрам.
            <pre><code>@ComponentScan(includeFilters = @ComponentScan.Filter(type = FilterType.ANNOTATION, classes = MyCustomAnnotation.class))</code></pre>
        </li>
        <li>
            <span class="highlight">excludeFilters:</span> Позволяет исключать определённые классы из сканирования.
            <pre><code>@ComponentScan(excludeFilters = @ComponentScan.Filter(type = FilterType.ASSIGNABLE_TYPE, classes = ExcludedService.class))</code></pre>
        </li>
    </ul>

    <h2>Типы фильтров</h2>
    <p>
        В <code>@ComponentScan</code> доступны следующие типы фильтров:
    </p>
    <ul>
        <li>
            <span class="highlight">ANNOTATION:</span> Фильтрует классы по наличию определённой аннотации.
        </li>
        <li>
            <span class="highlight">ASSIGNABLE_TYPE:</span> Фильтрует классы по определённому типу или интерфейсу.
        </li>
        <li>
            <span class="highlight">ASPECTJ:</span> Использует выражения AspectJ для фильтрации.
        </li>
        <li>
            <span class="highlight">REGEX:</span> Фильтрует классы по регулярному выражению.
        </li>
        <li>
            <span class="highlight">CUSTOM:</span> Позволяет использовать пользовательские фильтры, реализующие интерфейс <code>TypeFilter</code>.
        </li>
    </ul>

    <h3>Пример использования фильтров</h3>
    <pre><code>@Configuration
@ComponentScan(
    basePackages = "com.example",
    includeFilters = @ComponentScan.Filter(type = FilterType.ANNOTATION, classes = MyCustomAnnotation.class),
    excludeFilters = @ComponentScan.Filter(type = FilterType.ASSIGNABLE_TYPE, classes = ExcludedService.class)
)
public class AppConfig {
    // Конфигурация приложения
}</code></pre>

    <h2>Пример использования CUSTOM-фильтра</h2>
    <p>
        Пользовательский фильтр можно создать, реализовав интерфейс <code>TypeFilter</code>:
    </p>
    <pre><code>public class MyCustomFilter implements TypeFilter {

    @Override
    public boolean match(MetadataReader metadataReader, MetadataReaderFactory metadataReaderFactory) throws IOException {
        // Логика фильтрации
        return metadataReader.getClassMetadata().getClassName().contains("Service");
    }
}

@Configuration
@ComponentScan(
    basePackages = "com.example",
    includeFilters = @ComponentScan.Filter(type = FilterType.CUSTOM, classes = MyCustomFilter.class)
)
public class AppConfig {
    // Конфигурация приложения
}</code></pre>

    <h2>Преимущества @ComponentScan</h2>
    <ul>
        <li>
            <span class="highlight">Автоматизация:</span> Упрощает регистрацию бинов, автоматически обнаруживая классы с аннотациями.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет настраивать процесс сканирования с помощью фильтров.
        </li>
        <li>
            <span class="highlight">Модульность:</span> Позволяет разделять приложение на модули и сканировать только нужные пакеты.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Производительность:</span> Сканирование большого количества пакетов может замедлить запуск приложения.
        </li>
        <li>
            <span class="highlight">Сложность:</span> Использование сложных фильтров может усложнить конфигурацию.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>@ComponentScan</code> является ключевой аннотацией для автоматического обнаружения бинов в Spring. Её правильное использование значительно упрощает конфигурацию приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8fbacb68-3bd3-43a4-bd9b-5ea50ef72a98', 'Объясните, что такое многопоточность и где она может быть полезна?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Многопоточность в программировании</title>
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
        <h1>Что такое многопоточность и где она может быть полезна?</h1>
        <p>
            <span class="highlight">Многопоточность</span> — это способность программы выполнять несколько потоков (threads) одновременно. Потоки позволяют разделить выполнение задач на параллельные процессы, что может значительно повысить производительность и отзывчивость приложения.
        </p>

        <h2>Основные понятия многопоточности</h2>
        <ul>
            <li>
                <span class="highlight">Поток (Thread):</span> Наименьшая единица выполнения в программе. Потоки разделяют ресурсы процесса, но имеют собственный стек вызовов и контекст выполнения.
            </li>
            <li>
                <span class="highlight">Многопоточность (Multithreading):</span> Технология, позволяющая выполнять несколько потоков одновременно в рамках одного процесса.
            </li>
            <li>
                <span class="highlight">Параллелизм:</span> Одновременное выполнение нескольких задач, что возможно на многоядерных процессорах.
            </li>
            <li>
                <span class="highlight">Синхронизация:</span> Механизмы, которые обеспечивают корректное взаимодействие потоков при работе с общими ресурсами.
            </li>
        </ul>

        <h2>Где многопоточность может быть полезна?</h2>
        <p>
            Многопоточность применяется в различных сценариях, где требуется выполнение нескольких задач одновременно или улучшение производительности. Вот основные области применения:
        </p>

        <h3>1. Параллельная обработка данных</h3>
        <p>
            Многопоточность позволяет разделить большие задачи на части и выполнять их параллельно. Это особенно полезно для:
        </p>
        <ul>
            <li>Обработки больших объёмов данных (например, анализ логов).</li>
            <li>Выполнения сложных вычислений (например, математические расчёты).</li>
        </ul>

        <h3>2. Улучшение отзывчивости приложений</h3>
        <p>
            В графических приложениях (например, десктопных или мобильных) многопоточность позволяет:
        </p>
        <ul>
            <li>Выполнять длительные операции (например, загрузку данных) в фоновом режиме, не блокируя пользовательский интерфейс.</li>
            <li>Обеспечивать плавную анимацию и отзывчивость интерфейса.</li>
        </ul>

        <h3>3. Веб-серверы и многопользовательские приложения</h3>
        <p>
            Веб-серверы используют многопоточность для обработки запросов от множества клиентов одновременно. Это позволяет:
        </p>
        <ul>
            <li>Обрабатывать запросы параллельно, повышая пропускную способность сервера.</li>
            <li>Обеспечивать быстрое время отклика для каждого пользователя.</li>
        </ul>

        <h3>4. Игры и мультимедиа</h3>
        <p>
            В играх и мультимедийных приложениях многопоточность используется для:
        </p>
        <ul>
            <li>Одновременной обработки графики, звука и логики игры.</li>
            <li>Улучшения производительности и плавности игрового процесса.</li>
        </ul>

        <h3>5. Асинхронные операции</h3>
        <p>
            Многопоточность позволяет выполнять асинхронные операции, такие как:
        </p>
        <ul>
            <li>Загрузка данных из сети.</li>
            <li>Чтение и запись файлов.</li>
            <li>Обработка событий в реальном времени.</li>
        </ul>

        <h2>Преимущества многопоточности</h2>
        <ul>
            <li>
                <span class="highlight">Повышение производительности:</span> Параллельное выполнение задач на многоядерных процессорах.
            </li>
            <li>
                <span class="highlight">Улучшение отзывчивости:</span> Фоновое выполнение длительных операций без блокировки интерфейса.
            </li>
            <li>
                <span class="highlight">Эффективное использование ресурсов:</span> Возможность выполнения нескольких задач одновременно.
            </li>
        </ul>

        <h2>Проблемы многопоточности</h2>
        <p>
            Многопоточность также связана с рядом сложностей:
        </p>
        <ul>
            <li>
                <span class="highlight">Синхронизация:</span> Потоки могут конфликтовать при доступе к общим ресурсам. Для решения этой проблемы используются механизмы синхронизации, такие как <code>synchronized</code>, <code>Lock</code> и атомарные классы.
            </li>
            <li>
                <span class="highlight">Сложность отладки:</span> Многопоточные программы сложнее отлаживать из-за недетерминированного поведения потоков.
            </li>
            <li>
                <span class="highlight">Проблемы с производительностью:</span> Неправильное использование потоков может привести к избыточному потреблению ресурсов и снижению производительности.
            </li>
        </ul>

        <h2>Пример использования многопоточности</h2>
        <p>
            Рассмотрим пример многопоточного приложения, которое выполняет несколько задач параллельно:
        </p>
        <pre><code>class Task implements Runnable {
    private String name;

    public Task(String name) {
        this.name = name;
    }

    @Override
    public void run() {
        System.out.println("Задача " + name + " выполняется в потоке: " + Thread.currentThread().getName());
        try {
            Thread.sleep(1000); // Имитация длительной операции
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("Задача " + name + " завершена.");
    }
}

public class Main {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(3); // Создание пула потоков

        executor.submit(new Task("A"));
        executor.submit(new Task("B"));
        executor.submit(new Task("C"));

        executor.shutdown(); // Завершение работы ExecutorService
    }
}</code></pre>
        <p>
            В этом примере три задачи выполняются параллельно в пуле потоков.
        </p>

        <h2>Заключение</h2>
        <p>
            Многопоточность — это мощный инструмент для повышения производительности и отзывчивости приложений. Она полезна в задачах, требующих параллельного выполнения операций, таких как обработка данных, веб-серверы, игры и асинхронные операции. Однако многопоточность требует осторожного подхода к синхронизации и управлению ресурсами.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f8d529d0-a08a-4ab6-8998-4b8b341c4bf7', 'Как обрабатывать исключения в Hibernate? Что вы можете сказать о OptimisticLockException и PessimisticLockException?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Обработка исключений в Hibernate</title>
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
        <h1>Обработка исключений в Hibernate</h1>
        <p>
            В Hibernate исключения могут возникать по разным причинам, таким как ошибки базы данных, проблемы с подключением, конфликты блокировок и другие. Правильная обработка исключений важна для обеспечения надёжности и стабильности приложения.
        </p>

        <h2>Основные типы исключений в Hibernate</h2>
        <p>
            Hibernate выбрасывает исключения, которые являются подклассами <code>HibernateException</code>. Наиболее распространённые исключения включают:
        </p>
        <ul>
            <li>
                <span class="highlight">HibernateException:</span> Базовое исключение для всех ошибок Hibernate.
            </li>
            <li>
                <span class="highlight">OptimisticLockException:</span> Возникает при конфликте оптимистичной блокировки.
            </li>
            <li>
                <span class="highlight">PessimisticLockException:</span> Возникает при конфликте пессимистичной блокировки.
            </li>
            <li>
                <span class="highlight">ConstraintViolationException:</span> Возникает при нарушении ограничений базы данных (например, уникальности).
            </li>
            <li>
                <span class="highlight">TransactionException:</span> Возникает при ошибках в управлении транзакциями.
            </li>
        </ul>

        <h2>OptimisticLockException</h2>
        <p>
            <span class="highlight">OptimisticLockException</span> возникает, когда две транзакции пытаются изменить одни и те же данные одновременно, и одна из них завершается неудачно из-за конфликта версий.
        </p>
        <h3>Причины возникновения</h3>
        <ul>
            <li>Две транзакции пытаются обновить одну и ту же запись одновременно.</li>
            <li>Версия записи, которую пытается обновить транзакция, не совпадает с текущей версией в базе данных.</li>
        </ul>

        <h3>Пример обработки</h3>
        <pre><code>try {
    Session session = sessionFactory.openSession();
    Transaction transaction = session.beginTransaction();

    User user = session.get(User.class, 1L);
    user.setName("New Name");
    session.update(user);

    transaction.commit();
    session.close();
} catch (OptimisticLockException e) {
    // Обработка конфликта версий
    System.err.println("Конфликт версий: " + e.getMessage());
    // Возможные действия: повторная попытка, уведомление пользователя и т.д.
}</code></pre>

        <h3>Стратегии разрешения конфликтов</h3>
        <ul>
            <li>Повторная попытка выполнения операции.</li>
            <li>Уведомление пользователя о конфликте.</li>
            <li>Слияние изменений вручную.</li>
        </ul>

        <h2>PessimisticLockException</h2>
        <p>
            <span class="highlight">PessimisticLockException</span> возникает, когда транзакция не может получить пессимистичную блокировку на запись в базе данных. Это может произойти, если другая транзакция уже заблокировала эту запись.
        </p>
        <h3>Причины возникновения</h3>
        <ul>
            <li>Другая транзакция удерживает блокировку на запись.</li>
            <li>Тайм-аут ожидания блокировки.</li>
        </ul>

        <h3>Пример обработки</h3>
        <pre><code>try {
    Session session = sessionFactory.openSession();
    Transaction transaction = session.beginTransaction();

    User user = session.get(User.class, 1L, LockModeType.PESSIMISTIC_WRITE);
    user.setName("New Name");
    session.update(user);

    transaction.commit();
    session.close();
} catch (PessimisticLockException e) {
    // Обработка ошибки блокировки
    System.err.println("Ошибка блокировки: " + e.getMessage());
    // Возможные действия: повторная попытка, уведомление пользователя и т.д.
}</code></pre>

        <h3>Стратегии разрешения конфликтов</h3>
        <ul>
            <li>Повторная попытка выполнения операции.</li>
            <li>Увеличение времени ожидания блокировки.</li>
            <li>Оптимизация логики работы с транзакциями.</li>
        </ul>

        <h2>Общие рекомендации по обработке исключений</h2>
        <ul>
            <li>
                <span class="highlight">Логирование:</span> Всегда логируйте исключения для последующего анализа.
            </li>
            <li>
                <span class="highlight">Откат транзакций:</span> В случае исключения откатывайте текущую транзакцию, чтобы сохранить целостность данных.
            </li>
            <li>
                <span class="highlight">Повторные попытки:</span> Для временных ошибок (например, конфликтов блокировок) можно реализовать механизм повторных попыток.
            </li>
            <li>
                <span class="highlight">Уведомление пользователя:</span> В случае ошибок, которые требуют вмешательства пользователя, предоставьте соответствующее уведомление.
            </li>
        </ul>

        <h2>Пример обработки исключений в Hibernate</h2>
        <pre><code>Session session = null;
Transaction transaction = null;

try {
    session = sessionFactory.openSession();
    transaction = session.beginTransaction();

    // Выполнение операций с базой данных
    User user = session.get(User.class, 1L);
    user.setName("New Name");
    session.update(user);

    transaction.commit();
} catch (OptimisticLockException e) {
    if (transaction != null) {
        transaction.rollback();
    }
    System.err.println("Конфликт версий: " + e.getMessage());
} catch (PessimisticLockException e) {
    if (transaction != null) {
        transaction.rollback();
    }
    System.err.println("Ошибка блокировки: " + e.getMessage());
} catch (Exception e) {
    if (transaction != null) {
        transaction.rollback();
    }
    System.err.println("Ошибка: " + e.getMessage());
} finally {
    if (session != null) {
        session.close();
    }
}</code></pre>

        <h2>Заключение</h2>
        <p>
            Обработка исключений в Hibernate — это важный аспект разработки надёжных приложений. Исключения, такие как <code>OptimisticLockException</code> и <code>PessimisticLockException</code>, требуют особого внимания, так как они связаны с конфликтами доступа к данным. Правильная обработка этих исключений помогает обеспечить целостность данных и улучшить пользовательский опыт.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('468b55ed-342f-4562-b630-c16aa6fa3d48', 'Что такое "HEAD" в Git?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HEAD в Git</title>
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
    <h1>HEAD в Git</h1>
    <p>
        В Git <span class="highlight">HEAD</span> — это указатель на текущий коммит, с которым вы работаете. Это может быть
        последний коммит в текущей ветке или конкретный коммит, если вы находитесь в состоянии
        "detached HEAD". Понимание того, что такое HEAD, важно для эффективной работы с Git.
    </p>

    <h2>Что такое HEAD?</h2>
    <p>
        <span class="highlight">HEAD</span> — это символическая ссылка, которая указывает на текущий коммит в вашем
        репозитории. Обычно HEAD указывает на последний коммит в текущей ветке, но он также может
        указывать на конкретный коммит, если вы переключились на него напрямую.
    </p>
    <ul>
        <li>
            <span class="highlight">HEAD в ветке:</span>
            <p>
                Когда вы находитесь на ветке, HEAD указывает на последний коммит в этой ветке.
                Например, если вы находитесь на ветке <code>main</code>, HEAD будет указывать на последний
                коммит в <code>main</code>.
            </p>
        </li>
        <li>
            <span class="highlight">Detached HEAD:</span>
            <p>
                Если вы переключились на конкретный коммит (например, с помощью <code>git checkout commit-hash</code>),
                HEAD будет указывать на этот коммит, а не на ветку. Это состояние называется
                "detached HEAD".
            </p>
        </li>
    </ul>

    <h2>Как проверить, куда указывает HEAD?</h2>
    <p>
        Чтобы узнать, куда указывает HEAD, используйте команду <code>git log</code> или <code>git show</code>.
    </p>
    <ul>
        <li>
            <span class="highlight">Просмотр текущего коммита:</span>
            <p>
                Команда <code>git log -1</code> покажет последний коммит, на который указывает HEAD.
            </p>
            <pre><code>
git log -1
            </code></pre>
        </li>
        <li>
            <span class="highlight">Просмотр информации о HEAD:</span>
            <p>
                Команда <code>git show HEAD</code> покажет информацию о текущем коммите.
            </p>
            <pre><code>
git show HEAD
            </code></pre>
        </li>
    </ul>

    <h2>Примеры использования HEAD</h2>
    <ul>
        <li>
            <span class="highlight">Переключение на ветку:</span>
            <p>
                Когда вы переключаетесь на ветку, HEAD начинает указывать на последний коммит в
                этой ветке.
            </p>
            <pre><code>
git checkout main
            </code></pre>
        </li>
        <li>
            <span class="highlight">Переключение на конкретный коммит:</span>
            <p>
                Если вы переключаетесь на конкретный коммит, HEAD переходит в состояние "detached HEAD".
            </p>
            <pre><code>
git checkout abc1234
            </code></pre>
        </li>
        <li>
            <span class="highlight">Сравнение изменений:</span>
            <p>
                Вы можете использовать HEAD для сравнения текущего состояния с предыдущими коммитами.
            </p>
            <pre><code>
git diff HEAD~1 HEAD
            </code></pre>
        </li>
    </ul>

    <h2>Состояние "detached HEAD"</h2>
    <p>
        В состоянии "detached HEAD" HEAD указывает на конкретный коммит, а не на ветку. Это может
        быть полезно для проверки старых коммитов или экспериментов с кодом. Однако, если вы
        сделаете коммит в этом состоянии, он не будет связан с какой-либо веткой, и вы можете
        потерять его, если переключитесь на другую ветку.
    </p>
    <ul>
        <li>
            <span class="highlight">Создание ветки из "detached HEAD":</span>
            <p>
                Чтобы сохранить изменения, сделанные в состоянии "detached HEAD", создайте новую ветку.
            </p>
            <pre><code>
git checkout -b new-branch
            </code></pre>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        <span class="highlight">HEAD</span> — это важный указатель в Git, который показывает, с каким коммитом вы
        работаете в данный момент. Обычно HEAD указывает на последний коммит в текущей ветке, но
        он также может указывать на конкретный коммит в состоянии "detached HEAD". Понимание
        работы с HEAD помогает эффективно управлять изменениями и экспериментировать с кодом.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f646a48d-8992-40d9-84bc-ffc58fc73487', 'Как реализовать потокобезопасный счетчик (counter) без использования мьютексов', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Потокобезопасный счетчик без мьютексов</title>
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
    <h1>Потокобезопасный счетчик без мьютексов</h1>
    <p>
        Реализация потокобезопасного счетчика без использования мьютексов возможна с помощью атомарных операций. Атомарные операции гарантируют, что изменение переменной будет выполнено целиком, без вмешательства других потоков. В Java для этого используются классы из пакета <code>java.util.concurrent.atomic</code>, такие как <code>AtomicInteger</code>.
    </p>

    <h2>Почему атомарные операции?</h2>
    <p>
        Атомарные операции обеспечивают потокобезопасность без блокировок, что делает их более эффективными в многопоточной среде. Они используют низкоуровневые механизмы процессора (например, CAS — Compare-And-Swap) для обеспечения атомарности.
    </p>

    <h2>Реализация потокобезопасного счетчика</h2>
    <p>
        В Java можно использовать <code>AtomicInteger</code> для создания потокобезопасного счетчика. Этот класс предоставляет методы для атомарного увеличения, уменьшения и изменения значения.
    </p>

    <h3>Пример кода:</h3>
    <pre><code>
import java.util.concurrent.atomic.AtomicInteger;

public class ThreadSafeCounter {
    private final AtomicInteger counter = new AtomicInteger(0);

    // Метод для увеличения счетчика
    public void increment() {
        counter.incrementAndGet();
    }

    // Метод для уменьшения счетчика
    public void decrement() {
        counter.decrementAndGet();
    }

    // Метод для получения текущего значения
    public int getValue() {
        return counter.get();
    }

    public static void main(String[] args) throws InterruptedException {
        ThreadSafeCounter counter = new ThreadSafeCounter();

        // Создаем несколько потоков для увеличения счетчика
        Runnable task = () -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        };

        Thread thread1 = new Thread(task);
        Thread thread2 = new Thread(task);

        thread1.start();
        thread2.start();

        thread1.join();
        thread2.join();

        // Ожидаемый результат: 2000
        System.out.println("Итоговое значение счетчика: " + counter.getValue());
    }
}
    </code></pre>

    <h2>Как это работает?</h2>
    <p>
        <span class="highlight">1. Атомарное увеличение:</span> Метод <code>incrementAndGet()</code> увеличивает значение счетчика на 1 атомарно, то есть без вмешательства других потоков.
    </p>
    <p>
        <span class="highlight">2. Атомарное уменьшение:</span> Метод <code>decrementAndGet()</code> уменьшает значение счетчика на 1 атомарно.
    </p>
    <p>
        <span class="highlight">3. Получение значения:</span> Метод <code>get()</code> возвращает текущее значение счетчика.
    </p>

    <h2>Преимущества атомарных операций</h2>
    <p>
        <span class="highlight">1. Отсутствие блокировок:</span> Атомарные операции не требуют блокировок, что делает их более эффективными в многопоточной среде.
    </p>
    <p>
        <span class="highlight">2. Простота использования:</span> Классы из пакета <code>java.util.concurrent.atomic</code> предоставляют простой и удобный API для работы с атомарными переменными.
    </p>
    <p>
        <span class="highlight">3. Высокая производительность:</span> Атомарные операции выполняются на уровне процессора, что обеспечивает высокую производительность.
    </p>

    <h2>Рекомендации по использованию</h2>
    <p>
        <span class="highlight">1. Используйте атомарные переменные для простых операций:</span> Атомарные переменные идеально подходят для простых операций, таких как увеличение или уменьшение счетчика.
    </p>
    <p>
        <span class="highlight">2. Избегайте сложной логики:</span> Для сложных операций, требующих нескольких шагов, рассмотрите использование других механизмов синхронизации, таких как <code>ReentrantLock</code> или <code>synchronized</code>.
    </p>
    <p>
        <span class="highlight">3. Проверяйте производительность:</span> В некоторых случаях атомарные операции могут быть менее эффективными, чем блокировки, особенно при высокой конкуренции за ресурсы.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Атомарные операции — это мощный инструмент для создания потокобезопасных структур данных, но их следует использовать с осторожностью, чтобы избежать проблем с производительностью и корректностью.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('06d255b4-cf87-4aea-a705-78cf868fc723', 'Расскажите про быструю сортировку', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Быстрая сортировка</title>
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
    <h1>Быстрая сортировка</h1>
    <p>
        <span class="highlight">Быстрая сортировка</span> (Quick Sort) — это эффективный алгоритм сортировки, основанный на принципе «разделяй и властвуй». Он работает путём выбора опорного элемента и рекурсивного разделения массива на две части: элементы меньше опорного и элементы больше опорного.
    </p>

    <h2>Как работает быстрая сортировка?</h2>
    <ul>
        <li>
            Выбирается <span class="highlight">опорный элемент</span> (pivot). Это может быть первый, последний, средний или случайный элемент массива.
        </li>
        <li>
            Массив разделяется на две части: элементы меньше опорного и элементы больше опорного. Для этого используются дополнительные переменные, которые сравниваются с опорным элементом.
        </li>
        <li>
            Рекурсивно вызывается сортировка для каждой из частей, где выбирается новый опорный элемент.
        </li>
        <li>
            В итоге массив становится отсортированным, так как каждый элемент меньше опорного стоит раньше каждого элемента больше опорного.
        </li>
    </ul>

    <h2>Асимптотическая сложность</h2>
    <ul>
        <li>
            <span class="highlight">Средний и лучший случай:</span> <code>O(n * log(n))</code>, где <code>n</code> — количество элементов в массиве.
        </li>
        <li>
            <span class="highlight">Худший случай:</span> <code>O(n^2)</code>, если опорный элемент выбирается неудачно (например, всегда минимальный или максимальный элемент).
        </li>
    </ul>

    <h2>Пример реализации на Python</h2>
    <pre><code>
def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quick_sort(left) + middle + quick_sort(right)
    </code></pre>

    <h2>Преимущества и недостатки</h2>
    <ul>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Высокая производительность в среднем случае.</li>
                <li>Не требует дополнительной памяти (если реализован in-place).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Худший случай <code>O(n^2)</code> при неудачном выборе опорного элемента.</li>
                <li>Рекурсия может привести к переполнению стека на больших массивах.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Быстрая сортировка является одним из самых популярных алгоритмов сортировки благодаря своей эффективности в большинстве случаев. Однако для гарантированной производительности можно использовать модификации, такие как выбор медианы в качестве опорного элемента.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'EASY');
