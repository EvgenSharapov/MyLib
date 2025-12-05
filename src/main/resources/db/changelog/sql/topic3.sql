INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7602400b-bfef-494d-a582-03bbbd59cc76', 'Как реализовать потокобезопасную коллекцию в java? Есть ли стандартные реализации?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Потокобезопасные коллекции в Java</title>
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
    <h1>Потокобезопасные коллекции в Java</h1>
    <p>
        <span class="highlight">Потокобезопасные коллекции</span> — это коллекции, которые могут безопасно использоваться в многопоточных приложениях без риска возникновения состояния гонки (race condition) или повреждения данных. В Java существует несколько стандартных реализаций потокобезопасных коллекций, которые предоставляются в рамках пакета <code>java.util.concurrent</code>.
    </p>

    <h2>Стандартные потокобезопасные коллекции в Java</h2>
    <p>
        В Java есть несколько встроенных потокобезопасных коллекций, которые можно использовать без необходимости самостоятельной синхронизации:
        <ul>
            <li>
                <span class="highlight">1. ConcurrentHashMap:</span> Потокобезопасная реализация <code>HashMap</code>, которая поддерживает высокую производительность при одновременном доступе нескольких потоков.
            </li>
            <li>
                <span class="highlight">2. CopyOnWriteArrayList:</span> Потокобезопасная реализация <code>ArrayList</code>, которая создаёт новую копию массива при каждой модификации. Это делает её подходящей для сценариев, где операции чтения значительно превосходят операции записи.
            </li>
            <li>
                <span class="highlight">3. CopyOnWriteArraySet:</span> Потокобезопасная реализация <code>Set</code>, основанная на <code>CopyOnWriteArrayList</code>.
            </li>
            <li>
                <span class="highlight">4. ConcurrentLinkedQueue:</span> Потокобезопасная реализация очереди на основе связанного списка.
            </li>
            <li>
                <span class="highlight">5. BlockingQueue и её реализации:</span> Интерфейс <code>BlockingQueue</code> и его реализации, такие как <code>ArrayBlockingQueue</code>, <code>LinkedBlockingQueue</code> и <code>PriorityBlockingQueue</code>, предоставляют потокобезопасные очереди с поддержкой блокирующих операций.
            </li>
        </ul>
    </p>

    <h3>Пример использования ConcurrentHashMap:</h3>
    <pre><code>
import java.util.concurrent.ConcurrentHashMap;

public class ConcurrentHashMapExample {
    public static void main(String[] args) {
        ConcurrentHashMap<String, Integer> map = new ConcurrentHashMap<>();

        // Добавляем элементы в потокобезопасную коллекцию
        map.put("ключ1", 1);
        map.put("ключ2", 2);

        // Получаем значение
        System.out.println("Значение для ключ1: " + map.get("ключ1"));

        // Удаляем элемент
        map.remove("ключ2");
    }
}
    </code></pre>

    <h3>Пример использования CopyOnWriteArrayList:</h3>
    <pre><code>
import java.util.concurrent.CopyOnWriteArrayList;

