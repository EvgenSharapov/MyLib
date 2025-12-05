INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0881613d-d238-4373-a9f0-f023dcc6877d', 'Что такое Spring Data JPA?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Data JPA</title>
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
    <h1>Spring Data JPA</h1>
    <p>
        <span class="highlight">Spring Data JPA</span> — это модуль Spring Framework, который упрощает работу с базами данных через Java Persistence API (JPA). Он предоставляет высокоуровневый API для выполнения операций с данными, таких как CRUD (Create, Read, Update, Delete), а также поддерживает автоматическое создание репозиториев и запросов на основе методов.
    </p>

    <h2>Основные возможности Spring Data JPA</h2>
    <p>
        <span class="highlight">1. Упрощение работы с JPA:</span> Spring Data JPA уменьшает количество boilerplate-кода, необходимого для работы с JPA, предоставляя готовые реализации для стандартных операций.
    </p>
    <p>
        <span class="highlight">2. Автоматическое создание репозиториев:</span> Spring Data JPA автоматически создаёт реализации репозиториев на основе интерфейсов, что избавляет от необходимости писать их вручную.
    </p>
    <p>
        <span class="highlight">3. Поддержка запросов на основе методов:</span> Spring Data JPA позволяет создавать запросы к базе данных, просто объявляя методы в интерфейсе репозитория.
    </p>
    <p>
        <span class="highlight">4. Интеграция с Spring:</span> Spring Data JPA легко интегрируется с другими модулями Spring, такими как Spring Boot, Spring MVC и Spring Security.
    </p>

    <h2>Основные компоненты Spring Data JPA</h2>
    <p>
        <span class="highlight">1. Entity (Сущность):</span> Класс, который представляет таблицу в базе данных. Аннотируется с помощью <code>@Entity</code>.
    </p>
    <p>
        <span class="highlight">2. Repository (Репозиторий):</span> Интерфейс, который предоставляет методы для работы с данными. Обычно расширяет <code>JpaRepository</code>.
    </p>
    <p>
        <span class="highlight">3. Service (Сервис):</span> Слой бизнес-логики, который использует репозиторий для выполнения операций с данными.
    </p>

    <h3>Пример сущности (Entity):</h3>
    <pre><code>
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String email;

    // Геттеры и сеттеры
}
    </code></pre>

    <h3>Пример репозитория (Repository):</h3>
    <pre><code>
public interface UserRepository extends JpaRepository<User, Long> {
    List<User> findByName(String name);
    List<User> findByEmailContaining(String email);
}
    </code></pre>

    <h3>Пример сервиса (Service):</h3>
    <pre><code>