public class CopyOnWriteArrayListExample {
    public static void main(String[] args) {
        CopyOnWriteArrayList<String> list = new CopyOnWriteArrayList<>();

        // Добавляем элементы в потокобезопасную коллекцию
        list.add("элемент1");
        list.add("элемент2");

        // Итерируемся по коллекции
        for (String item : list) {
            System.out.println(item);
        }
    }
}
    </code></pre>

    <h2>Как реализовать потокобезопасную коллекцию самостоятельно?</h2>
    <p>
        Если стандартные реализации не подходят, можно создать собственную потокобезопасную коллекцию, используя механизмы синхронизации, такие как <code>synchronized</code>, <code>ReentrantLock</code> или <code>ReadWriteLock</code>.
    </p>

    <h3>Пример реализации потокобезопасной коллекции с использованием synchronized:</h3>
    <pre><code>
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class SynchronizedListExample {
    private final List<String> list = Collections.synchronizedList(new ArrayList<>());

    public void add(String item) {
        list.add(item);
    }

    public void remove(String item) {
        list.remove(item);
    }

    public List<String> getList() {
        return list;
    }

    public static void main(String[] args) {
        SynchronizedListExample example = new SynchronizedListExample();

        // Добавляем элементы в потокобезопасную коллекцию
        example.add("элемент1");
        example.add("элемент2");

        // Получаем список
        System.out.println("Список: " + example.getList());
    }
}
    </code></pre>

    <h2>Рекомендации по использованию потокобезопасных коллекций</h2>
    <p>
        <span class="highlight">1. Используйте стандартные реализации:</span> В большинстве случаев стандартные потокобезопасные коллекции из пакета <code>java.util.concurrent</code> являются оптимальным выбором.
    </p>
    <p>
        <span class="highlight">2. Выбирайте подходящую коллекцию:</span> В зависимости от задачи (например, частое чтение или запись) выбирайте подходящую коллекцию (например, <code>ConcurrentHashMap</code> или <code>CopyOnWriteArrayList</code>).
    </p>
    <p>
        <span class="highlight">3. Избегайте избыточной синхронизации:</span> Если стандартные коллекции не подходят, используйте минимально необходимую синхронизацию для реализации собственной коллекции.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Потокобезопасные коллекции — это мощный инструмент для работы в многопоточных приложениях, но их следует использовать с осторожностью, чтобы избежать снижения производительности или других проблем.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3bc9dccd-1f16-48e4-a698-d495ad4843e8', 'Объясните, как обеспечить правильный порядок выполнения операций при взаимодействии нескольких потоков', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Правильный порядок выполнения операций в многопоточном программировании</title>
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
    <h1>Правильный порядок выполнения операций в многопоточном программировании</h1>
    <p>
        В многопоточных приложениях обеспечение правильного порядка выполнения операций между потоками является важной задачей. Неправильный порядок может привести к состоянию гонки (race condition), утечкам данных или неопределённому поведению. Для управления порядком выполнения используются различные механизмы синхронизации.
    </p>

    <h2>Механизмы обеспечения порядка выполнения</h2>
    <p>
        <span class="highlight">1. Мьютексы и блокировки:</span> Мьютексы (mutex) и блокировки (locks) позволяют потокам синхронизировать доступ к общим ресурсам, гарантируя, что только один поток может выполнять критическую секцию кода в определённый момент времени.
    </p>
    <p>
        <span class="highlight">2. Условные переменные (Condition Variables):</span> Условные переменные позволяют потокам ждать определённого условия перед выполнением операции. Они часто используются вместе с мьютексами для координации работы потоков.
    </p>
    <p>
        <span class="highlight">3. Семафоры (Semaphores):</span> Семафоры ограничивают количество потоков, которые могут одновременно выполнять определённый участок кода.
    </p>
    <p>
        <span class="highlight">4. Барьеры (Barriers):</span> Барьеры используются для синхронизации потоков на определённых этапах выполнения, чтобы все потоки достигли одной точки перед продолжением.
    </p>

    <h3>Пример использования мьютексов в Java:</h3>
    <pre><code>
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class MutexExample {
    private final Lock lock = new ReentrantLock();
    private int counter = 0;

    public void increment() {
        lock.lock();  // Захват мьютекса
        try {
            counter++;
        } finally {
            lock.unlock();  // Освобождение мьютекса
        }
    }

    public int getCounter() {
        return counter;
    }

    public static void main(String[] args) throws InterruptedException {
        MutexExample example = new MutexExample();

        Runnable task = () -> {
            for (int i = 0; i < 1000; i++) {
                example.increment();
            }
        };

        Thread thread1 = new Thread(task);
        Thread thread2 = new Thread(task);

        thread1.start();
        thread2.start();

        thread1.join();
        thread2.join();

        System.out.println("Итоговое значение счетчика: " + example.getCounter());
    }
}
    </code></pre>

    <h3>Пример использования условных переменных в Java:</h3>
    <pre><code>
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class ConditionExample {
    private final Lock lock = new ReentrantLock();
    private final Condition condition = lock.newCondition();
    private boolean ready = false;

    public void waitForReady() throws InterruptedException {
        lock.lock();
        try {
            while (!ready) {
                condition.await();  // Ожидание сигнала
            }
        } finally {
            lock.unlock();
        }
    }

    public void setReady() {
        lock.lock();
        try {
            ready = true;
            condition.signalAll();  // Уведомление всех ожидающих потоков
        } finally {
            lock.unlock();
        }
    }

    public static void main(String[] args) {
        ConditionExample example = new ConditionExample();

        Thread waiter = new Thread(() -> {
            try {
                example.waitForReady();
                System.out.println("Поток получил сигнал и продолжает выполнение.");
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        });

        Thread notifier = new Thread(() -> {
            try {
                Thread.sleep(2000);  // Имитация работы
                example.setReady();
                System.out.println("Поток отправил сигнал.");
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        });

        waiter.start();
        notifier.start();
    }
}
    </code></pre>

    <h2>Рекомендации по обеспечению порядка выполнения</h2>
    <p>
        <span class="highlight">1. Минимизируйте использование блокировок:</span> Чрезмерное использование блокировок может привести к снижению производительности. Используйте их только там, где это действительно необходимо.
    </p>
    <p>
        <span class="highlight">2. Используйте атомарные операции:</span> Для простых операций, таких как инкремент или декремент, используйте атомарные переменные (например, <code>AtomicInteger</code>).
    </p>
    <p>
        <span class="highlight">3. Избегайте взаимоблокировок (deadlocks):</span> Всегда освобождайте блокировки в правильном порядке и используйте таймауты для попыток захвата блокировок.
    </p>
    <p>
        <span class="highlight">4. Тестируйте многопоточный код:</span> Используйте инструменты для тестирования многопоточных приложений, такие как стресс-тесты или анализаторы гонок.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Правильный порядок выполнения операций в многопоточных приложениях требует тщательного проектирования и тестирования. Используйте подходящие механизмы синхронизации и следуйте лучшим практикам, чтобы избежать ошибок.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6647942b-3161-4d0a-9acb-63949602b1d9', 'Ассоциация, агрегация, композиция', e'<!DOCTYPE html>
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
            padding: 5px;
            border-left: 5px solid #bdc3c7;
            margin: 10px 0;
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
    <h1>Ассоциация, композиция и агрегация</h1>

    <p>
        <strong>Ассоциация</strong> обозначает связь между объектами. <strong>Композиция</strong> и <strong>агрегация</strong> – частные случаи ассоциации «часть-целое».
    </p>

    <h2>Агрегация</h2>
    <p>
        Агрегация предполагает, что объекты связаны взаимоотношением <span class="highlight">«part-of»</span> (часть).
    </p>

    <h2>Композиция</h2>
    <p>
        Композиция – более строгий вариант агрегации. Дополнительно к требованию <span class="highlight">«part-of»</span> накладывается условие, что экземпляр «части» может входить только в одно целое (или никуда не входить), в то время как в случае агрегации экземпляр «части» может входить в несколько целых.
    </p>

    <h2>«Является» и «имеет»</h2>
    <p>
        <span class="highlight">«Является»</span> подразумевает наследование, <span class="highlight">«имеет»</span> подразумевает ассоциацию (агрегацию или композицию).
    </p>

    <div class="definition">
        <p>
            <strong>Ассоциация</strong> – связь между объектами, которая может быть как слабой, так и сильной.
        </p>
        <p>
            <strong>Агрегация</strong> – отношение «часть-целое», где часть может существовать независимо от целого.
        </p>
        <p>
            <strong>Композиция</strong> – строгое отношение «часть-целое», где часть не может существовать без целого.
        </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('120e97da-1231-4bf6-a235-a2d0d75390ea', 'Расскажите про аннотацию @Inject', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Inject</title>
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
    <h1>Аннотация @Inject</h1>
    <p>
        Аннотация <code>@Inject</code> является частью стандарта Java (JSR-330) и используется для внедрения зависимостей. Она предоставляет функциональность, аналогичную аннотации <code>@Autowired</code> из Spring, но является более универсальной, так как не привязана к конкретному фреймворку.
    </p>

    <h2>Как использовать @Inject?</h2>
    <p>
        Для использования аннотации <code>@Inject</code> необходимо добавить зависимость в проект:
    </p>
    <pre><code>&lt;dependency&gt;
    &lt;groupId&gt;javax.inject&lt;/groupId&gt;
    &lt;artifactId&gt;javax.inject&lt;/artifactId&gt;
    &lt;version&gt;1&lt;/version&gt;
&lt;/dependency&gt;</code></pre>

    <h2>Как работает @Inject?</h2>
    <ul>
        <li>
            <span class="highlight">Поиск по типу:</span> Аннотация <code>@Inject</code> в первую очередь пытается подключить зависимость по типу.
        </li>
        <li>
            <span class="highlight">Поиск по описанию:</span> Если найдено несколько кандидатов, используется описание (например, с помощью <code>@Named</code>).
        </li>
        <li>
            <span class="highlight">Поиск по имени:</span> Если описание не указано, поиск осуществляется по имени.
        </li>
    </ul>

    <h2>Пример использования @Inject</h2>
    <p>
        Для указания конкретного имени (ID) бина используется аннотация <code>@Named</code>:
    </p>
    <pre><code>@Inject
@Named("yetAnotherFieldInjectDependency")
private ArbitraryDependency yetAnotherFieldInjectDependency;</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@Inject</code> не имеет параметров, таких как <code>required</code> в <code>@Autowired</code>. Это делает её более простой, но менее гибкой в некоторых сценариях.
        </p>
    </div>

    <h2>Отличия от @Autowired</h2>
    <ul>
        <li>
            <span class="highlight">Порядок поиска:</span> <code>@Inject</code> сначала ищет зависимость по типу, затем по описанию и только потом по имени. В <code>@Autowired</code> порядок может быть изменён с помощью <code>@Qualifier</code>.
        </li>
        <li>
            <span class="highlight">Параметры:</span> <code>@Inject</code> не имеет параметров, в то время как <code>@Autowired</code> поддерживает параметр <code>required</code>.
        </li>
        <li>
            <span class="highlight">Универсальность:</span> <code>@Inject</code> является частью стандарта Java (JSR-330) и может использоваться в любом фреймворке, поддерживающем этот стандарт.
        </li>
    </ul>

    <h2>Преимущества @Inject</h2>
    <ul>
        <li>
            <span class="highlight">Универсальность:</span> Аннотация не привязана к Spring и может использоваться в других фреймворках.
        </li>
        <li>
            <span class="highlight">Простота:</span> Отсутствие параметров делает аннотацию простой в использовании.
        </li>
        <li>
            <span class="highlight">Стандартизация:</span> Является частью стандарта Java, что обеспечивает совместимость с различными DI-контейнерами.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('bae84d42-2e7e-48cd-922e-de49e2610a4f', 'Расскажите про аннотацию @Profile', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Profile</title>
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
    <h1>Аннотация @Profile</h1>
    <p>
        Аннотация <code>@Profile</code> в Spring Framework позволяет относить бины к различным профилям (логическим группам), таким как <code>dev</code>, <code>local</code>, <code>test</code>, <code>prod</code>. Это позволяет активировать только те бины, которые необходимы для конкретной среды.
    </p>

    <h2>Как работает @Profile?</h2>
    <p>
        Аннотация <code>@Profile</code> применяется на уровне класса или метода и принимает в качестве аргумента имя одного или нескольких профилей. Если профиль активен, бин будет зарегистрирован в контексте Spring. В противном случае бин будет проигнорирован.
    </p>

    <h3>Пример использования @Profile</h3>
    <pre><code>@Configuration
@Profile("dev")
public class DevConfig {

    @Bean
    public MyService devService() {
        return new DevService();
    }
}

@Configuration
@Profile("prod")
public class ProdConfig {

    @Bean
    public MyService prodService() {
        return new ProdService();
    }
}</code></pre>

    <h2>Активация профилей</h2>
    <p>
        Профили можно активировать различными способами:
    </p>
    <ul>
        <li>
            <span class="highlight">Через переменные окружения:</span> Установите переменную окружения <code>SPRING_PROFILES_ACTIVE</code>.
            <pre><code>export SPRING_PROFILES_ACTIVE=dev</code></pre>
        </li>
        <li>
            <span class="highlight">Через параметры JVM:</span> Используйте параметр <code>-Dspring.profiles.active</code>.
            <pre><code>java -Dspring.profiles.active=dev -jar myapp.jar</code></pre>
        </li>
        <li>
            <span class="highlight">Программно:</span> Активируйте профили в коде приложения.
            <pre><code>SpringApplication.setAdditionalProfiles("dev");</code></pre>
        </li>
    </ul>

    <h2>Использование @Profile на уровне метода</h2>
    <p>
        Аннотацию <code>@Profile</code> можно применять не только к классам, но и к методам:
    </p>
    <pre><code>@Configuration
public class AppConfig {

    @Bean
    @Profile("dev")
    public MyService devService() {
        return new DevService();
    }

    @Bean
    @Profile("prod")
    public MyService prodService() {
        return new ProdService();
    }
}</code></pre>

    <h2>Реализация @Profile через @Conditional</h2>
    <p>
        Аннотация <code>@Profile</code> фактически реализована с использованием более гибкой аннотации <code>@Conditional</code>. Это позволяет Spring проверять активность профиля перед регистрацией бина.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@Profile</code> может быть применена к классам, помеченным <code>@Configuration</code>, <code>@Component</code>, и другим стереотипным аннотациям. Это позволяет гибко управлять созданием бинов в зависимости от активного профиля.
        </p>
    </div>

    <h2>Преимущества @Profile</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет настраивать приложение для разных сред (разработка, тестирование, продакшн).
        </li>
        <li>
            <span class="highlight">Модульность:</span> Упрощает управление конфигурацией, разделяя бины по логическим группам.
        </li>
        <li>
            <span class="highlight">Простота:</span> Легко активировать и деактивировать профили через переменные окружения или параметры JVM.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Зависимость от окружения:</span> Неправильная настройка активных профилей может привести к ошибкам в работе приложения.
        </li>
        <li>
            <span class="highlight">Сложность:</span> В больших приложениях с множеством профилей управление конфигурацией может стать сложным.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4900f60d-9e4c-42bd-b052-a9e6b475bbe2', 'Расскажите про паттерн «Строитель» (Builder)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн «Строитель» (Builder)</title>
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
    <h1>Паттерн «Строитель» (Builder)</h1>
    <p>
        <span class="highlight">Builder</span> — это порождающий паттерн проектирования, который позволяет создавать сложные объекты пошагово. Он даёт возможность использовать один и тот же код для получения разных представлений одного объекта.
    </p>

    <h2>Как работает Builder?</h2>
    <ul>
        <li>
            Паттерн предлагает вынести конструирование объекта за пределы его собственного класса, поручив это дело отдельным объектам, называемым <span class="highlight">строителями</span>.
        </li>
        <li>
            Процесс конструирования объекта разбит на отдельные шаги (например, <code>построитьСтены</code>, <code>вставитьДвери</code>). Чтобы создать объект, нужно поочередно вызывать методы строителя.
        </li>
        <li>
            Можно пойти дальше и выделить вызовы методов строителя в отдельный класс, называемый <span class="highlight">Директором</span>. В этом случае Директор будет задавать порядок шагов строительства, а строитель — выполнять их.
        </li>
    </ul>

    <h2>Плюсы и минусы Builder</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Позволяет использовать один и тот же код для создания различных объектов.</li>
                <li>Изолирует сложный код сборки объектов от его основной бизнес-логики.</li>
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
            <span class="highlight">Важно:</span> Паттерн «Строитель» особенно полезен, когда объект имеет множество параметров конфигурации или когда процесс его создания состоит из множества шагов.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('165d1b3b-f717-4655-84cb-8c3f8189219d', ' Какие шесть видов блокировок (lock) описаны в спецификации JPA (или какие  есть значения у enum LockModeType в JPA)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Типы блокировок в JPA</title>
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
    <h1>Типы блокировок в JPA</h1>
    <p>
        В JPA (Java Persistence API) существует шесть типов блокировок, которые определяются перечислением
        <code>LockModeType</code>. Эти блокировки используются для управления доступом к данным в многопользовательской
        среде и обеспечивают различные уровни изоляции и производительности.
    </p>

    <h2>Типы блокировок</h2>
    <p>
        Блокировки перечислены в порядке от самого ненадёжного и быстрого до самого надёжного и медленного:
    </p>
    <ul>
        <li>
            <span class="highlight">NONE:</span>
            <ul>
                <li>Без блокировки.</li>
                <li>Используется по умолчанию, если не указан другой тип блокировки.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">OPTIMISTIC (READ в JPA 1):</span>
            <ul>
                <li>Оптимистическая блокировка.</li>
                <li>Если при завершении транзакции кто-то извне изменит поле <code>@Version</code>, транзакция будет
                    откачена (<code>RollBack</code>), и будет выброшено исключение <code>OptimisticLockException</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">OPTIMISTIC_FORCE_INCREMENT (WRITE в JPA 1):</span>
            <ul>
                <li>Работает аналогично <code>OPTIMISTIC</code>, но после завершения транзакции значение поля
                    <code>@Version</code> принудительно увеличивается на 1.</li>
                <li>В результате поле <code>@Version</code> увеличивается на 2 (одно увеличение при обновлении и одно
                    принудительное увеличение).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">PESSIMISTIC_READ:</span>
            <ul>
                <li>Данные блокируются в момент чтения.</li>
                <li>Гарантирует, что никто не сможет изменить данные в ходе выполнения транзакции.</li>
                <li>Другие транзакции могут параллельно читать эти данные.</li>
                <li>Может вызывать долгое ожидание блокировки или исключение <code>PessimisticLockException</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">PESSIMISTIC_WRITE:</span>
            <ul>
                <li>Данные блокируются в момент записи.</li>
                <li>Никто не может читать или изменять данные до окончания транзакции, владеющей блокировкой.</li>
                <li>Может вызывать долгое ожидание блокировки.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">PESSIMISTIC_FORCE_INCREMENT:</span>
            <ul>
                <li>Работает аналогично <code>PESSIMISTIC_WRITE</code>, но в конце транзакции увеличивает значение
                    поля <code>@Version</code>, даже если сущность не изменилась.</li>
            </ul>
        </li>
    </ul>

    <h2>Оптимистичная блокировка</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Предполагает, что параллельные транзакции редко обращаются к одним и тем же данным.</li>
                <li>Позволяет транзакциям свободно выполнять чтение и обновление данных.</li>
                <li>При завершении транзакции проверяется, изменились ли данные. Если данные изменились,
                    транзакция откатывается, и выбрасывается <code>OptimisticLockException</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Реализация:</span>
            <ul>
                <li>Используется поле <code>@Version</code>, которое может быть целочисленным или временным.</li>
                <li>Позволяет отказаться от блокировок на уровне базы данных и управлять конкурентностью на
                    уровне JPA.</li>
            </ul>
        </li>
    </ul>

    <h2>Пессимистичная блокировка</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Ориентирована на транзакции, которые часто конкурируют за одни и те же данные.</li>
                <li>Блокирует доступ к данным в момент чтения или записи.</li>
                <li>Другие транзакции останавливаются при попытке доступа к заблокированным данным и ждут
                    снятия блокировки или выбрасывают исключение.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Реализация:</span>
            <ul>
                <li>Выполняется на уровне базы данных.</li>
                <li>Не требует изменений в коде сущности.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте оптимистичную блокировку, если вероятность конфликтов низка.</li>
                <li>Используйте пессимистичную блокировку, если вероятность конфликтов высока.</li>
                <li>Блокировки устанавливаются с помощью метода <code>lock()</code> у <code>EntityManager</code>.</li>
            </ul>
        </p>
    </div>

    <h2>Пример использования</h2>
    <pre><code>
EntityManager em = entityManagerFactory.createEntityManager();
em.getTransaction().begin();

// Установка оптимистичной блокировки
Company company1 = em.find(Company.class, 1L);
em.lock(company1, LockModeType.OPTIMISTIC);

// Установка пессимистичной блокировки
Company company2 = em.find(Company.class, 2L);
em.lock(company2, LockModeType.PESSIMISTIC_WRITE);

em.getTransaction().commit();
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Для сущности <code>company1</code> установлена оптимистичная блокировка.</li>
            <li>Для сущности <code>company2</code> установлена пессимистичная блокировка на запись.</li>
        </ul>
    </p>

    <h2>Сравнение оптимистичной и пессимистичной блокировок</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>Оптимистичная блокировка</th>
                <th>Пессимистичная блокировка</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Подход</td>
                <td>Предполагает редкие конфликты.</td>
                <td>Предполагает частые конфликты.</td>
            </tr>
            <tr>
                <td>Блокировка данных</td>
                <td>Нет блокировки на уровне БД.</td>
                <td>Блокировка на уровне БД.</td>
            </tr>
            <tr>
                <td>Исключения</td>
                <td><code>OptimisticLockException</code> при конфликте.</td>
                <td><code>PessimisticLockException</code> при долгом ожидании.</td>
            </tr>
            <tr>
                <td>Производительность</td>
                <td>Высокая, если конфликты редки.</td>
                <td>Может быть низкой из-за блокировок.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fdf88ecc-469c-425f-928a-6a23f25187c8', 'Расскажите про паттерн «Шаблонный метод» (Template Method)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн «Шаблонный метод» (Template Method)</title>
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
    <h1>Паттерн «Шаблонный метод» (Template Method)</h1>
    <p>
        <span class="highlight">Template Method</span> — это поведенческий паттерн проектирования, который пошагово определяет алгоритм и позволяет наследникам переопределять некоторые шаги алгоритма, не изменяя его структуру в целом.
    </p>

    <h2>Как работает Template Method?</h2>
    <ul>
        <li>
            Паттерн предлагает разбить алгоритм на последовательность шагов, описать эти шаги в отдельных методах и вызывать их в одном шаблонном методе друг за другом.
        </li>
        <li>
            Для описания шагов используется абстрактный класс. Общие шаги можно описать прямо в абстрактном классе, а подклассы могут переопределять те шаги, которые требуют изменений.
        </li>
        <li>
            Это позволяет подклассам изменять определённые части алгоритма, оставляя без изменений его общую структуру и остальные шаги.
        </li>
    </ul>

    <h2>Плюсы и минусы Template Method</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Упрощает повторное использование кода, так как общие шаги алгоритма выносятся в базовый класс.</li>
                <li>Позволяет подклассам изменять только определённые части алгоритма, не затрагивая его общую структуру.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минусы:</span>
            <ul>
                <li>Может привести к созданию слишком большого количества подклассов, если шаги алгоритма часто меняются.</li>
                <li>Жёсткая структура алгоритма может ограничивать гибкость.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн «Шаблонный метод» полезен, когда нужно задать общую структуру алгоритма, но оставить возможность для подклассов изменять определённые шаги.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ba45c5a6-55be-4021-bd37-acace78d0fc2', 'Расскажите про аннотацию @Conditional', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Conditional</title>
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
    <h1>Аннотация @Conditional</h1>
    <p>
        Аннотация <code>@Conditional</code> в Spring позволяет включать или исключать определение бина или всей конфигурации на основе определённых условий. Это мощный инструмент для управления созданием бинов в зависимости от состояния приложения, окружения или других факторов.
    </p>

    <h2>Как работает @Conditional?</h2>
    <p>
        Аннотация <code>@Conditional</code> принимает в качестве параметра класс, реализующий интерфейс <code>Condition</code>. Этот интерфейс содержит единственный метод <code>matches</code>, который возвращает <code>boolean</code>. Если метод возвращает <code>true</code>, бин или конфигурация будут созданы, если <code>false</code> — нет.
    </p>

    <h3>Пример реализации Condition</h3>
    <pre><code>public class MyCondition implements Condition {

    @Override
    public boolean matches(ConditionContext context, AnnotatedTypeMetadata metadata) {
        // Логика проверки условия
        return true; // или false, в зависимости от условия
    }
}</code></pre>

    <h3>Использование @Conditional</h3>
    <pre><code>@Configuration
public class MyConfig {

    @Bean
    @Conditional(MyCondition.class)
    public MyService myService() {
        return new MyService();
    }
}</code></pre>

    <h2>Сложные условия с использованием вложенных условий</h2>
    <p>
        Для создания более сложных условий Spring предоставляет следующие классы:
    </p>
    <ul>
        <li>
            <span class="highlight">AnyNestedCondition:</span> Условие выполняется, если хотя бы одно из вложенных условий верно.
        </li>
        <li>
            <span class="highlight">AllNestedConditions:</span> Условие выполняется, если все вложенные условия верны.
        </li>
        <li>
            <span class="highlight">NoneNestedConditions:</span> Условие выполняется, если ни одно из вложенных условий не верно.
        </li>
    </ul>

    <h3>Пример использования AnyNestedCondition</h3>
    <pre><code>public class MyAnyCondition extends AnyNestedCondition {

    public MyAnyCondition() {
        super(ConfigurationPhase.REGISTER_BEAN);
    }

    @Conditional(FirstCondition.class)
    static class FirstCondition {}

    @Conditional(SecondCondition.class)
    static class SecondCondition {}
}</code></pre>

    <h3>Пример использования AllNestedConditions</h3>
    <pre><code>public class MyAllCondition extends AllNestedConditions {

    public MyAllCondition() {
        super(ConfigurationPhase.REGISTER_BEAN);
    }

    @Conditional(FirstCondition.class)
    static class FirstCondition {}

    @Conditional(SecondCondition.class)
    static class SecondCondition {}
}</code></pre>

    <h3>Пример использования NoneNestedConditions</h3>
    <pre><code>public class MyNoneCondition extends NoneNestedConditions {

    public MyNoneCondition() {
        super(ConfigurationPhase.REGISTER_BEAN);
    }

    @Conditional(FirstCondition.class)
    static class FirstCondition {}

    @Conditional(SecondCondition.class)
    static class SecondCondition {}
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@Conditional</code> может быть применена как к отдельным бинам, так и к целым конфигурационным классам. Это позволяет гибко управлять созданием бинов в зависимости от условий.
        </p>
    </div>

    <h2>Преимущества @Conditional</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет включать или исключать бины и конфигурации на основе сложных условий.
        </li>
        <li>
            <span class="highlight">Модульность:</span> Упрощает управление конфигурацией приложения, особенно в различных окружениях (например, dev, test, prod).
        </li>
        <li>
            <span class="highlight">Расширяемость:</span> Поддержка вложенных условий позволяет создавать сложные логические конструкции.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span> Использование сложных условий может усложнить понимание и поддержку кода.
        </li>
        <li>
            <span class="highlight">Отладка:</span> Ошибки в условиях могут быть трудными для диагностики, особенно в больших приложениях.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a2eefa30-54d9-4e7c-92af-eac7a008c767', 'Для чего нужна аннотация ID? Какие @GeneratedValue вы знаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Id и @GeneratedValue в JPA</title>
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
    <h1>Аннотация @Id и @GeneratedValue в JPA</h1>
    <p>
        Аннотация <code>@Id</code> в JPA (Java Persistence API) используется для обозначения поля, которое является
        первичным ключом сущности. Если значение первичного ключа должно генерироваться автоматически,
        используется аннотация <code>@GeneratedValue</code>, которая поддерживает несколько стратегий генерации.
    </p>

    <h2>Аннотация @Id</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li>Определяет поле, которое является первичным ключом сущности.</li>
                <li>Первичный ключ может быть простым (состоящим из одного поля) или составным.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Допустимые типы:</span>
            <ul>
                <li>Примитивные типы и их обёртки (<code>int</code>, <code>Integer</code>, <code>long</code>, <code>Long</code> и т.д.).</li>
                <li>Строки (<code>String</code>).</li>
                <li><code>BigDecimal</code> и <code>BigInteger</code>.</li>
                <li><code>java.util.Date</code> и <code>java.sql.Date</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Аннотация @GeneratedValue</h2>
    <p>
        Аннотация <code>@GeneratedValue</code> используется для автоматической генерации значений первичного ключа.
        Она поддерживает четыре стратегии генерации:
    </p>
    <ul>
        <li>
            <span class="highlight">AUTO (по умолчанию):</span>
            <ul>
                <li>Hibernate выбирает подходящую стратегию генерации в зависимости от диалекта базы данных.</li>
                <li>Поведение по умолчанию зависит от типа поля идентификатора.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">IDENTITY:</span>
            <ul>
                <li>Использует столбец <code>IDENTITY</code> базы данных для генерации значений.</li>
                <li>Значения автоматически увеличиваются на стороне базы данных.</li>
                <li>Подходит для баз данных, таких как MySQL, которые поддерживают автоинкрементные столбцы.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">SEQUENCE:</span>
            <ul>
                <li>Использует механизм последовательностей (Sequence) базы данных для генерации значений.</li>
                <li>Рекомендуется документацией Hibernate.</li>
                <li>Если база данных не поддерживает последовательности, Hibernate автоматически переключается
                    на стратегию <code>TABLE</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">TABLE:</span>
            <ul>
                <li>Использует отдельную таблицу для генерации значений первичного ключа.</li>
                <li>Требует использования пессимистических блокировок, что может замедлить работу приложения.</li>
                <li>Подходит для баз данных, которые не поддерживают <code>IDENTITY</code> или <code>SEQUENCE</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>@Id</code> для обозначения первичного ключа сущности.</li>
                <li>Используйте <code>@GeneratedValue</code> для автоматической генерации значений первичного ключа.</li>
                <li>Выбор стратегии генерации зависит от возможностей базы данных и требований приложения.</li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования</h2>
    <pre><code>
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    // Геттеры и сеттеры
}

@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "product_seq")
    @SequenceGenerator(name = "product_seq", sequenceName = "PRODUCT_SEQ", allocationSize = 1)
    private Long id;

    private String productName;

    // Геттеры и сеттеры
}

@Entity
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "order_gen")
    @TableGenerator(name = "order_gen", table = "ID_GEN", pkColumnName = "GEN_NAME", valueColumnName = "GEN_VAL")
    private Long id;

    private String orderDetails;

    // Геттеры и сеттеры
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Для сущности <code>User</code> используется стратегия <code>IDENTITY</code>.</li>
            <li>Для сущности <code>Product</code> используется стратегия <code>SEQUENCE</code>.</li>
            <li>Для сущности <code>Order</code> используется стратегия <code>TABLE</code>.</li>
        </ul>
    </p>

    <h2>Сравнение стратегий генерации</h2>
    <table>
        <thead>
            <tr>
                <th>Стратегия</th>
                <th>Описание</th>
                <th>Преимущества</th>
                <th>Недостатки</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>AUTO</td>
                <td>Hibernate выбирает стратегию автоматически.</td>
                <td>Универсальность.</td>
                <td>Зависит от диалекта базы данных.</td>
            </tr>
            <tr>
                <td>IDENTITY</td>
                <td>Использует автоинкрементные столбцы.</td>
                <td>Простота использования.</td>
                <td>Не поддерживается всеми базами данных.</td>
            </tr>
            <tr>
                <td>SEQUENCE</td>
                <td>Использует последовательности базы данных.</td>
                <td>Рекомендуется Hibernate.</td>
                <td>Требует поддержки последовательностей.</td>
            </tr>
            <tr>
                <td>TABLE</td>
                <td>Использует отдельную таблицу для генерации ключей.</td>
                <td>Подходит для всех баз данных.</td>
                <td>Может замедлить работу приложения.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('840baefa-1439-4847-b621-1677cb39ab41', 'Какие типичные проблемы вы встречали при написании многопоточных приложений и как их решали?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Типичные проблемы многопоточных приложений</title>
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
    <h1>Типичные проблемы многопоточных приложений</h1>
    <p>
        Написание многопоточных приложений сопряжено с рядом сложностей, которые могут привести к ошибкам, трудно воспроизводимым и сложным для отладки. Вот основные проблемы, с которыми сталкиваются разработчики, и способы их решения.
    </p>

    <h2>1. Состояние гонки (Race Condition)</h2>
    <p>
        <span class="highlight">Проблема:</span> Состояние гонки возникает, когда несколько потоков одновременно обращаются к общим данным, и результат выполнения зависит от порядка выполнения операций.
    </p>
    <p>
        <span class="highlight">Решение:</span> Используйте синхронизацию (например, <code>synchronized</code>, <code>ReentrantLock</code>) или потокобезопасные коллекции (например, <code>ConcurrentHashMap</code>). Также можно использовать атомарные переменные (<code>AtomicInteger</code>, <code>AtomicReference</code>).
    </p>

    <h3>Пример решения с использованием <code>synchronized</code>:</h3>
    <pre><code>
public class RaceConditionExample {
    private int counter = 0;

    public synchronized void increment() {
        counter++;
    }

    public int getCounter() {
        return counter;
    }
}
    </code></pre>

    <h2>2. Deadlock (Взаимная блокировка)</h2>
    <p>
        <span class="highlight">Проблема:</span> Deadlock возникает, когда два или более потоков блокируют друг друга, ожидая освобождения ресурсов.
    </p>
    <p>
        <span class="highlight">Решение:</span> Избегайте вложенных блокировок, используйте таймауты для попыток захвата блокировок и придерживайтесь строгого порядка захвата блокировок.
    </p>

    <h3>Пример решения с использованием таймаутов:</h3>
    <pre><code>
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class DeadlockExample {
    private final Lock lock1 = new ReentrantLock();
    private final Lock lock2 = new ReentrantLock();

    public void method1() {
        if (lock1.tryLock()) {
            try {
                if (lock2.tryLock()) {
                    try {
                        // Критическая секция
                    } finally {
                        lock2.unlock();
                    }
                }
            } finally {
                lock1.unlock();
            }
        }
    }

    public void method2() {
        if (lock2.tryLock()) {
            try {
                if (lock1.tryLock()) {
                    try {
                        // Критическая секция
                    } finally {
                        lock1.unlock();
                    }
                }
            } finally {
                lock2.unlock();
            }
        }
    }
}
    </code></pre>

    <h2>3. Livelock (Активная блокировка)</h2>
    <p>
        <span class="highlight">Проблема:</span> Livelock возникает, когда потоки постоянно меняют своё состояние в ответ на действия друг друга, но не могут продвинуться в выполнении задачи.
    </p>
    <p>
        <span class="highlight">Решение:</span> Внедрите случайные задержки или измените логику взаимодействия потоков, чтобы избежать бесконечного цикла ответных действий.
    </p>

    <h2>4. Голодание (Starvation)</h2>
    <p>
        <span class="highlight">Проблема:</span> Голодание происходит, когда один или несколько потоков не могут получить доступ к ресурсам из-за того, что другие потоки постоянно их захватывают.
    </p>
    <p>
        <span class="highlight">Решение:</span> Используйте справедливые блокировки (например, <code>ReentrantLock(true)</code>) или приоритеты потоков для обеспечения равного доступа к ресурсам.
    </p>

    <h2>5. Ложные пробуждения (Spurious Wakeups)</h2>
    <p>
        <span class="highlight">Проблема:</span> Потоки могут быть разбужены без явного вызова <code>notify()</code> или <code>signal()</code>, что может привести к непредсказуемому поведению.
    </p>
    <p>
        <span class="highlight">Решение:</span> Всегда проверяйте условие в цикле <code>while</code> при использовании <code>wait()</code> или <code>await()</code>.
    </p>

    <h3>Пример решения с использованием цикла <code>while</code>:</h3>
    <pre><code>
public class SpuriousWakeupExample {
    private boolean condition = false;

    public synchronized void waitForCondition() throws InterruptedException {
        while (!condition) {
            wait();
        }
    }

    public synchronized void setCondition() {
        condition = true;
        notifyAll();
    }
}
    </code></pre>

    <h2>6. Утечка ресурсов</h2>
    <p>
        <span class="highlight">Проблема:</span> Потоки могут не освобождать ресурсы (например, файлы, сокеты, соединения с базой данных), что приводит к утечкам памяти или ресурсов.
    </p>
    <p>
        <span class="highlight">Решение:</span> Используйте блоки <code>try-finally</code> для гарантии освобождения ресурсов, даже если произошло исключение.
    </p>

    <h3>Пример использования <code>try-finally</code>:</h3>
    <pre><code>
public class ResourceLeakExample {
    private final Lock lock = new ReentrantLock();

    public void useResource() {
        lock.lock();
        try {
            // Работа с ресурсом
        } finally {
            lock.unlock();
        }
    }
}
    </code></pre>

    <h2>Рекомендации по предотвращению проблем</h2>
    <p>
        <span class="highlight">1. Используйте потокобезопасные коллекции:</span> Например, <code>ConcurrentHashMap</code>, <code>CopyOnWriteArrayList</code>.
    </p>
    <p>
        <span class="highlight">2. Минимизируйте использование блокировок:</span> Используйте атомарные переменные или неблокирующие алгоритмы.
    </p>
    <p>
        <span class="highlight">3. Тестируйте многопоточный код:</span> Используйте стресс-тестирование и инструменты анализа, такие как <code>ThreadSanitizer</code> или <code>JVisualVM</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Многопоточные приложения требуют тщательного проектирования и тестирования. Используйте лучшие практики и инструменты для предотвращения и устранения проблем.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7ef1a32f-354e-4322-bea9-e3e88e5b553f', 'Статическое и динамическое связывание', 'поле поле поле поле', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c152286a-2ade-4dfd-9680-a3f4eac2ee0b', 'Как отлаживать многопоточные приложения? Какие инструменты вы используете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отладка многопоточных приложений</title>
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
    <h1>Отладка многопоточных приложений</h1>
    <p>
        Отладка многопоточных приложений — это сложная задача, так как ошибки могут быть недетерминированными и проявляться только при определённых условиях. Для эффективной отладки необходимо использовать специальные инструменты и подходы, которые помогают выявлять и устранять проблемы, такие как состояния гонки (race conditions), deadlock и livelock.
    </p>

    <h2>Основные подходы к отладке многопоточных приложений</h2>
    <p>
        <span class="highlight">1. Логирование:</span> Добавление подробных логов в код помогает отслеживать выполнение потоков и выявлять проблемы. Логирование должно включать информацию о состоянии потоков, блокировках и выполняемых операциях.
    </p>
    <p>
        <span class="highlight">2. Использование инструментов анализа:</span> Современные IDE и инструменты предоставляют возможности для анализа многопоточных приложений, такие как просмотр состояния потоков, блокировок и мониторов.
    </p>
    <p>
        <span class="highlight">3. Стресс-тестирование:</span> Запуск приложения под высокой нагрузкой помогает выявить проблемы, которые могут не проявляться при обычном использовании.
    </p>
    <p>
        <span class="highlight">4. Анализ дампов потоков:</span> Дампы потоков (thread dumps) позволяют получить информацию о состоянии всех потоков в определённый момент времени, что полезно для диагностики deadlock и других проблем.
    </p>

    <h2>Инструменты для отладки многопоточных приложений</h2>
    <p>
        <span class="highlight">1. IDE (IntelliJ IDEA, Eclipse, Visual Studio Code):</span> Современные IDE предоставляют встроенные инструменты для отладки многопоточных приложений, такие как просмотр состояния потоков, точек останова и переменных.
    </p>
    <p>
        <span class="highlight">2. JVisualVM и Java Mission Control:</span> Эти инструменты позволяют анализировать производительность приложения, состояние потоков и блокировок.
    </p>
    <p>
        <span class="highlight">3. Thread Dump Analyzer (TDA):</span> Инструмент для анализа дампов потоков, который помогает выявлять deadlock и другие проблемы.
    </p>
    <p>
        <span class="highlight">4. Concurrency Testing Tools:</span> Инструменты, такие как <code>ThreadSanitizer</code> (для C/C++) или <code>vmlens</code> (для Java), помогают выявлять состояния гонки и другие проблемы многопоточности.
    </p>

    <h3>Пример использования JVisualVM для анализа потоков:</h3>
    <p>
        JVisualVM позволяет просматривать состояние потоков, блокировок и мониторов в реальном времени. Для использования:
        <ul>
            <li>Запустите JVisualVM (обычно входит в состав JDK).</li>
            <li>Подключитесь к вашему приложению.</li>
            <li>Перейдите на вкладку "Threads" для просмотра состояния потоков.</li>
        </ul>
    </p>

    <h3>Пример анализа дампа потоков:</h3>
    <pre><code>
// Получение дампа потоков в Java
public class ThreadDumpExample {
    public static void main(String[] args) {
        Thread.getAllStackTraces().forEach((thread, stackTrace) -> {
            System.out.println("Thread: " + thread.getName());
            for (StackTraceElement element : stackTrace) {
                System.out.println("\\t" + element);
            }
        });
    }
}
    </code></pre>

    <h2>Рекомендации по отладке многопоточных приложений</h2>
    <p>
        <span class="highlight">1. Минимизируйте состояние гонки:</span> Используйте потокобезопасные коллекции и атомарные переменные для минимизации состояния гонки.
    </p>
    <p>
        <span class="highlight">2. Используйте блокировки с таймаутами:</span> Это помогает избежать deadlock и livelock.
    </p>
    <p>
        <span class="highlight">3. Тестируйте на разных платформах:</span> Многопоточные ошибки могут проявляться по-разному на разных платформах и версиях JVM.
    </p>
    <p>
        <span class="highlight">4. Используйте инструменты анализа:</span> Регулярно анализируйте состояние потоков и блокировок с помощью инструментов, таких как JVisualVM или Thread Dump Analyzer.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Отладка многопоточных приложений требует терпения и использования правильных инструментов. Регулярное тестирование и анализ помогут выявить и устранить проблемы на ранних этапах.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d7e3d3fb-18fe-43f6-a0e0-a8135fb47bbb', 'Каковы лучшие практики для проектирования многопоточных систем?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Лучшие практики проектирования многопоточных систем</title>
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
    <h1>Лучшие практики проектирования многопоточных систем</h1>
    <p>
        Проектирование многопоточных систем требует особого внимания к деталям, чтобы избежать таких проблем, как состояния гонки, deadlock, livelock и утечки ресурсов. Вот основные лучшие практики, которые помогут вам создавать надёжные и производительные многопоточные приложения.
    </p>

    <h2>1. Минимизация состояния гонки</h2>
    <p>
        <span class="highlight">Проблема:</span> Состояние гонки возникает, когда несколько потоков одновременно обращаются к общим данным.
    </p>
    <p>
        <span class="highlight">Решение:</span> Используйте потокобезопасные коллекции (например, <code>ConcurrentHashMap</code>) и атомарные переменные (например, <code>AtomicInteger</code>). Если необходимо, применяйте синхронизацию с помощью <code>synchronized</code> или <code>ReentrantLock</code>.
    </p>

    <h3>Пример использования потокобезопасной коллекции:</h3>
    <pre><code>
import java.util.concurrent.ConcurrentHashMap;

public class ThreadSafeCollectionExample {
    private final ConcurrentHashMap<String, Integer> map = new ConcurrentHashMap<>();

    public void add(String key, int value) {
        map.put(key, value);
    }

    public int get(String key) {
        return map.getOrDefault(key, -1);
    }
}
    </code></pre>

    <h2>2. Избегайте deadlock</h2>
    <p>
        <span class="highlight">Проблема:</span> Deadlock возникает, когда потоки блокируют друг друга, ожидая освобождения ресурсов.
    </p>
    <p>
        <span class="highlight">Решение:</span> Используйте строгий порядок захвата блокировок и таймауты для попыток захвата блокировок.
    </p>

    <h3>Пример использования таймаутов:</h3>
    <pre><code>
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class DeadlockPreventionExample {
    private final Lock lock1 = new ReentrantLock();
    private final Lock lock2 = new ReentrantLock();

    public void method1() {
        if (lock1.tryLock()) {
            try {
                if (lock2.tryLock()) {
                    try {
                        // Критическая секция
                    } finally {
                        lock2.unlock();
                    }
                }
            } finally {
                lock1.unlock();
            }
        }
    }
}
    </code></pre>

    <h2>3. Используйте пулы потоков</h2>
    <p>
        <span class="highlight">Проблема:</span> Создание и уничтожение потоков может быть дорогостоящим.
    </p>
    <p>
        <span class="highlight">Решение:</span> Используйте <code>ExecutorService</code> и пулы потоков для управления потоками.
    </p>

    <h3>Пример использования пула потоков:</h3>
    <pre><code>
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ThreadPoolExample {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(4);

        for (int i = 0; i < 10; i++) {
            executor.submit(() -> {
                System.out.println("Задача выполняется потоком: " + Thread.currentThread().getName());
            });
        }

        executor.shutdown();
    }
}
    </code></pre>

    <h2>4. Используйте атомарные операции</h2>
    <p>
        <span class="highlight">Проблема:</span> Составные операции (например, инкремент) могут привести к состояниям гонки.
    </p>
    <p>
        <span class="highlight">Решение:</span> Используйте атомарные переменные (например, <code>AtomicInteger</code>) для выполнения атомарных операций.
    </p>

    <h3>Пример использования атомарной переменной:</h3>
    <pre><code>
import java.util.concurrent.atomic.AtomicInteger;

public class AtomicExample {
    private final AtomicInteger counter = new AtomicInteger(0);

    public void increment() {
        counter.incrementAndGet();
    }

    public int getCounter() {
        return counter.get();
    }
}
    </code></pre>

    <h2>5. Минимизируйте использование блокировок</h2>
    <p>
        <span class="highlight">Проблема:</span> Блокировки могут снизить производительность и привести к deadlock.
    </p>
    <p>
        <span class="highlight">Решение:</span> Используйте неблокирующие алгоритмы и структуры данных, такие как <code>ConcurrentLinkedQueue</code>.
    </p>

    <h2>6. Используйте условные переменные для координации потоков</h2>
    <p>
        <span class="highlight">Проблема:</span> Потоки могут ждать определённых условий, что требует координации.
    </p>
    <p>
        <span class="highlight">Решение:</span> Используйте <code>Condition</code> для управления ожиданием и уведомлением потоков.
    </p>

    <h3>Пример использования условной переменной:</h3>
    <pre><code>
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class ConditionExample {
    private final Lock lock = new ReentrantLock();
    private final Condition condition = lock.newCondition();
    private boolean ready = false;

    public void waitForReady() throws InterruptedException {
        lock.lock();
        try {
            while (!ready) {
                condition.await();
            }
        } finally {
            lock.unlock();
        }
    }

    public void setReady() {
        lock.lock();
        try {
            ready = true;
            condition.signalAll();
        } finally {
            lock.unlock();
        }
    }
}
    </code></pre>

    <h2>7. Тестируйте многопоточный код</h2>
    <p>
        <span class="highlight">Проблема:</span> Многопоточные ошибки могут быть трудно воспроизводимыми.
    </p>
    <p>
        <span class="highlight">Решение:</span> Используйте стресс-тестирование, инструменты анализа (например, <code>JVisualVM</code>) и тестируйте на разных платформах.
    </p>

    <h2>Рекомендации по проектированию</h2>
    <p>
        <span class="highlight">1. Разделяйте данные:</span> Минимизируйте использование общих данных между потоками. Используйте локальные переменные или <code>ThreadLocal</code>.
    </p>
    <p>
        <span class="highlight">2. Используйте неизменяемые объекты:</span> Неизменяемые объекты (immutable objects) безопасны для использования в многопоточных приложениях.
    </p>
    <p>
        <span class="highlight">3. Документируйте многопоточный код:</span> Чётко документируйте, как потоки взаимодействуют друг с другом и какие блокировки используются.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Следуя этим лучшим практикам, вы сможете создавать надёжные и производительные многопоточные системы. Однако помните, что многопоточное программирование требует тщательного тестирования и анализа.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8de64eac-48b2-472d-a3fe-e1f3f6193086', 'Как вы справляетесь с ситуацией, когда потоки не выполняются в порядке, ожидаемом в коде?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Управление порядком выполнения потоков</title>
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
    <h1>Управление порядком выполнения потоков</h1>
    <p>
        В многопоточных приложениях порядок выполнения потоков не гарантируется, так как он зависит от планировщика потоков операционной системы. Однако существуют механизмы, которые позволяют управлять порядком выполнения потоков или синхронизировать их работу для достижения определённой последовательности.
    </p>

    <h2>Проблема: Непредсказуемый порядок выполнения потоков</h2>
    <p>
        <span class="highlight">Проблема:</span> Потоки могут выполняться в произвольном порядке, что может привести к неожиданным результатам, особенно если выполнение одной задачи зависит от завершения другой.
    </p>

    <h2>Решение: Использование механизмов синхронизации</h2>
    <p>
        Для управления порядком выполнения потоков можно использовать следующие механизмы:
        <ul>
            <li>
                <span class="highlight">1. Блокировки и условные переменные:</span> Используйте <code>ReentrantLock</code> и <code>Condition</code> для координации потоков.
            </li>
            <li>
                <span class="highlight">2. Семафоры:</span> Используйте <code>Semaphore</code> для управления доступом к ресурсам и синхронизации потоков.
            </li>
            <li>
                <span class="highlight">3. Барьеры:</span> Используйте <code>CyclicBarrier</code> или <code>CountDownLatch</code> для синхронизации потоков на определённых этапах.
            </li>
            <li>
                <span class="highlight">4. Очереди:</span> Используйте <code>BlockingQueue</code> для управления порядком выполнения задач.
            </li>
        </ul>
    </p>

    <h3>Пример использования <code>CountDownLatch</code>:</h3>
    <pre><code>
import java.util.concurrent.CountDownLatch;

public class CountDownLatchExample {
    public static void main(String[] args) throws InterruptedException {
        CountDownLatch latch = new CountDownLatch(3);

        Runnable task = () -> {
            System.out.println("Поток " + Thread.currentThread().getName() + " начал выполнение");
            latch.countDown();
        };

        new Thread(task).start();
        new Thread(task).start();
        new Thread(task).start();

        latch.await();  // Ожидание завершения всех потоков
        System.out.println("Все потоки завершили выполнение");
    }
}
    </code></pre>

    <h3>Пример использования <code>CyclicBarrier</code>:</h3>
    <pre><code>
import java.util.concurrent.CyclicBarrier;

public class CyclicBarrierExample {
    public static void main(String[] args) {
        CyclicBarrier barrier = new CyclicBarrier(3, () -> {
            System.out.println("Все потоки достигли барьера");
        });

        Runnable task = () -> {
            System.out.println("Поток " + Thread.currentThread().getName() + " начал выполнение");
            try {
                barrier.await();  // Ожидание других потоков
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println("Поток " + Thread.currentThread().getName() + " продолжил выполнение");
        };

        new Thread(task).start();
        new Thread(task).start();
        new Thread(task).start();
    }
}
    </code></pre>

    <h3>Пример использования <code>BlockingQueue</code>:</h3>
    <pre><code>
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class BlockingQueueExample {
    public static void main(String[] args) throws InterruptedException {
        BlockingQueue<String> queue = new LinkedBlockingQueue<>();

        Runnable producer = () -> {
            try {
                queue.put("Задача 1");
                queue.put("Задача 2");
                queue.put("Задача 3");
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        };

        Runnable consumer = () -> {
            try {
                System.out.println("Обработана: " + queue.take());
                System.out.println("Обработана: " + queue.take());
                System.out.println("Обработана: " + queue.take());
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        };

        new Thread(producer).start();
        new Thread(consumer).start();
    }
}
    </code></pre>

    <h2>Рекомендации по управлению порядком выполнения</h2>
    <p>
        <span class="highlight">1. Используйте подходящие механизмы синхронизации:</span> Выбирайте механизмы в зависимости от задачи (например, <code>CountDownLatch</code> для ожидания завершения, <code>CyclicBarrier</code> для синхронизации на этапах).
    </p>
    <p>
        <span class="highlight">2. Минимизируйте блокировки:</span> Используйте неблокирующие алгоритмы, если это возможно, чтобы избежать снижения производительности.
    </p>
    <p>
        <span class="highlight">3. Тестируйте многопоточный код:</span> Используйте стресс-тестирование и инструменты анализа для выявления проблем с порядком выполнения.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Управление порядком выполнения потоков требует тщательного проектирования и тестирования. Используйте подходящие механизмы синхронизации и следуйте лучшим практикам, чтобы избежать ошибок.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cdc1c58a-5cae-4758-aeef-a863c4445625', 'Разница между PERSIST и MERGE?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между PERSIST и MERGE</title>
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
    <h1>Разница между PERSIST и MERGE</h1>
    <p>
        В JPA (Java Persistence API) методы <code>persist()</code> и <code>merge()</code> используются для работы с сущностями,
        но они выполняют разные задачи и применяются в разных ситуациях.
    </p>

    <h2>Метод PERSIST</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span> Метод <code>persist(entity)</code> используется для добавления новых объектов
            в базу данных. Он делает сущность управляемой (persistent) в контексте персистентности.
        </li>
        <li>
            <span class="highlight">Использование:</span> Применяется только для новых сущностей, которые ещё не существуют
            в базе данных. Если попытаться использовать <code>persist()</code> для уже существующей сущности,
            будет выброшено исключение <code>EntityExistsException</code>.
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
EntityManager em = ...;
MyEntity newEntity = new MyEntity();
em.persist(newEntity); // Добавляет новую сущность в БД
            </code></pre>
        </li>
    </ul>

    <h2>Метод MERGE</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span> Метод <code>merge(entity)</code> используется для обновления уже существующих
            сущностей в базе данных. Он возвращает управляемую копию сущности, которая будет
            синхронизирована с базой данных.
        </li>
        <li>
            <span class="highlight">Использование:</span> Применяется для сущностей, которые уже существуют в базе данных.
            Если сущность не существует, она будет создана. Если сущность уже управляется в
            контексте персистентности, она будет заменена обновлённой версией.
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
EntityManager em = ...;
MyEntity existingEntity = em.find(MyEntity.class, 1L);
existingEntity.setName("Updated Name");
em.merge(existingEntity); // Обновляет существующую сущность в БД
            </code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>persist()</code> для добавления новых сущностей в базу данных.</li>
                <li>Используйте <code>merge()</code> для обновления уже существующих сущностей или для
                    повторного присоединения отключённых сущностей к контексту персистентности.</li>
            </ul>
        </p>
    </div>

    <h2>Ключевые различия</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>PERSIST</th>
                <th>MERGE</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Назначение</td>
                <td>Добавление новых сущностей</td>
                <td>Обновление существующих сущностей</td>
            </tr>
            <tr>
                <td>Исключения</td>
                <td>EntityExistsException, если сущность уже существует</td>
                <td>Нет исключений, если сущность не существует (создаётся новая)</td>
            </tr>
            <tr>
                <td>Возвращаемое значение</td>
                <td>void</td>
                <td>Управляемая копия сущности</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('68505165-337e-4e83-9347-fbba1c8c3193', 'Какие четыре статуса жизненного цикла Entity-объекта (Entity Instance’s Life  Cycle) вы можете перечислить?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Жизненный цикл Entity-объекта</title>
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
    <h1>Жизненный цикл Entity-объекта</h1>
    <p>
        В JPA (Java Persistence API) жизненный цикл Entity-объекта (Entity Instance’s Life Cycle) состоит из четырёх
        основных состояний. Эти состояния определяют, как объект взаимодействует с контекстом персистентности
        и базой данных.
    </p>

    <h2>Состояния жизненного цикла</h2>
    <ul>
        <li>
            <span class="highlight">Transient (New):</span>
            <ul>
                <li>Сущность только что создана с помощью оператора <code>new()</code>.</li>
                <li>Не имеет связи с базой данных.</li>
                <li>Не имеет первичного ключа.</li>
                <li>Не управляется контекстом персистентности.</li>
                <li>При сохранении переходит в состояние <code>Managed</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Managed:</span>
            <ul>
                <li>Сущность сохранена в базе данных и имеет первичный ключ.</li>
                <li>Управляется контекстом персистентности (JPA).</li>
                <li>Изменения в сущности автоматически синхронизируются с базой данных.</li>
                <li>Если сущность отвязывается от контекста, она переходит в состояние <code>Detached</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Detached:</span>
            <ul>
                <li>Сущность существует в базе данных, но больше не управляется контекстом персистентности.</li>
                <li>Не связана с экземпляром <code>Session</code> или <code>EntityManager</code>.</li>
                <li>Может быть повторно присоединена к контексту с помощью метода <code>merge()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Removed:</span>
            <ul>
                <li>Сущность помечена для удаления из базы данных.</li>
                <li>Управляется контекстом персистентности, но будет удалена при коммите транзакции.</li>
                <li>После удаления сущность переходит в состояние <code>Detached</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Состояние <code>Transient</code> используется для новых объектов, которые ещё не сохранены в БД.</li>
                <li>Состояние <code>Managed</code> позволяет автоматически синхронизировать изменения с БД.</li>
                <li>Состояние <code>Detached</code> полезно для работы с объектами вне контекста персистентности.</li>
                <li>Состояние <code>Removed</code> указывает, что объект будет удалён из БД при завершении транзакции.</li>
            </ul>
        </p>
    </div>

    <h2>Пример перехода между состояниями</h2>
    <pre><code>
EntityManager em = ...;

// Transient
MyEntity entity = new MyEntity();
entity.setName("New Entity");

// Managed
em.persist(entity); // Сохраняем сущность в БД

// Detached
em.detach(entity); // Отвязываем сущность от контекста

// Managed (повторно)
entity = em.merge(entity); // Присоединяем сущность обратно к контексту

// Removed
em.remove(entity); // Помечаем сущность для удаления
    </code></pre>
    <p>
        В этом примере показаны основные переходы между состояниями жизненного цикла Entity-объекта.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f70ad4d9-8780-45e9-88e2-06c88e8e5087', 'Что такое гонка (race condition) и как её можно избежать?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Гонка (race condition) и способы её избежать</title>
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
        <h1>Что такое гонка (race condition) и как её можно избежать?</h1>
        <p>
            <span class="highlight">Гонка (race condition)</span> — это ошибка в многопоточных программах, которая возникает, когда несколько потоков одновременно пытаются изменить общие данные, и результат выполнения программы зависит от порядка выполнения потоков. Это может привести к непредсказуемому поведению и ошибкам.
        </p>

        <h2>Как возникает гонка?</h2>
        <p>
            Гонка возникает, когда два или более потоков обращаются к общим данным, и хотя бы один из них изменяет эти данные. Если потоки не синхронизированы, результат выполнения может быть непредсказуемым.
        </p>
        <h3>Пример гонки</h3>
        <pre><code>class Counter {
    private int count = 0;

    public void increment() {
        count++; // Операция не атомарна
    }

    public int getCount() {
        return count;
    }
}

public class Main {
    public static void main(String[] args) throws InterruptedException {
        Counter counter = new Counter();

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

        System.out.println("Итоговое значение: " + counter.getCount());
    }
}</code></pre>
        <p>
            В этом примере два потока увеличивают значение переменной <code>count</code>. Из-за отсутствия синхронизации итоговое значение может быть меньше ожидаемого (2000), так как операции <code>count++</code> не атомарны.
        </p>

        <h2>Как избежать гонки?</h2>
        <p>
            Чтобы избежать гонки, необходимо синхронизировать доступ к общим данным. Вот основные способы:
        </p>

        <h3>1. Использование ключевого слова <code>synchronized</code></h3>
        <p>
            Ключевое слово <code>synchronized</code> позволяет синхронизировать доступ к методам или блокам кода, чтобы только один поток мог выполнять их одновременно.
        </p>
        <pre><code>class Counter {
    private int count = 0;

    public synchronized void increment() {
        count++; // Теперь операция атомарна
    }

    public int getCount() {
        return count;
    }
}</code></pre>
        <p>
            В этом примере метод <code>increment()</code> синхронизирован, что предотвращает гонку.
        </p>

        <h3>2. Использование блоков <code>synchronized</code></h3>
        <p>
            Если синхронизация требуется только для части метода, можно использовать синхронизированные блоки:
        </p>
        <pre><code>class Counter {
    private int count = 0;
    private final Object lock = new Object();

    public void increment() {
        synchronized (lock) {
            count++; // Синхронизированный блок
        }
    }

    public int getCount() {
        return count;
    }
}</code></pre>

        <h3>3. Использование атомарных классов</h3>
        <p>
            Java предоставляет атомарные классы (например, <code>AtomicInteger</code>), которые обеспечивают атомарные операции без явной синхронизации.
        </p>
        <pre><code>import java.util.concurrent.atomic.AtomicInteger;

class Counter {
    private AtomicInteger count = new AtomicInteger(0);

    public void increment() {
        count.incrementAndGet(); // Атомарная операция
    }

    public int getCount() {
        return count.get();
    }
}</code></pre>

        <h3>4. Использование <code>ReentrantLock</code></h3>
        <p>
            Класс <code>ReentrantLock</code> предоставляет более гибкий механизм синхронизации, чем <code>synchronized</code>.
        </p>
        <pre><code>import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class Counter {
    private int count = 0;
    private Lock lock = new ReentrantLock();

    public void increment() {
        lock.lock();
        try {
            count++;
        } finally {
            lock.unlock();
        }
    }

    public int getCount() {
        return count;
    }
}</code></pre>

        <h3>5. Использование потокобезопасных коллекций</h3>
        <p>
            Для работы с коллекциями в многопоточных приложениях используйте потокобезопасные коллекции из пакета <code>java.util.concurrent</code>, такие как <code>ConcurrentHashMap</code> или <code>CopyOnWriteArrayList</code>.
        </p>

        <h2>Преимущества и недостатки синхронизации</h2>
        <ul>
            <li>
                <span class="highlight">Преимущества:</span> Предотвращает гонки, обеспечивает корректность данных.
            </li>
            <li>
                <span class="highlight">Недостатки:</span> Может снизить производительность из-за блокировок.
            </li>
        </ul>

        <h2>Рекомендации по предотвращению гонок</h2>
        <ul>
            <li>
                <span class="highlight">Минимизируйте использование общих данных:</span> Локальные переменные потоков безопасны.
            </li>
            <li>
                <span class="highlight">Используйте атомарные операции:</span> Атомарные классы и потокобезопасные коллекции.
            </li>
            <li>
                <span class="highlight">Синхронизируйте доступ к общим данным:</span> Используйте <code>synchronized</code>, <code>ReentrantLock</code> или другие механизмы синхронизации.
            </li>
            <li>
                <span class="highlight">Тестируйте многопоточные приложения:</span> Используйте инструменты для тестирования многопоточности, такие как <code>ThreadSanitizer</code>.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Гонка (race condition) — это серьёзная проблема в многопоточных программах, которая может привести к непредсказуемым ошибкам. Чтобы избежать гонок, необходимо синхронизировать доступ к общим данным с помощью механизмов, таких как <code>synchronized</code>, атомарные классы или <code>ReentrantLock</code>. Правильное использование этих инструментов помогает обеспечить корректность и стабильность многопоточных приложений.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c1d24ac9-cc5a-4e0a-90cc-bc3a6ddbc1f2', 'Как влияет операция merge на Entity-объекты каждого из четырех  статусов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Влияние операции merge на Entity-объекты</title>
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
    <h1>Влияние операции merge на Entity-объекты</h1>
    <p>
        Операция <code>merge()</code> в JPA (Java Persistence API) по-разному влияет на Entity-объекты в зависимости от их
        текущего состояния (статуса). Ниже описано, как эта операция взаимодействует с каждым из четырёх статусов.
    </p>

    <h2>Влияние на каждый статус</h2>
    <ul>
        <li>
            <span class="highlight">New (Transient):</span>
            <ul>
                <li>Будет создан новый управляемый объект (<code>Managed</code>), в который скопируются данные из
                    исходного объекта.</li>
                <li>Исходный объект останется в состоянии <code>Transient</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Managed:</span>
            <ul>
                <li>Операция <code>merge()</code> игнорируется, так как объект уже управляется контекстом
                    персистентности.</li>
                <li>Однако, если у объекта есть каскаднозависимые сущности, и они не находятся в состоянии
                    <code>Managed</code>, операция <code>merge()</code> будет применена к ним.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Detached:</span>
            <ul>
                <li>Если в контексте персистентности уже существует управляемый объект с тем же первичным
                    ключом, данные из отключённого объекта будут скопированы в этот управляемый объект.</li>
                <li>Если управляемого объекта с таким ключом нет, будет создан новый управляемый объект,
                    в который скопируются данные.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Removed:</span>
            <ul>
                <li>Вызов <code>merge()</code> для объекта в состоянии <code>Removed</code> приведёт к исключению
                    (<code>IllegalArgumentException</code>) либо сразу, либо на этапе коммита транзакции.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>merge()</code> для повторного присоединения отключённых объектов (<code>Detached</code>)
                    к контексту персистентности.</li>
                <li>Операция <code>merge()</code> не влияет на уже управляемые объекты, но может повлиять на
                    каскаднозависимые сущности.</li>
                <li>Для объектов в состоянии <code>Removed</code> операция <code>merge()</code> недопустима.</li>
            </ul>
        </p>
    </div>

    <h2>Примеры</h2>
    <pre><code>
EntityManager em = ...;

// New (Transient) → Managed (копия)
MyEntity newEntity = new MyEntity();
newEntity.setName("New Entity");
MyEntity managedCopy = em.merge(newEntity); // Создаётся управляемая копия

// Managed → Игнорируется
MyEntity managedEntity = em.find(MyEntity.class, 1L);
em.merge(managedEntity); // Операция игнорируется

// Detached → Managed (копия или обновление)
MyEntity detachedEntity = em.find(MyEntity.class, 2L);
em.detach(detachedEntity);
detachedEntity.setName("Updated Name");
MyEntity mergedEntity = em.merge(detachedEntity); // Обновление или создание копии

// Removed → Исключение
MyEntity removedEntity = em.find(MyEntity.class, 3L);
em.remove(removedEntity);
em.merge(removedEntity); // Исключение!
    </code></pre>
    <p>
        В этом примере показано, как операция <code>merge()</code> влияет на объекты в разных состояниях.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0b0bc3d0-318c-4f29-9936-ce68756cc273', 'Расскажите про сортировку слиянием', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сортировка слиянием</title>
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
    <h1>Сортировка слиянием</h1>
    <p>
        <span class="highlight">Сортировка слиянием</span> (Merge Sort) — это эффективный алгоритм сортировки, основанный на принципе «разделяй и властвуй». Он работает путём разделения массива на две части, рекурсивной сортировки каждой части и последующего слияния отсортированных частей.
    </p>

    <h2>Как работает сортировка слиянием?</h2>
    <ul>
        <li>
            Массив рекурсивно разделяется пополам, пока не останутся подмассивы из одного элемента.
        </li>
        <li>
            Затем выполняется процедура <span class="highlight">слияния</span>:
            <ul>
                <li>Поддерживаются два указателя: один на текущий элемент первой части, второй — на текущий элемент второй части.</li>
                <li>Из этих двух элементов выбирается минимальный, который вставляется в результирующий массив.</li>
                <li>Указатель, соответствующий минимальному элементу, сдвигается вперёд.</li>
            </ul>
        </li>
        <li>
            Процесс повторяется до тех пор, пока все подмассивы не будут объединены в один отсортированный массив.
        </li>
    </ul>

    <h2>Асимптотическая сложность</h2>
    <ul>
        <li>
            <span class="highlight">Время выполнения:</span> <code>O(n * log(n))</code>, где <code>n</code> — количество элементов в массиве.
            <ul>
                <li>Слияние работает за <code>O(n)</code>.</li>
                <li>Количество уровней рекурсии — <code>log(n)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пространственная сложность:</span> <code>O(n)</code> (требуется дополнительная память для хранения временных массивов).
        </li>
    </ul>

    <h2>Пример реализации на Python</h2>
    <pre><code>
def merge_sort(arr):
    if len(arr) <= 1:
        return arr
    mid = len(arr) // 2
    left = merge_sort(arr[:mid])
    right = merge_sort(arr[mid:])
    return merge(left, right)

def merge(left, right):
    result = []
    i = j = 0
    while i < len(left) and j < len(right):
        if left[i] < right[j]:
            result.append(left[i])
            i += 1
        else:
            result.append(right[j])
            j += 1
    result.extend(left[i:])
    result.extend(right[j:])
    return result
    </code></pre>

    <h2>Преимущества и недостатки</h2>
    <ul>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Гарантированная временная сложность <code>O(n * log(n))</code> в худшем, среднем и лучшем случаях.</li>
                <li>Устойчивость (сохраняет порядок равных элементов).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Требует дополнительной памяти <code>O(n)</code>.</li>
                <li>Может быть менее эффективен на небольших массивах по сравнению с другими алгоритмами.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Сортировка слиянием особенно полезна для сортировки больших объёмов данных, где важна стабильность и гарантированная производительность.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3d8a8722-eeed-4cd0-b610-2704d6d87292', ' Расскажите про ApplicationContext и BeanFactory, чем отличаются? В каких  случаях что стоит использовать?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ApplicationContext и BeanFactory в Spring</title>
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
    <h1>ApplicationContext и BeanFactory в Spring</h1>
    <p>
        В Spring <strong>ApplicationContext</strong> и <strong>BeanFactory</strong> являются основными интерфейсами для работы с
        IoC-контейнером. Они управляют созданием, конфигурацией и жизненным циклом бинов, но имеют
        различия в функциональности и использовании.
    </p>

    <h2>BeanFactory</h2>
    <ul>
        <li>
            <span class="highlight">Основные функции:</span>
            <ul>
                <li>Предоставляет базовый функционал для создания и управления бинами.</li>
                <li>Поддерживает бины с областями видимости <code>singleton</code> и <code>prototype</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Загружает бины по требованию (lazy loading).</li>
                <li>Идеально подходит для приложений с ограниченными ресурсами (например, мобильные
                    устройства).</li>
            </ul>
        </li>
    </ul>

    <h2>ApplicationContext</h2>
    <ul>
        <li>
            <span class="highlight">Основные функции:</span>
            <ul>
                <li>Является расширением <code>BeanFactory</code> и предоставляет дополнительные возможности.</li>
                <li>Поддерживает все области видимости бинов (например, <code>request</code>, <code>session</code>).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Загружает все бины при запуске приложения (eager loading).</li>
                <li>Предоставляет расширенные функции, такие как AOP, управление событиями, интернационализация
                    и другие.</li>
                <li>Рекомендуется для большинства приложений, так как предоставляет больше возможностей.</li>
            </ul>
        </li>
    </ul>

    <h2>Сравнение BeanFactory и ApplicationContext</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>BeanFactory</th>
                <th>ApplicationContext</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Функциональность</td>
                <td>Базовый функционал для управления бинами.</td>
                <td>Расширенные возможности, включая AOP, управление событиями и интернационализацию.</td>
            </tr>
            <tr>
                <td>Области видимости</td>
                <td>Поддерживает <code>singleton</code> и <code>prototype</code>.</td>
                <td>Поддерживает все области видимости (например, <code>request</code>, <code>session</code>).</td>
            </tr>
            <tr>
                <td>Загрузка бинов</td>
                <td>Загружает бины по требованию (lazy loading).</td>
                <td>Загружает все бины при запуске (eager loading).</td>
            </tr>
            <tr>
                <td>Использование</td>
                <td>Подходит для приложений с ограниченными ресурсами.</td>
                <td>Рекомендуется для большинства приложений.</td>
            </tr>
        </tbody>
    </table>

    <h2>Пример использования BeanFactory</h2>
    <pre><code>
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;

public class Main {
    public static void main(String[] args) {
        BeanFactory factory = new XmlBeanFactory(new ClassPathResource("beans.xml"));
        UserService userService = (UserService) factory.getBean("userService");
        userService.saveUser(new User("John"));
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Создаётся <code>BeanFactory</code> на основе XML-конфигурации.</li>
            <li>Бин <code>UserService</code> извлекается из контейнера и используется для выполнения операций.</li>
        </ul>
    </p>

    <h2>Пример использования ApplicationContext</h2>
    <pre><code>
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
        UserService userService = context.getBean(UserService.class);
        userService.saveUser(new User("John"));
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Создаётся <code>ApplicationContext</code> на основе конфигурационного класса <code>AppConfig</code>.</li>
            <li>Бин <code>UserService</code> извлекается из контекста и используется для выполнения операций.</li>
        </ul>
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>BeanFactory</code> для приложений с ограниченными ресурсами.</li>
                <li>Используйте <code>ApplicationContext</code> для большинства приложений, так как он предоставляет
                    больше возможностей.</li>
                <li><code>ApplicationContext</code> загружает все бины при запуске, что может увеличить время старта
                    приложения, но улучшает производительность во время выполнения.</li>
            </ul>
        </p>
    </div>

    <h2>Когда использовать BeanFactory и ApplicationContext?</h2>
    <ul>
        <li>
            <span class="highlight">BeanFactory:</span>
            <ul>
                <li>Используйте, если ресурсы ограничены (например, мобильные устройства).</li>
                <li>Подходит для простых приложений с минимальными требованиями.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">ApplicationContext:</span>
            <ul>
                <li>Используйте для большинства приложений, особенно enterprise-уровня.</li>
                <li>Подходит для приложений, где требуется расширенная функциональность (AOP, управление
                    событиями, интернационализация).</li>
            </ul>
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('180a9b1c-80f3-4b27-b613-768f66764a33', 'Объясните, что такое fetch и какие типы загрузки (EAGER и LAZY) существуют в Hibernate.', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Типы загрузки в Hibernate: EAGER и LAZY</title>
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
        <h1>Что такое Fetch в Hibernate?</h1>
        <p>
            <span class="highlight">Fetch</span> в Hibernate — это стратегия загрузки связанных сущностей. Она определяет, когда и как Hibernate будет загружать связанные объекты: сразу (EAGER) или по требованию (LAZY). Выбор стратегии загрузки влияет на производительность приложения и использование ресурсов.
        </p>

        <h2>Типы загрузки в Hibernate</h2>
        <p>
            В Hibernate существует два основных типа загрузки:
        </p>
        <ul>
            <li>
                <span class="highlight">EAGER (жадная загрузка):</span> Связанные сущности загружаются сразу вместе с основной сущностью.
            </li>
            <li>
                <span class="highlight">LAZY (ленивая загрузка):</span> Связанные сущности загружаются только при первом обращении к ним.
            </li>
        </ul>

        <h2>EAGER (жадная загрузка)</h2>
        <p>
            При использовании стратегии <span class="highlight">EAGER</span>, связанные сущности загружаются сразу при загрузке основной сущности. Это может быть полезно, если вы знаете, что связанные данные будут использоваться сразу.
        </p>
        <h3>Пример EAGER загрузки</h3>
        <pre><code>@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "user")
    private Set&lt;Order&gt; orders;

    // Геттеры и сеттеры
}</code></pre>
        <p>
            В этом примере при загрузке объекта <code>User</code> все связанные объекты <code>Order</code> будут загружены сразу.
        </p>

        <h3>Преимущества EAGER загрузки</h3>
        <ul>
            <li>Удобство: Все данные доступны сразу.</li>
            <li>Подходит для небольших объёмов данных.</li>
        </ul>

        <h3>Недостатки EAGER загрузки</h3>
        <ul>
            <li>Может привести к избыточной загрузке данных, особенно если связанные сущности не используются.</li>
            <li>Снижение производительности при большом количестве связанных данных.</li>
        </ul>

        <h2>LAZY (ленивая загрузка)</h2>
        <p>
            При использовании стратегии <span class="highlight">LAZY</span>, связанные сущности загружаются только при первом обращении к ним. Это позволяет оптимизировать производительность, загружая данные только тогда, когда они действительно нужны.
        </p>
        <h3>Пример LAZY загрузки</h3>
        <pre><code>@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private Set&lt;Order&gt; orders;

    // Геттеры и сеттеры
}</code></pre>
        <p>
            В этом примере объекты <code>Order</code> будут загружены только при первом обращении к полю <code>orders</code>.
        </p>

        <h3>Преимущества LAZY загрузки</h3>
        <ul>
            <li>Эффективное использование ресурсов: Данные загружаются только по мере необходимости.</li>
            <li>Подходит для больших объёмов данных.</li>
        </ul>

        <h3>Недостатки LAZY загрузки</h3>
        <ul>
            <li>Может привести к проблемам с производительностью, если данные запрашиваются слишком часто.</li>
            <li>Требует осторожности при работе с отключёнными сессиями (например, в веб-приложениях).</li>
        </ul>

        <h2>Когда использовать EAGER и LAZY?</h2>
        <p>
            Выбор стратегии загрузки зависит от конкретного сценария использования:
        </p>
        <ul>
            <li>
                <span class="highlight">EAGER:</span> Используйте, если связанные данные всегда нужны сразу и их объём невелик.
            </li>
            <li>
                <span class="highlight">LAZY:</span> Используйте, если связанные данные используются редко или их объём велик.
            </li>
        </ul>

        <h2>Пример использования LAZY загрузки с инициализацией</h2>
        <p>
            Если вам нужно загрузить связанные данные в LAZY-режиме, но вы хотите избежать проблем с отключёнными сессиями, можно использовать инициализацию:
        </p>
        <pre><code>Session session = sessionFactory.openSession();
User user = session.get(User.class, 1L);

// Инициализация связанных данных
Hibernate.initialize(user.getOrders());

session.close();</code></pre>

        <h2>Заключение</h2>
        <p>
            Стратегии загрузки EAGER и LAZY в Hibernate позволяют гибко управлять загрузкой связанных данных. EAGER загрузка удобна для небольших объёмов данных, которые всегда нужны сразу, а LAZY загрузка подходит для больших объёмов данных, которые используются редко. Правильный выбор стратегии загрузки помогает оптимизировать производительность приложения и эффективно использовать ресурсы.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c57d1aae-432a-482e-88ca-45ca9a56c1de', 'В чем разница между Filters, Listeners and Interceptors?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между Filters, Listeners и Interceptors</title>
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
    <h1>Разница между Filters, Listeners и Interceptors</h1>
    <p>
        В веб-приложениях на основе Java и Spring используются три основных механизма для обработки запросов и управления жизненным циклом приложения: <strong>Filters</strong>, <strong>Listeners</strong> и <strong>Interceptors</strong>. Каждый из них выполняет свои задачи и используется в разных сценариях.
    </p>

    <h2>Filters (Фильтры)</h2>
    <p>
        <strong>Фильтры</strong> используются для выполнения задач фильтрации запросов и ответов. Они могут обрабатывать запросы до того, как они достигнут сервлета, и ответы до того, как они будут отправлены клиенту. Фильтры работают на уровне контейнера сервлетов и могут быть настроены в дескрипторе развёртывания веб-приложения (<code>web.xml</code>).
    </p>

    <h3>Основные характеристики фильтров:</h3>
    <ul>
        <li>
            <span class="highlight">Метод <code>doFilter</code>:</span> Основной метод, который выполняет фильтрацию. Фильтры имеют доступ к объектам <code>ServletRequest</code>, <code>ServletResponse</code> и <code>FilterChain</code>.
        </li>
        <li>
            <span class="highlight">Зависимость от контейнера:</span> Фильтры зависят от контейнера сервлетов (например, Tomcat).
        </li>
        <li>
            <span class="highlight">Использование:</span> Фильтры могут работать с запросами и ответами, включая статические ресурсы (CSS, JS).
        </li>
    </ul>

    <h3>Пример фильтра:</h3>
    <pre><code>public class LoggingFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        System.out.println("Запрос получен");
        chain.doFilter(request, response); // Передача запроса дальше по цепочке
        System.out.println("Ответ отправлен");
    }
}</code></pre>

    <h2>Interceptors (Перехватчики)</h2>
    <p>
        <strong>Перехватчики</strong> — это механизм Spring, который позволяет перехватывать запросы на уровне контроллеров. Они работают с <code>HandlerMapping</code> и могут быть использованы для выполнения логики до, после или вокруг обработки запроса контроллером.
    </p>

    <h3>Основные характеристики перехватчиков:</h3>
    <ul>
        <li>
            <span class="highlight">Методы:</span>
            <ul>
                <li><code>preHandle</code>: Выполняется до вызова метода контроллера.</li>
                <li><code>postHandle</code>: Выполняется после вызова метода контроллера, но до отрисовки представления.</li>
                <li><code>afterCompletion</code>: Выполняется после завершения обработки запроса и отрисовки представления.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Основан на Reflection:</span> Перехватчики используют механизм Reflection для взаимодействия с методами контроллеров.
        </li>
        <li>
            <span class="highlight">Использование:</span> Перехватчики работают только с запросами, которые обрабатываются Spring MVC.
        </li>
    </ul>

    <h3>Пример перехватчика:</h3>
    <pre><code>public class LoggingInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        System.out.println("Запрос получен: " + request.getRequestURI());
        return true; // Продолжить обработку запроса
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {
        System.out.println("Запрос обработан: " + request.getRequestURI());
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
        System.out.println("Запрос завершён: " + request.getRequestURI());
    }
}</code></pre>

    <h2>Listeners (Слушатели)</h2>
    <p>
        <strong>Слушатели</strong> используются для реагирования на события жизненного цикла приложения или сессии. Они инициализируются при запуске приложения и уничтожаются при его остановке. Слушатели могут быть использованы для выполнения задач инициализации или очистки ресурсов.
    </p>

    <h3>Основные характеристики слушателей:</h3>
    <ul>
        <li>
            <span class="highlight">Интерфейс <code>ServletContextListener</code>:</span> Позволяет реагировать на события инициализации и уничтожения контекста приложения.
        </li>
        <li>
            <span class="highlight">Инициализация:</span> Слушатели инициализируются один раз при запуске приложения.
        </li>
        <li>
            <span class="highlight">Использование:</span> Слушатели могут быть использованы для настройки глобальных ресурсов, таких как подключение к базе данных.
        </li>
    </ul>

    <h3>Пример слушателя:</h3>
    <pre><code>@WebListener
public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("Приложение запущено");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Приложение остановлено");
    }
}</code></pre>

    <h2>Сравнение Filters, Listeners и Interceptors</h2>
    <table>
        <thead>
            <tr>
                <th>Характеристика</th>
                <th>Filters</th>
                <th>Interceptors</th>
                <th>Listeners</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Уровень работы</td>
                <td>Контейнер сервлетов</td>
                <td>Spring MVC</td>
                <td>Жизненный цикл приложения</td>
            </tr>
            <tr>
                <td>Зависимость</td>
                <td>Зависит от контейнера сервлетов</td>
                <td>Зависит от Spring</td>
                <td>Зависит от контейнера сервлетов</td>
            </tr>
            <tr>
                <td>Использование</td>
                <td>Фильтрация запросов и ответов</td>
                <td>Перехват запросов на уровне контроллеров</td>
                <td>Реагирование на события жизненного цикла</td>
            </tr>
            <tr>
                <td>Примеры задач</td>
                <td>Логирование, аутентификация, сжатие данных</td>
                <td>Логирование, проверка прав доступа</td>
                <td>Инициализация ресурсов, очистка</td>
            </tr>
        </tbody>
    </table>

    <h2>Преимущества и ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Filters:</span> Подходят для задач, связанных с обработкой запросов и ответов на уровне контейнера. Однако они зависят от контейнера сервлетов.
        </li>
        <li>
            <span class="highlight">Interceptors:</span> Подходят для задач, связанных с обработкой запросов на уровне Spring MVC. Они более гибкие, но работают только в контексте Spring.
        </li>
        <li>
            <span class="highlight">Listeners:</span> Подходят для задач, связанных с жизненным циклом приложения. Они инициализируются один раз и не подходят для обработки отдельных запросов.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между фильтрами, перехватчиками и слушателями зависит от задач, которые необходимо решить. Фильтры и перехватчики используются для обработки запросов, а слушатели — для управления жизненным циклом приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1af04196-37d0-406f-856e-ce0cf9e1ec8c', 'Расскажите про линейный и бинарный поиск', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Линейный и бинарный поиск</title>
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
    <h1>Линейный и бинарный поиск</h1>
    <p>
        <span class="highlight">Линейный поиск</span> и <span class="highlight">бинарный поиск</span> — это два основных алгоритма поиска элементов в массиве. Они отличаются по сложности и условиям применения.
    </p>

    <h2>Линейный поиск</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span> <code>O(n)</code>, где <code>n</code> — количество элементов в массиве.
        </li>
        <li>
            <span class="highlight">Описание:</span> Алгоритм проверяет каждый элемент массива по очереди, пока не найдёт искомый элемент или не пройдёт весь массив.
        </li>
        <li>
            <span class="highlight">Применение:</span> Подходит для небольших массивов или неотсортированных данных.
        </li>
    </ul>

    <h2>Бинарный поиск</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span> <code>O(log(n))</code>, где <code>n</code> — количество элементов в массиве.
        </li>
        <li>
            <span class="highlight">Описание:</span> Алгоритм работает только на отсортированных массивах. Он делит массив на две части и сравнивает искомый элемент с элементом в середине массива.
            <ul>
                <li>Если искомый элемент больше среднего, поиск продолжается в правой части массива.</li>
                <li>Если меньше — в левой части.</li>
                <li>Процесс повторяется, пока элемент не будет найден или подмассив не станет пустым.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Применение:</span> Подходит для больших отсортированных массивов.
        </li>
    </ul>

    <h2>Пример реализации бинарного поиска на Java</h2>
    <pre><code>
public static int binarySearch(int[] a, int key) {
    int low = 0;
    int high = a.length - 1;
    while (low <= high) {
        int mid = (low + high) / 2;
        if (key > a[mid]) {
            low = mid + 1;
        } else if (key < a[mid]) {
            high = mid - 1;
        } else {
            return mid;
        }
    }
    return -1;
}
    </code></pre>

    <h2>Сравнение линейного и бинарного поиска</h2>
    <ul>
        <li>
            <span class="highlight">Линейный поиск:</span>
            <ul>
                <li>Простота реализации.</li>
                <li>Подходит для небольших или неотсортированных массивов.</li>
                <li>Сложность <code>O(n)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Бинарный поиск:</span>
            <ul>
                <li>Требует отсортированного массива.</li>
                <li>Эффективен для больших массивов.</li>
                <li>Сложность <code>O(log(n))</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между линейным и бинарным поиском зависит от размера массива и его отсортированности. Для больших отсортированных массивов бинарный поиск предпочтителен.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e4c5c3c5-cde4-4bcd-98f8-2e22fb6a37ff', 'Расскажите про скоупы бинов? Какой скоуп используется по умолчанию?  Что изменилось в Spring 5?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Скоупы бинов в Spring</title>
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
    <h1>Скоупы бинов в Spring</h1>
    <p>
        Скоуп (область видимости) бина определяет, как Spring управляет его жизненным циклом и созданием. В Spring существует несколько скоупов, каждый из которых подходит для определённых сценариев использования.
    </p>

    <h2>Скоупы по умолчанию</h2>
    <p>
        В Spring есть два основных скоупа, которые используются по умолчанию:
    </p>
    <ul>
        <li>
            <span class="highlight">Singleton:</span> По умолчанию. В контейнере создаётся только один экземпляр бина, и все запросы на этот бин возвращают один и тот же объект.
        </li>
        <li>
            <span class="highlight">Prototype:</span> Каждый запрос на бин создаёт новый экземпляр. Spring не управляет полным жизненным циклом prototype-бинов и не вызывает метод <code>destroy()</code>.
        </li>
    </ul>

    <h3>Примеры использования</h3>
    <pre><code>@Component
@Scope("singleton") // По умолчанию, можно не указывать
public class SingletonBean {
    // Логика бина
}

@Component
@Scope("prototype")
public class PrototypeBean {
    // Логика бина
}</code></pre>

    <h2>Скоупы в веб-приложениях</h2>
    <p>
        В веб-приложениях Spring предоставляет дополнительные скоупы:
    </p>
    <ul>
        <li>
            <span class="highlight">Request:</span> Бин создаётся для каждого HTTP-запроса.
        </li>
        <li>
            <span class="highlight">Session:</span> Бин создаётся для каждой HTTP-сессии.
        </li>
        <li>
            <span class="highlight">Application:</span> Бин создаётся на время жизни <code>ServletContext</code>.
        </li>
        <li>
            <span class="highlight">WebSocket:</span> Бин создаётся на время жизни WebSocket-соединения.
        </li>
    </ul>

    <h3>Примеры использования</h3>
    <pre><code>@Component
@Scope(value = WebApplicationContext.SCOPE_REQUEST, proxyMode = ScopedProxyMode.TARGET_CLASS)
public class RequestScopedBean {
    // Логика бина
}

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SessionScopedBean {
    // Логика бина
}</code></pre>

    <h2>Изменения в Spring 5</h2>
    <p>
        В Spring 5 произошли следующие изменения в скоупах:
    </p>
    <ul>
        <li>
            <span class="highlight">Удаление Global Session Scope:</span> Скоуп <code>Global Session</code>, который использовался в портлетах, был удалён.
        </li>
        <li>
            <span class="highlight">Добавление Application и WebSocket Scope:</span> Появились новые скоупы <code>Application</code> и <code>WebSocket</code>.
        </li>
    </ul>

    <h2>Жизненный цикл скоупов</h2>
    <ul>
        <li>
            <span class="highlight">Singleton:</span> Бин создаётся один раз при инициализации контекста и уничтожается при закрытии контекста.
        </li>
        <li>
            <span class="highlight">Prototype:</span> Бин создаётся каждый раз при запросе. Spring не управляет его жизненным циклом после создания.
        </li>
        <li>
            <span class="highlight">Request, Session, Application, WebSocket:</span> Бины создаются и уничтожаются в соответствии с их областью видимости (например, для каждого запроса, сессии и т.д.).
        </li>
    </ul>

    <h2>Преимущества использования скоупов</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет управлять жизненным циклом бинов в зависимости от требований приложения.
        </li>
        <li>
            <span class="highlight">Эффективность:</span> Singleton-бины экономят ресурсы, так как создаются только один раз.
        </li>
        <li>
            <span class="highlight">Изоляция:</span> Prototype-бины обеспечивают изоляцию данных, так как каждый запрос создаёт новый экземпляр.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Производительность:</span> Prototype-бины проходят через все <code>BeanPostProcessor</code>, что может снизить производительность.
        </li>
        <li>
            <span class="highlight">Управление жизненным циклом:</span> Spring не управляет жизненным циклом prototype-бинов, что может привести к утечкам ресурсов.
        </li>
    </ul>

    <h2>Пример использования скоупов</h2>
    <pre><code>@Component
@Scope("prototype")
public class PrototypeBean {
    public PrototypeBean() {
        System.out.println("PrototypeBean создан");
    }
}

@Component
public class SingletonBean {

    @Autowired
    private PrototypeBean prototypeBean;

    public void usePrototypeBean() {
        System.out.println("Использование PrototypeBean: " + prototypeBean);
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор скоупа зависит от требований приложения. Singleton подходит для большинства случаев, а Prototype — для ситуаций, когда требуется изоляция данных.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');