@Service
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getUsersByName(String name) {
        return userRepository.findByName(name);
    }

    public List<User> getUsersByEmail(String email) {
        return userRepository.findByEmailContaining(email);
    }
}
    </code></pre>

    <h2>Преимущества Spring Data JPA</h2>
    <p>
        <span class="highlight">1. Уменьшение boilerplate-кода:</span> Spring Data JPA автоматически создаёт реализации репозиториев, что уменьшает количество кода, который нужно писать вручную.
    </p>
    <p>
        <span class="highlight">2. Упрощение запросов:</span> Запросы к базе данных могут быть созданы просто путём объявления методов в интерфейсе репозитория.
    </p>
    <p>
        <span class="highlight">3. Интеграция с Spring:</span> Spring Data JPA легко интегрируется с другими модулями Spring, что делает его удобным для использования в enterprise-приложениях.
    </p>
    <p>
        <span class="highlight">4. Поддержка транзакций:</span> Spring Data JPA поддерживает управление транзакциями через аннотацию <code>@Transactional</code>.
    </p>

    <h2>Рекомендации по использованию Spring Data JPA</h2>
    <p>
        <span class="highlight">1. Используйте аннотации для сущностей:</span> Правильно аннотируйте сущности, чтобы Spring Data JPA мог корректно работать с базой данных.
    </p>
    <p>
        <span class="highlight">2. Используйте репозитории:</span> Создавайте интерфейсы репозиториев, чтобы Spring Data JPA мог автоматически создавать их реализации.
    </p>
    <p>
        <span class="highlight">3. Используйте транзакции:</span> Управляйте транзакциями с помощью аннотации <code>@Transactional</code>, чтобы обеспечить целостность данных.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring Data JPA — это мощный инструмент для работы с базами данных, который значительно упрощает разработку. Используйте его возможности для создания надёжных и поддерживаемых приложений.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c8bf8c43-a14e-4b7c-b204-3709ce41eb48', 'Для чего нужен сборщик мусора?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Принципы ООП</title>
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
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        .note {
            background: #ecf0f1;
            padding: 3px;
            border-left: 5px solid #bdc3c7;
            margin: 7px 0;
            color: #333;
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
    <h1>Для чего нужен сборщик мусора?</h1>

    <p>
        <span class="note">Сборщик мусора (Garbage Collector)</span> должен делать всего две вещи:
    </p>
    <ul>
        <li>
            <span class="note">находить мусор</span> – неиспользуемые объекты (объект считается неиспользуемым, если ни одна из сущностей в коде, выполняемом в данный момент, не содержит ссылок на него, либо цепочка ссылок, которая могла бы связать объект с некоторой сущностью приложения, обрывается);
        </li>
        <li>
            <span class="note">освобождать память от мусора</span>.
        </li>
    </ul>

    <h2>Подходы к обнаружению мусора</h2>
    <p>
        Существует два подхода к обнаружению мусора:
    </p>
    <ul>
        <li>
            <span class="note">Reference counting</span> (подсчет ссылок);
        </li>
        <li>
            <span class="note">Tracing</span> (трассировка).
        </li>
    </ul>

    <h3>Reference counting (подсчет ссылок)</h3>
    <p>
        Суть этого подхода состоит в том, что каждый объект имеет счетчик. Счетчик хранит информацию о том, сколько ссылок указывает на объект. Когда ссылка уничтожается, счетчик уменьшается. Если значение счетчика равно нулю, объект можно считать мусором. Главным минусом такого подхода является сложность обеспечения точности счетчика. Также при таком подходе сложно выявлять циклические зависимости (когда два объекта указывают друг на друга, но ни один живой объект на них не ссылается), что приводит к утечкам памяти.
    </p>

    <h3>Tracing (трассировка)</h3>
    <p>
        Главная идея подхода <span class="note">Tracing</span> состоит в утверждении, что живыми могут считаться только те объекты, до которых можно добраться из корневых точек (<span class="note">GC Root</span>) и те объекты, которые доступны с живого объекта. Все остальное – мусор.
    </p>
    <p>
        Существует 4 типа корневых точек:
    </p>
    <ul>
        <li>локальные переменные и параметры методов;</li>
        <li>потоки;</li>
        <li>статические переменные;</li>
        <li>ссылки из JNI.</li>
    </ul>
    <p>
        Самое простое Java-приложение будет иметь корневые точки:
    </p>
    <ul>
        <li>локальные переменные внутри метода <code>main()</code> и параметры метода <code>main()</code>;</li>
        <li>поток, который выполняет <code>main()</code>;</li>
        <li>статические переменные класса, внутри которого находится метод <code>main()</code>.</li>
    </ul>
    <p>
        Таким образом, если представим все объекты и ссылки между ними как дерево, то нужно будет пройти с корневых узлов (точек) по всем ребрам. При этом узлы, до которых сможем добраться – не мусор, все остальные – мусор. При таком подходе циклические зависимости легко выявляются. <span class="note">HotSpot VM</span> использует именно такой подход.
    </p>

    <h2>Методы очистки памяти от мусора</h2>
    <p>
        Для очистки памяти от мусора существуют два основных метода:
    </p>
    <ul>
        <li>
            <span class="note">Copying collectors</span>;
        </li>
        <li>
            <span class="note">Mark-and-sweep</span>.
        </li>
    </ul>

    <h3>Copying collectors</h3>
    <p>
        При подходе <span class="note">Copying collectors</span> память делится на две части: <span class="note">from-space</span> и <span class="note">to-space</span>, при этом сам принцип работы такой:
    </p>
    <ul>
        <li>объекты создаются в <span class="note">from-space</span>;</li>
        <li>когда <span class="note">from-space</span> заполняется, приложение приостанавливается;</li>
        <li>запускается сборщик мусора, находятся живые объекты в <span class="note">from-space</span> и копируются в <span class="note">to-space</span>;</li>
        <li>когда все объекты скопированы, <span class="note">from-space</span> полностью очищается;</li>
        <li><span class="note">to-space</span> и <span class="note">from-space</span> меняются местами.</li>
    </ul>
    <p>
        Главный плюс такого подхода в том, что объекты плотно забивают память. Минусы подхода:
    </p>
    <ul>
        <li>приложение должно быть остановлено на время, необходимое для полного прохождения цикла сборки мусора;</li>
        <li>в худшем случае (когда все объекты живые) <span class="note">from-space</span> и <span class="note">to-space</span> будут обязаны быть одинакового размера.</li>
    </ul>

    <h3>Mark-and-sweep</h3>
    <p>
        Алгоритм работы <span class="note">Mark-and-sweep</span> можно описать так:
    </p>
    <ul>
        <li>объекты создаются в памяти;</li>
        <li>в момент, когда нужно запустить сборщик мусора, приложение приостанавливается;</li>
        <li>сборщик проходится по дереву объектов, помечая живые объекты;</li>
        <li>сборщик проходится по всей памяти, находя все не отмеченные куски памяти и сохраняя их в <span class="note">free list</span>;</li>
        <li>когда новые объекты начинают создаваться, они создаются в памяти, доступной во <span class="note">free list</span>.</li>
    </ul>
    <p>
        Минусы этого способа:
    </p>
    <ul>
        <li>приложение не работает, пока происходит сборка мусора;</li>
        <li>время остановки напрямую зависит от размеров памяти и количества объектов;</li>
        <li>если не использовать <span class="note">compacting</span>, память будет использоваться неэффективно.</li>
    </ul>

    <h2>Generational Garbage Collection</h2>
    <p>
        Сборщики мусора <span class="note">HotSpot VM</span> используют комбинированный подход <span class="note">Generational Garbage Collection</span>, который позволяет использовать разные алгоритмы для разных этапов сборки мусора. Этот подход основывается на том, что:
    </p>
    <ul>
        <li>большинство создаваемых объектов быстро становятся мусором;</li>
        <li>существует мало связей между объектами, которые были созданы в прошлом и только что созданными объектами.</li>
    </ul>

    <div class="definition">
        <p>
            <strong>Сборщик мусора (Garbage Collector)</strong> – это механизм, который автоматически управляет памятью в Java, освобождая её от неиспользуемых объектов и предотвращая утечки памяти.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('93d815aa-97a5-4671-b781-ce4cad852825', 'Что такое finalize()? Зачем он нужен?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Принципы ООП</title>
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
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        .note {
            background: #ecf0f1;
            padding: 3px;
            border-left: 5px solid #bdc3c7;
            margin: 7px 0;
            color: #333;
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
    <h1>Что такое finalize()?</h1>

    <p>
        Через вызов метода <span class="note">finalize()</span> JVM реализуется функциональность, аналогичная функциональности деструкторов в C++, используемых для очистки памяти перед возвращением управления операционной системе. Данный метод вызывается при уничтожении объекта сборщиком мусора (<span class="note">garbage collector</span>), и, переопределяя <span class="note">finalize()</span>, можно запрограммировать действия, необходимые для корректного удаления экземпляра класса – например, закрытие сетевых соединений, соединений с базой данных, снятие блокировок на файлы и т. д.
    </p>

    <h2>Особенности метода finalize()</h2>
    <p>
        После выполнения этого метода объект должен быть повторно собран сборщиком мусора (и это считается серьезной проблемой метода <span class="note">finalize()</span>, т. к. он мешает сборщику мусора освобождать память). Вызов этого метода не гарантируется, т. к. приложение может быть завершено до того, как будет запущена сборка мусора.
    </p>

    <h2>Возрождение объекта</h2>
    <p>
        Объект не обязательно будет доступен для сборки сразу же – метод <span class="note">finalize()</span> может сохранить куда-нибудь ссылку на объект. Подобная ситуация называется <span class="note">«возрождением»</span> объекта и считается антипаттерном. Главная проблема такого трюка в том, что «возродить» объект можно только 1 раз.
    </p>

    <div class="definition">
        <p>
            <strong>finalize()</strong> – это метод, который вызывается сборщиком мусора перед удалением объекта. Он позволяет выполнить дополнительные действия по очистке ресурсов, но его использование не рекомендуется из-за непредсказуемости вызова и возможных проблем с производительностью.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('45942df0-b664-4fe5-bc14-6a3083f51238', 'Как вы можете изменить последний коммит? Например, если вы забыли добавить файл?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Изменение последнего коммита в Git</title>
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
        <h1>Как изменить последний коммит в Git?</h1>
        <p>
            Иногда после создания коммита вы понимаете, что забыли добавить файл или допустили ошибку в сообщении коммита. В Git есть несколько способов изменить последний коммит, не создавая новый.
        </p>

        <h2>Использование <code>git commit --amend</code></h2>
        <p>
            Команда <code>git commit --amend</code> позволяет изменить последний коммит. Это может быть полезно в следующих случаях:
        </p>
        <ul>
            <li>Вы забыли добавить файл в коммит.</li>
            <li>Вы хотите изменить сообщение коммита.</li>
            <li>Вы хотите добавить изменения в последний коммит.</li>
        </ul>

        <h3>Как добавить забытый файл в последний коммит?</h3>
        <ol>
            <li>Добавьте забытый файл в индекс:
                <pre><code>git add забытый_файл</code></pre>
            </li>
            <li>Измените последний коммит:
                <pre><code>git commit --amend</code></pre>
            </li>
        </ol>
        <p>
            После выполнения команды откроется текстовый редактор, где вы сможете изменить сообщение коммита (если это необходимо). Сохраните и закройте редактор, чтобы завершить процесс.
        </p>

        <h3>Как изменить сообщение последнего коммита?</h3>
        <p>
            Если вы хотите изменить только сообщение коммита, выполните:
        </p>
        <pre><code>git commit --amend -m "Новое сообщение коммита"</code></pre>
        <p>
            Это заменит сообщение последнего коммита на новое.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Команда <code>git commit --amend</code> изменяет историю коммитов. Если вы уже отправили коммит в удалённый репозиторий, изменение последнего коммита может вызвать проблемы у других разработчиков. В таком случае используйте эту команду с осторожностью.
            </p>
        </div>

        <h2>Примеры использования</h2>
        <ul>
            <li>
                <span class="highlight">Добавление файла в последний коммит:</span>
                <pre><code>git add забытый_файл
git commit --amend</code></pre>
            </li>
            <li>
                <span class="highlight">Изменение сообщения коммита:</span>
                <pre><code>git commit --amend -m "Новое сообщение коммита"</code></pre>
            </li>
            <li>
                <span class="highlight">Добавление изменений и изменение сообщения:</span>
                <pre><code>git add изменённый_файл
git commit --amend</code></pre>
            </li>
        </ul>

        <h2>Что происходит при использовании <code>--amend</code>?</h2>
        <p>
            Команда <code>git commit --amend</code> создаёт новый коммит, который заменяет последний. Это означает:
        </p>
        <ul>
            <li>Хэш последнего коммита изменится.</li>
            <li>История коммитов будет переписана.</li>
            <li>Если коммит уже был отправлен в удалённый репозиторий, потребуется принудительная отправка (<code>git push --force</code>).</li>
        </ul>

        <h2>Когда использовать <code>--amend</code>?</h2>
        <p>
            Используйте <code>git commit --amend</code> в следующих случаях:
        </p>
        <ul>
            <li>Вы работаете в локальном репозитории и хотите исправить последний коммит.</li>
            <li>Вы ещё не отправили коммит в удалённый репозиторий.</li>
            <li>Вы хотите избежать создания лишних коммитов для мелких исправлений.</li>
        </ul>
    </div>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('88831130-af47-4476-b54d-c1212637e28c', 'Расскажи про индексы БД (кластерные/некластерные)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Индексы БД: кластерные и некластерные</title>
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
    <h1>Индексы БД: кластерные и некластерные</h1>
    <p>
        <span class="highlight">Индексы</span> — это структуры данных, которые используются в базах данных для ускорения поиска и
        извлечения данных. Они работают аналогично оглавлению в книге, позволяя быстро находить нужные
        данные без необходимости полного сканирования таблицы. Индексы бывают двух основных типов:
        <span class="highlight">кластерные</span> и <span class="highlight">некластерные</span>.
    </p>

    <h2>Кластерные индексы</h2>
    <p>
        <span class="highlight">Кластерный индекс</span> определяет физический порядок данных в таблице. Таблица может иметь только
        один кластерный индекс, так как данные могут быть отсортированы только одним способом.
    </p>
    <ul>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Данные в таблице физически упорядочены по значениям кластерного индекса.</li>
                <li>Кластерный индекс автоматически создаётся для первичного ключа (если не указано иное).</li>
                <li>Обеспечивает быстрый доступ к данным по диапазону значений.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Высокая производительность для запросов с диапазоном значений.</li>
                <li>Уменьшение времени поиска, так как данные физически упорядочены.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Медленное выполнение операций вставки, обновления и удаления, так как требуется
                    переупорядочивание данных.</li>
                <li>Только один кластерный индекс на таблицу.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
-- Пример создания кластерного индекса в SQL
CREATE TABLE employees (
    id INT PRIMARY KEY, -- Кластерный индекс создаётся автоматически
    name VARCHAR(100),
    department VARCHAR(50)
);
    </code></pre>

    <h2>Некластерные индексы</h2>
    <p>
        <span class="highlight">Некластерный индекс</span> — это отдельная структура данных, которая хранит копию данных из таблицы
        в отсортированном виде. Некластерный индекс не влияет на физический порядок данных в таблице,
        и таблица может иметь несколько некластерных индексов.
    </p>
    <ul>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Данные в таблице не переупорядочиваются.</li>
                <li>Некластерный индекс содержит указатели на физическое расположение данных.</li>
                <li>Может быть создан для любого столбца или комбинации столбцов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Быстрый доступ к данным по конкретным значениям.</li>
                <li>Возможность создания нескольких индексов на одной таблице.</li>
                <li>Меньше влияния на операции вставки, обновления и удаления по сравнению с кластерным индексом.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Требует дополнительного места для хранения индекса.</li>
                <li>Менее эффективен для запросов с диапазоном значений по сравнению с кластерным индексом.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
-- Пример создания некластерного индекса в SQL
CREATE INDEX idx_employee_name ON employees (name);
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между кластерным и некластерным индексом зависит от
            конкретных требований к производительности и типов запросов, которые выполняются в базе данных.
        </p>
    </div>

    <h2>Сравнение кластерных и некластерных индексов</h2>
    <table>
        <thead>
            <tr>
                <th>Критерий</th>
                <th>Кластерный индекс</th>
                <th>Некластерный индекс</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Физический порядок данных</td>
                <td>Да</td>
                <td>Нет</td>
            </tr>
            <tr>
                <td>Количество индексов на таблицу</td>
                <td>Один</td>
                <td>Несколько</td>
            </tr>
            <tr>
                <td>Производительность для диапазонов</td>
                <td>Высокая</td>
                <td>Средняя</td>
            </tr>
            <tr>
                <td>Влияние на операции вставки/обновления/удаления</td>
                <td>Высокое</td>
                <td>Низкое</td>
            </tr>
            <tr>
                <td>Требуемое место для хранения</td>
                <td>Минимальное (данные уже упорядочены)</td>
                <td>Дополнительное (хранит копию данных)</td>
            </tr>
        </tbody>
    </table>

    <h2>Когда использовать кластерные и некластерные индексы?</h2>
    <ul>
        <li>
            <span class="highlight">Кластерный индекс:</span>
            <ul>
                <li>Для столбцов, которые часто используются в запросах с диапазоном значений (например, BETWEEN, ORDER BY).</li>
                <li>Для первичных ключей, если они часто используются в запросах.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Некластерный индекс:</span>
            <ul>
                <li>Для столбцов, которые часто используются в условиях WHERE.</li>
                <li>Для столбцов, которые используются в JOIN-запросах.</li>
                <li>Для столбцов, которые не являются первичными ключами, но часто используются в запросах.</li>
            </ul>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        Индексы — это мощный инструмент для оптимизации производительности базы данных. Кластерные индексы
        упорядочивают данные физически, что делает их идеальными для запросов с диапазоном значений.
        Некластерные индексы предоставляют гибкость и могут быть созданы для нескольких столбцов, что
        полезно для ускорения поиска по конкретным значениям. Правильное использование индексов позволяет
        значительно улучшить производительность базы данных.
    </p>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d35a6d7b-3058-4f25-93e7-e951f5fc2f41', 'Что такое Criteria API и как он отличается от HQL?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Criteria API в Hibernate</title>
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
        <h1>Что такое Criteria API?</h1>
        <p>
            <span class="highlight">Criteria API</span> — это программный API в Hibernate, который позволяет создавать запросы к базе данных с использованием объектно-ориентированного подхода. В отличие от HQL, где запросы пишутся в виде строк, Criteria API позволяет строить запросы с помощью Java-кода, что делает их более типобезопасными и удобными для рефакторинга.
        </p>

        <h2>Основные особенности Criteria API</h2>
        <ul>
            <li>
                <span class="highlight">Типобезопасность:</span> Поскольку запросы строятся с использованием Java-кода, ошибки могут быть выявлены на этапе компиляции.
            </li>
            <li>
                <span class="highlight">Гибкость:</span> Criteria API позволяет динамически строить запросы, что полезно в случаях, когда структура запроса зависит от условий.
            </li>
            <li>
                <span class="highlight">Объектно-ориентированный подход:</span> Запросы строятся с использованием объектов и методов, что делает код более читаемым и поддерживаемым.
            </li>
            <li>
                <span class="highlight">Поддержка сложных запросов:</span> Criteria API поддерживает JOIN, агрегатные функции, подзапросы и другие сложные операции.
            </li>
        </ul>

        <h2>Примеры использования Criteria API</h2>
        <p>
            Рассмотрим примеры использования Criteria API для выполнения запросов к базе данных.
        </p>

        <h3>1. Простой запрос на выборку всех сущностей</h3>
        <p>
            Пример запроса для выборки всех объектов сущности <code>User</code>:
        </p>
        <pre><code>import org.hibernate.Session;
import org.hibernate.criterion.CriteriaQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        // Получение CriteriaBuilder
        CriteriaBuilder builder = session.getCriteriaBuilder();

        // Создание CriteriaQuery
        CriteriaQuery&lt;User&gt; criteria = builder.createQuery(User.class);
        Root&lt;User&gt; root = criteria.from(User.class);
        criteria.select(root);

        // Выполнение запроса и получение результатов
        List&lt;User&gt; users = session.createQuery(criteria).getResultList();

        // Вывод результатов
        for (User user : users) {
            System.out.println(user.getName());
        }

        session.close();
    }
}</code></pre>

        <h3>2. Запрос с условием (WHERE)</h3>
        <p>
            Пример запроса для выборки пользователей с определённым именем:
        </p>
        <pre><code>CriteriaBuilder builder = session.getCriteriaBuilder();
CriteriaQuery&lt;User&gt; criteria = builder.createQuery(User.class);
Root&lt;User&gt; root = criteria.from(User.class);

// Добавление условия
criteria.select(root).where(builder.equal(root.get("name"), "John"));

List&lt;User&gt; users = session.createQuery(criteria).getResultList();</code></pre>

        <h3>3. Запрос с сортировкой (ORDER BY)</h3>
        <p>
            Пример запроса для выборки пользователей с сортировкой по имени:
        </p>
        <pre><code>CriteriaBuilder builder = session.getCriteriaBuilder();
CriteriaQuery&lt;User&gt; criteria = builder.createQuery(User.class);
Root&lt;User&gt; root = criteria.from(User.class);

// Добавление сортировки
criteria.select(root).orderBy(builder.asc(root.get("name")));

List&lt;User&gt; users = session.createQuery(criteria).getResultList();</code></pre>

        <h3>4. Запрос с агрегатными функциями</h3>
        <p>
            Пример запроса для подсчёта количества пользователей:
        </p>
        <pre><code>CriteriaBuilder builder = session.getCriteriaBuilder();
CriteriaQuery&lt;Long&gt; criteria = builder.createQuery(Long.class);
Root&lt;User&gt; root = criteria.from(User.class);

// Использование агрегатной функции
criteria.select(builder.count(root));

Long count = session.createQuery(criteria).getSingleResult();</code></pre>

        <h2>Сравнение Criteria API и HQL</h2>
        <table>
            <thead>
                <tr>
                    <th>Характеристика</th>
                    <th>Criteria API</th>
                    <th>HQL</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Типобезопасность</td>
                    <td>Да (ошибки на этапе компиляции)</td>
                    <td>Нет (ошибки на этапе выполнения)</td>
                </tr>
                <tr>
                    <td>Гибкость</td>
                    <td>Высокая (динамическое построение запросов)</td>
                    <td>Ограниченная (запросы в виде строк)</td>
                </tr>
                <tr>
                    <td>Читаемость</td>
                    <td>Высокая (объектно-ориентированный подход)</td>
                    <td>Зависит от сложности запроса</td>
                </tr>
                <tr>
                    <td>Поддержка сложных запросов</td>
                    <td>Да (JOIN, агрегатные функции, подзапросы)</td>
                    <td>Да (JOIN, агрегатные функции, подзапросы)</td>
                </tr>
            </tbody>
        </table>

        <h2>Преимущества Criteria API</h2>
        <ul>
            <li>
                <span class="highlight">Типобезопасность:</span> Ошибки в запросах могут быть выявлены на этапе компиляции.
            </li>
            <li>
                <span class="highlight">Динамическое построение запросов:</span> Полезно для сложных сценариев, где структура запроса зависит от условий.
            </li>
            <li>
                <span class="highlight">Читаемость и поддерживаемость:</span> Код запросов легче читать и рефакторить.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Criteria API — это мощный инструмент для создания типобезопасных и гибких запросов в Hibernate. Он особенно полезен в сложных сценариях, где структура запроса зависит от условий. Однако для простых запросов HQL может быть более удобным выбором.
        </p>
    </div>
</body>
</html>', 'ORM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a0ca46f3-d1e2-4fcc-8372-1d46eb38de93', 'Чем отличаются Model, ModelMap и ModelAndView?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Model, ModelMap и ModelAndView в Spring</title>
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
    <h1>Чем отличаются Model, ModelMap и ModelAndView?</h1>
    <p>
        В Spring Framework для передачи данных между контроллерами и представлениями используются три основных объекта: <code>Model</code>, <code>ModelMap</code> и <code>ModelAndView</code>. Каждый из них имеет свои особенности и используется в разных сценариях.
    </p>

    <h2>Model</h2>
    <p>
        <code>Model</code> — это интерфейс, который представляет собой коллекцию пар ключ-значение (<code>Map&lt;String, Object&gt;</code>). Он используется для передачи данных из контроллера в представление (View). Данные модели могут быть использованы для отображения в шаблонах, таких как JSP, Thymeleaf и других.
    </p>

    <h3>Пример использования Model:</h3>
    <pre><code>@Controller
public class MyController {

    @GetMapping("/hello")
    public String sayHello(Model model) {
        model.addAttribute("message", "Привет, мир!");
        return "hello"; // Возвращает имя представления (например, hello.jsp)
    }
}</code></pre>

    <h2>ModelMap</h2>
    <p>
        <code>ModelMap</code> — это класс, который наследуется от <code>LinkedHashMap</code>. Он также используется для передачи данных в представление, но предоставляет дополнительные методы для удобной работы с коллекцией значений. <code>ModelMap</code> позволяет обрабатывать данные как обычную карту (Map).
    </p>

    <h3>Пример использования ModelMap:</h3>
    <pre><code>@Controller
public class MyController {

    @GetMapping("/hello")
    public String sayHello(ModelMap model) {
        model.addAttribute("message", "Привет, мир!");
        return "hello"; // Возвращает имя представления (например, hello.jsp)
    }
}</code></pre>

    <h2>ModelAndView</h2>
    <p>
        <code>ModelAndView</code> — это контейнер, который объединяет модель (<code>ModelMap</code>) и объект представления (<code>View</code>). Он позволяет контроллеру возвращать и данные, и имя представления в одном объекте. Также можно указать HTTP-статус ответа.
    </p>

    <h3>Пример использования ModelAndView:</h3>
    <pre><code>@Controller
public class MyController {

    @GetMapping("/hello")
    public ModelAndView sayHello() {
        ModelAndView modelAndView = new ModelAndView("hello"); // Имя представления
        modelAndView.addObject("message", "Привет, мир!");
        return modelAndView;
    }
}</code></pre>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Model:</span> Интерфейс, представляющий коллекцию пар ключ-значение. Используется для передачи данных в представление.
        </li>
        <li>
            <span class="highlight">ModelMap:</span> Класс, наследующийся от <code>LinkedHashMap</code>. Предоставляет дополнительные методы для работы с данными.
        </li>
        <li>
            <span class="highlight">ModelAndView:</span> Контейнер, объединяющий модель и представление. Позволяет возвращать и данные, и имя представления в одном объекте.
        </li>
    </ul>

    <h2>Когда использовать?</h2>
    <ul>
        <li>
            <span class="highlight">Model:</span> Используйте, когда нужно просто передать данные в представление.
        </li>
        <li>
            <span class="highlight">ModelMap:</span> Используйте, если требуется больше методов для работы с данными.
        </li>
        <li>
            <span class="highlight">ModelAndView:</span> Используйте, когда нужно вернуть и данные, и имя представления, а также управлять HTTP-статусом.
        </li>
    </ul>

    <h2>Пример использования View</h2>
    <p>
        <code>View</code> — это интерфейс, который преобразует объекты модели в обычные сервлеты. Spring MVC поддерживает множество шаблонизаторов, таких как JSP, Thymeleaf, FreeMarker и другие.
    </p>

    <h3>Пример использования View с Thymeleaf:</h3>
    <pre><code>@Controller
public class MyController {

    @GetMapping("/hello")
    public String sayHello(Model model) {
        model.addAttribute("message", "Привет, мир!");
        return "hello"; // Возвращает имя представления (например, hello.html)
    }
}</code></pre>

    <h2>Преимущества</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Возможность использовать разные подходы для передачи данных в зависимости от требований.
        </li>
        <li>
            <span class="highlight">Удобство:</span> <code>ModelAndView</code> позволяет объединять данные и представление в одном объекте.
        </li>
        <li>
            <span class="highlight">Поддержка шаблонизаторов:</span> Spring поддерживает множество технологий для отображения данных (JSP, Thymeleaf, FreeMarker и другие).
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span> Использование <code>ModelAndView</code> может усложнить код, если требуется только передача данных.
        </li>
        <li>
            <span class="highlight">Зависимость от технологий:</span> Выбор шаблонизатора влияет на реализацию представлений.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между <code>Model</code>, <code>ModelMap</code> и <code>ModelAndView</code> зависит от требований вашего приложения. Для простых сценариев достаточно <code>Model</code>, а для более сложных — <code>ModelAndView</code>.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b55c7574-9c6c-46e5-b8f5-6cfee635d087', 'Какие два вида кэшей (cache) вы знаете в JPA и для чего они нужны?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Кэши в JPA</title>
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
    <h1>Кэши в JPA</h1>
    <p>
        В JPA (Java Persistence API) существует два уровня кэширования: кэш первого уровня (first-level cache) и кэш
        второго уровня (second-level cache). Они используются для повышения производительности приложения за счёт
        сокращения количества обращений к базе данных.
    </p>

    <h2>Кэш первого уровня (First-Level Cache)</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li>Кэширует данные в рамках одной транзакции (сессии).</li>
                <li>Этот кэш является частью <code>PersistenceContext</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Включён по умолчанию, его нельзя отключить.</li>
                <li>Связан с сессией (контекстом персистентности).</li>
                <li>Разные сессии имеют свои собственные кэши и не видят объекты из кэшей других сессий.</li>
                <li>При закрытии сессии кэш очищается, и все объекты теряются (либо сохраняются в БД, либо
                    обновляются).</li>
                <li>При первом запросе сущности из базы данных она загружается в кэш.</li>
                <li>Последующие запросы к той же сущности в рамках одной сессии выполняются из кэша, без
                    обращения к базе данных.</li>
                <li>Сущность можно удалить из кэша с помощью метода <code>evict()</code>.</li>
                <li>Метод <code>clear()</code> очищает весь кэш сессии.</li>
            </ul>
        </li>
    </ul>

    <h2>Кэш второго уровня (Second-Level Cache)</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li>Кэширует данные между несколькими транзакциями в рамках одной фабрики сессий
                    (<code>Session Factory</code>).</li>
                <li>Не является обязательным и требует явной настройки.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Привязан к объекту фабрики сессий, поэтому доступен для всех сессий, созданных этой
                    фабрикой.</li>
                <li>Требует настройки реализации кэша и указания, какие сущности могут быть закешированы.</li>
                <li>Hibernate не реализует собственный in-memory кэш, а использует сторонние реализации, такие
                    как Ehcache, Infinispan и другие.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Кэш первого уровня работает в рамках одной транзакции и включён по умолчанию.</li>
                <li>Кэш второго уровня работает на уровне фабрики сессий и требует настройки.</li>
                <li>Использование кэшей позволяет значительно сократить количество обращений к базе данных и
                    повысить производительность приложения.</li>
            </ul>
        </p>
    </div>

    <h2>Пример использования кэшей</h2>
    <pre><code>
// Пример работы с кэшем первого уровня
EntityManager em = entityManagerFactory.createEntityManager();
em.getTransaction().begin();

// Первый запрос к сущности (загрузка из БД)
User user1 = em.find(User.class, 1L);

// Второй запрос к той же сущности (загрузка из кэша)
User user2 = em.find(User.class, 1L);

em.getTransaction().commit();
em.close();

// Пример настройки кэша второго уровня
@Entity
@Cacheable
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    // Геттеры и сеттеры
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Кэш первого уровня используется для загрузки сущности <code>User</code> в рамках одной транзакции.</li>
            <li>Кэш второго уровня настраивается с помощью аннотаций <code>@Cacheable</code> и
                <code>@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)</code>.</li>
        </ul>
    </p>

    <h2>Сравнение кэшей</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>Кэш первого уровня</th>
                <th>Кэш второго уровня</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Область действия</td>
                <td>Одна транзакция (сессия).</td>
                <td>Все сессии, созданные одной фабрикой сессий.</td>
            </tr>
            <tr>
                <td>Включение</td>
                <td>По умолчанию.</td>
                <td>Требует настройки.</td>
            </tr>
            <tr>
                <td>Реализация</td>
                <td>Часть <code>PersistenceContext</code>.</td>
                <td>Используются сторонние реализации (Ehcache, Infinispan и др.).</td>
            </tr>
            <tr>
                <td>Производительность</td>
                <td>Повышает производительность в рамках одной транзакции.</td>
                <td>Повышает производительность на уровне приложения.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ba7b6196-8cfc-4c92-a774-560b35fb5b58', 'Что такое "commit" в Git и что такое "commit message"? Как вы пишете качественные сообщения коммитов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Commit и Commit Message в Git</title>
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
    <h1>Commit и Commit Message в Git</h1>
    <p>
        В Git <span class="highlight">commit</span> (коммит) — это операция, которая сохраняет текущее состояние проекта в
        истории изменений. Каждый коммит представляет собой снимок всех файлов в проекте на момент
        его создания. <span class="highlight">Commit message</span> (сообщение коммита) — это текстовое описание изменений,
        которые были внесены в коммите. Качественные сообщения коммитов помогают понять, что было
        изменено и почему.
    </p>

    <h2>Что такое Commit?</h2>
    <p>
        <span class="highlight">Commit</span> — это основная единица работы в Git. Он представляет собой набор изменений,
        которые были добавлены в область подготовки (staging area) и зафиксированы в репозитории.
        Каждый коммит имеет уникальный идентификатор (SHA-1 хеш), который позволяет отслеживать
        изменения в проекте.
    </p>
    <ul>
        <li>
            <span class="highlight">Создание коммита:</span>
            <p>
                Чтобы создать коммит, используйте команду <code>git commit</code>. Изменения, которые были добавлены
                в область подготовки с помощью <code>git add</code>, будут зафиксированы.
            </p>
            <pre><code>
git commit -m "Ваше сообщение коммита"
            </code></pre>
        </li>
        <li>
            <span class="highlight">Просмотр истории коммитов:</span>
            <p>
                Чтобы просмотреть историю коммитов, используйте команду <code>git log</code>.
            </p>
            <pre><code>
git log
            </code></pre>
        </li>
    </ul>

    <h2>Что такое Commit Message?</h2>
    <p>
        <span class="highlight">Commit message</span> — это текстовое описание изменений, которые были внесены в коммите.
        Сообщение коммита помогает другим разработчикам (и вам в будущем) понять, что было изменено
        и почему.
    </p>
    <ul>
        <li>
            <span class="highlight">Формат сообщения коммита:</span>
            <p>
                Сообщение коммита обычно состоит из заголовка и тела. Заголовок должен быть кратким
                и описывать суть изменений, а тело — более подробно объяснять, что и почему было
                изменено.
            </p>
            <pre><code>
Заголовок: Краткое описание изменений

Тело: Более подробное объяснение изменений, если необходимо.
            </code></pre>
        </li>
        <li>
            <span class="highlight">Пример сообщения коммита:</span>
            <pre><code>
Исправлена ошибка в расчёте суммы заказа

Была обнаружена ошибка в методе calculateTotal, которая приводила
к неправильному расчёту суммы заказа. Исправление включает
пересмотр логики расчёта и добавление тестов.
            </code></pre>
        </li>
    </ul>

    <h2>Как писать качественные сообщения коммитов?</h2>
    <p>
        Качественные сообщения коммитов помогают поддерживать понятную историю изменений и упрощают
        collaboration в команде. Вот несколько рекомендаций:
    </p>
    <ul>
        <li>
            <span class="highlight">Будьте краткими, но информативными:</span>
            <p>
                Заголовок сообщения должен быть кратким (обычно не более 50 символов) и описывать
                суть изменений.
            </p>
        </li>
        <li>
            <span class="highlight">Используйте повелительное наклонение:</span>
            <p>
                Заголовок сообщения должен быть написан в повелительном наклонении, как если бы вы
                давали команду. Например, "Исправить ошибку" вместо "Исправлена ошибка".
            </p>
        </li>
        <li>
            <span class="highlight">Объясняйте "что" и "почему":</span>
            <p>
                В теле сообщения объясните, что было изменено и почему. Это особенно важно для
                сложных изменений.
            </p>
        </li>
        <li>
            <span class="highlight">Следуйте соглашениям:</span>
            <p>
                Если в вашей команде или проекте есть соглашения по оформлению сообщений коммитов,
                следуйте им. Например, можно использовать <a href="https://www.conventionalcommits.org/">Conventional Commits</a>.
            </p>
        </li>
    </ul>

    <h2>Примеры качественных сообщений коммитов</h2>
    <ul>
        <li>
            <span class="highlight">Пример 1:</span>
            <pre><code>
Добавить поддержку темной темы

Добавлена новая функциональность для переключения между светлой
и темной темами. Это улучшает пользовательский опыт и
соответствует требованиям дизайна.
            </code></pre>
        </li>
        <li>
            <span class="highlight">Пример 2:</span>
            <pre><code>
Исправить утечку памяти в кэше

Обнаружена утечка памяти в кэше приложения. Исправление включает
очистку кэша при завершении работы и добавление тестов для
проверки утечек.
            </code></pre>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        Коммиты и сообщения коммитов — это важные элементы работы с Git. Качественные сообщения
        коммитов помогают поддерживать понятную историю изменений и упрощают collaboration в команде.
        Следуйте рекомендациям по написанию сообщений коммитов, чтобы сделать вашу работу более
        эффективной и понятной для других.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('42021c04-d5aa-47e7-b8c1-2bf4b3a0455c', 'Как использовать HQL (Hibernate Query Language) для выполнения запросов? Приведите пример.', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Использование HQL в Hibernate</title>
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
        <h1>Использование HQL (Hibernate Query Language)</h1>
        <p>
            <span class="highlight">HQL (Hibernate Query Language)</span> — это объектно-ориентированный язык запросов, используемый в Hibernate для работы с сущностями вместо таблиц базы данных. HQL похож на SQL, но оперирует объектами и их свойствами, а не таблицами и столбцами.
        </p>

        <h2>Основные особенности HQL</h2>
        <ul>
            <li>
                <span class="highlight">Объектно-ориентированный:</span> HQL работает с сущностями и их свойствами, а не с таблицами и столбцами.
            </li>
            <li>
                <span class="highlight">Поддержка полиморфизма:</span> HQL поддерживает запросы к суперклассам, возвращая результаты для всех подклассов.
            </li>
            <li>
                <span class="highlight">Кэширование:</span> HQL запросы могут использовать кэш второго уровня для повышения производительности.
            </li>
            <li>
                <span class="highlight">Безопасность:</span> HQL предотвращает SQL-инъекции за счёт использования параметризованных запросов.
            </li>
        </ul>

        <h2>Примеры использования HQL</h2>
        <p>
            Рассмотрим примеры использования HQL для выполнения запросов к базе данных.
        </p>

        <h3>1. Простой запрос на выборку всех сущностей</h3>
        <p>
            Пример запроса для выборки всех объектов сущности <code>User</code>:
        </p>
        <pre><code>import org.hibernate.Session;
import org.hibernate.query.Query;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        // Создание HQL-запроса
        String hql = "FROM User";
        Query&lt;User&gt; query = session.createQuery(hql, User.class);

        // Выполнение запроса и получение результатов
        List&lt;User&gt; users = query.getResultList();

        // Вывод результатов
        for (User user : users) {
            System.out.println(user.getName());
        }

        session.close();
    }
}</code></pre>

        <h3>2. Запрос с условием (WHERE)</h3>
        <p>
            Пример запроса для выборки пользователей с определённым именем:
        </p>
        <pre><code>String hql = "FROM User WHERE name = :name";
Query&lt;User&gt; query = session.createQuery(hql, User.class);
query.setParameter("name", "John");
List&lt;User&gt; users = query.getResultList();</code></pre>

        <h3>3. Запрос с сортировкой (ORDER BY)</h3>
        <p>
            Пример запроса для выборки пользователей с сортировкой по имени:
        </p>
        <pre><code>String hql = "FROM User ORDER BY name ASC";
Query&lt;User&gt; query = session.createQuery(hql, User.class);
List&lt;User&gt; users = query.getResultList();</code></pre>

        <h3>4. Запрос с агрегатными функциями</h3>
        <p>
            Пример запроса для подсчёта количества пользователей:
        </p>
        <pre><code>String hql = "SELECT COUNT(*) FROM User";
Query&lt;Long&gt; query = session.createQuery(hql, Long.class);
Long count = query.getSingleResult();</code></pre>

        <h3>5. Запрос с JOIN</h3>
        <p>
            Пример запроса для выборки пользователей и их заказов (если есть связь "один ко многим"):
        </p>
        <pre><code>String hql = "SELECT u.name, o.orderDate FROM User u JOIN u.orders o";
Query&lt;Object[]&gt; query = session.createQuery(hql, Object[].class);
List&lt;Object[]&gt; results = query.getResultList();

for (Object[] result : results) {
    System.out.println("User: " + result[0] + ", Order Date: " + result[1]);
}</code></pre>

        <h2>Преимущества использования HQL</h2>
        <ul>
            <li>
                <span class="highlight">Портативность:</span> HQL не зависит от конкретной СУБД, что делает код более переносимым.
            </li>
            <li>
                <span class="highlight">Безопасность:</span> Использование параметризованных запросов предотвращает SQL-инъекции.
            </li>
            <li>
                <span class="highlight">Гибкость:</span> HQL поддерживает сложные запросы, включая JOIN, подзапросы и агрегатные функции.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            HQL — это мощный инструмент для работы с данными в Hibernate. Он позволяет писать объектно-ориентированные запросы, которые легко читать и поддерживать. Использование HQL делает код более безопасным и переносимым, что особенно важно в крупных проектах.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a2ddb4be-f7a5-4689-95d3-77c13473dae8', 'Как смапить составной ключ?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Маппинг составного ключа в JPA</title>
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
    <h1>Маппинг составного ключа в JPA</h1>
    <p>
        Составной первичный ключ (составной ключ) — это комбинация из двух или более столбцов, которые вместе
        формируют первичный ключ таблицы. В JPA (Java Persistence API) для маппинга составного ключа
        используются два подхода: <code>@IdClass</code> и <code>@EmbeddedId</code>.
    </p>

    <h2>Подход 1: Использование @IdClass</h2>
    <ul>
        <li>
            <span class="highlight">Шаги:</span>
            <ul>
                <li>Создайте класс для составного ключа (например, <code>ComplexKey</code>), который содержит поля,
                    соответствующие колонкам составного ключа.</li>
                <li>Аннотируйте сущность (например, <code>Account</code>) аннотацией <code>@IdClass</code>, указав класс
                    составного ключа.</li>
                <li>В сущности объявите поля, соответствующие полям класса составного ключа, и аннотируйте их
                    с помощью <code>@Id</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
public class ComplexKey implements Serializable {
    private String accountNumber;
    private String accountType;

    // Геттеры, сеттеры, equals, hashCode
}

@Entity
@IdClass(ComplexKey.class)
public class Account {
    @Id
    private String accountNumber;

    @Id
    private String accountType;

    private String owner;

    // Геттеры и сеттеры
}
            </code></pre>
        </li>
    </ul>

    <h2>Подход 2: Использование @EmbeddedId</h2>
    <ul>
        <li>
            <span class="highlight">Шаги:</span>
            <ul>
                <li>Создайте класс для составного ключа (например, <code>BookId</code>) и аннотируйте его
                    <code>@Embeddable</code>.</li>
                <li>В сущности (например, <code>Book</code>) объявите поле типа составного ключа и аннотируйте его
                    с помощью <code>@EmbeddedId</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
@Embeddable
public class BookId implements Serializable {
    private String title;
    private String language;

    // Геттеры, сеттеры, equals, hashCode
}

@Entity
public class Book {
    @EmbeddedId
    private BookId id;

    private String author;

    // Геттеры и сеттеры
}
            </code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Класс составного ключа должен реализовывать интерфейс <code>Serializable</code>.</li>
                <li>Класс составного ключа должен переопределять методы <code>equals()</code> и <code>hashCode()</code> для
                    корректной работы с коллекциями и сравнения объектов.</li>
                <li>Выбор между <code>@IdClass</code> и <code>@EmbeddedId</code> зависит от предпочтений разработчика и
                    требований проекта.</li>
            </ul>
        </p>
    </div>

    <h2>Сравнение подходов</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>@IdClass</th>
                <th>@EmbeddedId</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Структура</td>
                <td>Поля составного ключа объявляются в сущности.</td>
                <td>Составной ключ инкапсулирован в отдельный класс.</td>
            </tr>
            <tr>
                <td>Удобство</td>
                <td>Проще для простых случаев.</td>
                <td>Более объектно-ориентированный подход.</td>
            </tr>
            <tr>
                <td>Гибкость</td>
                <td>Менее гибкий, так как поля ключа разбросаны по сущности.</td>
                <td>Более гибкий, так как ключ инкапсулирован в одном классе.</td>
            </tr>
        </tbody>
    </table>

    <h2>Пример использования</h2>
    <p>
        Рассмотрим пример с таблицей <code>Account</code>, где составной ключ состоит из <code>accountNumber</code> и
        <code>accountType</code>:
    </p>
    <pre><code>
// Использование @IdClass
@Entity
@IdClass(ComplexKey.class)
public class Account {
    @Id
    private String accountNumber;

    @Id
    private String accountType;

    private String owner;

    // Геттеры и сеттеры
}

// Использование @EmbeddedId
@Entity
public class Account {
    @EmbeddedId
    private AccountId id;

    private String owner;

    // Геттеры и сеттеры
}

@Embeddable
public class AccountId implements Serializable {
    private String accountNumber;
    private String accountType;

    // Геттеры, сеттеры, equals, hashCode
}
    </code></pre>
    <p>
        В этом примере показаны оба подхода для маппинга составного ключа.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('286c6374-243e-4285-a86f-cb8f9f862c6e', 'Как работать с кешем 2 уровня?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Работа с кэшем второго уровня в Hibernate</title>
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
    <h1>Работа с кэшем второго уровня в Hibernate</h1>
    <p>
        Кэш второго уровня в Hibernate используется для кэширования данных между несколькими транзакциями в
        рамках одной фабрики сессий (<code>Session Factory</code>). Он позволяет сократить количество обращений к базе
        данных и повысить производительность приложения. Однако для его использования требуется настройка.
    </p>

    <h2>Как работает кэш второго уровня?</h2>
    <ul>
        <li>
            <span class="highlight">Чтение из кэша:</span>
            <ul>
                <li>Чтение из кэша второго уровня происходит только в том случае, если нужный объект не был
                    найден в кэше первого уровня.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Поддержка провайдеров:</span>
            <ul>
                <li>Hibernate поддерживает стандарт кэширования Java JCache, а также популярные библиотеки
                    кэширования, такие как Ehcache и Infinispan.</li>
                <li>Для использования кэша второго уровня необходимо предоставить реализацию интерфейса
                    <code>org.hibernate.cache.spi.RegionFactory</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Настройка кэша второго уровня</h2>
    <p>
        Для настройки кэша второго уровня с использованием Ehcache выполните следующие шаги:
    </p>
    <ul>
        <li>
            <span class="highlight">Добавление зависимости:</span>
            <ul>
                <li>Добавьте зависимость для Ehcache в ваш проект (например, через Maven или Gradle).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Включение кэша:</span>
            <ul>
                <li>Включите кэш второго уровня в конфигурации Hibernate:</li>
                <pre><code>
hibernate.cache.use_second_level_cache=true
hibernate.cache.region.factory_class=org.hibernate.cache.ehcache.EhCacheRegionFactory
                </code></pre>
            </ul>
        </li>
        <li>
            <span class="highlight">Аннотации для сущностей:</span>
            <ul>
                <li>Пометите сущности, которые должны кэшироваться, аннотацией <code>@Cacheable</code>.</li>
                <li>Настройте стратегию кэширования с помощью аннотации <code>@Cache</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример настройки</h2>
    <pre><code>
// Пример сущности с кэшированием
@Entity
@Cacheable
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    // Геттеры и сеттеры
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Сущность <code>User</code> помечена аннотацией <code>@Cacheable</code>, что указывает на необходимость её
                кэширования.</li>
            <li>Аннотация <code>@Cache</code> с параметром <code>CacheConcurrencyStrategy.READ_WRITE</code> задаёт стратегию
                параллельного доступа.</li>
        </ul>
    </p>

    <h2>Стратегии параллельного доступа</h2>
    <p>
        Кэш второго уровня доступен из нескольких сессий одновременно, поэтому необходимо обеспечить
        согласованность данных. Для этого используются следующие стратегии:
    </p>
    <ul>
        <li>
            <span class="highlight">READ_ONLY:</span>
            <ul>
                <li>Используется для сущностей, которые никогда не изменяются.</li>
                <li>Попытка обновить такую сущность вызовет исключение.</li>
                <li>Подходит для статических данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">NONSTRICT_READ_WRITE:</span>
            <ul>
                <li>Кэш обновляется после завершения транзакции, изменившей данные в БД.</li>
                <li>Не гарантирует строгую согласованность: возможны временные окна, в которых данные в кэше
                    устаревают.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">READ_WRITE:</span>
            <ul>
                <li>Гарантирует строгую согласованность за счёт "мягких" блокировок.</li>
                <li>При обновлении сущности в кэше накладывается блокировка, которая снимается после коммита
                    транзакции.</li>
                <li>Ehcache использует эту стратегию по умолчанию.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">TRANSACTIONAL:</span>
            <ul>
                <li>Обеспечивает полноценное разделение транзакций.</li>
                <li>Каждая транзакция видит объекты так, как если бы они обрабатывались последовательно.</li>
                <li>Требует блокировок и может снижать производительность.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте стратегию <code>READ_ONLY</code> для неизменяемых данных.</li>
                <li>Используйте <code>NONSTRICT_READ_WRITE</code> для данных, которые редко изменяются.</li>
                <li>Используйте <code>READ_WRITE</code> для обеспечения строгой согласованности.</li>
                <li>Используйте <code>TRANSACTIONAL</code> для сложных сценариев с высокими требованиями к
                    согласованности.</li>
            </ul>
        </p>
    </div>

    <h2>Пример использования стратегий</h2>
    <pre><code>
// Пример сущности с READ_ONLY стратегией
@Entity
@Cacheable
@Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    // Геттеры и сеттеры
}

// Пример сущности с READ_WRITE стратегией
@Entity
@Cacheable
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String details;

    // Геттеры и сеттеры
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Сущность <code>Product</code> использует стратегию <code>READ_ONLY</code>, так как данные о продуктах не изменяются.</li>
            <li>Сущность <code>Order</code> использует стратегию <code>READ_WRITE</code> для обеспечения согласованности данных.</li>
        </ul>
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('062d3391-a0f2-4d58-8846-833e0ec4d15e', 'Объясните, что такое мьютекс (mutex) и семафор (semaphore). Как они различаются?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Мьютекс и семафор</title>
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
        <h1>Что такое мьютекс (mutex) и семафор (semaphore)?</h1>
        <p>
            <span class="highlight">Мьютекс (mutex)</span> и <span class="highlight">семафор (semaphore)</span> — это механизмы синхронизации, используемые в многопоточных программах для управления доступом к общим ресурсам. Они помогают избежать гонок (race conditions) и обеспечивают корректное выполнение потоков.
        </p>

        <h2>Что такое мьютекс (mutex)?</h2>
        <p>
            <span class="highlight">Мьютекс</span> (от англ. "mutual exclusion" — взаимное исключение) — это объект, который позволяет только одному потоку одновременно получить доступ к общему ресурсу. Мьютекс используется для защиты критических секций кода, где доступ к общим данным должен быть ограничен.
        </p>
        <h3>Основные характеристики мьютекса</h3>
        <ul>
            <li>
                <span class="highlight">Взаимное исключение:</span> Только один поток может владеть мьютексом в любой момент времени.
            </li>
            <li>
                <span class="highlight">Блокировка и разблокировка:</span> Поток должен захватить мьютекс перед доступом к ресурсу и освободить его после завершения работы.
            </li>
            <li>
                <span class="highlight">Владение:</span> Мьютекс может быть освобождён только тем потоком, который его захватил.
            </li>
        </ul>
        <h3>Пример использования мьютекса</h3>
        <pre><code>import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class Counter {
    private int count = 0;
    private Lock lock = new ReentrantLock(); // Мьютекс

    public void increment() {
        lock.lock(); // Захват мьютекса
        try {
            count++;
        } finally {
            lock.unlock(); // Освобождение мьютекса
        }
    }

    public int getCount() {
        return count;
    }
}</code></pre>

        <h2>Что такое семафор (semaphore)?</h2>
        <p>
            <span class="highlight">Семафор</span> — это объект, который управляет доступом к ресурсу, ограничивая количество потоков, которые могут одновременно использовать этот ресурс. Семафоры могут использоваться для управления доступом к пулу ресурсов (например, подключениям к базе данных).
        </p>
        <h3>Основные характеристики семафора</h3>
        <ul>
            <li>
                <span class="highlight">Счётчик:</span> Семафор имеет счётчик, который определяет, сколько потоков могут одновременно получить доступ к ресурсу.
            </li>
            <li>
                <span class="highlight">Операции:</span> Потоки могут запрашивать доступ к ресурсу через операцию <code>acquire()</code> и освобождать его через <code>release()</code>.
            </li>
            <li>
                <span class="highlight">Гибкость:</span> Семафоры могут использоваться для управления доступом к нескольким ресурсам одновременно.
            </li>
        </ul>
        <h3>Пример использования семафора</h3>
        <pre><code>import java.util.concurrent.Semaphore;

class ResourcePool {
    private Semaphore semaphore = new Semaphore(3); // Семафор с 3 разрешениями

    public void useResource() {
        try {
            semaphore.acquire(); // Запрос разрешения
            System.out.println("Ресурс используется потоком: " + Thread.currentThread().getName());
            Thread.sleep(1000); // Имитация работы с ресурсом
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            semaphore.release(); // Освобождение разрешения
            System.out.println("Ресурс освобождён потоком: " + Thread.currentThread().getName());
        }
    }
}</code></pre>

        <h2>Разница между мьютексом и семафором</h2>
        <table>
            <thead>
                <tr>
                    <th>Характеристика</th>
                    <th>Мьютекс</th>
                    <th>Семафор</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Количество потоков</td>
                    <td>Только один поток может владеть мьютексом</td>
                    <td>Может управлять доступом для нескольких потоков</td>
                </tr>
                <tr>
                    <td>Владение</td>
                    <td>Может быть освобождён только тем потоком, который его захватил</td>
                    <td>Может быть освобождён любым потоком</td>
                </tr>
                <tr>
                    <td>Использование</td>
                    <td>Для защиты критических секций</td>
                    <td>Для управления доступом к пулу ресурсов</td>
                </tr>
                <tr>
                    <td>Пример</td>
                    <td>Синхронизация доступа к общим данным</td>
                    <td>Ограничение количества подключений к базе данных</td>
                </tr>
            </tbody>
        </table>

        <h2>Когда использовать мьютекс и семафор?</h2>
        <ul>
            <li>
                <span class="highlight">Мьютекс:</span> Используйте, когда нужно обеспечить эксклюзивный доступ к ресурсу для одного потока.
            </li>
            <li>
                <span class="highlight">Семафор:</span> Используйте, когда нужно ограничить количество потоков, которые могут одновременно использовать ресурс.
            </li>
        </ul>

        <h2>Преимущества и недостатки</h2>
        <h3>Мьютекс</h3>
        <ul>
            <li>
                <span class="highlight">Преимущества:</span> Простота использования, гарантирует эксклюзивный доступ.
            </li>
            <li>
                <span class="highlight">Недостатки:</span> Может привести к блокировкам (deadlocks), если используется неправильно.
            </li>
        </ul>
        <h3>Семафор</h3>
        <ul>
            <li>
                <span class="highlight">Преимущества:</span> Гибкость, возможность управления доступом для нескольких потоков.
            </li>
            <li>
                <span class="highlight">Недостатки:</span> Более сложный в использовании, чем мьютекс.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Мьютекс и семафор — это важные инструменты для синхронизации потоков в многопоточных приложениях. Мьютекс обеспечивает эксклюзивный доступ к ресурсу для одного потока, а семафор позволяет управлять доступом для нескольких потоков. Выбор между ними зависит от конкретных требований вашего приложения.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('85d9a5a8-48a3-465f-aa32-cdd52a6044c6', 'Что произойдет, если один метод БЕЗ @Transactional вызовет другой  метод с @Transactional?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вызов транзакционного метода из нетранзакционного</title>
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
    <h1>Что произойдет, если один метод БЕЗ @Transactional вызовет другой метод с @Transactional?</h1>
    <p>
        В Spring, если метод, не помеченный аннотацией <code>@Transactional</code>, вызывает другой метод, помеченный <code>@Transactional</code>, внутри одного и того же сервиса, то транзакция не будет создана. Это связано с тем, как Spring работает с прокси и AOP (Aspect-Oriented Programming).
    </p>

    <h2>Почему это происходит?</h2>
    <p>
        Spring создаёт прокси для классов или методов, помеченных аннотацией <code>@Transactional</code>. Однако, если вызов транзакционного метода происходит внутри того же класса и из метода, который не помечен <code>@Transactional</code>, Spring не может перехватить этот вызов через прокси. В результате транзакция не будет создана, и метод выполнится без транзакционного контекста.
    </p>

    <h3>Пример:</h3>
    <pre><code>@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public void outerMethod() {
        // Логика первого метода
        innerMethod(); // Вызов транзакционного метода
    }

    @Transactional
    public void innerMethod() {
        // Логика второго метода
        userRepository.save(new User("John Doe"));
    }
}</code></pre>

    <p>
        В этом примере метод <code>innerMethod()</code> не будет выполняться в контексте транзакции, так как вызов происходит из метода <code>outerMethod()</code>, который не помечен аннотацией <code>@Transactional</code>. Spring не создаст прокси для <code>innerMethod()</code>, и транзакция не будет открыта.
    </p>

    <h2>Как это влияет на поведение?</h2>
    <ul>
        <li>
            <span class="highlight">Отсутствие транзакции:</span> Метод <code>innerMethod()</code> выполнится без транзакции, что может привести к неожиданным результатам, особенно если произойдёт ошибка.
        </li>
        <li>
            <span class="highlight">Нет управления транзакциями:</span> Атрибуты аннотации <code>@Transactional</code>, такие как <code>propagation</code>, <code>isolation</code> и другие, не будут применены.
        </li>
    </ul>

    <h2>Как обойти это ограничение?</h2>
    <p>
        Чтобы транзакционный метод выполнялся в контексте транзакции, можно использовать self-injection (внедрение самого сервиса в себя):
    </p>
    <pre><code>@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService self; // Self-injection

    public void outerMethod() {
        // Логика первого метода
        self.innerMethod(); // Вызов через прокси
    }

    @Transactional
    public void innerMethod() {
        // Логика второго метода
        userRepository.save(new User("John Doe"));
    }
}</code></pre>

    <p>
        В этом случае Spring создаст прокси для вызова <code>innerMethod()</code>, и он будет выполняться в контексте транзакции.
    </p>

    <h2>Преимущества self-injection</h2>
    <ul>
        <li>
            <span class="highlight">Создание транзакции:</span> Позволяет выполнять транзакционные методы в контексте транзакции, даже если вызов происходит из нетранзакционного метода.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Поддерживает все атрибуты аннотации <code>@Transactional</code>, такие как <code>propagation</code>, <code>isolation</code> и другие.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span> Self-injection может усложнить код и сделать его менее очевидным.
        </li>
        <li>
            <span class="highlight">Циклические зависимости:</span> Неправильное использование self-injection может привести к циклическим зависимостям.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Self-injection следует использовать с осторожностью и только в случаях, когда действительно необходимо управление транзакциями.
        </p>
    </div>

    <h2>Итог</h2>
    <p>
        Если метод без <code>@Transactional</code> вызывает метод с <code>@Transactional</code> внутри одного сервиса, то транзакция не будет создана. Для обеспечения транзакционного контекста можно использовать self-injection, чтобы Spring создал прокси для вызова транзакционного метода.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ec6973c3-8b40-45b5-a2d0-57c4832833b8', 'Что такое CI/CD?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CI/CD: Непрерывная интеграция и доставка</title>
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
    <h1>CI/CD: Непрерывная интеграция и доставка</h1>
    <p>
        <span class="highlight">CI/CD</span> (Continuous Integration / Continuous Delivery) — это набор практик и инструментов,
        которые позволяют автоматизировать процессы разработки, тестирования и развертывания программного
        обеспечения. Эти практики направлены на ускорение и повышение качества разработки.
    </p>

    <h2>Что такое CI/CD?</h2>
    <ul>
        <li>
            <span class="highlight">Непрерывная интеграция (CI):</span> Процесс автоматического слияния изменений кода от
            нескольких разработчиков в общую ветку. Каждое изменение проверяется с помощью автоматических
            тестов, чтобы убедиться, что оно не нарушает работу приложения.
        </li>
        <li>
            <span class="highlight">Непрерывная доставка (CD):</span> Процесс автоматического развертывания протестированного
            кода в среду, где его можно проверить перед выпуском в продакшн. Это позволяет быстро и безопасно
            доставлять новые функции пользователям.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> CI/CD помогает минимизировать риски, связанные с ручными ошибками, и
            ускоряет процесс выпуска обновлений, что особенно важно в современных условиях быстрой разработки.
        </p>
    </div>

    <h2>Преимущества CI/CD</h2>
    <ul>
        <li>
            <span class="highlight">Ускорение разработки:</span> Автоматизация процессов позволяет быстрее выпускать новые версии
            продукта.
        </li>
        <li>
            <span class="highlight">Повышение качества кода:</span> Автоматические тесты помогают выявлять ошибки на ранних этапах.
        </li>
        <li>
            <span class="highlight">Снижение рисков:</span> Частые и небольшие изменения легче тестировать и откатывать в случае
            проблем.
        </li>
        <li>
            <span class="highlight">Улучшение сотрудничества:</span> CI/CD способствует более тесному взаимодействию между
            разработчиками, тестировщиками и операционными командами.
        </li>
    </ul>

    <h2>Примеры инструментов CI/CD</h2>
    <ul>
        <li>
            <code>Jenkins</code> — популярный инструмент для автоматизации CI/CD процессов.
        </li>
        <li>
            <code>GitLab CI/CD</code> — встроенное решение для автоматизации в GitLab.
        </li>
        <li>
            <code>GitHub Actions</code> — инструмент для автоматизации workflows в GitHub.
        </li>
        <li>
            <code>CircleCI</code> — облачный сервис для автоматизации CI/CD.
        </li>
    </ul>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('362f1c8c-1db0-4649-bda3-dc890ce984f2', 'Что такое блокировка (lock) и как вы можете избежать взаимной блокировки (deadlock)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Блокировки и взаимная блокировка (deadlock)</title>
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
        <h1>Что такое блокировка (lock) и как избежать взаимной блокировки (deadlock)?</h1>
        <p>
            <span class="highlight">Блокировка (lock)</span> — это механизм синхронизации, который используется для управления доступом к общим ресурсам в многопоточных приложениях. Блокировки помогают предотвратить гонки (race conditions), но их неправильное использование может привести к <span class="highlight">взаимной блокировке (deadlock)</span>.
        </p>

        <h2>Что такое блокировка (lock)?</h2>
        <p>
            Блокировка — это объект, который позволяет потоку получить эксклюзивный доступ к ресурсу. Поток должен захватить блокировку перед доступом к ресурсу и освободить её после завершения работы. В Java блокировки реализованы через интерфейс <code>Lock</code> и его реализации, такие как <code>ReentrantLock</code>.
        </p>
        <h3>Пример использования блокировки</h3>
        <pre><code>import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class Counter {
    private int count = 0;
    private Lock lock = new ReentrantLock(); // Блокировка

    public void increment() {
        lock.lock(); // Захват блокировки
        try {
            count++;
        } finally {
            lock.unlock(); // Освобождение блокировки
        }
    }

    public int getCount() {
        return count;
    }
}</code></pre>

        <h2>Что такое взаимная блокировка (deadlock)?</h2>
        <p>
            <span class="highlight">Взаимная блокировка (deadlock)</span> — это ситуация, когда два или более потоков блокируют друг друга, ожидая освобождения ресурсов, которые они не могут получить. Это приводит к тому, что потоки останавливаются и не могут продолжить выполнение.
        </p>
        <h3>Пример взаимной блокировки</h3>
        <pre><code>class Resource {
    private final Lock lock1 = new ReentrantLock();
    private final Lock lock2 = new ReentrantLock();

    public void method1() {
        lock1.lock();
        try {
            // Задержка для имитации работы
            Thread.sleep(100);
            lock2.lock();
            try {
                System.out.println("Метод 1 выполнен");
            } finally {
                lock2.unlock();
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            lock1.unlock();
        }
    }

    public void method2() {
        lock2.lock();
        try {
            // Задержка для имитации работы
            Thread.sleep(100);
            lock1.lock();
            try {
                System.out.println("Метод 2 выполнен");
            } finally {
                lock1.unlock();
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            lock2.unlock();
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Resource resource = new Resource();

        Thread thread1 = new Thread(resource::method1);
        Thread thread2 = new Thread(resource::method2);

        thread1.start();
        thread2.start();
    }
}</code></pre>
        <p>
            В этом примере <code>thread1</code> захватывает <code>lock1</code> и пытается захватить <code>lock2</code>, а <code>thread2</code> захватывает <code>lock2</code> и пытается захватить <code>lock1</code>. Это приводит к взаимной блокировке.
        </p>

        <h2>Как избежать взаимной блокировки?</h2>
        <p>
            Чтобы избежать взаимной блокировки, следуйте следующим рекомендациям:
        </p>

        <h3>1. Упорядочивание блокировок</h3>
        <p>
            Всегда захватывайте блокировки в одном и том же порядке. Это предотвращает ситуацию, когда потоки блокируют друг друга.
        </p>
        <pre><code>public void method1() {
    lock1.lock();
    try {
        lock2.lock();
        try {
            System.out.println("Метод 1 выполнен");
        } finally {
            lock2.unlock();
        }
    } finally {
        lock1.unlock();
    }
}

public void method2() {
    lock1.lock();
    try {
        lock2.lock();
        try {
            System.out.println("Метод 2 выполнен");
        } finally {
            lock2.unlock();
        }
    } finally {
        lock1.unlock();
    }
}</code></pre>

        <h3>2. Использование тайм-аутов</h3>
        <p>
            Используйте методы с тайм-аутом, такие как <code>tryLock()</code>, чтобы избежать бесконечного ожидания.
        </p>
        <pre><code>public void method1() {
    if (lock1.tryLock(100, TimeUnit.MILLISECONDS)) {
        try {
            if (lock2.tryLock(100, TimeUnit.MILLISECONDS)) {
                try {
                    System.out.println("Метод 1 выполнен");
                } finally {
                    lock2.unlock();
                }
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            lock1.unlock();
        }
    }
}</code></pre>

        <h3>3. Избегание вложенных блокировок</h3>
        <p>
            По возможности избегайте вложенных блокировок. Если это невозможно, используйте упорядочивание блокировок.
        </p>

        <h3>4. Использование анализаторов deadlock</h3>
        <p>
            Используйте инструменты для анализа и обнаружения deadlock, такие как <code>jstack</code> или профилировщики.
        </p>

        <h2>Преимущества и недостатки блокировок</h2>
        <ul>
            <li>
                <span class="highlight">Преимущества:</span> Обеспечивают эксклюзивный доступ к ресурсам, предотвращают гонки.
            </li>
            <li>
                <span class="highlight">Недостатки:</span> Могут привести к взаимной блокировке, снижают производительность.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Блокировки — это мощный инструмент для синхронизации потоков, но их неправильное использование может привести к взаимной блокировке. Чтобы избежать deadlock, используйте упорядочивание блокировок, тайм-ауты и избегайте вложенных блокировок. Правильное использование блокировок помогает обеспечить стабильность и производительность многопоточных приложений.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d2b4a820-2553-4e0b-b389-1b66bc5387c6', 'Для чего используется оператор assert?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Принципы ООП</title>
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
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        .note {
            background: #ecf0f1;
            padding: 3px;
            border-left: 5px solid #bdc3c7;
            margin: 7px 0;
            color: #333;
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
    <h1>Оператор assert в Java</h1>

    <p>
        <span class="note">Assert</span> (утверждение) – это специальная конструкция, позволяющая проверять предположения о значениях произвольных данных в произвольном месте программы. Утверждение может автоматически сигнализировать об обнаружении некорректных данных, что обычно приводит к аварийному завершению программы с указанием места обнаружения некорректных данных.
    </p>

    <h2>Для чего используется assert?</h2>
    <p>
        Утверждения существенно упрощают локализацию ошибок в коде. Даже проверка результатов выполнения очевидного кода может оказаться полезной при последующем рефакторинге, после которого код может стать не настолько очевидным, и в него может закрасться ошибка.
    </p>
    <p>
        Обычно утверждения оставляют включенными во время разработки и тестирования программ, но отключают в релиз-версиях программ.
    </p>

    <h2>Особенности использования assert</h2>
    <p>
        Т. к. утверждения могут быть удалены на этапе компиляции либо во время исполнения программы, они не должны менять поведение программы. Если в результате удаления утверждения поведение программы может измениться, то это явный признак неправильного использования <span class="note">assert</span>. Таким образом, внутри <span class="note">assert</span> нельзя вызывать методы, изменяющие состояние программы, либо внешнего окружения программы.
    </p>

    <h2>Синтаксис assert</h2>
    <p>
        В Java проверка утверждений реализована с помощью оператора <span class="note">assert</span>, который имеет две формы:
    </p>
    <ul>
        <li>
            <code>assert [Выражение типа boolean];</code>
        </li>
        <li>
            <code>assert [Выражение типа boolean] : [Выражение любого типа, кроме void];</code>
        </li>
    </ul>
    <p>
        Во время выполнения программы, если проверка утверждений включена, вычисляется значение булевского выражения. Если его результат <code>false</code>, то генерируется исключение <code>java.lang.AssertionError</code>. В случае использования второй формы оператора <span class="note">assert</span>, выражение после двоеточия задает детальное сообщение о произошедшей ошибке (вычисленное выражение будет преобразовано в строку и передано конструктору <code>AssertionError</code>).
    </p>

    <div class="definition">
        <p>
            <strong>Assert</strong> – это оператор, который используется для проверки предположений в коде. Он помогает выявлять ошибки на этапе разработки, но не должен влиять на поведение программы в релиз-версиях.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b3e21d2b-9534-4ba3-ae25-43607028db30', 'Что такое byte code?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Принципы ООП</title>
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
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        .note {
            background: #ecf0f1;
            padding: 3px;
            border-left: 5px solid #bdc3c7;
            margin: 7px 0;
            color: #333;
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
    <h1>Что такое байт-код?</h1>

    <p>
        <span class="note">Байт-код Java</span> – это набор инструкций, скомпилированный компилятором, который исполняется <span class="note">JVM</span>. В настоящее время существует около 200 инструкций, из которых 56 зарезервированы. Каждая инструкция занимает <span class="note">1 байт</span>.
    </p>

    <div class="definition">
        <p>
            <strong>Байт-код</strong> – это промежуточный код, который генерируется компилятором Java и выполняется виртуальной машиной Java (JVM). Он обеспечивает кроссплатформенность Java-приложений.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e18b478d-c72e-4b8b-9b6e-261877191e29', 'Как настроить AOP в Spring?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Настройка AOP в Spring</title>
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
    <h1>Настройка AOP в Spring</h1>
    <p>
        <span class="highlight">Аспектно-ориентированное программирование (AOP)</span> в Spring позволяет разделять сквозные задачи (cross-cutting concerns) от основной бизнес-логики. Spring предоставляет мощные инструменты для настройки AOP, которые позволяют легко внедрять аспекты в приложение. В этом руководстве мы рассмотрим, как настроить AOP в Spring.
    </p>

    <h2>Основные шаги для настройки AOP</h2>
    <p>
        <span class="highlight">1. Добавление зависимостей:</span> Убедитесь, что в вашем проекте есть необходимые зависимости для поддержки AOP.
    </p>
    <p>
        <span class="highlight">2. Создание аспекта:</span> Определите аспект, который будет содержать логику для сквозных задач.
    </p>
    <p>
        <span class="highlight">3. Настройка срезов (Pointcuts):</span> Определите, где именно должен быть применён аспект.
    </p>
    <p>
        <span class="highlight">4. Настройка советов (Advice):</span> Определите, когда должен выполняться аспект (до, после или вокруг метода).
    </p>

    <h3>Пример добавления зависимостей в Maven:</h3>
    <pre><code>
&lt;dependency&gt;
    &lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
    &lt;artifactId&gt;spring-boot-starter-aop&lt;/artifactId&gt;
&lt;/dependency&gt;
    </code></pre>

    <h3>Пример создания аспекта:</h3>
    <pre><code>
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {

    @Pointcut("execution(* com.example.service.*.*(..))")
    public void serviceMethods() {}

    @Before("serviceMethods()")
    public void logBefore(JoinPoint joinPoint) {
        System.out.println("Метод вызван: " + joinPoint.getSignature().getName());
    }

    @After("serviceMethods()")
    public void logAfter(JoinPoint joinPoint) {
        System.out.println("Метод завершён: " + joinPoint.getSignature().getName());
    }
}
    </code></pre>

    <h2>Типы советов (Advice) в Spring AOP</h2>
    <p>
        <span class="highlight">1. @Before:</span> Совет выполняется до вызова метода.
    </p>
    <p>
        <span class="highlight">2. @After:</span> Совет выполняется после завершения метода, независимо от результата.
    </p>
    <p>
        <span class="highlight">3. @AfterReturning:</span> Совет выполняется после успешного завершения метода.
    </p>
    <p>
        <span class="highlight">4. @AfterThrowing:</span> Совет выполняется, если метод завершился с исключением.
    </p>
    <p>
        <span class="highlight">5. @Around:</span> Совет выполняется до и после вызова метода, позволяя контролировать выполнение метода.
    </p>

    <h3>Пример использования @Around:</h3>
    <pre><code>
@Around("serviceMethods()")
public Object logAround(ProceedingJoinPoint joinPoint) throws Throwable {
    System.out.println("Метод начал выполнение: " + joinPoint.getSignature().getName());
    Object result = joinPoint.proceed();
    System.out.println("Метод завершил выполнение: " + joinPoint.getSignature().getName());
    return result;
}
    </code></pre>

    <h2>Настройка срезов (Pointcuts)</h2>
    <p>
        Срезы определяют, где именно должен быть применён аспект. Spring AOP поддерживает мощные выражения для определения срезов, такие как:
        <ul>
            <li><code>execution</code>: Определяет методы, к которым применяется аспект.</li>
            <li><code>within</code>: Определяет пакеты или классы, к которым применяется аспект.</li>
            <li><code>@annotation</code>: Определяет методы, аннотированные определённой аннотацией.</li>
        </ul>
    </p>

    <h3>Пример использования @annotation:</h3>
    <pre><code>
@Pointcut("@annotation(com.example.annotation.LogExecution)")
public void logExecutionMethods() {}

@Before("logExecutionMethods()")
public void logExecution(JoinPoint joinPoint) {
    System.out.println("Метод с аннотацией LogExecution вызван: " + joinPoint.getSignature().getName());
}
    </code></pre>

    <h2>Рекомендации по настройке AOP</h2>
    <p>
        <span class="highlight">1. Используйте AOP для сквозных задач:</span> Логирование, транзакции, безопасность и кэширование — это типичные примеры задач, которые можно вынести в аспекты.
    </p>
    <p>
        <span class="highlight">2. Избегайте чрезмерного использования AOP:</span> Чрезмерное использование аспектов может сделать код сложным для понимания.
    </p>
    <p>
        <span class="highlight">3. Тестируйте аспекты:</span> Убедитесь, что аспекты работают корректно и не влияют на основную логику приложения.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Настройка AOP в Spring — это мощный инструмент для улучшения модульности и поддерживаемости кода. Используйте его с умом, чтобы избежать сложностей и улучшить качество вашего приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('27679c06-0302-4f5a-8c98-3b4cb4d2e960', 'Какие паттерны используются в Hibernate?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерны в Hibernate</title>
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
    <h1>Паттерны в Hibernate</h1>
    <p>
        В Hibernate, популярном ORM-фреймворке для работы с базами данных, используются различные паттерны проектирования для обеспечения гибкости, производительности и удобства работы с объектно-реляционным отображением. Вот основные из них:
    </p>

    <h2>Используемые паттерны</h2>
    <ul>
        <li>
            <span class="highlight">Domain Model:</span> Объектная модель предметной области, которая включает в себя как поведение, так и данные. Hibernate позволяет отображать эту модель на реляционные таблицы в базе данных.
        </li>
        <li>
            <span class="highlight">Data Mapper:</span> Слой мапперов (Mappers), который передаёт данные между объектами и базой данных, сохраняя их независимыми друг от друга и от самого слоя маппинга.
        </li>
        <li>
            <span class="highlight">Proxy:</span> Используется для ленивой загрузки (Lazy Loading). Hibernate создаёт прокси-объекты, которые загружают данные только при необходимости, что повышает производительность.
        </li>
        <li>
            <span class="highlight">Factory:</span> Реализуется через <code>SessionFactory</code>, который является фабрикой для создания сессий (Session). Сессии используются для взаимодействия с базой данных.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование паттернов в Hibernate делает его мощным инструментом для работы с базами данных, обеспечивая гибкость, производительность и удобство разработки.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f42dfc5a-d84d-438b-89ba-c580e6a67a93', 'Что такое "кэш" в Hibernate и как он работает? Опишите разницу между первым и вторым уровнем кэша', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Кэширование в Hibernate</title>
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
        <h1>Что такое кэш в Hibernate?</h1>
        <p>
            <span class="highlight">Кэширование</span> в Hibernate — это механизм, который позволяет хранить данные в памяти, чтобы уменьшить количество обращений к базе данных и повысить производительность приложения. Hibernate поддерживает несколько уровней кэширования, каждый из которых выполняет свою роль.
        </p>

        <h2>Уровни кэширования в Hibernate</h2>
        <p>
            Hibernate поддерживает два основных уровня кэширования:
        </p>
        <ul>
            <li>
                <span class="highlight">Кэш первого уровня (First-Level Cache):</span> Связан с сессией (Session) и существует только во время её жизни.
            </li>
            <li>
                <span class="highlight">Кэш второго уровня (Second-Level Cache):</span> Распространяется на несколько сессий и существует на уровне SessionFactory.
            </li>
        </ul>

        <h2>Кэш первого уровня (First-Level Cache)</h2>
        <p>
            Кэш первого уровня включён по умолчанию и связан с объектом <code>Session</code>. Он обеспечивает кэширование объектов в пределах одной сессии.
        </p>
        <ul>
            <li>
                <span class="highlight">Автоматическое кэширование:</span> Все объекты, загруженные или сохранённые в сессии, автоматически кэшируются.
            </li>
            <li>
                <span class="highlight">Жизненный цикл:</span> Кэш первого уровня существует только во время жизни сессии и очищается при её закрытии.
            </li>
            <li>
                <span class="highlight">Использование:</span> При повторном запросе объекта в пределах одной сессии Hibernate возвращает его из кэша, не обращаясь к базе данных.
            </li>
        </ul>

        <h3>Пример работы кэша первого уровня</h3>
        <pre><code>Session session = sessionFactory.openSession();

// Первый запрос к базе данных
User user1 = session.get(User.class, 1L);

// Второй запрос — объект возвращается из кэша
User user2 = session.get(User.class, 1L);

session.close();</code></pre>

        <h2>Кэш второго уровня (Second-Level Cache)</h2>
        <p>
            Кэш второго уровня работает на уровне <code>SessionFactory</code> и доступен для всех сессий, созданных этой фабрикой. Он требует явной настройки и использования сторонних библиотек, таких как Ehcache, Infinispan или Hazelcast.
        </p>
        <ul>
            <li>
                <span class="highlight">Общий доступ:</span> Кэш второго уровня доступен для всех сессий, что позволяет совместно использовать данные между ними.
            </li>
            <li>
                <span class="highlight">Конфигурация:</span> Требует явной настройки в конфигурации Hibernate и выбора провайдера кэширования.
            </li>
            <li>
                <span class="highlight">Жизненный цикл:</span> Кэш второго уровня существует на протяжении всего времени работы приложения или до его явной очистки.
            </li>
        </ul>

        <h3>Пример настройки кэша второго уровня</h3>
        <p>
            Добавьте следующие настройки в <code>hibernate.cfg.xml</code>:
        </p>
        <pre><code>&lt;property name="hibernate.cache.use_second_level_cache"&gt;true&lt;/property&gt;
&lt;property name="hibernate.cache.region.factory_class"&gt;org.hibernate.cache.ehcache.EhCacheRegionFactory&lt;/property&gt;
&lt;property name="hibernate.cache.use_query_cache"&gt;true&lt;/property&gt;</code></pre>
        <p>
            Затем укажите, какие сущности должны кэшироваться, с помощью аннотации <code>@Cacheable</code>:
        </p>
        <pre><code>@Entity
@Cacheable
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class User {
    // Поля и методы
}</code></pre>

        <h2>Разница между кэшем первого и второго уровня</h2>
        <table>
            <thead>
                <tr>
                    <th>Характеристика</th>
                    <th>Кэш первого уровня</th>
                    <th>Кэш второго уровня</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Область видимости</td>
                    <td>В пределах одной сессии</td>
                    <td>В пределах всех сессий, созданных одной SessionFactory</td>
                </tr>
                <tr>
                    <td>Настройка</td>
                    <td>Включён по умолчанию</td>
                    <td>Требует явной настройки и провайдера кэширования</td>
                </tr>
                <tr>
                    <td>Жизненный цикл</td>
                    <td>Существует только во время жизни сессии</td>
                    <td>Существует на протяжении всего времени работы приложения</td>
                </tr>
                <tr>
                    <td>Производительность</td>
                    <td>Уменьшает количество запросов к базе данных в пределах одной сессии</td>
                    <td>Уменьшает количество запросов к базе данных для всех сессий</td>
                </tr>
            </tbody>
        </table>

        <h2>Преимущества кэширования в Hibernate</h2>
        <ul>
            <li>
                <span class="highlight">Повышение производительности:</span> Уменьшение количества обращений к базе данных за счёт хранения данных в памяти.
            </li>
            <li>
                <span class="highlight">Снижение нагрузки на базу данных:</span> Кэширование уменьшает количество запросов, что снижает нагрузку на СУБД.
            </li>
            <li>
                <span class="highlight">Гибкость:</span> Возможность настройки кэширования на уровне отдельных сущностей или запросов.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Кэширование в Hibernate — это мощный инструмент для повышения производительности приложения. Кэш первого уровня работает в пределах одной сессии, а кэш второго уровня позволяет совместно использовать данные между несколькими сессиями. Правильное использование кэширования помогает значительно снизить нагрузку на базу данных и ускорить выполнение запросов.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ecc9f579-762a-44e2-8bb7-46385d374d0e', 'Для чего нужна аннотация Transient?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Transient в JPA</title>
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
    <h1>Аннотация @Transient в JPA</h1>
    <p>
        Аннотация <code>@Transient</code> в JPA (Java Persistence API) используется для указания того, что определённые поля
        сущности, встраиваемого класса или <code>Mapped SuperClass</code> не должны сохраняться в базе данных. Эти поля
        называются временными (transient fields).
    </p>

    <h2>Для чего нужна аннотация @Transient?</h2>
    <ul>
        <li>
            <span class="highlight">Исключение полей из персистентности:</span>
            <ul>
                <li>Поля, помеченные <code>@Transient</code>, не сохраняются в базе данных.</li>
                <li>Они игнорируются JPA при выполнении операций сохранения, обновления или извлечения данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование временных данных:</span>
            <ul>
                <li>Полезно для хранения временных данных, которые не нужно сохранять в базе данных, но которые
                    могут быть полезны в рамках выполнения бизнес-логики.</li>
            </ul>
        </li>
    </ul>

    <h2>Какие поля считаются временными?</h2>
    <ul>
        <li>
            <span class="highlight">Постоянные поля (Persistent fields):</span>
            <ul>
                <li>Любые не <code>static</code> и не <code>final</code> поля сущности по умолчанию считаются постоянными и
                    сохраняются в базе данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Временные поля (Transient fields):</span>
            <ul>
                <li>Поля, объявленные с модификатором <code>static</code> или <code>final</code>.</li>
                <li>Поля, помеченные Java-модификатором <code>transient</code>.</li>
                <li>Поля, явно помеченные аннотацией <code>@Transient</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>@Transient</code> для исключения полей из процесса сохранения в базу данных.</li>
                <li>Поля с модификатором <code>static</code> или <code>final</code> автоматически считаются временными и не требуют
                    явного указания <code>@Transient</code>.</li>
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

    private String name;

    @Transient // Это поле не будет сохранено в БД
    private String temporaryData;

    private static final String DEFAULT_ROLE = "USER"; // Это поле также не сохраняется

    // Геттеры и сеттеры
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Поле <code>temporaryData</code> помечено аннотацией <code>@Transient</code>, поэтому оно не сохраняется в базе данных.</li>
            <li>Поле <code>DEFAULT_ROLE</code> является <code>static final</code>, поэтому оно также не сохраняется в базе данных.</li>
        </ul>
    </p>

    <h2>Сравнение постоянных и временных полей</h2>
    <table>
        <thead>
            <tr>
                <th>Тип поля</th>
                <th>Описание</th>
                <th>Пример</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Постоянные поля</td>
                <td>Поля, которые сохраняются в базе данных.</td>
                <td><code>private String name;</code></td>
            </tr>
            <tr>
                <td>Временные поля</td>
                <td>Поля, которые не сохраняются в базе данных.</td>
                <td><code>@Transient private String temporaryData;</code></td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e1d61901-631f-46bf-8b43-3c40bddfd21b', 'Расскажите про аннотацию @Bean?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Bean в Spring</title>
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
    <h1>Аннотация @Bean в Spring</h1>
    <p>
        Аннотация <code>@Bean</code> используется в Spring для указания того, что метод создаёт, настраивает и
        инициализирует новый объект, управляемый IoC-контейнером. Такие методы могут быть объявлены в
        классах с аннотацией <code>@Configuration</code> или <code>@Component</code> (и её наследниках).
    </p>

    <h2>Основные свойства аннотации @Bean</h2>
    <ul>
        <li>
            <span class="highlight">destroyMethod:</span>
            <ul>
                <li>Позволяет указать метод, который будет вызван перед уничтожением бина.</li>
                <li>По умолчанию Spring пытается найти метод с именем <code>close</code> или <code>shutdown</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">initMethod:</span>
            <ul>
                <li>Позволяет указать метод, который будет вызван после инициализации бина.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">name:</span>
            <ul>
                <li>Позволяет задать имя бина. По умолчанию имя бина совпадает с именем метода.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">value:</span>
            <ul>
                <li>Алиас для свойства <code>name</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования @Bean</h2>
    <pre><code>
@Configuration
public class AppConfig {

    @Bean(name = "userService", initMethod = "init", destroyMethod = "cleanup")
    public UserService userService() {
        return new UserService(userRepository());
    }

    @Bean
    public UserRepository userRepository() {
        return new UserRepository();
    }
}

public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void init() {
        // Логика инициализации
    }

    public void cleanup() {
        // Логика очистки
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Метод <code>userService()</code> помечен аннотацией <code>@Bean</code> и создаёт бин с именем
                <code>"userService"</code>.</li>
            <li>Метод <code>init()</code> будет вызван после инициализации бина, а метод <code>cleanup()</code> — перед его
                уничтожением.</li>
            <li>Метод <code>userRepository()</code> также создаёт бин, но с именем, совпадающим с именем метода.</li>
        </ul>
    </p>

    <h2>Использование @Bean в классах с @Component</h2>
    <p>
        Аннотация <code>@Bean</code> может использоваться не только в классах с аннотацией <code>@Configuration</code>, но и в
        классах с аннотацией <code>@Component</code> (или её наследниках, таких как <code>@Service</code>, <code>@Repository</code>).
    </p>
    <pre><code>
@Service
public class UserService {

    @Bean
    public UserRepository userRepository() {
        return new UserRepository();
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Метод <code>userRepository()</code> помечен аннотацией <code>@Bean</code> и создаёт бин в классе с аннотацией
                <code>@Service</code>.</li>
        </ul>
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>@Bean</code> для создания и настройки бинов, управляемых Spring.</li>
                <li>Методы с аннотацией <code>@Bean</code> могут быть объявлены в классах с аннотацией
                    <code>@Configuration</code> или <code>@Component</code>.</li>
                <li>Используйте свойства <code>initMethod</code> и <code>destroyMethod</code> для управления жизненным циклом
                    бинов.</li>
            </ul>
        </p>
    </div>

    <h2>Сравнение @Bean и @Component</h2>
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
                <td>Использование</td>
                <td>Методы в классах с аннотацией <code>@Configuration</code> или <code>@Component</code>.</td>
                <td>Классы, которые автоматически обнаруживаются как бины.</td>
            </tr>
            <tr>
                <td>Гибкость</td>
                <td>Позволяет создавать бины с более сложной логикой инициализации.</td>
                <td>Подходит для простых бинов, которые не требуют сложной настройки.</td>
            </tr>
            <tr>
                <td>Имя бина</td>
                <td>Может быть задано через свойство <code>name</code>.</td>
                <td>Имя бина по умолчанию совпадает с именем класса.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6146304f-d9e9-4ef2-9d61-442b86d0fb4d', 'Расскажи про составной первичный ключ', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Составной первичный ключ (Composite Primary Key)</title>
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
    <h1>Составной первичный ключ (Composite Primary Key)</h1>
    <p>
        <span class="highlight">Составной первичный ключ (Composite Primary Key)</span> — это первичный ключ, который состоит из двух или более
        столбцов таблицы. Он используется для уникальной идентификации записей в случаях, когда один столбец
        не может обеспечить уникальность. Составной ключ часто применяется в сложных базах данных, где
        требуется уникальная комбинация нескольких атрибутов.
    </p>

    <h2>Основные характеристики составного первичного ключа</h2>
    <ul>
        <li>
            <span class="highlight">Уникальность комбинации:</span>
            <p>
                Каждая комбинация значений в столбцах, входящих в составной ключ, должна быть уникальной.
                Это позволяет однозначно идентифицировать каждую запись в таблице.
            </p>
        </li>
        <li>
            <span class="highlight">Неизменяемость:</span>
            <p>
                Значения столбцов, входящих в составной ключ, не должны изменяться после создания записи.
                Это обеспечивает стабильность ссылок на запись.
            </p>
        </li>
        <li>
            <span class="highlight">Отсутствие NULL:</span>
            <p>
                Ни один из столбцов, входящих в составной ключ, не может содержать значение <code>NULL</code>.
                Это гарантирует, что каждая запись имеет уникальную комбинацию значений.
            </p>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Составной первичный ключ используется в случаях, когда один столбец
            не может обеспечить уникальность записи. Например, в таблице, где запись идентифицируется
            комбинацией нескольких атрибутов.
        </p>
    </div>

    <h2>Примеры использования составного первичного ключа</h2>
    <pre><code>
-- Пример создания таблицы с составным первичным ключом в SQL
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id) -- Составной ключ
);
    </code></pre>
    <p>
        В этом примере таблица <code>order_items</code> содержит составной первичный ключ, состоящий из
        <code>order_id</code> и <code>product_id</code>. Это позволяет уникально идентифицировать каждый
        элемент заказа.
    </p>

    <h2>Преимущества использования составного первичного ключа</h2>
    <ul>
        <li>
            <span class="highlight">Уникальная идентификация:</span>
            <p>
                Составной ключ позволяет однозначно идентифицировать записи, даже если отдельные столбцы
                не уникальны.
            </p>
        </li>
        <li>
            <span class="highlight">Гибкость:</span>
            <p>
                Составной ключ позволяет использовать несколько атрибутов для идентификации записей, что
                полезно в сложных базах данных.
            </p>
        </li>
        <li>
            <span class="highlight">Целостность данных:</span>
            <p>
                Составной ключ предотвращает дублирование записей и обеспечивает целостность данных.
            </p>
        </li>
    </ul>

    <h2>Недостатки использования составного первичного ключа</h2>
    <ul>
        <li>
            <span class="highlight">Сложность запросов:</span>
            <p>
                Использование составного ключа может усложнить запросы, особенно при использовании JOIN
                и WHERE.
            </p>
        </li>
        <li>
            <span class="highlight">Производительность:</span>
            <p>
                Индексирование составного ключа может быть менее эффективным, чем индексирование одного
                столбца.
            </p>
        </li>
        <li>
            <span class="highlight">Ограничения на изменение данных:</span>
            <p>
                Изменение значений столбцов, входящих в составной ключ, может быть сложным и требовать
                дополнительных операций.
            </p>
        </li>
    </ul>

    <h2>Составной первичный ключ в ORM (на примере JPA)</h2>
    <pre><code>
// Пример сущности с составным первичным ключом в JPA
@Entity
@Table(name = "order_items")
@IdClass(OrderItemId.class) // Класс для составного ключа
public class OrderItem {
    @Id
    @Column(name = "order_id")
    private Long orderId; // Часть составного ключа

    @Id
    @Column(name = "product_id")
    private Long productId; // Часть составного ключа

    @Column(name = "quantity")
    private int quantity;

    // Геттеры и сеттеры
}

// Класс для составного ключа
public class OrderItemId implements Serializable {
    private Long orderId;
    private Long productId;

    // Геттеры, сеттеры, equals и hashCode
}
    </code></pre>
    <p>
        В этом примере сущность <code>OrderItem</code> использует составной первичный ключ, состоящий из
        <code>orderId</code> и <code>productId</code>. Для этого используется класс <code>OrderItemId</code>,
        который реализует интерфейс <code>Serializable</code>.
    </p>

    <h2>Заключение</h2>
    <p>
        Составной первичный ключ — это мощный инструмент для уникальной идентификации записей в сложных
        базах данных. Он позволяет использовать комбинацию нескольких атрибутов для обеспечения
        уникальности и целостности данных. Однако важно учитывать возможные сложности и ограничения,
        связанные с использованием составных ключей, чтобы эффективно проектировать базы данных.
    </p>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('54b023be-1ff5-4fef-bc1d-aa0dee0809e5', 'Что такое Git и чем он отличается от других систем управления версиями (например, SVN)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое Git и его отличие от других систем управления версиями</title>
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
    <h1>Что такое Git и его отличие от других систем управления версиями</h1>
    <p>
        <span class="highlight">Git</span> — это распределённая система управления версиями, которая позволяет отслеживать изменения
        в исходном коде и collaborate с другими разработчиками. Git был создан Линусом Торвальдсом в
        2005 году для управления разработкой ядра Linux. В отличие от централизованных систем управления
        версиями, таких как <span class="highlight">SVN (Subversion)</span>, Git предоставляет больше гибкости и возможностей для
        работы с кодом.
    </p>

    <h2>Основные особенности Git</h2>
    <ul>
        <li>
            <span class="highlight">Распределённая система:</span>
            <p>
                В Git каждый разработчик имеет полную копию репозитория, включая всю историю изменений.
                Это позволяет работать автономно и синхронизировать изменения с другими разработчиками
                позже.
            </p>
        </li>
        <li>
            <span class="highlight">Локальные операции:</span>
            <p>
                Большинство операций в Git выполняются локально, что делает их быстрыми и независимыми
                от сетевого соединения.
            </p>
        </li>
        <li>
            <span class="highlight">Ветвление и слияние:</span>
            <p>
                Git предоставляет мощные инструменты для создания веток и их слияния. Ветвление в Git
                лёгкое и быстрое, что способствует гибкости в разработке.
            </p>
        </li>
        <li>
            <span class="highlight">Целостность данных:</span>
            <p>
                Git использует SHA-1 хеши для идентификации каждого коммита и файла, что обеспечивает
                целостность данных и защиту от случайных или злонамеренных изменений.
            </p>
        </li>
    </ul>

    <h2>Отличия Git от SVN</h2>
    <table>
        <thead>
            <tr>
                <th>Критерий</th>
                <th>Git</th>
                <th>SVN</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Архитектура</td>
                <td>Распределённая (каждый разработчик имеет полную копию репозитория).</td>
                <td>Централизованная (все изменения хранятся на сервере).</td>
            </tr>
            <tr>
                <td>Локальные операции</td>
                <td>Большинство операций выполняются локально.</td>
                <td>Для большинства операций требуется подключение к серверу.</td>
            </tr>
            <tr>
                <td>Ветвление и слияние</td>
                <td>Ветвление и слияние выполняются быстро и легко.</td>
                <td>Ветвление и слияние могут быть медленными и сложными.</td>
            </tr>
            <tr>
                <td>Целостность данных</td>
                <td>Использует SHA-1 хеши для обеспечения целостности.</td>
                <td>Не использует хеши для проверки целостности.</td>
            </tr>
            <tr>
                <td>Производительность</td>
                <td>Высокая производительность благодаря локальным операциям.</td>
                <td>Производительность зависит от скорости соединения с сервером.</td>
            </tr>
            <tr>
                <td>История изменений</td>
                <td>Полная история изменений доступна локально.</td>
                <td>История изменений хранится на сервере.</td>
            </tr>
        </tbody>
    </table>

    <h2>Преимущества Git</h2>
    <ul>
        <li>
            <span class="highlight">Автономная работа:</span>
            <p>
                Разработчики могут работать автономно, так как у каждого есть полная копия репозитория.
            </p>
        </li>
        <li>
            <span class="highlight">Гибкость:</span>
            <p>
                Git предоставляет мощные инструменты для ветвления и слияния, что делает его идеальным
                для сложных проектов.
            </p>
        </li>
        <li>
            <span class="highlight">Безопасность:</span>
            <p>
                Использование SHA-1 хешей обеспечивает целостность данных и защиту от изменений.
            </p>
        </li>
    </ul>

    <h2>Недостатки Git</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span>
            <p>
                Git имеет более сложную модель работы по сравнению с централизованными системами,
                что может быть сложным для новичков.
            </p>
        </li>
        <li>
            <span class="highlight">Объём данных:</span>
            <p>
                Полная копия репозитория может занимать много места на диске.
            </p>
        </li>
    </ul>

    <h2>Преимущества SVN</h2>
    <ul>
        <li>
            <span class="highlight">Простота:</span>
            <p>
                SVN проще в использовании, особенно для небольших команд или проектов.
            </p>
        </li>
        <li>
            <span class="highlight">Централизованное управление:</span>
            <p>
                Все изменения хранятся на сервере, что упрощает управление доступом и контроль версий.
            </p>
        </li>
    </ul>

    <h2>Недостатки SVN</h2>
    <ul>
        <li>
            <span class="highlight">Зависимость от сервера:</span>
            <p>
                Для большинства операций требуется подключение к серверу, что может замедлить работу.
            </p>
        </li>
        <li>
            <span class="highlight">Ограниченная гибкость:</span>
            <p>
                Ветвление и слияние в SVN могут быть медленными и сложными.
            </p>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        Git и SVN — это две популярные системы управления версиями, каждая из которых имеет свои
        преимущества и недостатки. Git предоставляет больше гибкости и возможностей для работы с
        кодом, особенно в распределённых командах, в то время как SVN проще в использовании и
        подходит для небольших проектов. Выбор между ними зависит от конкретных требований проекта
        и предпочтений команды.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0562ade8-fd4b-4911-8765-6656a12c5301', 'Как вы можете гарантировать порядок выполнения потоков?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Гарантия порядка выполнения потоков</title>
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
        <h1>Как гарантировать порядок выполнения потоков?</h1>
        <p>
            В многопоточных приложениях порядок выполнения потоков по умолчанию не гарантирован, так как потоки выполняются параллельно и независимо друг от друга. Однако существуют механизмы, которые позволяют синхронизировать потоки и гарантировать определённый порядок их выполнения.
        </p>

        <h2>Механизмы для гарантии порядка выполнения потоков</h2>
        <p>
            Для управления порядком выполнения потоков можно использовать следующие подходы:
        </p>
        <ul>
            <li>
                <span class="highlight">Метод <code>join()</code>:</span> Позволяет одному потоку дождаться завершения другого.
            </li>
            <li>
                <span class="highlight">Синхронизация с помощью блокировок:</span> Использование <code>synchronized</code>, <code>ReentrantLock</code> или других механизмов синхронизации.
            </li>
            <li>
                <span class="highlight">Условные переменные (Condition):</span> Позволяют потокам ждать определённого условия перед продолжением работы.
            </li>
            <li>
                <span class="highlight">Использование <code>CountDownLatch</code> и <code>CyclicBarrier</code>:</span> Эти классы помогают координировать выполнение потоков.
            </li>
            <li>
                <span class="highlight">Использование <code>ExecutorService</code> и <code>Future</code>:</span> Позволяет управлять порядком выполнения задач.
            </li>
        </ul>

        <h2>1. Использование метода <code>join()</code></h2>
        <p>
            Метод <code>join()</code> позволяет текущему потоку дождаться завершения другого потока.
        </p>
        <h3>Пример</h3>
        <pre><code>public class Main {
    public static void main(String[] args) throws InterruptedException {
        Thread thread1 = new Thread(() -> {
            System.out.println("Поток 1 начал выполнение");
            try {
                Thread.sleep(1000); // Имитация работы
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Поток 1 завершил выполнение");
        });

        Thread thread2 = new Thread(() -> {
            System.out.println("Поток 2 начал выполнение");
            try {
                Thread.sleep(500); // Имитация работы
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Поток 2 завершил выполнение");
        });

        thread1.start();
        thread1.join(); // Ожидание завершения потока 1
        thread2.start();
        thread2.join(); // Ожидание завершения потока 2

        System.out.println("Основной поток завершил выполнение");
    }
}</code></pre>
        <p>
            В этом примере поток <code>thread2</code> начнёт выполнение только после завершения потока <code>thread1</code>.
        </p>

        <h2>2. Использование синхронизации</h2>
        <p>
            Синхронизация с помощью блокировок позволяет управлять доступом к общим ресурсам и гарантировать порядок выполнения.
        </p>
        <h3>Пример с <code>synchronized</code></h3>
        <pre><code>public class Main {
    private static final Object lock = new Object();
    private static boolean isThread1Finished = false;

    public static void main(String[] args) {
        Thread thread1 = new Thread(() -> {
            synchronized (lock) {
                System.out.println("Поток 1 начал выполнение");
                try {
                    Thread.sleep(1000); // Имитация работы
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                isThread1Finished = true;
                lock.notifyAll(); // Уведомление других потоков
                System.out.println("Поток 1 завершил выполнение");
            }
        });

        Thread thread2 = new Thread(() -> {
            synchronized (lock) {
                while (!isThread1Finished) {
                    try {
                        lock.wait(); // Ожидание завершения потока 1
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                System.out.println("Поток 2 начал выполнение");
                try {
                    Thread.sleep(500); // Имитация работы
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                System.out.println("Поток 2 завершил выполнение");
            }
        });

        thread1.start();
        thread2.start();
    }
}</code></pre>

        <h2>3. Использование <code>CountDownLatch</code></h2>
        <p>
            <code>CountDownLatch</code> позволяет потокам ждать завершения определённого количества операций.
        </p>
        <h3>Пример</h3>
        <pre><code>import java.util.concurrent.CountDownLatch;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        CountDownLatch latch = new CountDownLatch(1);

        Thread thread1 = new Thread(() -> {
            System.out.println("Поток 1 начал выполнение");
            try {
                Thread.sleep(1000); // Имитация работы
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Поток 1 завершил выполнение");
            latch.countDown(); // Уменьшение счётчика
        });

        Thread thread2 = new Thread(() -> {
            try {
                latch.await(); // Ожидание завершения потока 1
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Поток 2 начал выполнение");
            try {
                Thread.sleep(500); // Имитация работы
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Поток 2 завершил выполнение");
        });

        thread1.start();
        thread2.start();
    }
}</code></pre>

        <h2>4. Использование <code>ExecutorService</code> и <code>Future</code></h2>
        <p>
            <code>ExecutorService</code> и <code>Future</code> позволяют управлять порядком выполнения задач.
        </p>
        <h3>Пример</h3>
        <pre><code>import java.util.concurrent.*;

public class Main {
    public static void main(String[] args) throws ExecutionException, InterruptedException {
        ExecutorService executor = Executors.newSingleThreadExecutor();

        Future&lt;?&gt; future1 = executor.submit(() -> {
            System.out.println("Задача 1 начата");
            Thread.sleep(1000); // Имитация работы
            System.out.println("Задача 1 завершена");
        });

        future1.get(); // Ожидание завершения задачи 1

        Future&lt;?&gt; future2 = executor.submit(() -> {
            System.out.println("Задача 2 начата");
            Thread.sleep(500); // Имитация работы
            System.out.println("Задача 2 завершена");
        });

        future2.get(); // Ожидание завершения задачи 2

        executor.shutdown();
    }
}</code></pre>

        <h2>Заключение</h2>
        <p>
            Гарантия порядка выполнения потоков — это важная задача в многопоточных приложениях. Для её решения можно использовать методы <code>join()</code>, синхронизацию, условные переменные, <code>CountDownLatch</code>, <code>CyclicBarrier</code>, а также <code>ExecutorService</code> и <code>Future</code>. Выбор подхода зависит от конкретных требований вашего приложения.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('570d5e86-3406-41a9-9d69-71754506c1fd', 'Расскажите про аннотации @Controller и @RestController. Чем они  отличаются? Как вернуть ответ со своим статусом (например 213)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотации @Controller и @RestController</title>
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
    <h1>Аннотации @Controller и @RestController</h1>
    <p>
        В Spring Framework аннотации <code>@Controller</code> и <code>@RestController</code> используются для создания веб-контроллеров, которые обрабатывают HTTP-запросы. Они имеют некоторые различия, которые важно понимать при разработке веб-приложений.
    </p>

    <h2>Аннотация @Controller</h2>
    <p>
        Аннотация <code>@Controller</code> используется для создания традиционных Spring MVC-контроллеров. Она указывает, что класс является контроллером, который обрабатывает HTTP-запросы и возвращает представление (например, JSP, Thymeleaf). Обычно используется вместе с аннотацией <code>@RequestMapping</code> для маппинга URL-адресов на методы контроллера.
    </p>

    <h3>Пример использования @Controller:</h3>
    <pre><code>@Controller
public class MyController {

    @RequestMapping("/hello")
    public String sayHello(Model model) {
        model.addAttribute("message", "Привет, мир!");
        return "hello"; // Возвращает имя представления (например, hello.jsp)
    }
}</code></pre>

    <h2>Аннотация @RestController</h2>
    <p>
        Аннотация <code>@RestController</code> была введена в Spring 4.0 для упрощения создания RESTful веб-сервисов. Она объединяет в себе функциональность аннотаций <code>@Controller</code> и <code>@ResponseBody</code>. Это означает, что методы контроллера автоматически сериализуют возвращаемые объекты в JSON или XML и передают их в HTTP-ответ.
    </p>

    <h3>Пример использования @RestController:</h3>
    <pre><code>@RestController
public class MyRestController {

    @GetMapping("/hello")
    public String sayHello() {
        return "Привет, мир!"; // Возвращает строку в формате JSON
    }
}</code></pre>

    <h2>Различия между @Controller и @RestController</h2>
    <ul>
        <li>
            <span class="highlight">@Controller:</span> Используется для традиционных MVC-контроллеров, которые возвращают представления (например, JSP).
        </li>
        <li>
            <span class="highlight">@RestController:</span> Используется для RESTful веб-сервисов, где методы возвращают данные (например, JSON или XML) напрямую в HTTP-ответ.
        </li>
    </ul>

    <h2>Как вернуть ответ со своим статусом?</h2>
    <p>
        Для возврата HTTP-ответа с кастомным статусом (например, 213) можно использовать класс <code>ResponseEntity</code>. Этот класс позволяет задать тело ответа, статус и заголовки.
    </p>

    <h3>Пример использования ResponseEntity:</h3>
    <pre><code>@RestController
public class MyRestController {

    @GetMapping("/custom-status")
    public ResponseEntity&lt;String&gt; getCustomStatus() {
        return ResponseEntity.status(213).body("Кастомный статус 213");
    }
}</code></pre>

    <p>
        В этом примере метод возвращает HTTP-ответ с кодом статуса <code>213</code> и телом <code>"Кастомный статус 213"</code>.
    </p>

    <h2>Использование @ResponseBody</h2>
    <p>
        Если вам не нужно задавать кастомный статус или заголовки, можно использовать аннотацию <code>@ResponseBody</code>. Она автоматически сериализует возвращаемый объект в JSON или XML и добавляет его в тело HTTP-ответа.
    </p>

    <h3>Пример использования @ResponseBody:</h3>
    <pre><code>@Controller
public class MyController {

    @GetMapping("/hello")
    @ResponseBody
    public String sayHello() {
        return "Привет, мир!"; // Возвращает строку в формате JSON
    }
}</code></pre>

    <h2>Преимущества @RestController</h2>
    <ul>
        <li>
            <span class="highlight">Упрощение кода:</span> Не нужно явно указывать <code>@ResponseBody</code> для каждого метода.
        </li>
        <li>
            <span class="highlight">Поддержка REST:</span> Идеально подходит для создания RESTful API.
        </li>
        <li>
            <span class="highlight">Автоматическая сериализация:</span> Возвращаемые объекты автоматически преобразуются в JSON или XML.
        </li>
    </ul>

    <h2>Когда использовать @Controller и @RestController?</h2>
    <ul>
        <li>
            <span class="highlight">@Controller:</span> Используйте для традиционных веб-приложений, где требуется возврат представлений (например, JSP, Thymeleaf).
        </li>
        <li>
            <span class="highlight">@RestController:</span> Используйте для RESTful веб-сервисов, где методы возвращают данные в формате JSON или XML.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между <code>@Controller</code> и <code>@RestController</code> зависит от требований вашего приложения. Для RESTful API предпочтительнее использовать <code>@RestController</code>.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c7dadf73-aa09-4cd0-8698-df63fb14d2bf', 'Как реализовать связь "один к многим" (One-to-Many) в Hibernate?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Связь "один ко многим" в Hibernate</title>
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
        <h1>Связь "один ко многим" (One-to-Many) в Hibernate</h1>
        <p>
            Связь <span class="highlight">"один ко многим" (One-to-Many)</span> в Hibernate используется, когда одна сущность связана с несколькими экземплярами другой сущности. Например, один автор может написать несколько книг. В Hibernate такая связь реализуется с использованием аннотаций или XML-маппинга.
        </p>

        <h2>Реализация связи "один ко многим" с использованием аннотаций</h2>
        <p>
            Рассмотрим пример, где у сущности <code>Author</code> (автор) есть несколько сущностей <code>Book</code> (книга).
        </p>

        <h3>1. Сущность Author (один)</h3>
        <p>
            В сущности <code>Author</code> используется аннотация <code>@OneToMany</code> для указания связи с сущностью <code>Book</code>.
        </p>
        <pre><code>package com.example;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "authors")
public class Author {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @OneToMany(mappedBy = "author", cascade = CascadeType.ALL, orphanRemoval = true)
    private List&lt;Book&gt; books;

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List&lt;Book&gt; getBooks() {
        return books;
    }

    public void setBooks(List&lt;Book&gt; books) {
        this.books = books;
    }
}</code></pre>

        <h3>2. Сущность Book (многие)</h3>
        <p>
            В сущности <code>Book</code> используется аннотация <code>@ManyToOne</code> для указания связи с сущностью <code>Author</code>.
        </p>
        <pre><code>package com.example;

import javax.persistence.*;

@Entity
@Table(name = "books")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title")
    private String title;

    @ManyToOne
    @JoinColumn(name = "author_id")
    private Author author;

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }
}</code></pre>

        <h3>3. Каскадные операции и orphanRemoval</h3>
        <p>
            В примере выше используются параметры:
        </p>
        <ul>
            <li>
                <span class="highlight">cascade = CascadeType.ALL:</span> Все операции (сохранение, обновление, удаление) будут каскадно применяться к связанным сущностям.
            </li>
            <li>
                <span class="highlight">orphanRemoval = true:</span> Если книга удаляется из списка книг автора, она будет автоматически удалена из базы данных.
            </li>
        </ul>

        <h2>Реализация связи "один ко многим" с использованием XML</h2>
        <p>
            Если вы используете XML-маппинг, связь "один ко многим" можно настроить в файле <code>hbm.xml</code>.
        </p>

        <h3>1. Маппинг для Author (один)</h3>
        <pre><code>&lt;hibernate-mapping&gt;
    &lt;class name="com.example.Author" table="authors"&gt;
        &lt;id name="id" column="id"&gt;
            &lt;generator class="native"/&gt;
        &lt;/id&gt;
        &lt;property name="name" column="name"/&gt;
        &lt;set name="books" cascade="all" inverse="true"&gt;
            &lt;key column="author_id"/&gt;
            &lt;one-to-many class="com.example.Book"/&gt;
        &lt;/set&gt;
    &lt;/class&gt;
&lt;/hibernate-mapping&gt;</code></pre>

        <h3>2. Маппинг для Book (многие)</h3>
        <pre><code>&lt;hibernate-mapping&gt;
    &lt;class name="com.example.Book" table="books"&gt;
        &lt;id name="id" column="id"&gt;
            &lt;generator class="native"/&gt;
        &lt;/id&gt;
        &lt;property name="title" column="title"/&gt;
        &lt;many-to-one name="author" column="author_id" class="com.example.Author"/&gt;
    &lt;/class&gt;
&lt;/hibernate-mapping&gt;</code></pre>

        <h2>Пример использования связи "один ко многим"</h2>
        <p>
            Пример кода для создания автора и его книг:
        </p>
        <pre><code>import org.hibernate.Session;
import org.hibernate.Transaction;

public class Main {
    public static void main(String[] args) {
        // Создание автора
        Author author = new Author();
        author.setName("John Doe");

        // Создание книг
        Book book1 = new Book();
        book1.setTitle("Book 1");
        book1.setAuthor(author);

        Book book2 = new Book();
        book2.setTitle("Book 2");
        book2.setAuthor(author);

        // Добавление книг к автору
        author.getBooks().add(book1);
        author.getBooks().add(book2);

        // Сохранение автора и книг
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(author);
        transaction.commit();
        session.close();
    }
}</code></pre>

        <h2>Заключение</h2>
        <p>
            Связь "один ко многим" в Hibernate позволяет эффективно моделировать отношения между сущностями. Использование аннотаций или XML-маппинга делает код гибким и удобным для работы с базами данных.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e16712df-3524-456e-a124-fbb57262db25', 'Расскажите про пузырьковую сортировку', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Пузырьковая сортировка</title>
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
    <h1>Пузырьковая сортировка</h1>
    <p>
        <span class="highlight">Пузырьковая сортировка</span> — это простой алгоритм сортировки, который последовательно сравнивает соседние элементы массива и меняет их местами, если они находятся в неправильном порядке. Этот процесс повторяется до тех пор, пока массив не будет полностью отсортирован.
    </p>

    <h2>Как работает пузырьковая сортировка?</h2>
    <ul>
        <li>
            Алгоритм проходит по массиву слева направо.
        </li>
        <li>
            Если текущий элемент больше следующего, они меняются местами.
        </li>
        <li>
            Процесс повторяется до тех пор, пока массив не будет отсортирован (пока не останется ни одной пары элементов, требующей обмена).
        </li>
    </ul>

    <h2>Асимптотическая сложность</h2>
    <ul>
        <li>
            <span class="highlight">Худший и средний случай:</span> <code>O(n^2)</code>, где <code>n</code> — количество элементов в массиве.
        </li>
        <li>
            <span class="highlight">Лучший случай:</span> <code>O(n)</code>, если массив уже отсортирован.
        </li>
    </ul>

    <h2>Пример реализации на Python</h2>
    <pre><code>
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
    return arr
    </code></pre>

    <h2>Преимущества и недостатки</h2>
    <ul>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Простота реализации.</li>
                <li>Не требует дополнительной памяти.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Низкая производительность на больших массивах из-за квадратичной сложности.</li>
                <li>Неэффективен для практически отсортированных массивов.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Пузырьковая сортировка подходит для обучения и понимания основ сортировки, но на практике её использование ограничено из-за низкой производительности.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4691221d-a4e3-459d-b218-91ed5eadea49', 'Что такое автоупаковка и автораспаковка?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Принципы ООП</title>
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
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        .note {
            background: #ecf0f1;
            padding: 3px;
            border-left: 5px solid #bdc3c7;
            margin: 7px 0;
            color: #333;
        }
 	.definition {
            margin-left: 20px;
            font-style: italic;
            color: #555;
        }
	code {
            font-family: "Courier New", monospace;
            background-color: #f0f0f0;
            padding: 2px 4px;
            border-radius: 4px;
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
    <h1>Автоупаковка и автораспаковка в Java</h1>

    <p>
        <span class="note">Автоупаковка</span> и <span class="note">автораспаковка</span> – это механизмы в Java, которые позволяют автоматически преобразовывать примитивные типы данных в их классы-обертки и наоборот. Это упрощает работу с примитивами и объектами, устраняя необходимость в явном преобразовании.
    </p>

    <h2>Что такое автоупаковка?</h2>
    <p>
        <span class="note">Автоупаковка</span> – это процесс автоматического преобразования примитивного типа данных в соответствующий ему класс-обертку. Например, преобразование <code>int</code> в <code>Integer</code>.
    </p>
    <pre><code>int primitive = 42;
Integer wrapper = primitive; // Автоупаковка</code></pre>
    <p>
        Автоупаковка происходит при:
    </p>
    <ul>
        <li>присваивании примитива переменной класса-обертки;</li>
        <li>передаче примитива в параметры метода, ожидающего класс-обертку.</li>
    </ul>

    <h2>Что такое автораспаковка?</h2>
    <p>
        <span class="note">Автораспаковка</span> – это процесс автоматического преобразования класса-обертки в соответствующий примитивный тип. Например, преобразование <code>Integer</code> в <code>int</code>.
    </p>
    <pre><code>Integer wrapper = 42;
int primitive = wrapper; // Автораспаковка</code></pre>
    <p>
        Автораспаковка происходит при:
    </p>
    <ul>
        <li>присваивании объекта класса-обертки переменной примитивного типа;</li>
        <li>передаче объекта класса-обертки в параметры метода, ожидающего примитивный тип.</li>
    </ul>

    <h2>Особенности автоупаковки и автораспаковки</h2>
    <p>
        Автоупаковка и автораспаковка работают только для соответствующих пар примитивов и классов-оберток:
    </p>
    <ul>
        <li><code>byte</code> ↔ <code>Byte</code></li>
        <li><code>short</code> ↔ <code>Short</code></li>
        <li><code>int</code> ↔ <code>Integer</code></li>
        <li><code>long</code> ↔ <code>Long</code></li>
        <li><code>float</code> ↔ <code>Float</code></li>
        <li><code>double</code> ↔ <code>Double</code></li>
        <li><code>char</code> ↔ <code>Character</code></li>
        <li><code>boolean</code> ↔ <code>Boolean</code></li>
    </ul>
    <p>
        Также стоит учитывать, что целочисленные классы-обертки (<code>Byte</code>, <code>Short</code>, <code>Integer</code>, <code>Long</code>) кэшируют значения в диапазоне <code>-128</code> до <code>127</code>. Это означает, что объекты с одинаковыми значениями в этом диапазоне будут ссылаться на один и тот же объект в памяти.
    </p>

    <div class="definition">
        <p>
            <strong>Автоупаковка</strong> – это автоматическое преобразование примитивного типа в класс-обертку. <strong>Автораспаковка</strong> – это автоматическое преобразование класса-обертки в примитивный тип. Эти механизмы упрощают работу с примитивами и объектами в Java.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f0d21e59-70e0-425d-9efd-eff4151162cb', 'Как Spring управляет жизненным циклом бинов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Управление жизненным циклом бинов в Spring</title>
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
    <h1>Управление жизненным циклом бинов в Spring</h1>
    <p>
        <span class="highlight">Spring Framework</span> предоставляет мощные механизмы для управления жизненным циклом бинов (beans). Жизненный цикл бина включает его создание, инициализацию, использование и уничтожение. Spring позволяет разработчикам контролировать каждый этап жизненного цикла с помощью различных подходов, таких как интерфейсы, аннотации и конфигурационные методы.
    </p>

    <h2>Основные этапы жизненного цикла бина</h2>
    <p>
        <span class="highlight">1. Создание бина:</span> Spring создаёт экземпляр бина на основе его определения (например, через конструктор или фабричный метод).
    </p>
    <p>
        <span class="highlight">2. Настройка свойств:</span> Spring внедряет зависимости и настраивает свойства бина.
    </p>
    <p>
        <span class="highlight">3. Инициализация:</span> Spring вызывает методы инициализации бина, если они определены.
    </p>
    <p>
        <span class="highlight">4. Использование:</span> Бин готов к использованию в приложении.
    </p>
    <p>
        <span class="highlight">5. Уничтожение:</span> Spring вызывает методы уничтожения бина перед его удалением из контекста.
    </p>

    <h2>Методы управления жизненным циклом</h2>
    <p>
        Spring предоставляет несколько способов управления жизненным циклом бинов:
        <ul>
            <li>
                <span class="highlight">1. Интерфейсы <code>InitializingBean</code> и <code>DisposableBean</code>:</span> Эти интерфейсы позволяют определить методы <code>afterPropertiesSet()</code> и <code>destroy()</code>, которые Spring вызовет после инициализации и перед уничтожением бина.
            </li>
            <li>
                <span class="highlight">2. Аннотации <code>@PostConstruct</code> и <code>@PreDestroy</code>:</span> Эти аннотации позволяют пометить методы, которые Spring вызовет после инициализации и перед уничтожением бина.
            </li>
            <li>
                <span class="highlight">3. Конфигурационные методы:</span> В Java-конфигурации можно использовать методы, аннотированные <code>@Bean</code>, с параметрами <code>initMethod</code> и <code>destroyMethod</code>.
            </li>
        </ul>
    </p>

    <h3>Пример использования интерфейсов:</h3>
    <pre><code>
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.DisposableBean;

public class ExampleBean implements InitializingBean, DisposableBean {

    @Override
    public void afterPropertiesSet() throws Exception {
        System.out.println("Бин инициализирован");
    }

    @Override
    public void destroy() throws Exception {
        System.out.println("Бин уничтожен");
    }
}
    </code></pre>

    <h3>Пример использования аннотаций:</h3>
    <pre><code>
import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

public class ExampleBean {

    @PostConstruct
    public void init() {
        System.out.println("Бин инициализирован");
    }

    @PreDestroy
    public void cleanup() {
        System.out.println("Бин уничтожен");
    }
}
    </code></pre>

    <h3>Пример использования конфигурационных методов:</h3>
    <pre><code>
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

    @Bean(initMethod = "init", destroyMethod = "cleanup")
    public ExampleBean exampleBean() {
        return new ExampleBean();
    }
}
    </code></pre>

    <h2>Рекомендации по управлению жизненным циклом</h2>
    <p>
        <span class="highlight">1. Используйте аннотации для простых сценариев:</span> Аннотации <code>@PostConstruct</code> и <code>@PreDestroy</code> делают код более читаемым и удобным для поддержки.
    </p>
    <p>
        <span class="highlight">2. Используйте интерфейсы для сложных сценариев:</span> Если требуется более сложная логика инициализации или уничтожения, используйте интерфейсы <code>InitializingBean</code> и <code>DisposableBean</code>.
    </p>
    <p>
        <span class="highlight">3. Используйте конфигурационные методы для гибкости:</span> Конфигурационные методы позволяют управлять жизненным циклом бинов без изменения их кода.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Управление жизненным циклом бинов — это ключевая часть разработки Spring приложений. Используйте подходящие подходы для управления инициализацией и уничтожением бинов, чтобы обеспечить корректную работу приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('54e9980d-b2ea-4b85-b4e4-122b546594a9', 'Что такое явное и неявное приведение типов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Принципы ООП</title>
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
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        .note {
            background: #ecf0f1;
            padding: 3px;
            border-left: 5px solid #bdc3c7;
            margin: 7px 0;
            color: #333;
        }
 	.definition {
            margin-left: 20px;
            font-style: italic;
            color: #555;
        }
	code {
            font-family: "Courier New", monospace;
            background-color: #f0f0f0;
            padding: 2px 4px;
            border-radius: 4px;
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
    <h1>Явное и неявное приведение типов в Java</h1>

    <p>
        Java является строго типизированным языком программирования, что означает, что каждое выражение и каждая переменная имеет строго определенный тип уже на момент компиляции. Однако в Java существует механизм приведения типов (<span class="note">casting</span>) – способ преобразования значения переменной одного типа в значение другого типа.
    </p>

    <h2>Типы приведения</h2>
    <p>
        В Java существуют несколько разновидностей приведения типов:
    </p>
    <ul>
        <li>
            <span class="note">Тождественное (identity)</span>. Преобразование выражения любого типа к точно такому же типу всегда допустимо и происходит автоматически.
        </li>
        <li>
            <span class="note">Расширение примитивного типа (widening primitive)</span>. Переход от менее емкого типа к более емкому. Например, от типа <code>byte</code> к типу <code>int</code>. Такие преобразования безопасны, так как новый тип всегда вмещает все данные старого типа. Происходит автоматически.
        </li>
        <li>
            <span class="note">Сужение примитивного типа (narrowing primitive)</span>. Переход от более емкого типа к менее емкому. Например, от <code>int</code> к <code>byte</code>. Может привести к потере данных. Требует явного указания типа.
        </li>
        <li>
            <span class="note">Расширение объектного типа (widening reference)</span>. Переход от более конкретного типа к менее конкретному (от потомка к предку). Происходит автоматически.
        </li>
        <li>
            <span class="note">Сужение объектного типа (narrowing reference)</span>. Переход от предка к потомку. Требует явного указания типа. Если типы не совместимы, выбрасывается исключение <code>ClassCastException</code>.
        </li>
        <li>
            <span class="note">Преобразование к строке (to String)</span>. Любой тип может быть приведен к строке (<code>String</code>).
        </li>
        <li>
            <span class="note">Запрещенные преобразования (forbidden)</span>. Например, приведение между примитивными и ссылочными типами (кроме строки) или между классами, находящимися на разных ветвях дерева наследования.
        </li>
    </ul>

    <h2>Явное и неявное приведение</h2>
    <p>
        <span class="note">Неявное приведение</span> происходит автоматически, когда преобразование безопасно (например, расширение примитивных типов или расширение объектных типов).
    </p>
    <p>
        <span class="note">Явное приведение</span> требуется, когда преобразование может привести к потере данных или небезопасно (например, сужение примитивных типов или сужение объектных типов). Пример явного приведения:
    </p>
    <pre><code>int a = 1000;
byte b = (byte) a; // Явное приведение int к byte</code></pre>

    <h2>Проверка возможности приведения</h2>
    <p>
        Для проверки возможности приведения ссылочных типов используется оператор <span class="note">instanceof</span>:
    </p>
    <pre><code>Parent parent = new Child();
if (parent instanceof Child) {
    Child child = (Child) parent; // Явное приведение
}</code></pre>

    <div class="definition">
        <p>
            <strong>Приведение типов</strong> – это механизм преобразования значения одного типа в значение другого типа. В Java существует явное и неявное приведение, а также различные виды преобразований, такие как расширение, сужение и преобразование к строке.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6ec41a32-0844-409c-9fac-5722e50607b4', 'Будет ли транзакция отменена, если будет брошено исключение, которое  указано в контракте метода?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Откат транзакции при исключениях</title>
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
    <h1>Будет ли транзакция отменена, если будет брошено исключение, которое указано в контракте метода?</h1>
    <p>
        В Spring транзакции управляются с помощью аннотации <code>@Transactional</code>. Поведение отката транзакции зависит от типа исключения, которое было выброшено в транзакционном методе. Если исключение указано в контракте метода (например, проверяемое исключение, объявленное в сигнатуре метода), то по умолчанию транзакция <strong>не будет откачена</strong>.
    </p>

    <h2>Поведение по умолчанию</h2>
    <p>
        По умолчанию Spring откатывает транзакцию только при возникновении непроверяемых исключений (unchecked exceptions), таких как <code>RuntimeException</code> и его подклассы. Проверяемые исключения (checked exceptions) <strong>не вызывают откат транзакции</strong>, если они указаны в контракте метода.
    </p>

    <h3>Пример:</h3>
    <pre><code>@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Transactional
    public void createUser(User user) throws CustomCheckedException {
        userRepository.save(user);
        if (user.getName() == null) {
            throw new CustomCheckedException("Имя пользователя не может быть null");
        }
    }
}</code></pre>

    <p>
        В этом примере, если будет выброшено исключение <code>CustomCheckedException</code>, транзакция <strong>не будет откачена</strong>, так как это проверяемое исключение, указанное в контракте метода.
    </p>

    <h2>Как управлять откатом транзакции?</h2>
    <p>
        Чтобы изменить поведение отката транзакции для определённых исключений, можно использовать атрибуты аннотации <code>@Transactional</code>:
    </p>
    <ul>
        <li>
            <span class="highlight">rollbackFor:</span> Указывает исключения, которые должны вызывать откат транзакции.
            <pre><code>@Transactional(rollbackFor = CustomCheckedException.class)
public void createUser(User user) throws CustomCheckedException {
    userRepository.save(user);
    if (user.getName() == null) {
        throw new CustomCheckedException("Имя пользователя не может быть null");
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">noRollbackFor:</span> Указывает исключения, которые не должны вызывать откат транзакции.
            <pre><code>@Transactional(noRollbackFor = RuntimeException.class)
public void createUser(User user) {
    userRepository.save(user);
    if (user.getName() == null) {
        throw new RuntimeException("Имя пользователя не может быть null");
    }
}</code></pre>
        </li>
    </ul>

    <h2>Unchecked-исключения</h2>
    <p>
        Непроверяемые исключения (unchecked exceptions), такие как <code>RuntimeException</code>, по умолчанию вызывают откат транзакции. Однако их можно обработать в коде, чтобы предотвратить откат:
    </p>
    <pre><code>@Transactional
public void createUser(User user) {
    try {
        userRepository.save(user);
        if (user.getName() == null) {
            throw new RuntimeException("Имя пользователя не может быть null");
        }
    } catch (RuntimeException e) {
        // Обработка исключения без отката транзакции
        System.out.println("Ошибка: " + e.getMessage());
    }
}</code></pre>

    <h2>Итог</h2>
    <ul>
        <li>
            <span class="highlight">Проверяемые исключения:</span> Если исключение указано в контракте метода, транзакция <strong>не будет откачена</strong> по умолчанию.
        </li>
        <li>
            <span class="highlight">Непроверяемые исключения:</span> По умолчанию вызывают откат транзакции, но их можно обработать в коде.
        </li>
        <li>
            <span class="highlight">Управление откатом:</span> Используйте атрибуты <code>rollbackFor</code> и <code>noRollbackFor</code> для настройки поведения отката транзакции.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Поведение отката транзакции можно гибко настраивать в зависимости от требований приложения. Убедитесь, что вы правильно обрабатываете исключения, чтобы избежать неожиданного поведения транзакций.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4f2ea2cb-425f-4757-bbbb-ce0fe3444ca6', 'Как вы откатываете изменения в Git?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Откат изменений в Git</title>
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
    <h1>Откат изменений в Git</h1>
    <p>
        В Git существует несколько способов отката изменений, в зависимости от того, что именно нужно
        откатить: последний коммит, изменения в рабочей директории или конкретный файл. Давайте
        разберём основные методы отката изменений.
    </p>

    <h2>Откат последнего коммита</h2>
    <p>
        Если вы хотите откатить последний коммит, можно использовать команду <code>git revert</code> или
        <code>git reset</code>.
    </p>
    <ul>
        <li>
            <span class="highlight">Использование git revert:</span>
            <p>
                Команда <code>git revert</code> создаёт новый коммит, который отменяет изменения, внесённые
                указанным коммитом. Это безопасный способ отката, так как он не изменяет историю.
            </p>
            <pre><code>
# Откат последнего коммита
git revert HEAD
            </code></pre>
        </li>
        <li>
            <span class="highlight">Использование git reset:</span>
            <p>
                Команда <code>git reset</code> перемещает указатель ветки на указанный коммит, удаляя все
                последующие коммиты. Это изменяет историю, поэтому используйте с осторожностью.
            </p>
            <pre><code>
# Откат последнего коммита (мягкий reset)
git reset --soft HEAD~1

# Откат последнего коммита (жёсткий reset)
git reset --hard HEAD~1
            </code></pre>
        </li>
    </ul>

    <h2>Откат изменений в рабочей директории</h2>
    <p>
        Если вы хотите откатить изменения в рабочей директории (незакоммиченные изменения),
        используйте команду <code>git checkout</code> или <code>git restore</code>.
    </p>
    <ul>
        <li>
            <span class="highlight">Использование git checkout:</span>
            <p>
                Команда <code>git checkout</code> позволяет откатить изменения в рабочей директории до состояния
                последнего коммита.
            </p>
            <pre><code>
# Откат всех изменений в рабочей директории
git checkout -- .
            </code></pre>
        </li>
        <li>
            <span class="highlight">Использование git restore:</span>
            <p>
                Команда <code>git restore</code> (доступна с Git 2.23) позволяет откатить изменения в рабочей
                директории или индексе.
            </p>
            <pre><code>
# Откат всех изменений в рабочей директории
git restore .

# Откат изменений в конкретном файле
git restore filename.txt
            </code></pre>
        </li>
    </ul>

    <h2>Откат изменений в индексе (staging area)</h2>
    <p>
        Если вы добавили изменения в индекс (staging area) и хотите их откатить, используйте команду
        <code>git reset</code> или <code>git restore</code>.
    </p>
    <ul>
        <li>
            <span class="highlight">Использование git reset:</span>
            <p>
                Команда <code>git reset</code> позволяет удалить изменения из индекса, но сохранить их в рабочей
                директории.
            </p>
            <pre><code>
# Откат изменений в индексе
git reset
            </code></pre>
        </li>
        <li>
            <span class="highlight">Использование git restore:</span>
            <p>
                Команда <code>git restore</code> позволяет откатить изменения в индексе.
            </p>
            <pre><code>
# Откат изменений в индексе
git restore --staged filename.txt
            </code></pre>
        </li>
    </ul>

    <h2>Откат конкретного файла</h2>
    <p>
        Если вы хотите откатить изменения в конкретном файле, используйте команду <code>git checkout</code>
        или <code>git restore</code>.
    </p>
    <ul>
        <li>
            <span class="highlight">Использование git checkout:</span>
            <p>
                Команда <code>git checkout</code> позволяет откатить изменения в конкретном файле до состояния
                последнего коммита.
            </p>
            <pre><code>
# Откат изменений в конкретном файле
git checkout -- filename.txt
            </code></pre>
        </li>
        <li>
            <span class="highlight">Использование git restore:</span>
            <p>
                Команда <code>git restore</code> позволяет откатить изменения в конкретном файле.
            </p>
            <pre><code>
# Откат изменений в конкретном файле
git restore filename.txt
            </code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Будьте осторожны при использовании команд, которые изменяют историю
            (например, <code>git reset --hard</code>), так как это может привести к потере данных.
        </p>
    </div>

    <h2>Пример рабочего процесса</h2>
    <pre><code>
# 1. Откат последнего коммита
git revert HEAD

# 2. Откат изменений в рабочей директории
git restore .

# 3. Откат изменений в конкретном файле
git restore filename.txt
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Откат изменений в Git — это важная часть работы с системой контроля версий. В зависимости от
        ситуации, вы можете использовать команды <code>git revert</code>, <code>git reset</code>, <code>git checkout</code> или
        <code>git restore</code>. Понимание этих команд позволяет эффективно управлять изменениями и
        восстанавливать предыдущие состояния проекта.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1f8d80aa-c451-459a-8d5d-cf39df06c831', 'Расскажи про HAVING', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оператор HAVING в SQL</title>
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
    <h1>Оператор HAVING в SQL</h1>
    <p>
        <span class="highlight">HAVING</span> — это оператор в SQL, который используется для фильтрации результатов группировки,
        созданной с помощью оператора <code>GROUP BY</code>. В отличие от <code>WHERE</code>, который фильтрует строки до
        группировки, <code>HAVING</code> применяется к уже сгруппированным данным.
    </p>

    <h2>Основные особенности HAVING</h2>
    <ul>
        <li>
            <span class="highlight">Фильтрация после группировки:</span>
            <p>
                <code>HAVING</code> используется для фильтрации групп данных, созданных с помощью <code>GROUP BY</code>.
                Он позволяет отфильтровать группы по условию, которое применяется к агрегированным данным
                (например, сумма, среднее значение, количество).
            </p>
        </li>
        <li>
            <span class="highlight">Использование с агрегатными функциями:</span>
            <p>
                <code>HAVING</code> часто используется вместе с агрегатными функциями, такими как <code>SUM()</code>,
                <code>AVG()</code>, <code>COUNT()</code>, <code>MIN()</code>, <code>MAX()</code>.
            </p>
        </li>
        <li>
            <span class="highlight">Применение после GROUP BY:</span>
            <p>
                <code>HAVING</code> всегда используется после <code>GROUP BY</code> и перед <code>ORDER BY</code> (если он есть).
            </p>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>HAVING</code> нельзя использовать без <code>GROUP BY</code>,
            если только в запросе не используются агрегатные функции для всей таблицы.
        </p>
    </div>

    <h2>Примеры использования HAVING</h2>
    <pre><code>
-- Пример 1: Фильтрация групп по сумме
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;

-- Пример 2: Фильтрация групп по количеству записей
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;

-- Пример 3: Фильтрация групп по среднему значению
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
    </code></pre>
    <p>
        В этих примерах <code>HAVING</code> используется для фильтрации групп данных по сумме зарплат,
        количеству сотрудников и среднему значению зарплаты.
    </p>

    <h2>Разница между WHERE и HAVING</h2>
    <table>
        <thead>
            <tr>
                <th>Критерий</th>
                <th>WHERE</th>
                <th>HAVING</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Применение</td>
                <td>Фильтрует строки до группировки.</td>
                <td>Фильтрует группы после группировки.</td>
            </tr>
            <tr>
                <td>Использование с агрегатными функциями</td>
                <td>Не может использоваться с агрегатными функциями.</td>
                <td>Может использоваться с агрегатными функциями.</td>
            </tr>
            <tr>
                <td>Порядок выполнения</td>
                <td>Выполняется до <code>GROUP BY</code>.</td>
                <td>Выполняется после <code>GROUP BY</code>.</td>
            </tr>
        </tbody>
    </table>

    <h2>Когда использовать HAVING?</h2>
    <ul>
        <li>
            <span class="highlight">Фильтрация групп:</span>
            <p>
                Используйте <code>HAVING</code>, когда нужно отфильтровать группы данных по условию,
                которое зависит от агрегированных значений (например, сумма, среднее значение, количество).
            </p>
        </li>
        <li>
            <span class="highlight">Анализ данных:</span>
            <p>
                <code>HAVING</code> полезен для анализа данных, таких как поиск отделов с высокой средней зарплатой
                или групп с большим количеством записей.
            </p>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        Оператор <code>HAVING</code> — это мощный инструмент для фильтрации групп данных в SQL. Он позволяет
        отфильтровать результаты группировки по условиям, которые зависят от агрегированных значений.
        Понимание разницы между <code>WHERE</code> и <code>HAVING</code> помогает эффективно использовать их
        в запросах для анализа и обработки данных.
    </p>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('06d29f67-73ca-4df8-b333-83614f6ca4d9', 'Пирамида тестирования', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Пирамида тестирования</title>
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
    <h1>Пирамида тестирования</h1>
    <p>
        Пирамида тестирования — это концепция, которая помогает организовать процесс тестирования программного
        обеспечения. Она показывает, какие типы тестов должны быть в проекте и в каком соотношении.
        Пирамида состоит из нескольких уровней, каждый из которых отвечает за определённый аспект тестирования.
    </p>

    <h2>Уровни пирамиды тестирования</h2>
    <ul>
        <li>
            <span class="highlight">Unit-тесты (Модульные тесты):</span>
            <p>
                Это тесты, которые проверяют работу отдельных компонентов или функций в изоляции. Они находятся
                в основании пирамиды, так как их должно быть больше всего. Unit-тесты выполняются быстро и
                помогают находить ошибки на ранних этапах разработки.
            </p>
            <p>
                <strong>Пример:</strong> Тестирование функции, которая складывает два числа.
            </p>
        </li>
        <li>
            <span class="highlight">Интеграционные тесты:</span>
            <p>
                Эти тесты проверяют взаимодействие между несколькими модулями или компонентами системы.
                Они находятся на втором уровне пирамиды и помогают убедиться, что отдельные части системы
                работают вместе корректно.
            </p>
            <p>
                <strong>Пример:</strong> Тестирование взаимодействия между базой данных и API.
            </p>
        </li>
        <li>
            <span class="highlight">End-to-End (E2E) тесты:</span>
            <p>
                Эти тесты проверяют работу системы в целом, имитируя действия пользователя. Они находятся
                на вершине пирамиды и выполняются медленнее всего. E2E-тесты помогают убедиться, что
                система работает так, как ожидается, с точки зрения пользователя.
            </p>
            <p>
                <strong>Пример:</strong> Тестирование процесса регистрации пользователя на сайте.
            </p>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Пирамида тестирования подчеркивает, что основное внимание
            должно уделяться unit-тестам, так как они быстрые, дешёвые и помогают находить ошибки на ранних
            этапах. Интеграционные и E2E-тесты важны, но их должно быть меньше, так как они медленные и
            дорогие в поддержке.
        </p>
    </div>

    <h2>Преимущества использования пирамиды тестирования</h2>
    <ul>
        <li>
            <span class="highlight">Экономия времени:</span> Большое количество unit-тестов позволяет быстро
            находить и исправлять ошибки, не дожидаясь выполнения медленных E2E-тестов.
        </li>
        <li>
            <span class="highlight">Упрощение поддержки:</span> Unit-тесты легче поддерживать, так как они
            изолированы и не зависят от других частей системы.
        </li>
        <li>
            <span class="highlight">Раннее обнаружение ошибок:</span> Ошибки обнаруживаются на этапе разработки,
            что снижает стоимость их исправления.
        </li>
        <li>
            <span class="highlight">Улучшение качества кода:</span> Пирамида тестирования способствует написанию
            модульного и тестируемого кода.
        </li>
    </ul>

    <h2>Пример распределения тестов</h2>
    <ul>
        <li>
            <span class="highlight">Unit-тесты:</span> 70% от общего количества тестов.
        </li>
        <li>
            <span class="highlight">Интеграционные тесты:</span> 20% от общего количества тестов.
        </li>
        <li>
            <span class="highlight">End-to-End тесты:</span> 10% от общего количества тестов.
        </li>
    </ul>

    <h2>Инструменты для тестирования</h2>
    <ul>
        <li>
            <span class="highlight">Unit-тесты:</span>
            <ul>
                <li><code>Jest</code> (JavaScript)</li>
                <li><code>JUnit</code> (Java)</li>
                <li><code>Pytest</code> (Python)</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Интеграционные тесты:</span>
            <ul>
                <li><code>Postman</code> (API-тестирование)</li>
                <li><code>TestNG</code> (Java)</li>
            </ul>
        </li>
        <li>
            <span class="highlight">End-to-End тесты:</span>
            <ul>
                <li><code>Cypress</code> (JavaScript)</li>
                <li><code>Selenium</code> (мультиязычный)</li>
            </ul>
        </li>
    </ul>
</body>
</html>', 'TEST', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('65459b67-e992-4fbd-97ee-d9a22d746a95', 'Как настроить Hibernate в проекте с использованием XML и аннотаций?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Настройка Hibernate с использованием XML и аннотаций</title>
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
        <h1>Настройка Hibernate в проекте</h1>
        <p>
            Hibernate можно настроить с использованием XML-файлов или аннотаций. Оба подхода имеют свои преимущества и могут использоваться в зависимости от требований проекта.
        </p>

        <h2>Настройка Hibernate с использованием XML</h2>
        <p>
            XML-файлы используются для конфигурации Hibernate и маппинга сущностей на таблицы базы данных.
        </p>

        <h3>1. Конфигурационный файл (<code>hibernate.cfg.xml</code>)</h3>
        <p>
            Создайте файл <code>hibernate.cfg.xml</code> в папке <code>src/main/resources</code>. Этот файл содержит настройки подключения к базе данных и другие параметры Hibernate.
        </p>
        <pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;!DOCTYPE hibernate-configuration PUBLIC
        "-//Hibernate/Hibernate Configuration DTD 3.0//EN"
        "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd"&gt;
&lt;hibernate-configuration&gt;
    &lt;session-factory&gt;
        &lt;!-- Настройки подключения к базе данных --&gt;
        &lt;property name="hibernate.connection.driver_class"&gt;com.mysql.cj.jdbc.Driver&lt;/property&gt;
        &lt;property name="hibernate.connection.url"&gt;jdbc:mysql://localhost:3306/mydatabase&lt;/property&gt;
        &lt;property name="hibernate.connection.username"&gt;root&lt;/property&gt;
        &lt;property name="hibernate.connection.password"&gt;password&lt;/property&gt;

        &lt;!-- Настройки диалекта СУБД --&gt;
        &lt;property name="hibernate.dialect"&gt;org.hibernate.dialect.MySQL8Dialect&lt;/property&gt;

        &lt;!-- Отображение SQL-запросов в консоль --&gt;
        &lt;property name="hibernate.show_sql"&gt;true&lt;/property&gt;
        &lt;property name="hibernate.format_sql"&gt;true&lt;/property&gt;

        &lt;!-- Указание файлов маппинга --&gt;
        &lt;mapping resource="com/example/User.hbm.xml"/&gt;
    &lt;/session-factory&gt;
&lt;/hibernate-configuration&gt;</code></pre>

        <h3>2. Файл маппинга сущности (<code>User.hbm.xml</code>)</h3>
        <p>
            Создайте файл маппинга для каждой сущности. Например, для класса <code>User</code>:
        </p>
        <pre><code>&lt;?xml version="1.0"?&gt;
&lt;!DOCTYPE hibernate-mapping PUBLIC
        "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
        "http://www.hibernate.org/dtd/hibernate-mapping-3.0.dtd"&gt;
&lt;hibernate-mapping&gt;
    &lt;class name="com.example.User" table="users"&gt;
        &lt;id name="id" column="id"&gt;
            &lt;generator class="native"/&gt;
        &lt;/id&gt;
        &lt;property name="name" column="name"/&gt;
    &lt;/class&gt;
&lt;/hibernate-mapping&gt;</code></pre>

        <h2>Настройка Hibernate с использованием аннотаций</h2>
        <p>
            Аннотации позволяют настроить маппинг сущностей непосредственно в коде Java, что делает его более удобным и читаемым.
        </p>

        <h3>1. Конфигурационный файл (<code>hibernate.cfg.xml</code>)</h3>
        <p>
            Файл конфигурации остаётся таким же, но вместо указания файлов маппинга добавляется класс сущности:
        </p>
        <pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;!DOCTYPE hibernate-configuration PUBLIC
        "-//Hibernate/Hibernate Configuration DTD 3.0//EN"
        "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd"&gt;
&lt;hibernate-configuration&gt;
    &lt;session-factory&gt;
        &lt;!-- Настройки подключения к базе данных --&gt;
        &lt;property name="hibernate.connection.driver_class"&gt;com.mysql.cj.jdbc.Driver&lt;/property&gt;
        &lt;property name="hibernate.connection.url"&gt;jdbc:mysql://localhost:3306/mydatabase&lt;/property&gt;
        &lt;property name="hibernate.connection.username"&gt;root&lt;/property&gt;
        &lt;property name="hibernate.connection.password"&gt;password&lt;/property&gt;

        &lt;!-- Настройки диалекта СУБД --&gt;
        &lt;property name="hibernate.dialect"&gt;org.hibernate.dialect.MySQL8Dialect&lt;/property&gt;

        &lt;!-- Отображение SQL-запросов в консоль --&gt;
        &lt;property name="hibernate.show_sql"&gt;true&lt;/property&gt;
        &lt;property name="hibernate.format_sql"&gt;true&lt;/property&gt;

        &lt;!-- Указание классов сущностей --&gt;
        &lt;mapping class="com.example.User"/&gt;
    &lt;/session-factory&gt;
&lt;/hibernate-configuration&gt;</code></pre>

        <h3>2. Класс сущности с аннотациями</h3>
        <p>
            Используйте аннотации для маппинга сущности на таблицу. Например:
        </p>
        <pre><code>package com.example;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}</code></pre>

        <h2>Инициализация Hibernate</h2>
        <p>
            Для инициализации Hibernate создайте класс <code>HibernateUtil</code>, который будет управлять сессиями:
        </p>
        <pre><code>package com.example;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    private static final SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        try {
            return new Configuration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void shutdown() {
        getSessionFactory().close();
    }
}</code></pre>

        <h2>Заключение</h2>
        <p>
            Настройка Hibernate с использованием XML или аннотаций позволяет гибко управлять маппингом сущностей и подключением к базе данных. XML-файлы подходят для сложных конфигураций, а аннотации делают код более читаемым и удобным для разработки.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e05365e6-6e60-49bc-abed-c8e97c0c5174', 'Как влияет операция persist на Entity-объекты каждого из четырех  статусов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Влияние операции persist на Entity-объекты</title>
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
    <h1>Влияние операции persist на Entity-объекты</h1>
    <p>
        Операция <code>persist()</code> в JPA (Java Persistence API) по-разному влияет на Entity-объекты в зависимости от их
        текущего состояния (статуса). Ниже описано, как эта операция взаимодействует с каждым из четырёх статусов.
    </p>

    <h2>Влияние на каждый статус</h2>
    <ul>
        <li>
            <span class="highlight">New (Transient):</span>
            <ul>
                <li>Объект переходит из состояния <code>Transient</code> в состояние <code>Managed</code>.</li>
                <li>Объект будет сохранён в базу данных при коммите транзакции или в результате выполнения
                    операции <code>flush()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Managed:</span>
            <ul>
                <li>Операция <code>persist()</code> игнорируется, так как объект уже управляется контекстом
                    персистентности.</li>
                <li>Однако, если у объекта есть зависимые сущности с аннотациями каскадных изменений
                    (например, <code>CascadeType.PERSIST</code>), они могут перейти в состояние <code>Managed</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Detached:</span>
            <ul>
                <li>Вызов <code>persist()</code> для объекта в состоянии <code>Detached</code> приведёт к исключению
                    (<code>IllegalArgumentException</code>) либо сразу, либо на этапе коммита транзакции.</li>
                <li>Для повторного присоединения объекта к контексту персистентности используйте метод
                    <code>merge()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Removed:</span>
            <ul>
                <li>Объект возвращается в состояние <code>Managed</code>, но только в рамках текущей транзакции.</li>
                <li>Если транзакция завершится успешно, объект останется в базе данных.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>persist()</code> только для новых объектов (<code>Transient</code>).</li>
                <li>Для объектов в состоянии <code>Detached</code> используйте <code>merge()</code>.</li>
                <li>Операция <code>persist()</code> не влияет на уже управляемые объекты, но может повлиять на
                    зависимые сущности с каскадными изменениями.</li>
            </ul>
        </p>
    </div>

    <h2>Примеры</h2>
    <pre><code>
EntityManager em = ...;

// New (Transient) → Managed
MyEntity newEntity = new MyEntity();
em.persist(newEntity); // Объект переходит в состояние Managed

// Managed → Игнорируется
MyEntity managedEntity = em.find(MyEntity.class, 1L);
em.persist(managedEntity); // Операция игнорируется

// Detached → Исключение
MyEntity detachedEntity = em.find(MyEntity.class, 2L);
em.detach(detachedEntity);
em.persist(detachedEntity); // Исключение!

// Removed → Managed (в рамках транзакции)
MyEntity removedEntity = em.find(MyEntity.class, 3L);
em.remove(removedEntity);
em.persist(removedEntity); // Возвращается в состояние Managed
    </code></pre>
    <p>
        В этом примере показано, как операция <code>persist()</code> влияет на объекты в разных состояниях.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a9150ded-a570-4d66-a2d8-6b987dc9cd7f', 'Расскажите про паттерн «Декоратор» (Decorator)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн «Декоратор» (Decorator)</title>
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
    <h1>Паттерн «Декоратор» (Decorator)</h1>
    <p>
        <span class="highlight">Decorator</span> — это структурный паттерн проектирования, который позволяет добавлять объектам новую функциональность, оборачивая их в полезные «обёртки».
    </p>

    <h2>Как работает Decorator?</h2>
    <ul>
        <li>
            Целевой объект помещается в другой объект-обёртку, который запускает базовое поведение обёрнутого объекта, а затем добавляет к результату что-то своё.
        </li>
        <li>
            Оба объекта имеют общий интерфейс, поэтому для пользователя нет никакой разницы, с каким объектом работать — чистым или обёрнутым. Можно использовать несколько разных обёрток одновременно — результат будет иметь объединённое поведение всех обёрток сразу.
        </li>
        <li>
            В отличие от адаптера, декоратор может изменять состояние объекта.
        </li>
    </ul>

    <h2>Плюсы и минусы Decorator</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Большая гибкость, чем у наследования.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минусы:</span>
            <ul>
                <li>Труднее конфигурировать многократно обёрнутые объекты.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн «Декоратор» полезен, когда нужно динамически добавлять или изменять поведение объектов без изменения их исходного кода.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b0f80b91-cf2a-4780-9bad-cc436561c3a6', 'Что такое Thread Pool и как он помогает управлять потоками в приложении?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thread Pool в Java</title>
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
        <h1>Что такое Thread Pool и как он помогает управлять потоками в приложении?</h1>
        <p>
            <span class="highlight">Thread Pool (пул потоков)</span> — это механизм управления потоками, который позволяет эффективно использовать ресурсы системы, ограничивая количество одновременно работающих потоков и переиспользуя их для выполнения задач. В Java пул потоков реализован через интерфейс <code>ExecutorService</code> и его реализации.
        </p>

        <h2>Основные понятия Thread Pool</h2>
        <ul>
            <li>
                <span class="highlight">Пул потоков:</span> Набор потоков, которые могут выполнять задачи параллельно.
            </li>
            <li>
                <span class="highlight">Задачи (tasks):</span> Единицы работы, которые передаются в пул потоков для выполнения.
            </li>
            <li>
                <span class="highlight">Очередь задач:</span> Задачи, которые ещё не были выполнены, помещаются в очередь и выполняются по мере освобождения потоков.
            </li>
        </ul>

        <h2>Преимущества использования Thread Pool</h2>
        <ul>
            <li>
                <span class="highlight">Эффективное использование ресурсов:</span> Пул потоков ограничивает количество одновременно работающих потоков, что снижает нагрузку на систему.
            </li>
            <li>
                <span class="highlight">Переиспользование потоков:</span> Потоки в пуле могут выполнять несколько задач, что уменьшает накладные расходы на создание и уничтожение потоков.
            </li>
            <li>
                <span class="highlight">Управление задачами:</span> Пул потоков позволяет легко управлять задачами, такими как их отмена, планирование и контроль выполнения.
            </li>
            <li>
                <span class="highlight">Масштабируемость:</span> Пул потоков легко масштабируется для выполнения большого количества задач.
            </li>
        </ul>

        <h2>Типы Thread Pool в Java</h2>
        <p>
            В Java есть несколько типов пулов потоков, которые можно создать с помощью фабричных методов класса <code>Executors</code>:
        </p>
        <ul>
            <li>
                <span class="highlight">FixedThreadPool:</span> Пул с фиксированным количеством потоков.
            </li>
            <li>
                <span class="highlight">CachedThreadPool:</span> Пул, который создаёт новые потоки по мере необходимости и переиспользует их.
            </li>
            <li>
                <span class="highlight">SingleThreadExecutor:</span> Пул с одним потоком, который выполняет задачи последовательно.
            </li>
            <li>
                <span class="highlight">ScheduledThreadPool:</span> Пул для выполнения задач по расписанию или с задержкой.
            </li>
        </ul>

        <h2>Пример использования Thread Pool</h2>
        <p>
            Рассмотрим пример использования <code>FixedThreadPool</code> для выполнения задач:
        </p>
        <pre><code>import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class Main {
    public static void main(String[] args) {
        // Создание пула потоков с фиксированным количеством потоков (например, 4)
        ExecutorService executor = Executors.newFixedThreadPool(4);

        // Передача задач в пул потоков
        for (int i = 0; i < 10; i++) {
            int taskId = i;
            executor.submit(() -> {
                System.out.println("Задача " + taskId + " выполняется потоком: " + Thread.currentThread().getName());
                try {
                    Thread.sleep(1000); // Имитация работы
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                System.out.println("Задача " + taskId + " завершена");
            });
        }

        // Завершение работы пула потоков
        executor.shutdown();
    }
}</code></pre>
        <p>
            В этом примере создаётся пул из 4 потоков, которые выполняют 10 задач. Пул потоков автоматически распределяет задачи между потоками.
        </p>

        <h2>Как Thread Pool помогает управлять потоками?</h2>
        <ul>
            <li>
                <span class="highlight">Ограничение количества потоков:</span> Пул потоков ограничивает количество одновременно работающих потоков, что предотвращает перегрузку системы.
            </li>
            <li>
                <span class="highlight">Переиспользование потоков:</span> Потоки в пуле могут выполнять несколько задач, что уменьшает накладные расходы на создание и уничтожение потоков.
            </li>
            <li>
                <span class="highlight">Управление очередью задач:</span> Пул потоков автоматически управляет очередью задач, распределяя их между потоками.
            </li>
            <li>
                <span class="highlight">Контроль выполнения задач:</span> Пул потоков позволяет отслеживать и управлять выполнением задач (например, отменять их).
            </li>
        </ul>

        <h2>Рекомендации по использованию Thread Pool</h2>
        <ul>
            <li>
                <span class="highlight">Выбирайте подходящий тип пула:</span> Используйте <code>FixedThreadPool</code> для задач с фиксированной нагрузкой и <code>CachedThreadPool</code> для задач с переменной нагрузкой.
            </li>
            <li>
                <span class="highlight">Управляйте размером пула:</span> Размер пула должен быть оптимальным для вашей системы и задач.
            </li>
            <li>
                <span class="highlight">Завершайте пул потоков:</span> Всегда вызывайте <code>shutdown()</code> или <code>shutdownNow()</code> для завершения работы пула потоков.
            </li>
            <li>
                <span class="highlight">Используйте <code>Future</code> для управления задачами:</span> Это позволяет отслеживать выполнение задач и получать результаты.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Thread Pool — это мощный инструмент для управления потоками в Java-приложениях. Он позволяет эффективно использовать ресурсы системы, переиспользовать потоки и управлять выполнением задач. Использование пула потоков помогает создавать масштабируемые и производительные многопоточные приложения.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('72e53628-d691-48c1-abfb-f2cc03e7e2f7', 'Как заинжектить коллекцию?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Внедрение коллекций в Spring</title>
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
    <h1>Как заинжектить коллекцию?</h1>
    <p>
        В Spring можно внедрять не только одиночные бины, но и коллекции, такие как массивы, списки, множества и мапы. Для этого используется аннотация <code>@Autowired</code>. Spring автоматически внедряет все бины, подходящие по типу, в указанную коллекцию.
    </p>

    <h2>Внедрение коллекций с помощью @Autowired</h2>
    <p>
        Spring поддерживает внедрение коллекций следующих типов:
    </p>
    <ul>
        <li>
            <span class="highlight">Массивы:</span> Все бины подходящего типа будут внедрены в массив.
        </li>
        <li>
            <span class="highlight">Списки (List):</span> Все бины подходящего типа будут внедрены в список.
        </li>
        <li>
            <span class="highlight">Множества (Set):</span> Все бины подходящего типа будут внедрены в множество.
        </li>
        <li>
            <span class="highlight">Мапы (Map):</span> Все бины подходящего типа будут внедрены в мапу, где ключом будет имя бина.
        </li>
    </ul>

    <h3>Примеры внедрения коллекций</h3>
    <pre><code>@Component
public class MyComponent {

    @Autowired
    private List&lt;MyService&gt; services; // Внедрение всех бинов типа MyService в список

    @Autowired
    private Set&lt;MyService&gt; serviceSet; // Внедрение всех бинов типа MyService в множество

    @Autowired
    private Map&lt;String, MyService&gt; serviceMap; // Внедрение всех бинов типа MyService в мапу, где ключ — имя бина

    @Autowired
    private MyService[] serviceArray; // Внедрение всех бинов типа MyService в массив
}</code></pre>

    <h2>Использование @Qualifier для фильтрации бинов</h2>
    <p>
        Если необходимо внедрить только определённые бины, можно использовать аннотацию <code>@Qualifier</code>. Она позволяет указать, какие именно бины должны быть внедрены.
    </p>
    <pre><code>@Component
public class MyComponent {

    @Autowired
    @Qualifier("specificService")
    private List&lt;MyService&gt; specificServices; // Внедрение только бинов с Qualifier "specificService"
}</code></pre>

    <h2>Упорядочивание бинов в коллекциях</h2>
    <p>
        Если бины внедряются в список или массив, их порядок можно контролировать с помощью аннотации <code>@Order</code> или интерфейса <code>Ordered</code>.
    </p>
    <ul>
        <li>
            <span class="highlight">Аннотация @Order:</span> Указывает порядок бина в коллекции.
            <pre><code>@Component
@Order(1)
public class FirstService implements MyService {
    // Логика бина
}

@Component
@Order(2)
public class SecondService implements MyService {
    // Логика бина
}</code></pre>
        </li>
        <li>
            <span class="highlight">Интерфейс Ordered:</span> Позволяет задать порядок программно.
            <pre><code>@Component
public class ThirdService implements MyService, Ordered {

    @Override
    public int getOrder() {
        return 3; // Указывает порядок бина
    }
}</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Упорядочивание работает только для списков и массивов. Для множеств (Set) и мап (Map) порядок не гарантируется.
        </p>
    </div>

    <h2>Преимущества внедрения коллекций</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет внедрять все бины определённого типа без необходимости явного указания каждого из них.
        </li>
        <li>
            <span class="highlight">Удобство:</span> Упрощает управление зависимостями, особенно когда количество бинов велико.
        </li>
        <li>
            <span class="highlight">Поддержка упорядочивания:</span> Возможность контролировать порядок бинов в списках и массивах.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Только для бинов:</span> Внедрение коллекций работает только для бинов, управляемых Spring.
        </li>
        <li>
            <span class="highlight">Нет упорядочивания для Set и Map:</span> Порядок элементов в множествах и мапах не гарантируется.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1af8f93d-221a-4351-b66a-da0d44fb7c02', 'Наследование от Thread и интерфейса Runnable', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Наследование от Thread и реализация интерфейса Runnable</title>
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
    <h1>Наследование от Thread и реализация интерфейса Runnable</h1>
    <p>
        В Java многопоточность реализуется с помощью двух основных подходов: наследования от класса <code>Thread</code>
        и реализации интерфейса <code>Runnable</code>. Оба подхода позволяют создавать и управлять потоками, но
        имеют свои особенности и преимущества.
    </p>

    <h2>Наследование от класса Thread</h2>
    <p>
        Класс <code>Thread</code> предоставляет базовую функциональность для создания и управления потоками.
        Чтобы создать поток, можно унаследоваться от этого класса и переопределить метод <code>run()</code>.
    </p>
    <pre><code>
class MyThread extends Thread {
    @Override
    public void run() {
        System.out.println("Поток запущен: " + this.getName());
    }
}

// Использование
MyThread thread = new MyThread();
thread.start(); // Запуск потока
    </code></pre>
    <ul>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Простота использования.</li>
                <li>Прямой доступ к методам класса <code>Thread</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Невозможность наследования от других классов (Java не поддерживает множественное наследование).</li>
                <li>Менее гибкий подход по сравнению с <code>Runnable</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Реализация интерфейса Runnable</h2>
    <p>
        Интерфейс <code>Runnable</code> является более предпочтительным способом создания потоков. Он содержит
        единственный метод <code>run()</code>, который должен быть реализован. Для запуска потока используется
        класс <code>Thread</code>, которому передаётся объект, реализующий <code>Runnable</code>.
    </p>
    <pre><code>
class MyRunnable implements Runnable {
    @Override
    public void run() {
        System.out.println("Поток запущен: " + Thread.currentThread().getName());
    }
}

// Использование
MyRunnable myRunnable = new MyRunnable();
Thread thread = new Thread(myRunnable);
thread.start(); // Запуск потока
    </code></pre>
    <ul>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Гибкость: можно наследовать другие классы.</li>
                <li>Подходит для использования с пулами потоков (например, <code>ExecutorService</code>).</li>
                <li>Более чистый дизайн кода.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Требуется создание объекта <code>Thread</code> для запуска.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> В современных приложениях рекомендуется использовать интерфейс
            <code>Runnable</code>, так как он более гибкий и соответствует принципам объектно-ориентированного
            программирования.
        </p>
    </div>

    <h2>Сравнение подходов</h2>
    <table>
        <thead>
            <tr>
                <th>Критерий</th>
                <th>Наследование от Thread</th>
                <th>Реализация Runnable</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Гибкость</td>
                <td>Ограничена (нет множественного наследования)</td>
                <td>Высокая (можно реализовать другие интерфейсы)</td>
            </tr>
            <tr>
                <td>Использование с пулами потоков</td>
                <td>Нет</td>
                <td>Да</td>
            </tr>
            <tr>
                <td>Простота использования</td>
                <td>Проще</td>
                <td>Требует создания Thread</td>
            </tr>
            <tr>
                <td>Рекомендуется для современных приложений</td>
                <td>Нет</td>
                <td>Да</td>
            </tr>
        </tbody>
    </table>

    <h2>Пример использования Runnable с ExecutorService</h2>
    <pre><code>
ExecutorService executor = Executors.newFixedThreadPool(5);
for (int i = 0; i < 10; i++) {
    Runnable task = new MyRunnable();
    executor.execute(task);
}
executor.shutdown();
    </code></pre>
    <p>
        В этом примере задачи, реализующие <code>Runnable</code>, выполняются в пуле потоков, что позволяет
        эффективно управлять ресурсами.
    </p>

    <h2>Заключение</h2>
    <p>
        Оба подхода имеют свои преимущества, но в большинстве случаев рекомендуется использовать интерфейс
        <code>Runnable</code>. Он обеспечивает большую гибкость и лучше соответствует современным стандартам
        разработки.
    </p>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('533ca2bf-0e11-4646-a126-df1bf81c250f', 'Как влияет операция detach на Entity-объекты каждого из четырех  статусов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Влияние операции detach на Entity-объекты</title>
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
    <h1>Влияние операции detach на Entity-объекты</h1>
    <p>
        Операция <code>detach()</code> в JPA (Java Persistence API) по-разному влияет на Entity-объекты в зависимости от их
        текущего состояния (статуса). Ниже описано, как эта операция взаимодействует с каждым из четырёх статусов.
    </p>

    <h2>Влияние на каждый статус</h2>
    <ul>
        <li>
            <span class="highlight">Managed:</span>
            <ul>
                <li>Объект переходит из состояния <code>Managed</code> в состояние <code>Detached</code>.</li>
                <li>После этого объект больше не управляется контекстом персистентности, и изменения в нём
                    не будут синхронизированы с базой данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Removed:</span>
            <ul>
                <li>Объект переходит из состояния <code>Removed</code> в состояние <code>Detached</code>.</li>
                <li>Он больше не помечен для удаления, но и не управляется контекстом персистентности.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">New (Transient), Detached:</span>
            <ul>
                <li>Операция <code>detach()</code> игнорируется, так как объект уже не управляется контекстом
                    персистентности.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>detach()</code> для отключения объектов от контекста персистентности, если
                    они больше не нужны в управляемом состоянии.</li>
                <li>Операция <code>detach()</code> не влияет на объекты в состояниях <code>New</code> или <code>Detached</code>, так как
                    они уже не управляются контекстом.</li>
            </ul>
        </p>
    </div>

    <h2>Примеры</h2>
    <pre><code>
EntityManager em = ...;

// Managed → Detached
MyEntity managedEntity = em.find(MyEntity.class, 1L);
em.detach(managedEntity); // Объект переходит в состояние Detached

// Removed → Detached
MyEntity removedEntity = em.find(MyEntity.class, 2L);
em.remove(removedEntity);
em.detach(removedEntity); // Объект переходит в состояние Detached

// New (Transient) → Игнорируется
MyEntity newEntity = new MyEntity();
em.detach(newEntity); // Операция игнорируется

// Detached → Игнорируется
MyEntity detachedEntity = em.find(MyEntity.class, 3L);
em.detach(detachedEntity);
em.detach(detachedEntity); // Операция игнорируется
    </code></pre>
    <p>
        В этом примере показано, как операция <code>detach()</code> влияет на объекты в разных состояниях.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c1bf0660-90e9-40e1-99eb-cca0030352d8', 'Что такое инверсия контроля (IoC) и внедрение зависимостей (DI)? Как эти  принципы реализованы в Spring?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Инверсия контроля (IoC) и внедрение зависимостей (DI) в Spring</title>
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
    <h1>Инверсия контроля (IoC) и внедрение зависимостей (DI) в Spring</h1>
    <p>
        <strong>Инверсия контроля (Inversion of Control, IoC)</strong> и <strong>внедрение зависимостей (Dependency Injection, DI)</strong> — это
        ключевые принципы, на которых основан фреймворк Spring. Они позволяют создавать слабосвязанные и
        легко тестируемые приложения.
    </p>

    <h2>Инверсия контроля (IoC)</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span>
            <ul>
                <li>IoC — это подход, при котором управление созданием и жизненным циклом объектов передаётся
                    контейнеру (например, Spring IoC-контейнеру).</li>
                <li>Вместо того чтобы вручную создавать и управлять объектами, разработчик делегирует эту
                    ответственность фреймворку.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Упрощает управление зависимостями между объектами.</li>
                <li>Позволяет создавать слабосвязанные компоненты, что упрощает тестирование и поддержку кода.</li>
            </ul>
        </li>
    </ul>

    <h2>Внедрение зависимостей (DI)</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span>
            <ul>
                <li>DI — это шаблон проектирования, при котором зависимости передаются объектам извне, а не
                    создаются внутри самих объектов.</li>
                <li>Spring IoC-контейнер автоматически внедряет зависимости через конструктор, методы или поля.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Позволяет писать слабосвязанный код, что упрощает тестирование и повторное использование
                    компонентов.</li>
                <li>Упрощает конфигурацию приложения.</li>
            </ul>
        </li>
    </ul>

    <h2>Реализация IoC и DI в Spring</h2>
    <p>
        В Spring IoC-контейнер управляет объектами, называемыми <strong>бинами (beans)</strong>. Конфигурация контейнера
        может осуществляться через аннотации или XML-файлы.
    </p>

    <h3>1. Конфигурация через аннотации</h3>
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
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Класс <code>UserService</code> зависит от <code>UserRepository</code>.</li>
            <li>Аннотация <code>@Autowired</code> указывает Spring на необходимость внедрения зависимости через
                конструктор.</li>
            <li>Аннотации <code>@Service</code> и <code>@Repository</code> помечают классы как бины, управляемые Spring.</li>
        </ul>
    </p>

    <h3>2. Конфигурация через XML</h3>
    <pre><code>
<beans>
    <bean id="userRepository" class="com.example.UserRepository" />
    <bean id="userService" class="com.example.UserService">
        <constructor-arg ref="userRepository" />
    </bean>
</beans>
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Бины <code>UserRepository</code> и <code>UserService</code> определены в XML-файле.</li>
            <li>Зависимость <code>UserRepository</code> внедряется в <code>UserService</code> через конструктор.</li>
        </ul>
    </p>

    <h2>Способы внедрения зависимостей</h2>
    <ul>
        <li>
            <span class="highlight">Внедрение через конструктор:</span>
            <ul>
                <li>Зависимости передаются через параметры конструктора.</li>
                <li>Рекомендуемый способ, так как обеспечивает неизменяемость зависимостей.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Внедрение через методы (setter):</span>
            <ul>
                <li>Зависимости передаются через методы класса.</li>
                <li>Подходит для опциональных зависимостей.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Внедрение через поля:</span>
            <ul>
                <li>Зависимости внедряются напрямую в поля класса.</li>
                <li>Менее предпочтительный способ из-за сложности тестирования.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте IoC и DI для создания слабосвязанных и легко тестируемых приложений.</li>
                <li>Предпочитайте внедрение через конструктор для обязательных зависимостей.</li>
                <li>Используйте аннотации для упрощения конфигурации, если это возможно.</li>
            </ul>
        </p>
    </div>

    <h2>Пример внедрения через конструктор</h2>
    <pre><code>
@Service
public class OrderService {
    private final PaymentService paymentService;

    @Autowired
    public OrderService(PaymentService paymentService) {
        this.paymentService = paymentService;
    }

    public void processOrder(Order order) {
        paymentService.processPayment(order);
    }
}

@Service
public class PaymentService {
    public void processPayment(Order order) {
        // Логика обработки платежа
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Класс <code>OrderService</code> зависит от <code>PaymentService</code>.</li>
            <li>Зависимость внедряется через конструктор с помощью аннотации <code>@Autowired</code>.</li>
        </ul>
    </p>

    <h2>Пример внедрения через setter</h2>
    <pre><code>
@Service
public class ProductService {
    private ProductRepository productRepository;

    @Autowired
    public void setProductRepository(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void saveProduct(Product product) {
        productRepository.save(product);
    }
}

@Repository
public class ProductRepository {
    public void save(Product product) {
        // Логика сохранения продукта
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Зависимость <code>ProductRepository</code> внедряется через метод <code>setProductRepository</code>.</li>
            <li>Аннотация <code>@Autowired</code> указывает Spring на необходимость внедрения зависимости.</li>
        </ul>
    </p>

    <h2>Сравнение IoC и DI</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>IoC</th>
                <th>DI</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Определение</td>
                <td>Подход, при котором управление объектами передаётся контейнеру.</td>
                <td>Шаблон проектирования, при котором зависимости передаются объектам извне.</td>
            </tr>
            <tr>
                <td>Реализация</td>
                <td>Реализуется через IoC-контейнер (например, Spring).</td>
                <td>Реализуется через внедрение зависимостей (конструктор, методы, поля).</td>
            </tr>
            <tr>
                <td>Преимущества</td>
                <td>Упрощает управление жизненным циклом объектов.</td>
                <td>Позволяет создавать слабосвязанные и легко тестируемые компоненты.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cc0f6105-85aa-405b-8a3d-a56e71fcc927', 'Что произойдет, если один метод с @Transactional вызовет другой метод с  @Transactional?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вызов транзакционного метода внутри другого транзакционного метода</title>
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
    <h1>Что произойдет, если один метод с @Transactional вызовет другой метод с @Transactional?</h1>
    <p>
        В Spring, если метод, помеченный аннотацией <code>@Transactional</code>, вызывает другой метод, также помеченный <code>@Transactional</code>, внутри одного и того же сервиса, то второй метод будет выполняться в контексте первой транзакции. Это связано с тем, как Spring работает с прокси и AOP (Aspect-Oriented Programming).
    </p>

    <h2>Почему это происходит?</h2>
    <p>
        Spring создаёт прокси для классов или методов, помеченных аннотацией <code>@Transactional</code>. Однако, если вызов метода происходит внутри того же класса, Spring не может перехватить этот вызов через прокси, так как он работает на уровне вызовов между бинами, а не внутри одного бина.
    </p>

    <h3>Пример:</h3>
    <pre><code>@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Transactional
    public void outerMethod() {
        // Логика первого метода
        innerMethod(); // Вызов второго транзакционного метода
    }

    @Transactional
    public void innerMethod() {
        // Логика второго метода
        userRepository.save(new User("John Doe"));
    }
}</code></pre>

    <p>
        В этом примере метод <code>innerMethod()</code> будет выполняться в контексте транзакции, созданной для <code>outerMethod()</code>. Spring не создаст отдельную транзакцию для <code>innerMethod()</code>, так как вызов происходит внутри одного и того же класса.
    </p>

    <h2>Как это влияет на поведение транзакций?</h2>
    <ul>
        <li>
            <span class="highlight">Единая транзакция:</span> Оба метода будут выполняться в рамках одной транзакции. Если произойдёт ошибка в <code>innerMethod()</code>, то вся транзакция будет откачена, включая изменения, сделанные в <code>outerMethod()</code>.
        </li>
        <li>
            <span class="highlight">Пропагация транзакций:</span> Атрибуты <code>propagation</code> (например, <code>REQUIRES_NEW</code>) не будут работать, так как Spring не создаёт новый прокси для внутреннего вызова.
        </li>
    </ul>

    <h2>Как обойти это ограничение?</h2>
    <p>
        Чтобы внутренний метод выполнялся в отдельной транзакции, можно использовать self-injection (внедрение самого сервиса в себя):
    </p>
    <pre><code>@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService self; // Self-injection

    @Transactional
    public void outerMethod() {
        // Логика первого метода
        self.innerMethod(); // Вызов через прокси
    }

    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void innerMethod() {
        // Логика второго метода
        userRepository.save(new User("John Doe"));
    }
}</code></pre>

    <p>
        В этом случае Spring создаст прокси для вызова <code>innerMethod()</code>, и он будет выполняться в отдельной транзакции, как указано в атрибуте <code>propagation = Propagation.REQUIRES_NEW</code>.
    </p>

    <h2>Преимущества self-injection</h2>
    <ul>
        <li>
            <span class="highlight">Разделение транзакций:</span> Позволяет выполнять внутренние методы в отдельных транзакциях.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Поддерживает все атрибуты аннотации <code>@Transactional</code>, такие как <code>propagation</code>, <code>isolation</code> и другие.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span> Self-injection может усложнить код и сделать его менее очевидным.
        </li>
        <li>
            <span class="highlight">Циклические зависимости:</span> Неправильное использование self-injection может привести к циклическим зависимостям.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Self-injection следует использовать с осторожностью и только в случаях, когда действительно необходимо разделение транзакций.
        </p>
    </div>

    <h2>Итог</h2>
    <p>
        Если метод с <code>@Transactional</code> вызывает другой метод с <code>@Transactional</code> внутри одного сервиса, то оба метода будут выполняться в рамках одной транзакции. Для разделения транзакций можно использовать self-injection, чтобы Spring создал прокси для внутреннего вызова.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('73f8df6f-d417-413e-97e2-6ba5eccaf5e0', 'Что такое "fork" в контексте Git и GitHub, и как он отличается от "cloning"?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fork и Cloning в Git и GitHub</title>
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
    <h1>Fork и Cloning в Git и GitHub</h1>
    <p>
        В контексте Git и GitHub <span class="highlight">fork</span> и <span class="highlight">cloning</span> — это два разных процесса, которые
        используются для работы с репозиториями. Хотя оба связаны с копированием кода, они имеют
        разные цели и используются в разных сценариях. Давайте разберёмся, в чём их основные отличия.
    </p>

    <h2>Что такое Fork?</h2>
    <p>
        <span class="highlight">Fork</span> — это процесс создания копии репозитория на GitHub под вашим аккаунтом. Это позволяет
        вам свободно экспериментировать с кодом, вносить изменения и предлагать их обратно в
        оригинальный репозиторий через Pull Request.
    </p>
    <ul>
        <li>
            <span class="highlight">Как работает Fork:</span>
            <p>
                Когда вы делаете fork репозитория, GitHub создаёт копию этого репозитория в вашем
                аккаунте. Вы можете клонировать этот репозиторий на свой локальный компьютер, вносить
                изменения и отправлять их обратно в оригинальный репозиторий.
            </p>
        </li>
        <li>
            <span class="highlight">Преимущества Fork:</span>
            <ul>
                <li>Позволяет работать с кодом, не затрагивая оригинальный репозиторий.</li>
                <li>Упрощает процесс внесения изменений и предложения их через Pull Request.</li>
                <li>Полезен для участия в open-source проектах.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
# Пример создания fork на GitHub
1. Перейдите на страницу репозитория на GitHub.
2. Нажмите кнопку "Fork" в правом верхнем углу.
    </code></pre>

    <h2>Что такое Cloning?</h2>
    <p>
        <span class="highlight">Cloning</span> — это процесс копирования репозитория с удалённого сервера (например, GitHub) на ваш
        локальный компьютер. Это позволяет вам работать с кодом локально, вносить изменения и
        синхронизировать их с удалённым репозиторием.
    </p>
    <ul>
        <li>
            <span class="highlight">Как работает Cloning:</span>
            <p>
                Когда вы клонируете репозиторий, Git создаёт полную копию всех файлов и истории
                изменений на вашем локальном компьютере. Вы можете работать с кодом, создавать
                ветки, фиксировать изменения и отправлять их обратно на сервер.
            </p>
        </li>
        <li>
            <span class="highlight">Преимущества Cloning:</span>
            <ul>
                <li>Позволяет работать с кодом локально.</li>
                <li>Упрощает процесс разработки и тестирования.</li>
                <li>Полезен для работы над собственными проектами или проектами, где у вас есть
                    права на запись.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
# Пример клонирования репозитория
git clone https://github.com/username/repository.git
    </code></pre>

    <h2>Основные отличия Fork и Cloning</h2>
    <table>
        <thead>
            <tr>
                <th>Критерий</th>
                <th>Fork</th>
                <th>Cloning</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Место создания</td>
                <td>Копия репозитория создаётся на GitHub под вашим аккаунтом.</td>
                <td>Копия репозитория создаётся на вашем локальном компьютере.</td>
            </tr>
            <tr>
                <td>Цель</td>
                <td>Для участия в open-source проектах и предложения изменений через Pull Request.</td>
                <td>Для локальной работы с кодом и синхронизации с удалённым репозиторием.</td>
            </tr>
            <tr>
                <td>Права доступа</td>
                <td>Не требует прав на запись в оригинальный репозиторий.</td>
                <td>Требует прав на чтение (или запись, если вы хотите отправлять изменения).</td>
            </tr>
            <tr>
                <td>Использование</td>
                <td>Полезен для работы с чужими репозиториями.</td>
                <td>Полезен для работы с собственными репозиториями или репозиториями, где у вас есть права.</td>
            </tr>
        </tbody>
    </table>

    <h2>Пример рабочего процесса с Fork и Cloning</h2>
    <pre><code>
# 1. Создание fork репозитория на GitHub
1. Перейдите на страницу репозитория на GitHub.
2. Нажмите кнопку "Fork".

# 2. Клонирование fork на локальный компьютер
git clone https://github.com/your-username/repository.git

# 3. Внесение изменений и создание Pull Request
1. Создайте новую ветку: git checkout -b feature-branch
2. Внесите изменения и зафиксируйте их: git commit -m "Ваши изменения"
3. Отправьте изменения на GitHub: git push origin feature-branch
4. Создайте Pull Request на GitHub.
    </code></pre>

    <h2>Заключение</h2>
    <p>
        <span class="highlight">Fork</span> и <span class="highlight">Cloning</span> — это два важных процесса в Git и GitHub, которые используются для
        работы с репозиториями. Fork полезен для участия в open-source проектах и предложения
        изменений через Pull Request, в то время как Cloning позволяет работать с кодом локально
        и синхронизировать изменения с удалённым репозиторием. Понимание различий между ними
        помогает эффективно управлять разработкой и collaboration в проектах.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b378d936-7cb0-4fab-9f8c-e892a2ff31ac', 'Какая основная разница между String, StringBuffer, StringBuilder?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Основная разница между String, StringBuffer и StringBuilder</title>
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
        <h1>Основная разница между <code>String</code>, <code>StringBuffer</code> и <code>StringBuilder</code></h1>
        <ul>
            <li>
                <span class="highlight">String:</span> Класс <code>String</code> является неизменяемым (immutable) – модифицировать объект
                такого класса нельзя, можно лишь заменить его созданием нового экземпляра.
            </li>
            <li>
                <span class="highlight">StringBuffer:</span> Класс <code>StringBuffer</code> изменяемый – использовать <code>StringBuffer</code>
                следует тогда, когда необходимо часто модифицировать содержимое.
            </li>
            <li>
                <span class="highlight">StringBuilder:</span> Класс <code>StringBuilder</code> был добавлен в Java 5. Он во всем идентичен
                классу <code>StringBuffer</code>, за исключением того, что он не синхронизирован, и поэтому его методы
                выполняются значительно быстрее.
            </li>
        </ul>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Используйте <code>String</code> для неизменяемых строк, <code>StringBuffer</code> для многопоточных
                сценариев с изменяемыми строками и <code>StringBuilder</code> для однопоточных сценариев, где
                требуется высокая производительность.
            </p>
        </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7a820117-ffcf-4b27-8c90-4e2d572ecd3d', 'Что такое «пул строк»?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Принципы ООП</title>
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
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        .note {
            background: #ecf0f1;
            padding: 3px;
            border-left: 5px solid #bdc3c7;
            margin: 7px 0;
            color: #333;
        }
 	.definition {
            margin-left: 20px;
            font-style: italic;
            color: #555;
        }
	code {
            font-family: "Courier New", monospace;
            background-color: #f0f0f0;
            padding: 2px 4px;
            border-radius: 4px;
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
    <h1>Пул строк в Java</h1>

    <p>
        <span class="note">Пул строк</span> – это специальная область памяти в <span class="note">Heap</span>, где хранятся уникальные строки. Он позволяет экономить память, повторно используя одинаковые строки, но при этом создание строк может занимать больше времени из-за необходимости поиска в пуле.
    </p>

    <h2>Особенности пула строк</h2>
    <ul>
        <li>
            <span class="note">Неизменяемость строк</span>. Пул строк возможен благодаря неизменяемости строк в Java и реализации идеи интернирования строк.
        </li>
        <li>
            <span class="note">Экономия памяти</span>. Пул строк помогает экономить память, так как одинаковые строки хранятся в одном экземпляре.
        </li>
        <li>
            <span class="note">Создание строк</span>. Если строка создается с использованием двойных кавычек (<code>"</code>), JVM сначала ищет строку с таким же значением в пуле. Если строка найдена, возвращается ссылка на неё. Если строка не найдена, создается новый объект в пуле, и возвращается ссылка на него.
            <pre><code>String str1 = "Hello"; // Строка добавляется в пул
String str2 = "Hello"; // Возвращается ссылка на существующую строку из пула</code></pre>
        </li>
        <li>
            <span class="note">Использование оператора new</span>. При использовании оператора <code>new</code> создается новый объект <code>String</code> вне пула. Однако, с помощью метода <code>intern()</code>, строку можно поместить в пул или получить ссылку на существующую строку из пула.
            <pre><code>String str1 = new String("Hello"); // Новый объект вне пула
String str2 = str1.intern(); // Строка добавляется в пул или возвращается ссылка на существующую строку</code></pre>
        </li>
        <li>
            <span class="note">Паттерн «Приспособленец» (Flyweight)</span>. Пул строк является примером использования паттерна «Приспособленец», который позволяет эффективно использовать память, разделяя общие данные между объектами.
        </li>
    </ul>

    <div class="definition">
        <p>
            <strong>Пул строк</strong> – это механизм в Java, который позволяет хранить уникальные строки в специальной области памяти (Heap) для экономии ресурсов. Он основан на неизменяемости строк и паттерне «Приспособленец».
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6f11a672-5a8b-42df-9ca3-aac5ca4847cd', 'Какие есть особенности класса String?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Принципы ООП</title>
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
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        .note {
            background: #ecf0f1;
            padding: 3px;
            border-left: 5px solid #bdc3c7;
            margin: 7px 0;
            color: #333;
        }
 	.definition {
            margin-left: 20px;
            font-style: italic;
            color: #555;
        }
	code {
            font-family: "Courier New", monospace;
            background-color: #f0f0f0;
            padding: 2px 4px;
            border-radius: 4px;
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
    <h1>Особенности класса String в Java</h1>

    <p>
        Класс <span class="note">String</span> в Java является одним из самых часто используемых классов. Он имеет несколько важных особенностей, которые делают его уникальным:
    </p>

    <h2>Основные особенности класса String</h2>
    <ul>
        <li>
            <span class="note">Неизменяемость (immutable)</span>. Объекты класса <code>String</code> являются неизменяемыми. Это означает, что после создания строки её значение нельзя изменить. Любая операция, изменяющая строку, создает новый объект.
        </li>
        <li>
            <span class="note">Финализированный класс</span>. Класс <code>String</code> объявлен как <code>final</code>, что означает, что от него нельзя наследовать.
        </li>
        <li>
            <span class="note">Пул строк</span>. JVM хранит все объекты класса <code>String</code> в специальной области памяти, называемой пулом строк (<span class="note">String Pool</span>). Это позволяет экономить память, повторно используя одинаковые строки.
        </li>
        <li>
            <span class="note">Создание строк</span>. Объект класса <code>String</code> можно создать, используя двойные кавычки:
            <pre><code>String str = "Hello, World!";</code></pre>
        </li>
        <li>
            <span class="note">Конкатенация строк</span>. Для объединения строк можно использовать оператор <code>+</code>:
            <pre><code>String result = "Hello, " + "World!";</code></pre>
        </li>
        <li>
            <span class="note">Использование в switch</span>. Начиная с Java 7, строки можно использовать в конструкции <code>switch</code>:
            <pre><code>String day = "MONDAY";
switch (day) {
    case "MONDAY":
        System.out.println("Понедельник");
        break;
    // другие case
}</code></pre>
        </li>
    </ul>

    <div class="definition">
        <p>
            <strong>Класс String</strong> – это неизменяемый и финализированный класс, который используется для работы с текстовыми данными. Он поддерживает пул строк, конкатенацию и использование в конструкции <code>switch</code>.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9359b572-47cd-47f4-a2fc-748176998f9f', 'Почему String неизменяемый и финализированный класс?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему String неизменяемый и финализированный класс?</title>
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
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        .note {
            background: #ecf0f1;
            padding: 10px;
            border-left: 5px solid #bdc3c7;
            margin: 15px 0;
            color: #333;
        }
        .definition {
            margin-left: 20px;
            font-style: italic;
            color: #555;
        }
        code {
            font-family: "Courier New", monospace;
            background-color: #f0f0f0;
            padding: 2px 4px;
            border-radius: 4px;
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
        <h1>Почему <code>String</code> неизменяемый и финализированный класс?</h1>
        <p>
            Есть несколько преимуществ в неизменности строк:
        </p>
        <ul>
            <li>
                <span class="highlight">Пул строк:</span> Пул строк возможен только потому, что строка неизменяемая.
                Таким образом, виртуальная машина сохраняет больше свободного места в Heap, поскольку
                разные строковые переменные указывают на одну и ту же переменную в пуле. Если бы строка
                была изменяемой, то интернирование строк не было бы возможным, потому что изменение
                значения одной переменной отразилось бы также и на остальных переменных, ссылающихся
                на эту строку.
            </li>
            <li>
                <span class="highlight">Безопасность:</span> Если строка будет изменяемой, тогда это станет серьезной
                угрозой безопасности приложения. Например, имя пользователя базы данных и пароль
                передаются строкой для получения соединения с базой данных, и в программировании
                сокетов реквизиты хоста и порта передаются строкой. Так как строка неизменяемая,
                ее значение не может быть изменено, в противном случае злоумышленник может изменить
                значение ссылки и вызвать проблемы в безопасности приложения.
            </li>
            <li>
                <span class="highlight">Многопоточность:</span> Неизменяемость позволяет избежать синхронизации: строки
                безопасны для многопоточности, и один экземпляр строки может быть совместно использован
                различными потоками.
            </li>
            <li>
                <span class="highlight">Загрузка классов:</span> Строки используются <code>classloader</code>, и неизменность
                обеспечивает правильность загрузки класса.
            </li>
            <li>
                <span class="highlight">Кеширование хэш-кода:</span> Поскольку строка неизменяемая, ее <code>hashCode()</code>
                кешируется в момент создания, и нет необходимости рассчитывать его снова. Это делает
                строку отличным кандидатом для ключа в <code>HashMap</code>, т. к. его обработка происходит быстрее.
            </li>
        </ul>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Неизменяемость строки обеспечивает безопасность, производительность
                и удобство использования в многопоточных средах.
            </p>
        </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('14e02ea4-eac5-4ae6-b27e-1dd15ead7a11', 'Что такое Spring Boot Starter и как он работает?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot Starter</title>
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
    <h1>Spring Boot Starter</h1>
    <p>
        <span class="highlight">Spring Boot Starter</span> — это специальные зависимости, которые упрощают настройку и использование различных технологий в приложениях на основе Spring Boot. Они предоставляют готовые конфигурации и зависимости, что позволяет быстро интегрировать функциональность без необходимости ручной настройки.
    </p>

    <h2>Как работает Spring Boot Starter?</h2>
    <ul>
        <li>
            <span class="highlight">Автоконфигурация:</span> Каждый Starter содержит набор автоматических конфигураций, которые настраивают компоненты приложения на основе добавленных зависимостей. Например, Starter для базы данных автоматически настраивает источник данных (DataSource) и подключение к базе.
        </li>
        <li>
            <span class="highlight">Зависимости:</span> Starters включают в себя все необходимые библиотеки и зависимости для работы с определённой технологией. Это избавляет разработчика от необходимости вручную добавлять и настраивать каждую библиотеку.
        </li>
        <li>
            <span class="highlight">Упрощение разработки:</span> Starters позволяют быстро начать работу с новой технологией, минимизируя время на настройку и изучение конфигураций.
        </li>
    </ul>

    <h2>Примеры популярных Spring Boot Starters</h2>
    <ul>
        <li>
            <code>spring-boot-starter-web</code> — для создания веб-приложений и RESTful сервисов. Включает в себя зависимости для Spring MVC, Tomcat и других компонентов.
        </li>
        <li>
            <code>spring-boot-starter-data-jpa</code> — для работы с базами данных через JPA. Включает Hibernate, Spring Data JPA и другие необходимые библиотеки.
        </li>
        <li>
            <code>spring-boot-starter-security</code> — для добавления безопасности в приложение. Включает Spring Security и связанные зависимости.
        </li>
        <li>
            <code>spring-boot-starter-test</code> — для тестирования приложений. Включает JUnit, Mockito, Spring Test и другие инструменты.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring Boot Starters значительно упрощают процесс разработки, предоставляя готовые решения для интеграции различных технологий. Они позволяют сосредоточиться на бизнес-логике приложения, а не на рутинной настройке.
        </p>
    </div>

    <h2>Как добавить Starter в проект?</h2>
    <p>
        Для добавления Starter в проект достаточно указать соответствующую зависимость в файле <code>pom.xml</code> (для Maven) или <code>build.gradle</code> (для Gradle). Например:
    </p>
    <pre><code>
&lt;dependency&gt;
    &lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
    &lt;artifactId&gt;spring-boot-starter-web&lt;/artifactId&gt;
&lt;/dependency&gt;
    </code></pre>
    <p>
        После добавления зависимости Spring Boot автоматически настроит все необходимые компоненты.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('dbe6a8a5-e389-41ee-bfb7-f28569dedf1c', 'JPA как реализзация ORM', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JPA как реализация ORM</title>
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
    <h1>JPA как реализация ORM</h1>
    <p>
        <span class="highlight">JPA (Java Persistence API)</span> — это стандартный API для работы с ORM (Object-Relational Mapping)
        в Java. JPA предоставляет набор интерфейсов и аннотаций, которые позволяют отображать объекты Java на
        таблицы в реляционных базах данных и управлять ими. JPA является частью спецификации Java EE (Enterprise Edition)
        и широко используется в современных Java-приложениях.
    </p>

    <h2>Основные концепции JPA</h2>
    <ul>
        <li>
            <span class="highlight">Сущности (Entities):</span>
            <p>
                В JPA сущности — это обычные Java-классы, которые отображаются на таблицы в базе данных.
                Для этого используются аннотации, такие как <code>@Entity</code>, <code>@Table</code>, <code>@Id</code> и другие.
            </p>
        </li>
        <li>
            <span class="highlight">Аннотации:</span>
            <p>
                JPA использует аннотации для настройки маппинга между объектами и таблицами. Например:
                <ul>
                    <li><code>@Entity</code> — указывает, что класс является сущностью.</li>
                    <li><code>@Table</code> — задаёт имя таблицы в базе данных.</li>
                    <li><code>@Id</code> — указывает на первичный ключ.</li>
                    <li><code>@Column</code> — задаёт маппинг поля на столбец таблицы.</li>
                </ul>
            </p>
        </li>
        <li>
            <span class="highlight">EntityManager:</span>
            <p>
                <code>EntityManager</code> — это основной интерфейс для работы с сущностями в JPA. Он предоставляет
                методы для выполнения CRUD-операций (создание, чтение, обновление, удаление) и управления
                жизненным циклом сущностей.
            </p>
        </li>
        <li>
            <span class="highlight">JPQL (Java Persistence Query Language):</span>
            <p>
                JPQL — это объектно-ориентированный язык запросов, который позволяет выполнять запросы к сущностям,
                а не к таблицам. JPQL похож на SQL, но работает с объектами, а не с таблицами.
            </p>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> JPA — это только спецификация, а не реализация. Для работы с JPA
            используются реализации, такие как Hibernate, EclipseLink и другие.
        </p>
    </div>

    <h2>Преимущества JPA</h2>
    <ul>
        <li>
            <span class="highlight">Стандартизация:</span>
            <p>
                JPA предоставляет единый стандарт для работы с ORM, что позволяет легко переключаться между
                различными реализациями (например, Hibernate, EclipseLink).
            </p>
        </li>
        <li>
            <span class="highlight">Упрощение кода:</span>
            <p>
                JPA позволяет работать с базой данных через объекты, что делает код более читаемым и удобным для
                разработки.
            </p>
        </li>
        <li>
            <span class="highlight">Независимость от СУБД:</span>
            <p>
                JPA абстрагирует работу с базой данных, что позволяет легко переключаться между различными СУБД
                (MySQL, PostgreSQL, Oracle и др.).
            </p>
        </li>
        <li>
            <span class="highlight">Поддержка транзакций:</span>
            <p>
                JPA предоставляет встроенную поддержку транзакций, что упрощает управление атомарными операциями.
            </p>
        </li>
    </ul>

    <h2>Недостатки JPA</h2>
    <ul>
        <li>
            <span class="highlight">Производительность:</span>
            <p>
                JPA может быть менее эффективным, чем ручное написание SQL-запросов, особенно для сложных запросов.
            </p>
        </li>
        <li>
            <span class="highlight">Сложность настройки:</span>
            <p>
                Настройка маппинга и связей между сущностями может быть сложной, особенно для больших проектов.
            </p>
        </li>
        <li>
            <span class="highlight">Ограниченная гибкость:</span>
            <p>
                JPA может не поддерживать все возможности конкретной СУБД, что может потребовать написания
                нативного SQL.
            </p>
        </li>
    </ul>

    <h2>Пример использования JPA</h2>
    <pre><code>
// Пример сущности в JPA
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    // Геттеры и сеттеры
}

// Пример использования EntityManager
EntityManagerFactory emf = Persistence.createEntityManagerFactory("my-persistence-unit");
EntityManager em = emf.createEntityManager();

em.getTransaction().begin();

User user = new User();
user.setName("John Doe");
em.persist(user);

em.getTransaction().commit();
em.close();
    </code></pre>
    <p>
        В этом примере класс <code>User</code> отображается на таблицу <code>users</code>, а JPA автоматически
        управляет сохранением объекта в базе данных.
    </p>

    <h2>Популярные реализации JPA</h2>
    <ul>
        <li>
            <span class="highlight">Hibernate:</span>
            <p>
                Самая популярная реализация JPA. Hibernate предоставляет мощные инструменты для работы с базами
                данных и поддерживает множество дополнительных функций.
            </p>
        </li>
        <li>
            <span class="highlight">EclipseLink:</span>
            <p>
                Реализация JPA, разработанная Eclipse Foundation. EclipseLink поддерживает не только реляционные
                базы данных, но и другие источники данных, такие как XML и JSON.
            </p>
        </li>
        <li>
            <span class="highlight">OpenJPA:</span>
            <p>
                Реализация JPA, разработанная Apache Foundation. OpenJPA предоставляет расширенные возможности
                для работы с большими объёмами данных.
            </p>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        JPA — это мощный инструмент для работы с ORM в Java, который упрощает взаимодействие с базами данных
        через объекты. Он предоставляет стандартизированный подход к работе с данными, что делает его
        незаменимым в современных Java-приложениях. Однако важно понимать его ограничения и использовать
        JPA там, где это действительно необходимо.
    </p>
</body>
</html>', 'ORM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4a180340-8dca-444e-8b68-835b074a4dfa', 'Что такое жадные алгоритмы? Приведите пример', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Жадные алгоритмы</title>
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
    <h1>Жадные алгоритмы</h1>
    <p>
        <span class="highlight">Жадные алгоритмы</span> — это одна из трёх основных техник создания алгоритмов, наряду с принципом «Разделяй и властвуй» и динамическим программированием. Они используются для решения задач, где на каждом шаге принимается локально оптимальное решение, которое в итоге может привести к глобально оптимальному решению.
    </p>

    <h2>Как работают жадные алгоритмы?</h2>
    <ul>
        <li>
            Жадный алгоритм на каждом шаге выбирает максимально возможное (оптимальное) решение из доступных, не учитывая предыдущие или следующие шаги.
        </li>
        <li>
            Задача разбивается на подзадачи, и в каждой подзадаче принимается локально оптимальное решение. Если каждый шаг является <span class="highlight">безопасным</span> (приводит к оптимальному решению), то в итоге задача решается оптимально.
        </li>
    </ul>

    <h2>Пример жадного алгоритма</h2>
    <p>
        <span class="highlight">Алгоритм Дейкстры</span> для нахождения кратчайшего пути в графе является жадным. На каждом шаге он выбирает вершину с наименьшим весом, в которой ещё не были, и обновляет значения других вершин. Это локально оптимальное решение приводит к глобально оптимальному результату.
    </p>

    <h2>Пример задачи: наименьшая яма с кладом</h2>
    <p>
        Представьте, что у вас есть несколько ям, в каждой из которых может быть клад. Жадный алгоритм будет на каждом шаге выбирать яму с наибольшей вероятностью наличия клада, не учитывая, что в следующих ямах может быть больше сокровищ. В итоге, если каждый шаг безопасен, алгоритм приведёт к оптимальному решению.
    </p>

    <h2>Преимущества и недостатки жадных алгоритмов</h2>
    <ul>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Простота реализации.</li>
                <li>Эффективность для задач, где локально оптимальные решения приводят к глобально оптимальному результату.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Не всегда приводят к глобально оптимальному решению.</li>
                <li>Требуют доказательства, что каждый шаг является безопасным.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Жадные алгоритмы подходят для задач, где локально оптимальные решения гарантируют глобально оптимальный результат. Однако для более сложных задач могут потребоваться другие подходы, такие как динамическое программирование.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a3a676d4-8795-4da3-9062-3cf90023681e', 'Расскажите про паттерн «Цепочка обязанностей» (Chain of Responsibility)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн «Цепочка обязанностей» (Chain of Responsibility)</title>
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
    <h1>Паттерн «Цепочка обязанностей» (Chain of Responsibility)</h1>
    <p>
        <span class="highlight">Chain of Responsibility</span> — это поведенческий паттерн проектирования, который позволяет передавать запросы последовательно по цепочке обработчиков. Каждый обработчик решает, может ли он обработать запрос сам и стоит ли передавать запрос дальше по цепи.
    </p>

    <h2>Как работает Chain of Responsibility?</h2>
    <ul>
        <li>
            Паттерн базируется на том, чтобы превратить каждую проверку в отдельный класс с единственным методом выполнения. Данные запроса передаются в метод как аргументы.
        </li>
        <li>
            Каждый обработчик имеет ссылку на следующий обработчик в цепи. Это позволяет передавать запрос дальше, если текущий обработчик не может его обработать.
        </li>
        <li>
            Обработчик может как обработать запрос самостоятельно, так и передать его следующему звену цепи. Если проверка не пройдена, обработка может быть остановлена.
        </li>
    </ul>

    <h2>Плюсы и минусы Chain of Responsibility</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Уменьшает зависимость между клиентом и обработчиками, так как клиенту не нужно знать, какой именно обработчик выполнит запрос.</li>
                <li>Позволяет гибко настраивать цепочку обработчиков, добавляя или удаляя звенья.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минусы:</span>
            <ul>
                <li>Запрос может остаться необработанным, если ни один из обработчиков не сможет его обработать.</li>
                <li>Может привести к увеличению количества классов в системе.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн «Цепочка обязанностей» полезен, когда нужно обрабатывать запросы несколькими способами, но заранее неизвестно, какой именно обработчик сможет справиться с запросом.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ad8c4f55-8e66-4194-9887-e95aebc08eea', 'Аннотация PreDestroy', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @PreDestroy</title>
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
    <h1>Аннотация @PreDestroy</h1>
    <p>
        Аннотация <code>@PreDestroy</code> используется для указания метода, который должен быть вызван Spring непосредственно перед удалением бина из контекста приложения. Этот метод вызывается только один раз и позволяет выполнить задачи очистки, такие как освобождение ресурсов или закрытие соединений.
    </p>

    <h2>Как работает @PreDestroy?</h2>
    <p>
        Метод, аннотированный <code>@PreDestroy</code>, вызывается перед уничтожением бина. Это происходит, когда контекст приложения закрывается (например, через метод <code>close()</code>). Аннотация позволяет выполнить необходимую очистку перед тем, как бин будет удалён.
    </p>

    <h3>Основные характеристики метода с @PreDestroy:</h3>
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
            <span class="highlight">Нестатический метод:</span> Метод не может быть статическим, так как он должен иметь доступ к нестатическим полям и методам бина.
        </li>
    </ul>

    <h2>Пример использования @PreDestroy</h2>
    <p>
        Один из распространённых примеров использования <code>@PreDestroy</code> – это освобождение ресурсов, таких как закрытие соединения с базой данных или освобождение файловых дескрипторов.
    </p>
    <pre><code>@Component
public class DatabaseConnection {

    private Connection connection;

    @PostConstruct
    public void init() throws SQLException {
        // Инициализация соединения с базой данных
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "user", "password");
        System.out.println("Соединение с базой данных установлено");
    }

    @PreDestroy
    public void cleanup() throws SQLException {
        // Закрытие соединения с базой данных
        if (connection != null) {
            connection.close();
            System.out.println("Соединение с базой данных закрыто");
        }
    }
}</code></pre>

    <h2>Когда вызывается @PreDestroy?</h2>
    <p>
        Метод, аннотированный <code>@PreDestroy</code>, вызывается в следующих случаях:
    </p>
    <ul>
        <li>При закрытии контекста приложения (например, через метод <code>close()</code>).</li>
        <li>При уничтожении бина, если его scope не является синглтоном (например, prototype).</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@PreDestroy</code> является частью стандарта JSR-250 и может использоваться не только в Spring, но и в других фреймворках, поддерживающих этот стандарт.
        </p>
    </div>

    <h2>Преимущества @PreDestroy</h2>
    <ul>
        <li>
            <span class="highlight">Удобство:</span> Позволяет выполнить очистку ресурсов перед уничтожением бина.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Метод может содержать любую логику очистки, например, закрытие соединений, освобождение памяти или остановку фоновых процессов.
        </li>
        <li>
            <span class="highlight">Стандартизация:</span> Аннотация является частью стандарта Java, что обеспечивает совместимость с другими фреймворками.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Зависимость от контейнера:</span> Метод, аннотированный <code>@PreDestroy</code>, управляется Spring, что может усложнить тестирование вне контейнера.
        </li>
        <li>
            <span class="highlight">Однократный вызов:</span> Метод вызывается только один раз, что может быть ограничением в некоторых сценариях.
        </li>
    </ul>

    <h2>Пример использования в реальных приложениях</h2>
    <p>
        В реальных приложениях <code>@PreDestroy</code> часто используется для:
    </p>
    <ul>
        <li>Закрытия соединений с базой данных.</li>
        <li>Освобождения файловых дескрипторов или сетевых соединений.</li>
        <li>Остановки фоновых потоков или таймеров.</li>
        <li>Сохранения состояния или логирования перед завершением работы.</li>
    </ul>

    <h2>BeanPostProcessor и @PreDestroy</h2>
    <p>
        Класс, реализующий интерфейс <code>BeanPostProcessor</code>, должен быть бином, поэтому его помечают аннотацией <code>@Component</code>. <code>BeanPostProcessor</code> позволяет вклиниться в процесс настройки бинов до и после их инициализации.
    </p>
    <pre><code>@Component
public class CustomBeanPostProcessor implements BeanPostProcessor {

    @Override
    public Object postProcessBeforeInitialization(Object bean, String beanName) {
        // Логика до инициализации бина
        return bean;
    }

    @Override
    public Object postProcessAfterInitialization(Object bean, String beanName) {
        // Логика после инициализации бина
        return bean;
    }
}</code></pre>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c93cf5bb-8a01-4819-a936-db03e1f2a31d', 'ORM - как теоретический принцип', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ORM как теоретический принцип</title>
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
    <h1>ORM как теоретический принцип</h1>
    <p>
        <span class="highlight">ORM (Object-Relational Mapping)</span> — это технология, которая позволяет отображать объекты
        в объектно-ориентированных языках программирования (например, Java, Python, C#) на таблицы в реляционных
        базах данных. ORM упрощает работу с базой данных, позволяя разработчикам взаимодействовать с данными
        через объекты, а не через SQL-запросы.
    </p>

    <h2>Основные концепции ORM</h2>
    <ul>
        <li>
            <span class="highlight">Маппинг объектов на таблицы:</span>
            <p>
                Каждый класс в коде отображается на таблицу в базе данных, а поля класса — на столбцы таблицы.
                Например, класс <code>User</code> может быть отображён на таблицу <code>users</code>.
            </p>
        </li>
        <li>
            <span class="highlight">CRUD-операции:</span>
            <p>
                ORM предоставляет методы для выполнения базовых операций с данными: создание (Create), чтение (Read),
                обновление (Update) и удаление (Delete). Эти операции выполняются через объекты, а не через SQL.
            </p>
        </li>
        <li>
            <span class="highlight">Управление связями:</span>
            <p>
                ORM позволяет определять связи между объектами, такие как "один-ко-многим", "многие-ко-многим" и
                "один-к-одному". Например, пользователь может иметь несколько заказов.
            </p>
        </li>
        <li>
            <span class="highlight">Транзакции:</span>
            <p>
                ORM поддерживает управление транзакциями, что позволяет группировать несколько операций в одну
                атомарную операцию.
            </p>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> ORM не заменяет SQL полностью, но значительно упрощает работу с базой
            данных, особенно в сложных приложениях.
        </p>
    </div>

    <h2>Преимущества ORM</h2>
    <ul>
        <li>
            <span class="highlight">Упрощение кода:</span>
            <p>
                ORM позволяет работать с базой данных через объекты, что делает код более читаемым и удобным для
                разработки.
            </p>
        </li>
        <li>
            <span class="highlight">Снижение количества SQL-кода:</span>
            <p>
                ORM автоматически генерирует SQL-запросы, что уменьшает количество boilerplate-кода.
            </p>
        </li>
        <li>
            <span class="highlight">Независимость от СУБД:</span>
            <p>
                ORM абстрагирует работу с базой данных, что позволяет легко переключаться между различными СУБД
                (MySQL, PostgreSQL, Oracle и др.).
            </p>
        </li>
        <li>
            <span class="highlight">Безопасность:</span>
            <p>
                ORM помогает избежать SQL-инъекций, так как параметры запросов автоматически экранируются.
            </p>
        </li>
    </ul>

    <h2>Недостатки ORM</h2>
    <ul>
        <li>
            <span class="highlight">Производительность:</span>
            <p>
                ORM может быть менее эффективным, чем ручное написание SQL-запросов, особенно для сложных запросов.
            </p>
        </li>
        <li>
            <span class="highlight">Сложность настройки:</span>
            <p>
                Настройка маппинга и связей между объектами может быть сложной, особенно для больших проектов.
            </p>
        </li>
        <li>
            <span class="highlight">Ограниченная гибкость:</span>
            <p>
                ORM может не поддерживать все возможности конкретной СУБД, что может потребовать написания
                нативного SQL.
            </p>
        </li>
    </ul>

    <h2>Пример работы ORM</h2>
    <pre><code>
// Пример на Java с использованием Hibernate
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    // Геттеры и сеттеры
}

// Использование ORM для сохранения объекта
Session session = HibernateUtil.getSessionFactory().openSession();
session.beginTransaction();

User user = new User();
user.setName("John Doe");
session.save(user);

session.getTransaction().commit();
session.close();
    </code></pre>
    <p>
        В этом примере класс <code>User</code> отображается на таблицу <code>users</code>, а ORM автоматически
        генерирует SQL-запрос для сохранения объекта.
    </p>

    <h2>Популярные ORM-фреймворки</h2>
    <ul>
        <li>
            <span class="highlight">Hibernate (Java):</span>
            <p>
                Один из самых популярных ORM-фреймворков для Java. Поддерживает JPA (Java Persistence API) и
                предоставляет мощные инструменты для работы с базами данных.
            </p>
        </li>
        <li>
            <span class="highlight">Entity Framework (C#):</span>
            <p>
                ORM-фреймворк для .NET, разработанный Microsoft. Позволяет работать с базами данных через
                объекты C#.
            </p>
        </li>
        <li>
            <span class="highlight">SQLAlchemy (Python):</span>
            <p>
                Мощный ORM-фреймворк для Python, который поддерживает как высокоуровневые абстракции, так и
                низкоуровневые SQL-запросы.
            </p>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        ORM — это мощный инструмент, который упрощает работу с базами данных, позволяя разработчикам сосредоточиться
        на бизнес-логике приложения. Однако важно понимать его ограничения и использовать ORM там, где это
        действительно необходимо.
    </p>
</body>
</html>', 'ORM', 'EASY');