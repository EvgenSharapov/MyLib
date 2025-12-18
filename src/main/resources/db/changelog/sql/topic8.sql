INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('47d4bd96-66ce-44ab-9bc2-475ff46eed5d', 'Предложите эффективный алгоритм удаления нескольких рядом стоящих  элементов из середины списка, реализуемого ArrayList', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Эффективный алгоритм удаления элементов из ArrayList</title>
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
    <h1>Эффективный алгоритм удаления элементов из ArrayList</h1>
    <p>
        При удалении нескольких рядом стоящих элементов из середины списка, реализуемого <code>ArrayList</code>, важно минимизировать количество операций перемещения элементов. Вместо пошагового удаления каждого элемента можно выполнить удаление за один проход.
    </p>

    <h2>Алгоритм удаления</h2>
    <ul>
        <li>
            <span class="highlight">Исходные данные:</span>
            <ul>
                <li>Необходимо удалить <code>n</code> элементов, начиная с позиции <code>m</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Шаги алгоритма:</span>
            <ul>
                <li>Определите позицию, с которой начинаются элементы, стоящие «правее» удаляемого блока. Это позиция <code>m + n</code>.</li>
                <li>Скопируйте все элементы, начиная с позиции <code>m + n</code>, на <code>n</code> позиций «левее» (в сторону начала списка).</li>
                <li>Уменьшите логический размер списка (<code>size</code>) на <code>n</code> элементов.</li>
            </ul>
        </li>
    </ul>

    <h2>Преимущества алгоритма</h2>
    <ul>
        <li>
            <span class="highlight">Эффективность:</span>
            <ul>
                <li>Вместо выполнения <code>n</code> операций удаления (каждая из которых требует сдвига элементов), выполняется один сдвиг всех элементов, стоящих «правее» удаляемого блока.</li>
                <li>Это снижает сложность операции с <code>O(n * k)</code> до <code>O(k)</code>, где <code>k</code> – количество элементов, стоящих после удаляемого блока.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример реализации</h2>
    <pre>
<code>
public void removeRange(ArrayList&lt;Integer&gt; list, int m, int n) {
    if (m &lt; 0 || n &lt; 0 || m + n > list.size()) {
        throw new IllegalArgumentException("Invalid range");
    }
    int start = m + n;
    int shift = n;
    for (int i = start; i &lt; list.size(); i++) {
        list.set(i - shift, list.get(i));
    }
    for (int i = 0; i &lt; n; i++) {
        list.remove(list.size() - 1);
    }
}
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Этот алгоритм позволяет эффективно удалить несколько рядом стоящих элементов из <code>ArrayList</code> за один проход, минимизируя количество операций перемещения элементов.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4a8a8e2a-c071-4a33-a662-cdb0a98a7afe', 'Как бы вы реализовали паттерн "Цепочка ответственности" (Chain of Responsibility)? В каких сценариях он полезен?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн "Цепочка ответственности" (Chain of Responsibility)</title>
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
    <h1>Паттерн "Цепочка ответственности" (Chain of Responsibility)</h1>
    <p>
        Паттерн "Цепочка ответственности" (Chain of Responsibility) — это поведенческий паттерн проектирования, который позволяет передавать запросы по цепочке обработчиков. Каждый обработчик решает, может ли он обработать запрос, и либо обрабатывает его, либо передаёт следующему обработчику в цепочке.
    </p>

    <h2>Основные компоненты паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Обработчик (Handler):</span>
            <ul>
                <li>Определяет интерфейс для обработки запросов.</li>
                <li>Может содержать ссылку на следующий обработчик в цепочке.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Конкретный обработчик (Concrete Handler):</span>
            <ul>
                <li>Реализует логику обработки запроса.</li>
                <li>Решает, может ли он обработать запрос, или передаёт его следующему обработчику.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Клиент (Client):</span>
            <ul>
                <li>Инициирует запрос и передаёт его первому обработчику в цепочке.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример реализации паттерна</h2>
    <pre><code>
// Обработчик
abstract class Handler {
    private Handler nextHandler;

    public void setNextHandler(Handler nextHandler) {
        this.nextHandler = nextHandler;
    }

    public void handleRequest(Request request) {
        if (canHandle(request)) {
            processRequest(request);
        } else if (nextHandler != null) {
            nextHandler.handleRequest(request);
        } else {
            System.out.println("Запрос не может быть обработан.");
        }
    }

    protected abstract boolean canHandle(Request request);
    protected abstract void processRequest(Request request);
}

// Конкретный обработчик 1
class ConcreteHandler1 extends Handler {
    @Override
    protected boolean canHandle(Request request) {
        return request.getType() == RequestType.TYPE1;
    }

    @Override
    protected void processRequest(Request request) {
        System.out.println("Запрос обработан ConcreteHandler1");
    }
}

// Конкретный обработчик 2
class ConcreteHandler2 extends Handler {
    @Override
    protected boolean canHandle(Request request) {
        return request.getType() == RequestType.TYPE2;
    }

    @Override
    protected void processRequest(Request request) {
        System.out.println("Запрос обработан ConcreteHandler2");
    }
}

// Запрос
class Request {
    private RequestType type;

    public Request(RequestType type) {
        this.type = type;
    }

    public RequestType getType() {
        return type;
    }
}

// Тип запроса
enum RequestType {
    TYPE1, TYPE2
}

// Пример использования
public class ChainOfResponsibilityExample {
    public static void main(String[] args) {
        Handler handler1 = new ConcreteHandler1();
        Handler handler2 = new ConcreteHandler2();

        handler1.setNextHandler(handler2);

        Request request1 = new Request(RequestType.TYPE1);
        handler1.handleRequest(request1); // Запрос обработан ConcreteHandler1

        Request request2 = new Request(RequestType.TYPE2);
        handler1.handleRequest(request2); // Запрос обработан ConcreteHandler2

        Request request3 = new Request(RequestType.TYPE3);
        handler1.handleRequest(request3); // Запрос не может быть обработан.
    }
}
    </code></pre>

    <h2>Сценарии использования паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Обработка запросов:</span> Например, в веб-приложениях для обработки HTTP-запросов (аутентификация, валидация, логирование).
        </li>
        <li>
            <span class="highlight">Логирование:</span> Передача логов через цепочку обработчиков (консоль, файл, база данных).
        </li>
        <li>
            <span class="highlight">Обработка событий:</span> В GUI-приложениях для обработки событий (клики мыши, нажатия клавиш).
        </li>
        <li>
            <span class="highlight">Проверка данных:</span> Валидация данных через цепочку проверок (формат, наличие, корректность).
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн "Цепочка ответственности" помогает уменьшить связанность между отправителем запроса и его обработчиками, но может усложнить отладку из-за распределённой логики обработки.
        </p>
    </div>

    <h2>Преимущества паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет динамически изменять цепочку обработчиков.
        </li>
        <li>
            <span class="highlight">Уменьшение связанности:</span> Отправитель запроса не знает, какой обработчик его обработает.
        </li>
        <li>
            <span class="highlight">Простота добавления новых обработчиков:</span> Новые обработчики легко добавляются в цепочку.
        </li>
    </ul>

    <h2>Недостатки паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Сложность отладки:</span> Логика обработки распределена между несколькими классами.
        </li>
        <li>
            <span class="highlight">Риск необработанных запросов:</span> Если ни один обработчик не может обработать запрос, он может быть потерян.
        </li>
    </ul>
</body>
</html>', 'OTHER', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e2c6b179-19d1-41ed-a20d-fdf06893712a', 'Как работает паттерн "Прокси" (Proxy)? Какие типы прокси вы знаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн "Прокси" (Proxy)</title>
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
    <h1>Паттерн "Прокси" (Proxy)</h1>
    <p>
        Паттерн "Прокси" (Proxy) — это структурный паттерн проектирования, который предоставляет объект-заместитель, контролирующий доступ к другому объекту. Прокси может добавлять дополнительную логику до или после вызова методов реального объекта, не изменяя его код.
    </p>

    <h2>Основные компоненты паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Субъект (Subject):</span>
            <ul>
                <li>Интерфейс, который определяет общие методы для реального объекта и прокси.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Реальный объект (Real Subject):</span>
            <ul>
                <li>Класс, который выполняет основную бизнес-логику.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Прокси (Proxy):</span>
            <ul>
                <li>Класс, который контролирует доступ к реальному объекту и может добавлять дополнительную логику.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример реализации паттерна</h2>
    <pre><code>
// Субъект
interface Image {
    void display();
}

// Реальный объект
class RealImage implements Image {
    private String filename;

    public RealImage(String filename) {
        this.filename = filename;
        loadFromDisk();
    }

    private void loadFromDisk() {
        System.out.println("Загрузка изображения: " + filename);
    }

    @Override
    public void display() {
        System.out.println("Отображение изображения: " + filename);
    }
}

// Прокси
class ProxyImage implements Image {
    private RealImage realImage;
    private String filename;

    public ProxyImage(String filename) {
        this.filename = filename;
    }

    @Override
    public void display() {
        if (realImage == null) {
            realImage = new RealImage(filename);
        }
        realImage.display();
    }
}

// Пример использования
public class ProxyPatternExample {
    public static void main(String[] args) {
        Image image = new ProxyImage("test_image.jpg");

        // Изображение будет загружено только при вызове display()
        image.display();

        // Изображение не загружается снова, так как уже загружено
        image.display();
    }
}
    </code></pre>

    <h2>Типы прокси</h2>
    <ul>
        <li>
            <span class="highlight">Виртуальный прокси (Virtual Proxy):</span>
            <ul>
                <li>Откладывает создание ресурсоёмкого объекта до момента его реального использования.</li>
                <li>Пример: Загрузка изображений только при их отображении.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Защитный прокси (Protection Proxy):</span>
            <ul>
                <li>Контролирует доступ к объекту на основе прав доступа.</li>
                <li>Пример: Проверка прав пользователя перед выполнением операции.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Удалённый прокси (Remote Proxy):</span>
            <ul>
                <li>Предоставляет локальный интерфейс для объекта, находящегося в другом адресном пространстве (например, на удалённом сервере).</li>
                <li>Пример: Работа с удалёнными объектами через RMI (Remote Method Invocation).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Кэширующий прокси (Caching Proxy):</span>
            <ul>
                <li>Кэширует результаты запросов к реальному объекту для повышения производительности.</li>
                <li>Пример: Кэширование данных из базы данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Логирующий прокси (Logging Proxy):</span>
            <ul>
                <li>Добавляет логирование вызовов методов реального объекта.</li>
                <li>Пример: Логирование запросов к API.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн "Прокси" позволяет добавлять дополнительную логику без изменения реального объекта, что делает его полезным для решения задач, связанных с контролем доступа, кэшированием и отложенной инициализацией.
        </p>
    </div>

    <h2>Преимущества паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Контроль доступа:</span> Прокси может ограничивать доступ к реальному объекту.
        </li>
        <li>
            <span class="highlight">Отложенная инициализация:</span> Ресурсоёмкие объекты создаются только при необходимости.
        </li>
        <li>
            <span class="highlight">Дополнительная логика:</span> Прокси может добавлять логирование, кэширование и другие функции.
        </li>
    </ul>

    <h2>Недостатки паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Усложнение кода:</span> Введение прокси может увеличить сложность системы.
        </li>
        <li>
            <span class="highlight">Задержки:</span> В случае удалённого прокси могут возникать задержки из-за сетевого взаимодействия.
        </li>
    </ul>
</body>
</html>', 'OTHER', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f4d37775-4983-4692-b791-e259cc5992c9', 'Как бы вы реализовали паттерн "Состояние" (State)? В каких сценариях он полезен?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн "Состояние" (State)</title>
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
    <h1>Паттерн "Состояние" (State)</h1>
    <p>
        Паттерн "Состояние" (State) — это поведенческий паттерн проектирования, который позволяет объекту изменять своё поведение в зависимости от внутреннего состояния. Паттерн инкапсулирует каждое состояние в отдельный класс и делегирует выполнение операций объекту состояния.
    </p>

    <h2>Основные компоненты паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Контекст (Context):</span>
            <ul>
                <li>Хранит ссылку на текущее состояние и делегирует ему выполнение операций.</li>
                <li>Позволяет изменять состояние во время выполнения.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Состояние (State):</span>
            <ul>
                <li>Интерфейс или абстрактный класс, который определяет методы, специфичные для каждого состояния.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Конкретные состояния (Concrete State):</span>
            <ul>
                <li>Реализуют поведение, соответствующее определённому состоянию контекста.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример реализации паттерна</h2>
    <pre><code>
// Состояние
interface State {
    void handle(Context context);
}

// Конкретное состояние A
class ConcreteStateA implements State {
    @Override
    public void handle(Context context) {
        System.out.println("Обработка в состоянии A");
        context.setState(new ConcreteStateB());
    }
}

// Конкретное состояние B
class ConcreteStateB implements State {
    @Override
    public void handle(Context context) {
        System.out.println("Обработка в состоянии B");
        context.setState(new ConcreteStateA());
    }
}

// Контекст
class Context {
    private State state;

    public Context(State state) {
        this.state = state;
    }

    public void setState(State state) {
        this.state = state;
    }

    public void request() {
        state.handle(this);
    }
}

// Пример использования
public class StatePatternExample {
    public static void main(String[] args) {
        Context context = new Context(new ConcreteStateA());

        context.request(); // Обработка в состоянии A
        context.request(); // Обработка в состоянии B
        context.request(); // Обработка в состоянии A
    }
}
    </code></pre>

    <h2>Сценарии использования паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Управление состоянием объекта:</span> Например, управление состоянием заказа (новый, в обработке, выполнен, отменён).
        </li>
        <li>
            <span class="highlight">Реализация конечных автоматов:</span> Паттерн "Состояние" часто используется для реализации конечных автоматов (FSM).
        </li>
        <li>
            <span class="highlight">Управление поведением UI:</span> Например, изменение поведения кнопок или элементов интерфейса в зависимости от состояния приложения.
        </li>
        <li>
            <span class="highlight">Игры:</span> Управление состоянием персонажей или объектов в играх (например, "стояние", "бег", "атака").
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн "Состояние" помогает избежать больших условных операторов, связанных с проверкой состояния объекта, и делает код более читаемым и поддерживаемым.
        </p>
    </div>

    <h2>Преимущества паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Упрощение кода:</span> Убирает необходимость в больших условных операторах.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет легко добавлять новые состояния и изменять поведение объекта.
        </li>
        <li>
            <span class="highlight">Инкапсуляция:</span> Каждое состояние инкапсулировано в отдельном классе, что упрощает тестирование и поддержку.
        </li>
    </ul>

    <h2>Недостатки паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Увеличение числа классов:</span> Каждое состояние требует отдельного класса, что может привести к увеличению сложности.
        </li>
        <li>
            <span class="highlight">Переходы между состояниями:</span> Если переходы между состояниями сложные, это может усложнить логику.
        </li>
    </ul>
</body>
</html>', 'OTHER', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f252720c-4bb3-4304-9832-bc43cd58ecbf', 'Как работает механизм сериализации в Java? Какие проблемы могут возникнуть при сериализации объектов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сериализация в Java</title>
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
    <h1>Сериализация в Java</h1>
    <p>
        Сериализация — это процесс преобразования объекта в последовательность байтов, которая может быть сохранена в файле или передана по сети. Десериализация — это обратный процесс, при котором последовательность байтов преобразуется обратно в объект. В Java сериализация реализована с помощью интерфейса <code>java.io.Serializable</code>.
    </p>

    <h2>Основные шаги сериализации</h2>
    <ul>
        <li>
            <span class="highlight">Реализация интерфейса Serializable:</span>
            <ul>
                <li>Класс должен реализовать интерфейс <code>Serializable</code>, чтобы его объекты могли быть сериализованы.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование ObjectOutputStream:</span>
            <ul>
                <li>Для сериализации объекта используется класс <code>ObjectOutputStream</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование ObjectInputStream:</span>
            <ul>
                <li>Для десериализации объекта используется класс <code>ObjectInputStream</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример сериализации и десериализации</h2>
    <pre><code>
import java.io.*;

class Person implements Serializable {
    private String name;
    private int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    @Override
    public String toString() {
        return "Person{name=\'" + name + "\', age=" + age + "}";
    }
}

public class SerializationExample {
    public static void main(String[] args) {
        // Сериализация
        try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("person.ser"))) {
            Person person = new Person("John Doe", 30);
            oos.writeObject(person);
            System.out.println("Объект сериализован.");
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Десериализация
        try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream("person.ser"))) {
            Person person = (Person) ois.readObject();
            System.out.println("Объект десериализован: " + person);
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
    </code></pre>

    <h2>Проблемы при сериализации</h2>
    <ul>
        <li>
            <span class="highlight">Изменение класса:</span>
            <ul>
                <li>Если класс был изменён после сериализации (например, добавлены или удалены поля), это может привести к ошибкам при десериализации.</li>
                <li>Решение: Использовать <code>serialVersionUID</code> для управления версиями класса.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Сериализация transient-полей:</span>
            <ul>
                <li>Поля, помеченные как <code>transient</code>, не сериализуются. Это может привести к потере данных.</li>
                <li>Решение: Реализовать методы <code>writeObject</code> и <code>readObject</code> для ручного управления сериализацией.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Сериализация статических полей:</span>
            <ul>
                <li>Статические поля не сериализуются, так как они принадлежат классу, а не объекту.</li>
                <li>Решение: Использовать другие механизмы для сохранения статических данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Производительность:</span>
            <ul>
                <li>Сериализация и десериализация могут быть ресурсоёмкими, особенно для больших объектов.</li>
                <li>Решение: Использовать более эффективные форматы, такие как JSON или Protocol Buffers.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Безопасность:</span>
            <ul>
                <li>Сериализация может быть уязвима для атак, таких как внедрение вредоносного кода.</li>
                <li>Решение: Ограничить использование сериализации и валидировать данные перед десериализацией.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Сериализация в Java — это мощный инструмент, но он требует осторожного использования. Убедитесь, что вы учитываете все возможные проблемы и используете лучшие практики.
        </p>
    </div>

    <h2>Рекомендации по сериализации</h2>
    <ul>
        <li>
            <span class="highlight">Используйте serialVersionUID:</span> Это помогает избежать проблем с совместимостью при изменении класса.
        </li>
        <li>
            <span class="highlight">Избегайте сериализации чувствительных данных:</span> Например, паролей или ключей шифрования.
        </li>
        <li>
            <span class="highlight">Рассмотрите альтернативные форматы:</span> JSON, XML или Protocol Buffers могут быть более подходящими для некоторых задач.
        </li>
        <li>
            <span class="highlight">Тестируйте сериализацию и десериализацию:</span> Убедитесь, что процесс работает корректно при изменении класса.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('29590ae8-f932-4b64-9d6d-275cabee2953', 'Что такое "рефлексия" в Java? Какие ограничения и риски связаны с ее использованием?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Рефлексия в Java</title>
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
    <h1>Рефлексия в Java</h1>
    <p>
        Рефлексия — это механизм в Java, который позволяет анализировать и изменять структуру и поведение классов, объектов, методов и полей во время выполнения программы. Это мощный инструмент, который используется для динамического создания объектов, вызова методов и доступа к приватным полям.
    </p>

    <h2>Основные возможности рефлексии</h2>
    <ul>
        <li>
            <span class="highlight">Получение информации о классе:</span>
            <ul>
                <li>Использование класса <code>Class</code> для получения информации о полях, методах, конструкторах и аннотациях.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Создание объектов:</span>
            <ul>
                <li>Использование <code>Constructor.newInstance()</code> для создания объектов динамически.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Вызов методов:</span>
            <ul>
                <li>Использование <code>Method.invoke()</code> для вызова методов, включая приватные.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Доступ к полям:</span>
            <ul>
                <li>Использование <code>Field.get()</code> и <code>Field.set()</code> для чтения и изменения значений полей, включая приватные.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования рефлексии</h2>
    <pre><code>
import java.lang.reflect.*;

class MyClass {
    private String name;

    public MyClass(String name) {
        this.name = name;
    }

    private void printName() {
        System.out.println("Name: " + name);
    }
}

public class ReflectionExample {
    public static void main(String[] args) throws Exception {
        // Получение класса
        Class&lt;?&gt; clazz = Class.forName("MyClass");

        // Создание объекта
        Constructor&lt;?&gt; constructor = clazz.getConstructor(String.class);
        Object instance = constructor.newInstance("John Doe");

        // Доступ к приватному полю
        Field field = clazz.getDeclaredField("name");
        field.setAccessible(true);
        System.out.println("Field value: " + field.get(instance));

        // Вызов приватного метода
        Method method = clazz.getDeclaredMethod("printName");
        method.setAccessible(true);
        method.invoke(instance);
    }
}
    </code></pre>

    <h2>Ограничения и риски использования рефлексии</h2>
    <ul>
        <li>
            <span class="highlight">Производительность:</span>
            <ul>
                <li>Рефлексия работает медленнее, чем прямой вызов методов или доступ к полям, так как требует дополнительных проверок и обработки.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Безопасность:</span>
            <ul>
                <li>Рефлексия может нарушить инкапсуляцию, предоставляя доступ к приватным полям и методам. Это может быть использовано злоумышленниками.</li>
                <li>Решение: Использовать SecurityManager для ограничения доступа к рефлексии.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Сложность отладки:</span>
            <ul>
                <li>Код, использующий рефлексию, сложнее отлаживать и поддерживать, так как ошибки могут возникать только во время выполнения.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ограничения модульной системы (Java 9+):</span>
            <ul>
                <li>Модульная система Java (JPMS) ограничивает доступ к внутренним API через рефлексию. Это может привести к ошибкам, если код пытается получить доступ к неэкспортируемым пакетам.</li>
                <li>Решение: Использовать опцию <code>--add-opens</code> для открытия пакетов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Совместимость:</span>
            <ul>
                <li>Изменения в структуре классов (например, переименование методов или полей) могут сломать код, использующий рефлексию.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Рефлексия — это мощный инструмент, но её следует использовать с осторожностью. По возможности избегайте рефлексии в пользу более безопасных и производительных подходов.
        </p>
    </div>

    <h2>Рекомендации по использованию рефлексии</h2>
    <ul>
        <li>
            <span class="highlight">Используйте рефлексию только когда это необходимо:</span> Например, для работы с библиотеками или фреймворками, которые требуют динамического доступа к классам.
        </li>
        <li>
            <span class="highlight">Ограничивайте доступ к приватным членам:</span> Используйте <code>setAccessible(true)</code> только в крайних случаях.
        </li>
        <li>
            <span class="highlight">Кэшируйте результаты рефлексии:</span> Например, сохраняйте объекты <code>Method</code> или <code>Field</code> для повторного использования.
        </li>
        <li>
            <span class="highlight">Тестируйте код с рефлексией:</span> Убедитесь, что он работает корректно при изменении структуры классов.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7679cf21-8e25-4b07-b480-4bc941254453', 'Как работает механизм аннотаций в Java? Как можно создавать собственные аннотации?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотации в Java</title>
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
    <h1>Аннотации в Java</h1>
    <p>
        Аннотации — это специальные метаданные, которые добавляются в исходный код Java для предоставления дополнительной информации о классах, методах, полях и других элементах программы. Они могут использоваться компилятором, инструментами сборки или фреймворками для изменения поведения программы или генерации кода.
    </p>

    <h2>Основные встроенные аннотации</h2>
    <ul>
        <li>
            <span class="highlight">@Override:</span>
            <ul>
                <li>Указывает, что метод переопределяет метод суперкласса.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@Deprecated:</span>
            <ul>
                <li>Указывает, что элемент устарел и не рекомендуется к использованию.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@SuppressWarnings:</span>
            <ul>
                <li>Подавляет предупреждения компилятора.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@FunctionalInterface:</span>
            <ul>
                <li>Указывает, что интерфейс является функциональным (имеет только один абстрактный метод).</li>
            </ul>
        </li>
    </ul>

    <h2>Создание собственных аннотаций</h2>
    <p>
        Для создания собственной аннотации используется ключевое слово <code>@interface</code>. Аннотация может иметь элементы (атрибуты), которые могут быть примитивными типами, строками, перечислениями или другими аннотациями.
    </p>

    <h3>Пример создания аннотации</h3>
    <pre><code>
import java.lang.annotation.*;

// Определение аннотации
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface MyAnnotation {
    String value() default "default value";
    int number() default 42;
}
    </code></pre>

    <h3>Использование аннотации</h3>
    <pre><code>
public class MyClass {
    @MyAnnotation(value = "custom value", number = 100)
    public void myMethod() {
        System.out.println("Метод с аннотацией");
    }
}
    </code></pre>

    <h3>Обработка аннотации с помощью рефлексии</h3>
    <pre><code>
import java.lang.reflect.Method;

public class AnnotationProcessor {
    public static void main(String[] args) throws Exception {
        MyClass obj = new MyClass();
        Method method = obj.getClass().getMethod("myMethod");

        if (method.isAnnotationPresent(MyAnnotation.class)) {
            MyAnnotation annotation = method.getAnnotation(MyAnnotation.class);
            System.out.println("Value: " + annotation.value());
            System.out.println("Number: " + annotation.number());
        }
    }
}
    </code></pre>

    <h2>Мета-аннотации</h2>
    <p>
        Мета-аннотации — это аннотации, которые применяются к другим аннотациям для определения их поведения.
    </p>
    <ul>
        <li>
            <span class="highlight">@Retention:</span>
            <ul>
                <li>Определяет, как долго аннотация будет доступна (например, только в исходном коде, в скомпилированном классе или во время выполнения).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@Target:</span>
            <ul>
                <li>Определяет, к каким элементам программы может применяться аннотация (например, классы, методы, поля).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@Documented:</span>
            <ul>
                <li>Указывает, что аннотация должна быть включена в документацию (Javadoc).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@Inherited:</span>
            <ul>
                <li>Указывает, что аннотация должна наследоваться подклассами.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотации не изменяют поведение кода напрямую. Они предоставляют метаданные, которые могут быть использованы компилятором, инструментами сборки или фреймворками.
        </p>
    </div>

    <h2>Рекомендации по использованию аннотаций</h2>
    <ul>
        <li>
            <span class="highlight">Используйте аннотации для упрощения кода:</span> Например, для конфигурации или маркировки элементов программы.
        </li>
        <li>
            <span class="highlight">Избегайте избыточного использования:</span> Чрезмерное количество аннотаций может сделать код сложным для понимания.
        </li>
        <li>
            <span class="highlight">Документируйте аннотации:</span> Убедитесь, что разработчики понимают, как использовать ваши аннотации.
        </li>
        <li>
            <span class="highlight">Тестируйте аннотации:</span> Убедитесь, что они работают корректно в различных сценариях.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b5e66ae7-1450-41ba-a253-e22dc35b849c', 'Что такое "ленивая загрузка" (Lazy Loading)? Как ее можно реализовать в Java?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ленивая загрузка (Lazy Loading) в Java</title>
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
    <h1>Ленивая загрузка (Lazy Loading) в Java</h1>
    <p>
        Ленивая загрузка (Lazy Loading) — это подход, при котором ресурсоёмкие объекты или данные загружаются только тогда, когда они действительно нужны. Это позволяет оптимизировать использование памяти и повысить производительность приложения, особенно при работе с большими объёмами данных.
    </p>

    <h2>Основные преимущества ленивой загрузки</h2>
    <ul>
        <li>
            <span class="highlight">Экономия памяти:</span> Объекты загружаются только при необходимости, что уменьшает начальное потребление памяти.
        </li>
        <li>
            <span class="highlight">Ускорение запуска приложения:</span> Приложение быстрее запускается, так как не загружает все данные сразу.
        </li>
        <li>
            <span class="highlight">Оптимизация производительности:</span> Ленивая загрузка позволяет избежать ненужных операций, если объект не используется.
        </li>
    </ul>

    <h2>Способы реализации ленивой загрузки в Java</h2>
    <ul>
        <li>
            <span class="highlight">Использование прокси (Proxy):</span>
            <ul>
                <li>Создание прокси-объекта, который загружает реальный объект только при первом обращении.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование лямбда-выражений:</span>
            <ul>
                <li>Использование <code>Supplier</code> для отложенной инициализации объекта.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование двойной проверки (Double-Checked Locking):</span>
            <ul>
                <li>Потокобезопасная реализация ленивой загрузки с использованием двойной проверки.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример реализации ленивой загрузки с использованием прокси</h2>
    <pre><code>
interface HeavyObject {
    void process();
}

class RealHeavyObject implements HeavyObject {
    public RealHeavyObject() {
        // Имитация ресурсоёмкой инициализации
        System.out.println("Инициализация RealHeavyObject");
    }

    @Override
    public void process() {
        System.out.println("Обработка в RealHeavyObject");
    }
}

class HeavyObjectProxy implements HeavyObject {
    private RealHeavyObject realHeavyObject;

    @Override
    public void process() {
        if (realHeavyObject == null) {
            realHeavyObject = new RealHeavyObject();
        }
        realHeavyObject.process();
    }
}

public class LazyLoadingExample {
    public static void main(String[] args) {
        HeavyObject proxy = new HeavyObjectProxy();

        // RealHeavyObject не инициализируется до первого вызова process()
        proxy.process(); // Инициализация и обработка
        proxy.process(); // Только обработка
    }
}
    </code></pre>

    <h2>Пример реализации ленивой загрузки с использованием Supplier</h2>
    <pre><code>
import java.util.function.Supplier;

class Lazy&lt;T&gt; {
    private T instance;
    private Supplier&lt;T&gt; supplier;

    public Lazy(Supplier&lt;T&gt; supplier) {
        this.supplier = supplier;
    }

    public T get() {
        if (instance == null) {
            instance = supplier.get();
        }
        return instance;
    }
}

public class LazyLoadingSupplierExample {
    public static void main(String[] args) {
        Lazy&lt;String&gt; lazyString = new Lazy&lt;&gt;(() -> {
            System.out.println("Инициализация строки");
            return "Lazy String";
        });

        System.out.println("До первого вызова get()");
        System.out.println(lazyString.get()); // Инициализация и возврат
        System.out.println(lazyString.get()); // Только возврат
    }
}
    </code></pre>

    <h2>Пример реализации ленивой загрузки с двойной проверкой</h2>
    <pre><code>
class Singleton {
    private static volatile Singleton instance;

    private Singleton() {
        System.out.println("Инициализация Singleton");
    }

    public static Singleton getInstance() {
        if (instance == null) {
            synchronized (Singleton.class) {
                if (instance == null) {
                    instance = new Singleton();
                }
            }
        }
        return instance;
    }
}

public class DoubleCheckedLockingExample {
    public static void main(String[] args) {
        Singleton singleton = Singleton.getInstance(); // Инициализация
        Singleton singleton2 = Singleton.getInstance(); // Возврат существующего экземпляра
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Ленивая загрузка может усложнить код, особенно при работе с многопоточностью. Убедитесь, что вы правильно синхронизируете доступ к ресурсам.
        </p>
    </div>

    <h2>Рекомендации по использованию ленивой загрузки</h2>
    <ul>
        <li>
            <span class="highlight">Используйте ленивую загрузку для ресурсоёмких объектов:</span> Например, для загрузки данных из базы данных или файловой системы.
        </li>
        <li>
            <span class="highlight">Учитывайте многопоточность:</span> Используйте синхронизацию или потокобезопасные конструкции, такие как <code>volatile</code> и <code>synchronized</code>.
        </li>
        <li>
            <span class="highlight">Избегайте избыточной ленивой загрузки:</span> Не используйте ленивую загрузку для простых объектов, так как это может привести к излишней сложности.
        </li>
        <li>
            <span class="highlight">Тестируйте производительность:</span> Убедитесь, что ленивая загрузка действительно улучшает производительность в вашем сценарии.
        </li>
    </ul>
</body>
</html>', 'STREAM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e556bb6f-8f77-402b-ad77-5f91a962031b', 'Как бы вы реализовали механизм кэширования на уровне приложения без использования сторонних библиотек?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Кэширование на уровне приложения</title>
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
    <h1>Кэширование на уровне приложения</h1>
    <p>
        Кэширование на уровне приложения — это механизм, который позволяет сохранять результаты вычислений или запросов для повторного использования, что уменьшает нагрузку на систему и ускоряет выполнение приложения. Реализация кэширования без использования сторонних библиотек требует создания собственного кэша с использованием стандартных средств Java.
    </p>

    <h2>Основные компоненты кэширования</h2>
    <ul>
        <li>
            <span class="highlight">Кэш:</span>
            <ul>
                <li>Структура данных для хранения кэшированных значений (например, <code>HashMap</code> или <code>ConcurrentHashMap</code>).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ключ кэширования:</span>
            <ul>
                <li>Уникальный идентификатор для каждого кэшированного значения (например, строка или объект).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Стратегия вытеснения:</span>
            <ul>
                <li>Алгоритм, определяющий, какие данные удалять из кэша при достижении лимита (например, LRU — Least Recently Used).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Время жизни (TTL):</span>
            <ul>
                <li>Время, в течение которого данные остаются в кэше до их удаления.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример реализации простого кэша</h2>
    <pre><code>
import java.util.HashMap;
import java.util.Map;

public class SimpleCache&lt;K, V&gt; {
    private final Map&lt;K, V&gt; cache = new HashMap&lt;&gt;();

    public void put(K key, V value) {
        cache.put(key, value);
    }

    public V get(K key) {
        return cache.get(key);
    }

    public void remove(K key) {
        cache.remove(key);
    }

    public void clear() {
        cache.clear();
    }
}
    </code></pre>

    <h2>Пример реализации кэша с TTL</h2>
    <pre><code>
import java.util.Map;
import java.util.concurrent.*;

public class TTLCache&lt;K, V&gt; {
    private final Map&lt;K, V&gt; cache = new ConcurrentHashMap&lt;&gt;();
    private final Map&lt;K, Long&gt; timestamps = new ConcurrentHashMap&lt;&gt;();
    private final long ttl; // Время жизни в миллисекундах

    public TTLCache(long ttl) {
        this.ttl = ttl;
        ScheduledExecutorService executor = Executors.newScheduledThreadPool(1);
        executor.scheduleAtFixedRate(this::evictExpired, ttl, ttl, TimeUnit.MILLISECONDS);
    }

    public void put(K key, V value) {
        cache.put(key, value);
        timestamps.put(key, System.currentTimeMillis());
    }

    public V get(K key) {
        Long timestamp = timestamps.get(key);
        if (timestamp != null && System.currentTimeMillis() - timestamp &lt; ttl) {
            return cache.get(key);
        } else {
            remove(key);
            return null;
        }
    }

    public void remove(K key) {
        cache.remove(key);
        timestamps.remove(key);
    }

    private void evictExpired() {
        long currentTime = System.currentTimeMillis();
        timestamps.entrySet().removeIf(entry -> currentTime - entry.getValue() &gt; ttl);
    }
}
    </code></pre>

    <h2>Пример реализации кэша с LRU стратегией</h2>
    <pre><code>
import java.util.LinkedHashMap;
import java.util.Map;

public class LRUCache&lt;K, V&gt; extends LinkedHashMap&lt;K, V&gt; {
    private final int capacity;

    public LRUCache(int capacity) {
        super(capacity, 0.75f, true);
        this.capacity = capacity;
    }

    @Override
    protected boolean removeEldestEntry(Map.Entry&lt;K, V&gt; eldest) {
        return size() &gt; capacity;
    }
}
    </code></pre>

    <h2>Рекомендации по реализации кэширования</h2>
    <ul>
        <li>
            <span class="highlight">Используйте потокобезопасные структуры данных:</span> Например, <code>ConcurrentHashMap</code> для многопоточных приложений.
        </li>
        <li>
            <span class="highlight">Учитывайте ограничения памяти:</span> Реализуйте стратегии вытеснения (например, LRU) для управления размером кэша.
        </li>
        <li>
            <span class="highlight">Добавьте время жизни (TTL):</span> Убедитесь, что данные в кэше не устаревают.
        </li>
        <li>
            <span class="highlight">Тестируйте производительность:</span> Убедитесь, что кэш действительно улучшает производительность приложения.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Реализация собственного кэша может быть полезна для простых сценариев, но для сложных задач рекомендуется использовать проверенные библиотеки, такие как <code>Caffeine</code> или <code>Ehcache</code>.
        </p>
    </div>

    <h2>Пример использования кэша</h2>
    <pre><code>
public class CacheExample {
    public static void main(String[] args) {
        TTLCache&lt;String, String&gt; cache = new TTLCache&lt;&gt;(5000); // TTL = 5 секунд

        cache.put("key1", "value1");
        System.out.println(cache.get("key1")); // value1

        try {
            Thread.sleep(6000); // Ждём 6 секунд
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println(cache.get("key1")); // null (данные устарели)
    }
}
    </code></pre>
</body>
</html>', 'OTHER', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7e175bcc-7d10-47df-9354-97fa357a68d5', 'Какими способами можно контролировать количество активных потоков в приложении?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Контроль количества активных потоков</title>
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
    <h1>Контроль количества активных потоков в приложении</h1>
    <p>
        Контроль количества активных потоков в приложении — это важная задача, которая помогает избежать перегрузки системы и улучшить производительность. В Java существует несколько способов управления количеством потоков, включая использование пулов потоков, семафоров и других механизмов.
    </p>

    <h2>Основные способы контроля количества потоков</h2>
    <ul>
        <li>
            <span class="highlight">Использование пулов потоков (ThreadPool):</span>
            <ul>
                <li>Пул потоков позволяет ограничить количество одновременно выполняемых задач.</li>
                <li>Пример: <code>ExecutorService</code> с фиксированным количеством потоков.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование семафоров (Semaphore):</span>
            <ul>
                <li>Семафоры позволяют ограничить количество потоков, которые могут одновременно выполнять определённый участок кода.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование счетчиков и блокировок:</span>
            <ul>
                <li>Ручное управление количеством потоков с помощью счетчиков и синхронизации.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование фреймворков:</span>
            <ul>
                <li>Фреймворки, такие как <code>Akka</code> или <code>RxJava</code>, предоставляют встроенные механизмы для управления потоками.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования пула потоков</h2>
    <pre><code>
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ThreadPoolExample {
    public static void main(String[] args) {
        // Создаём пул из 5 потоков
        ExecutorService executor = Executors.newFixedThreadPool(5);

        for (int i = 0; i < 10; i++) {
            Runnable task = new Task(i);
            executor.execute(task);
        }

        executor.shutdown();
    }
}

class Task implements Runnable {
    private int taskId;

    public Task(int taskId) {
        this.taskId = taskId;
    }

    @Override
    public void run() {
        System.out.println("Задача " + taskId + " выполняется потоком " + Thread.currentThread().getName());
        try {
            Thread.sleep(2000); // Имитация работы
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("Задача " + taskId + " завершена");
    }
}
    </code></pre>

    <h2>Пример использования семафора</h2>
    <pre><code>
import java.util.concurrent.Semaphore;

public class SemaphoreExample {
    public static void main(String[] args) {
        // Создаём семафор с 3 разрешениями
        Semaphore semaphore = new Semaphore(3);

        for (int i = 0; i < 10; i++) {
            Thread thread = new Thread(new Task(semaphore, i));
            thread.start();
        }
    }
}

class Task implements Runnable {
    private Semaphore semaphore;
    private int taskId;

    public Task(Semaphore semaphore, int taskId) {
        this.semaphore = semaphore;
        this.taskId = taskId;
    }

    @Override
    public void run() {
        try {
            semaphore.acquire(); // Запрашиваем разрешение
            System.out.println("Задача " + taskId + " выполняется потоком " + Thread.currentThread().getName());
            Thread.sleep(2000); // Имитация работы
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            semaphore.release(); // Освобождаем разрешение
            System.out.println("Задача " + taskId + " завершена");
        }
    }
}
    </code></pre>

    <h2>Пример использования счетчика и блокировок</h2>
    <pre><code>
import java.util.concurrent.atomic.AtomicInteger;

public class CounterExample {
    private static final int MAX_THREADS = 3;
    private static AtomicInteger activeThreads = new AtomicInteger(0);

    public static void main(String[] args) {
        for (int i = 0; i < 10; i++) {
            new Thread(new Task(i)).start();
        }
    }

    static class Task implements Runnable {
        private int taskId;

        public Task(int taskId) {
            this.taskId = taskId;
        }

        @Override
        public void run() {
            synchronized (activeThreads) {
                while (activeThreads.get() >= MAX_THREADS) {
                    try {
                        activeThreads.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                activeThreads.incrementAndGet();
            }

            try {
                System.out.println("Задача " + taskId + " выполняется потоком " + Thread.currentThread().getName());
                Thread.sleep(2000); // Имитация работы
            } catch (InterruptedException e) {
                e.printStackTrace();
            } finally {
                synchronized (activeThreads) {
                    activeThreads.decrementAndGet();
                    activeThreads.notifyAll();
                }
                System.out.println("Задача " + taskId + " завершена");
            }
        }
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Контроль количества потоков помогает избежать перегрузки системы и улучшить производительность, но требует осторожного подхода к синхронизации и управлению ресурсами.
        </p>
    </div>

    <h2>Рекомендации по контролю количества потоков</h2>
    <ul>
        <li>
            <span class="highlight">Используйте пулы потоков:</span> Они предоставляют удобный и эффективный способ управления потоками.
        </li>
        <li>
            <span class="highlight">Ограничивайте доступ к ресурсам:</span> Используйте семафоры или блокировки для управления доступом к критическим участкам кода.
        </li>
        <li>
            <span class="highlight">Мониторьте производительность:</span> Убедитесь, что количество потоков оптимально для вашей задачи.
        </li>
        <li>
            <span class="highlight">Избегайте deadlockов:</span> Убедитесь, что потоки не блокируют друг друга при работе с общими ресурсами.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');

INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2544fed6-5768-4c00-ae2f-f58b5f8ba9fb', 'Что такое REST и чем он отличается от SOAP?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>REST и SOAP</title>
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
    <h1>REST и SOAP: Основные различия</h1>
    <p>
        REST (Representational State Transfer) и SOAP (Simple Object Access Protocol) — это два популярных подхода к созданию веб-сервисов. Они имеют разные архитектурные стили, протоколы и способы взаимодействия между клиентом и сервером.
    </p>

    <h2>Что такое REST?</h2>
    <p>
        <span class="highlight">REST</span> — это архитектурный стиль, который использует стандартные HTTP-методы (GET, POST, PUT, DELETE) для взаимодействия с ресурсами. RESTful сервисы обычно возвращают данные в формате JSON или XML.
    </p>

    <h3>Основные характеристики REST:</h3>
    <ul>
        <li>
            <span class="highlight">Статусность:</span> REST является stateless, то есть каждый запрос содержит всю необходимую информацию для его обработки.
        </li>
        <li>
            <span class="highlight">Ресурсы:</span> Данные представлены в виде ресурсов, которые идентифицируются URL.
        </li>
        <li>
            <span class="highlight">Методы HTTP:</span> Используются стандартные HTTP-методы для выполнения операций (GET, POST, PUT, DELETE).
        </li>
        <li>
            <span class="highlight">Форматы данных:</span> JSON, XML, HTML и другие.
        </li>
    </ul>

    <h2>Что такое SOAP?</h2>
    <p>
        <span class="highlight">SOAP</span> — это протокол для обмена структурированными сообщениями в распределённых системах. SOAP использует XML для кодирования сообщений и обычно работает поверх HTTP, SMTP или других протоколов.
    </p>

    <h3>Основные характеристики SOAP:</h3>
    <ul>
        <li>
            <span class="highlight">Формальность:</span> SOAP строго определяет структуру сообщений, включая заголовки и тело.
        </li>
        <li>
            <span class="highlight">Протоколы:</span> Может работать поверх различных протоколов (HTTP, SMTP, TCP и др.).
        </li>
        <li>
            <span class="highlight">Безопасность:</span> SOAP поддерживает WS-Security для обеспечения безопасности сообщений.
        </li>
        <li>
            <span class="highlight">Форматы данных:</span> Только XML.
        </li>
    </ul>

    <h2>Основные различия между REST и SOAP</h2>
    <table>
        <thead>
            <tr>
                <th>Характеристика</th>
                <th>REST</th>
                <th>SOAP</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Архитектурный стиль</td>
                <td>Архитектурный стиль</td>
                <td>Протокол</td>
            </tr>
            <tr>
                <td>Форматы данных</td>
                <td>JSON, XML, HTML и др.</td>
                <td>Только XML</td>
            </tr>
            <tr>
                <td>Протоколы</td>
                <td>HTTP</td>
                <td>HTTP, SMTP, TCP и др.</td>
            </tr>
            <tr>
                <td>Статусность</td>
                <td>Stateless</td>
                <td>Stateful или Stateless</td>
            </tr>
            <tr>
                <td>Безопасность</td>
                <td>HTTPS, OAuth</td>
                <td>WS-Security</td>
            </tr>
            <tr>
                <td>Простота</td>
                <td>Проще в использовании</td>
                <td>Более сложный</td>
            </tr>
            <tr>
                <td>Производительность</td>
                <td>Выше (меньше накладных расходов)</td>
                <td>Ниже (больше накладных расходов)</td>
            </tr>
        </tbody>
    </table>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между REST и SOAP зависит от требований проекта. REST подходит для простых и быстрых решений, а SOAP — для сложных систем с высокими требованиями к безопасности и надёжности.
        </p>
    </div>

    <h2>Пример REST API</h2>
    <pre><code>
// Пример GET-запроса к REST API
GET /users/123 HTTP/1.1
Host: api.example.com
Accept: application/json

// Ответ
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": 123,
    "name": "John Doe",
    "email": "john.doe@example.com"
}
    </code></pre>

    <h2>Пример SOAP-запроса</h2>
    <pre><code>
// Пример SOAP-запроса
POST /webservice HTTP/1.1
Host: api.example.com
Content-Type: text/xml; charset=utf-8
Content-Length: 300

&lt;?xml version="1.0"?&gt;
&lt;soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope"&gt;
    &lt;soap:Body&gt;
        &lt;m:GetUser xmlns:m="http://example.com/webservice"&gt;
            &lt;m:UserId&gt;123&lt;/m:UserId&gt;
        &lt;/m:GetUser&gt;
    &lt;/soap:Body&gt;
&lt;/soap:Envelope&gt;

// Ответ
HTTP/1.1 200 OK
Content-Type: text/xml; charset=utf-8
Content-Length: 500

&lt;?xml version="1.0"?&gt;
&lt;soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope"&gt;
    &lt;soap:Body&gt;
        &lt;m:GetUserResponse xmlns:m="http://example.com/webservice"&gt;
            &lt;m:User&gt;
                &lt;m:Id&gt;123&lt;/m:Id&gt;
                &lt;m:Name&gt;John Doe&lt;/m:Name&gt;
                &lt;m:Email&gt;john.doe@example.com&lt;/m:Email&gt;
            &lt;/m:User&gt;
        &lt;/m:GetUserResponse&gt;
    &lt;/soap:Body&gt;
&lt;/soap:Envelope&gt;
    </code></pre>

    <h2>Рекомендации по выбору</h2>
    <ul>
        <li>
            <span class="highlight">Используйте REST:</span> Если вам нужен простой, быстрый и лёгкий в использовании API.
        </li>
        <li>
            <span class="highlight">Используйте SOAP:</span> Если вам нужна высокая безопасность, надёжность и поддержка сложных транзакций.
        </li>
    </ul>
</body>
</html>', 'HTTP', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('88475a07-4fcf-4508-a865-52b9856e74ef', 'Что такое immutable объекты и как их создать?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Immutable объекты</title>
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
    <h1>Immutable объекты</h1>
    <p>
        Immutable объекты (неизменяемые объекты) — это объекты, состояние которых нельзя изменить после их создания. Это означает, что все поля объекта являются final, и класс не предоставляет методов для изменения этих полей. Immutable объекты широко используются в многопоточных приложениях, так как они потокобезопасны по своей природе.
    </p>

    <h2>Основные характеристики immutable объектов</h2>
    <ul>
        <li>
            <span class="highlight">Неизменяемость:</span> Состояние объекта не может быть изменено после его создания.
        </li>
        <li>
            <span class="highlight">Потокобезопасность:</span> Immutable объекты могут использоваться в многопоточных приложениях без дополнительной синхронизации.
        </li>
        <li>
            <span class="highlight">Простота:</span> Immutable объекты проще проектировать и тестировать, так как их состояние всегда предсказуемо.
        </li>
    </ul>

    <h2>Как создать immutable объект?</h2>
    <p>
        Для создания immutable объекта необходимо соблюдать несколько правил:
    </p>
    <ul>
        <li>
            <span class="highlight">Сделайте все поля final:</span> Это гарантирует, что поля не могут быть изменены после инициализации.
        </li>
        <li>
            <span class="highlight">Не предоставляйте методов, изменяющих состояние:</span> Убедитесь, что класс не имеет сеттеров или других методов, которые могут изменить состояние объекта.
        </li>
        <li>
            <span class="highlight">Защитите mutable поля:</span> Если класс содержит ссылки на mutable объекты, убедитесь, что они не могут быть изменены извне.
        </li>
        <li>
            <span class="highlight">Используйте конструкторы для инициализации:</span> Все поля должны быть инициализированы через конструктор.
        </li>
    </ul>

    <h2>Пример создания immutable объекта</h2>
    <pre><code>
import java.util.Collections;
import java.util.List;

public final class ImmutablePerson {
    private final String name;
    private final int age;
    private final List&lt;String&gt; hobbies;

    public ImmutablePerson(String name, int age, List&lt;String&gt; hobbies) {
        this.name = name;
        this.age = age;
        this.hobbies = Collections.unmodifiableList(new ArrayList&lt;&gt;(hobbies));
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public List&lt;String&gt; getHobbies() {
        return hobbies;
    }
}
    </code></pre>

    <h2>Рекомендации по созданию immutable объектов</h2>
    <ul>
        <li>
            <span class="highlight">Используйте final поля:</span> Это гарантирует, что поля не могут быть изменены после инициализации.
        </li>
        <li>
            <span class="highlight">Защищайте mutable поля:</span> Если класс содержит ссылки на mutable объекты, используйте защитные копии или неизменяемые коллекции.
        </li>
        <li>
            <span class="highlight">Избегайте наследования:</span> Сделайте класс final, чтобы предотвратить создание подклассов, которые могут нарушить неизменяемость.
        </li>
        <li>
            <span class="highlight">Используйте неизменяемые коллекции:</span> Для коллекций используйте <code>Collections.unmodifiableList</code> или аналогичные методы.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Immutable объекты особенно полезны в многопоточных приложениях, так как они исключают проблемы, связанные с синхронизацией и состоянием гонки.
        </p>
    </div>

    <h2>Пример использования immutable объекта</h2>
    <pre><code>
import java.util.Arrays;

public class ImmutableExample {
    public static void main(String[] args) {
        List&lt;String&gt; hobbies = Arrays.asList("Reading", "Swimming");
        ImmutablePerson person = new ImmutablePerson("John Doe", 30, hobbies);

        System.out.println("Name: " + person.getName());
        System.out.println("Age: " + person.getAge());
        System.out.println("Hobbies: " + person.getHobbies());

        // Попытка изменить список хобби (не сработает)
        hobbies.add("Running");
        System.out.println("Hobbies after modification: " + person.getHobbies());
    }
}
    </code></pre>

    <h2>Преимущества immutable объектов</h2>
    <ul>
        <li>
            <span class="highlight">Потокобезопасность:</span> Immutable объекты могут использоваться в многопоточных приложениях без дополнительной синхронизации.
        </li>
        <li>
            <span class="highlight">Простота:</span> Immutable объекты проще проектировать и тестировать, так как их состояние всегда предсказуемо.
        </li>
        <li>
            <span class="highlight">Безопасность:</span> Immutable объекты защищены от случайного или злонамеренного изменения.
        </li>
    </ul>

    <h2>Недостатки immutable объектов</h2>
    <ul>
        <li>
            <span class="highlight">Нагрузка на память:</span> Создание новых объектов вместо изменения существующих может привести к увеличению использования памяти.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Частое создание новых объектов может повлиять на производительность.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b7cd8fee-edc8-48c0-9135-55c3e5138475', 'Как реализовать собственный пул потоков (ThreadPool) в Java?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Собственный пул потоков в Java</title>
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
    <h1>Собственный пул потоков (ThreadPool) в Java</h1>
    <p>
        Пул потоков (ThreadPool) — это механизм, который позволяет управлять множеством потоков, выполняя задачи в параллельном режиме. Создание собственного пула потоков позволяет лучше контролировать выполнение задач и оптимизировать использование ресурсов.
    </p>

    <h2>Основные компоненты пула потоков</h2>
    <ul>
        <li>
            <span class="highlight">Очередь задач:</span>
            <ul>
                <li>Хранит задачи, которые ожидают выполнения.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Потоки-исполнители:</span>
            <ul>
                <li>Потоки, которые берут задачи из очереди и выполняют их.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Механизм управления:</span>
            <ul>
                <li>Управляет созданием, запуском и завершением потоков.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример реализации собственного пула потоков</h2>
    <pre><code>
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class CustomThreadPool {
    private final BlockingQueue&lt;Runnable&gt; taskQueue;
    private final Thread[] workerThreads;

    public CustomThreadPool(int poolSize) {
        this.taskQueue = new LinkedBlockingQueue&lt;&gt;();
        this.workerThreads = new Thread[poolSize];

        for (int i = 0; i < poolSize; i++) {
            workerThreads[i] = new Worker("WorkerThread-" + i);
            workerThreads[i].start();
        }
    }

    public void execute(Runnable task) {
        synchronized (taskQueue) {
            taskQueue.add(task);
            taskQueue.notify();
        }
    }

    public void shutdown() {
        System.out.println("Shutting down thread pool");
        for (Thread workerThread : workerThreads) {
            workerThread.interrupt();
        }
    }

    private class Worker extends Thread {
        public Worker(String name) {
            super(name);
        }

        @Override
        public void run() {
            while (!isInterrupted()) {
                Runnable task;
                synchronized (taskQueue) {
                    while (taskQueue.isEmpty()) {
                        try {
                            taskQueue.wait();
                        } catch (InterruptedException e) {
                            System.out.println(Thread.currentThread().getName() + " interrupted");
                            return;
                        }
                    }
                    task = taskQueue.poll();
                }

                try {
                    task.run();
                } catch (RuntimeException e) {
                    System.out.println("Thread pool is interrupted due to an issue: " + e.getMessage());
                }
            }
        }
    }
}
    </code></pre>

    <h2>Пример использования пула потоков</h2>
    <pre><code>
public class ThreadPoolExample {
    public static void main(String[] args) {
        CustomThreadPool threadPool = new CustomThreadPool(3);

        for (int i = 0; i < 10; i++) {
            int taskId = i;
            threadPool.execute(() -> {
                System.out.println("Задача " + taskId + " выполняется потоком " + Thread.currentThread().getName());
                try {
                    Thread.sleep(1000); // Имитация работы
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                System.out.println("Задача " + taskId + " завершена");
            });
        }

        threadPool.shutdown();
    }
}
    </code></pre>

    <h2>Рекомендации по реализации пула потоков</h2>
    <ul>
        <li>
            <span class="highlight">Используйте блокирующую очередь:</span> Это позволяет потокам ждать новые задачи без активного ожидания.
        </li>
        <li>
            <span class="highlight">Обрабатывайте прерывания:</span> Убедитесь, что потоки корректно завершаются при вызове <code>shutdown()</code>.
        </li>
        <li>
            <span class="highlight">Контролируйте размер пула:</span> Выберите оптимальное количество потоков в зависимости от задач и доступных ресурсов.
        </li>
        <li>
            <span class="highlight">Обрабатывайте исключения:</span> Убедитесь, что исключения в задачах не приводят к завершению потока.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Создание собственного пула потоков может быть полезным для обучения и понимания работы многопоточности, но для production-кода рекомендуется использовать стандартные реализации, такие как <code>ExecutorService</code>.
        </p>
    </div>

    <h2>Преимущества собственного пула потоков</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Вы можете настроить пул потоков под свои нужды.
        </li>
        <li>
            <span class="highlight">Контроль:</span> Вы полностью контролируете создание, выполнение и завершение потоков.
        </li>
        <li>
            <span class="highlight">Обучение:</span> Реализация пула потоков помогает лучше понять многопоточность в Java.
        </li>
    </ul>

    <h2>Недостатки собственного пула потоков</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span> Реализация пула потоков требует глубокого понимания многопоточности.
        </li>
        <li>
            <span class="highlight">Ошибки:</span> Неправильная реализация может привести к deadlock\'ам, утечкам памяти и другим проблемам.
        </li>
        <li>
            <span class="highlight">Тестирование:</span> Собственный пул потоков сложнее тестировать, чем стандартные реализации.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ed7adc8b-8032-4155-9056-e1669109cdfd', 'Как реализовать кэширование в Spring?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Кэширование в Spring</title>
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
    <h1>Кэширование в Spring</h1>
    <p>
        Кэширование в Spring позволяет сохранять результаты выполнения методов для повторного использования, что уменьшает нагрузку на систему и ускоряет выполнение приложения. Spring предоставляет удобные аннотации для настройки и управления кэшированием.
    </p>

    <h2>Основные аннотации для кэширования</h2>
    <ul>
        <li>
            <span class="highlight">@Cacheable:</span>
            <ul>
                <li>Указывает, что результат метода должен быть закэширован.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@CachePut:</span>
            <ul>
                <li>Обновляет кэш новым результатом метода.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@CacheEvict:</span>
            <ul>
                <li>Удаляет данные из кэша.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@Caching:</span>
            <ul>
                <li>Позволяет комбинировать несколько аннотаций кэширования.</li>
            </ul>
        </li>
    </ul>

    <h2>Настройка кэширования в Spring</h2>
    <p>
        Для включения кэширования в Spring необходимо добавить аннотацию <code>@EnableCaching</code> в конфигурационный класс и настроить кэш-менеджер.
    </p>

    <h3>Пример конфигурации кэширования</h3>
    <pre><code>
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.concurrent.ConcurrentMapCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableCaching
public class CacheConfig {
    @Bean
    public CacheManager cacheManager() {
        return new ConcurrentMapCacheManager("books");
}
}
    </code></pre>

    <h2>Пример использования кэширования</h2>
    <pre><code>
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
public class BookService {

    @Cacheable("books")
    public String getBookByIsbn(String isbn) {
        // Имитация долгого выполнения
        simulateSlowService();
return "Book with ISBN " + isbn;
}

    private void simulateSlowService() {
        try {
            Thread.sleep(3000);
} catch (InterruptedException e) {
            e.printStackTrace();
}
    }
}
    </code></pre>

    <h2>Пример использования @CachePut и @CacheEvict</h2>
    <pre><code>
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.stereotype.Service;

@Service
public class BookService {

    @CachePut(value = "books", key = "#isbn")
    public String updateBook(String isbn, String bookDetails) {
        // Логика обновления книги
        return bookDetails;
}

    @CacheEvict(value = "books", key = "#isbn")
    public void deleteBook(String isbn) {
        // Логика удаления книги
    }
}
    </code></pre>

    <h2>Рекомендации по использованию кэширования</h2>
    <ul>
        <li>
            <span class="highlight">Используйте аннотации:</span> Аннотации Spring делают кэширование простым и удобным.
        </li>
        <li>
            <span class="highlight">Настройте кэш-менеджер:</span> Выберите подходящий кэш-менеджер (например, <code>ConcurrentMapCacheManager</code>, <code>EhCacheCacheManager</code>).
        </li>
        <li>
            <span class="highlight">Учитывайте размер кэша:</span> Настройте максимальный размер кэша и стратегию вытеснения.
        </li>
        <li>
            <span class="highlight">Тестируйте производительность:</span> Убедитесь, что кэширование действительно улучшает производительность.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Кэширование может значительно улучшить производительность приложения, но требует осторожного подхода к управлению данными и их актуальности.
        </p>
    </div>

    <h2>Пример использования @Caching</h2>
    <pre><code>
import org.springframework.cache.annotation.Caching;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.CachePut;
import org.springframework.stereotype.Service;

@Service
public class BookService {

    @Caching(
        cacheable = {
            @Cacheable(value = "books", key = "#isbn")
        },
        put = {
            @CachePut(value = "books", key = "#result.id")
        }
    )
    public Book getOrUpdateBook(String isbn, Book bookDetails) {
        // Логика получения или обновления книги
        return bookDetails;
}
}
    </code></pre>

    <h2>Популярные кэш-менеджеры в Spring</h2>
    <ul>
        <li>
            <code>ConcurrentMapCacheManager</code> — простой кэш на основе <code>ConcurrentHashMap</code>.
        </li>
        <li>
            <code>EhCacheCacheManager</code> — кэш на основе библиотеки Ehcache.
        </li>
        <li>
            <code>CaffeineCacheManager</code> — кэш на основе библиотеки Caffeine.
        </li>
        <li>
            <code>RedisCacheManager</code> — кэш на основе Redis.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('14e6ab65-4b24-4113-8079-c5148eebd47d', 'Что такое "double-checked locking" и почему он может не работать без volatile?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Double-Checked Locking</title>
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
    <h1>Double-Checked Locking</h1>
    <p>
        Double-Checked Locking (DCL) — это шаблон проектирования, используемый для уменьшения накладных расходов на синхронизацию при ленивой инициализации объектов в многопоточной среде. Однако, без использования ключевого слова <code>volatile</code>, этот шаблон может не работать корректно из-за особенностей работы памяти в Java.
    </p>

    <h2>Основная идея Double-Checked Locking</h2>
    <p>
        Идея DCL заключается в том, чтобы сначала проверить условие без синхронизации, и только если оно не выполняется, войти в синхронизированный блок для инициализации объекта. Это позволяет избежать ненужной синхронизации после того, как объект уже был инициализирован.
    </p>

    <h2>Пример Double-Checked Locking</h2>
    <pre><code>
public class Singleton {
    private static volatile Singleton instance;

    private Singleton() {
        // Приватный конструктор
    }

    public static Singleton getInstance() {
        if (instance == null) {
            synchronized (Singleton.class) {
                if (instance == null) {
                    instance = new Singleton();
}
            }
        }
        return instance;
}
}
    </code></pre>

    <h2>Почему без volatile DCL может не работать?</h2>
    <p>
        Без ключевого слова <code>volatile</code>, Double-Checked Locking может не работать корректно из-за проблем с видимостью и упорядочиванием операций в многопоточной среде. Вот основные причины:
    </p>
    <ul>
        <li>
            <span class="highlight">Видимость:</span>
            <ul>
                <li>Без <code>volatile</code>, изменения, сделанные одним потоком, могут быть не видны другим потокам.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Упорядочивание операций:</span>
            <ul>
                <li>Компилятор и процессор могут переупорядочить операции для оптимизации. Это может привести к тому, что объект будет использован до того, как он будет полностью инициализирован.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример проблемы без volatile</h2>
    <pre><code>
public class Singleton {
    private static Singleton instance;

    private Singleton() {
        // Приватный конструктор
    }

    public static Singleton getInstance() {
        if (instance == null) {
            synchronized (Singleton.class) {
                if (instance == null) {
                    instance = new Singleton(); // Проблема: объект может быть использован до завершения инициализации
                }
            }
        }
        return instance;
}
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Ключевое слово <code>volatile</code> гарантирует, что все потоки будут видеть актуальное значение переменной и что операции с этой переменной не будут переупорядочены.
        </p>
    </div>

    <h2>Как работает volatile?</h2>
    <ul>
        <li>
            <span class="highlight">Видимость:</span>
            <ul>
                <li>Изменения, сделанные в переменной <code>volatile</code>, сразу становятся видимыми для всех потоков.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Упорядочивание:</span>
            <ul>
                <li>Операции чтения и записи <code>volatile</code> переменной не могут быть переупорядочены с другими операциями.</li>
            </ul>
        </li>
    </ul>

    <h2>Рекомендации по использованию Double-Checked Locking</h2>
    <ul>
        <li>
            <span class="highlight">Используйте volatile:</span> Всегда используйте <code>volatile</code> для переменной, которая хранит экземпляр синглтона.
        </li>
        <li>
            <span class="highlight">Избегайте сложных конструкций:</span> Если возможно, используйте более простые подходы, такие как статическая инициализация или enum.
        </li>
        <li>
            <span class="highlight">Тестируйте многопоточность:</span> Убедитесь, что ваш код корректно работает в многопоточной среде.
        </li>
    </ul>

    <h2>Альтернативы Double-Checked Locking</h2>
    <ul>
        <li>
            <span class="highlight">Статическая инициализация:</span>
            <pre><code>
public class Singleton {
    private static final Singleton instance = new Singleton();

    private Singleton() {
        // Приватный конструктор
    }

    public static Singleton getInstance() {
        return instance;
}
}
            </code></pre>
        </li>
        <li>
            <span class="highlight">Использование enum:</span>
            <pre><code>
public enum Singleton {
    INSTANCE;

public void doSomething() {
        // Логика
    }
}
            </code></pre>
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('399b7cde-cf2d-42a5-b968-0aaa58f61ca2', 'Что такое "замыкание" (closure) и как оно связано с лямбда-выражениями в Java?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Замыкания и лямбда-выражения в Java</title>
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
    <h1>Замыкания и лямбда-выражения в Java</h1>
    <p>
        Замыкание (closure) — это функция, которая запоминает окружение, в котором она была создана, и может обращаться к переменным из этого окружения даже после того, как оно вышло из области видимости. В Java замыкания тесно связаны с лямбда-выражениями и анонимными классами.
    </p>

    <h2>Основные характеристики замыканий</h2>
    <ul>
        <li>
            <span class="highlight">Захват переменных:</span>
            <ul>
                <li>Замыкание может захватывать и использовать переменные из окружающего контекста.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Доступ к переменным:</span>
            <ul>
                <li>Замыкание может обращаться к переменным, даже если они больше не находятся в области видимости.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Иммутабельность:</span>
            <ul>
                <li>В Java захваченные переменные должны быть effectively final (фактически неизменяемыми).</li>
            </ul>
        </li>
    </ul>

    <h2>Пример замыкания с лямбда-выражением</h2>
    <pre><code>
import java.util.function.Function;

public class ClosureExample {
    public static void main(String[] args) {
        int baseNumber = 10;

// Лямбда-выражение захватывает переменную baseNumber
        Function&lt;Integer, Integer&gt; addBaseNumber = x -> x + baseNumber;

        System.out.println(addBaseNumber.apply(5)); // 15
    }
}
    </code></pre>

    <h2>Пример замыкания с анонимным классом</h2>
    <pre><code>
public class ClosureExample {
    public static void main(String[] args) {
        int baseNumber = 10;

// Анонимный класс захватывает переменную baseNumber
        Function&lt;Integer, Integer&gt; addBaseNumber = new Function&lt;Integer, Integer&gt;() {
            @Override
            public Integer apply(Integer x) {
                return x + baseNumber;
}
        };

        System.out.println(addBaseNumber.apply(5)); // 15
    }
}
    </code></pre>

    <h2>Почему переменные должны быть effectively final?</h2>
    <p>
        В Java захваченные переменные в лямбда-выражениях и анонимных классах должны быть effectively final (фактически неизменяемыми). Это означает, что они должны быть либо объявлены как <code>final</code>, либо не изменяться после инициализации. Это требование связано с тем, что замыкания захватывают переменные по значению, а не по ссылке.
    </p>

    <h2>Пример с effectively final переменной</h2>
    <pre><code>
public class ClosureExample {
    public static void main(String[] args) {
        int baseNumber = 10; // effectively final

        Function&lt;Integer, Integer&gt; addBaseNumber = x -> x + baseNumber;

// baseNumber = 20; // Ошибка: переменная должна быть effectively final

        System.out.println(addBaseNumber.apply(5)); // 15
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Замыкания в Java работают только с effectively final переменными, что обеспечивает безопасность в многопоточной среде и предотвращает неожиданное поведение.
        </p>
    </div>

    <h2>Рекомендации по использованию замыканий</h2>
    <ul>
        <li>
            <span class="highlight">Используйте effectively final переменные:</span> Убедитесь, что захваченные переменные не изменяются после инициализации.
        </li>
        <li>
            <span class="highlight">Избегайте сложных замыканий:</span> Простые замыкания легче понимать и поддерживать.
        </li>
        <li>
            <span class="highlight">Тестируйте многопоточность:</span> Убедитесь, что замыкания корректно работают в многопоточной среде.
        </li>
    </ul>

    <h2>Пример использования замыкания в многопоточной среде</h2>
    <pre><code>
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ClosureMultithreadingExample {
    public static void main(String[] args) {
        int baseNumber = 10; // effectively final

        ExecutorService executor = Executors.newFixedThreadPool(2);

for (int i = 0; i < 5; i++) {
            int finalI = i; // effectively final
            executor.submit(() -> {
                System.out.println("Task " + finalI + " result: " + (finalI + baseNumber));
            });
}

        executor.shutdown();
}
}
    </code></pre>

    <h2>Преимущества замыканий</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Замыкания позволяют передавать поведение как данные.
        </li>
        <li>
            <span class="highlight">Упрощение кода:</span> Лямбда-выражения делают код более читаемым и компактным.
        </li>
        <li>
            <span class="highlight">Функциональное программирование:</span> Замыкания поддерживают функциональные подходы в Java.
        </li>
    </ul>

    <h2>Недостатки замыканий</h2>
    <ul>
        <li>
            <span class="highlight">Ограничения на переменные:</span> Захваченные переменные должны быть effectively final.
        </li>
        <li>
            <span class="highlight">Сложность отладки:</span> Лямбда-выражения могут усложнить отладку из-за отсутствия явных имен методов.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('07cd3c6f-fa00-46f6-9961-ca43933fe23a', 'Как бы вы реализовали механизм отката (rollback) в распределенной транзакции?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Механизм отката в распределенной транзакции</title>
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
    <h1>Механизм отката в распределенной транзакции</h1>
    <p>
        Распределённые транзакции — это транзакции, которые затрагивают несколько независимых систем или баз данных. Реализация механизма отката (rollback) в таких транзакциях требует координации между всеми участниками, чтобы обеспечить согласованность данных.
    </p>

    <h2>Основные подходы к реализации отката</h2>
    <ul>
        <li>
            <span class="highlight">Двухфазный commit (2PC):</span>
            <ul>
                <li>Протокол, который гарантирует, что все участники либо фиксируют, либо откатывают транзакцию.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Saga:</span>
            <ul>
                <li>Паттерн, который разбивает транзакцию на последовательность локальных транзакций, каждая из которых может быть откачена с помощью компенсирующих действий.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Локальные транзакции с компенсацией:</span>
            <ul>
                <li>Каждая система выполняет свою локальную транзакцию, а в случае ошибки выполняет компенсирующие действия.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример реализации двухфазного commit (2PC)</h2>
    <pre><code>
import java.util.List;

public class TwoPhaseCommit {
    private List&lt;Participant&gt; participants;

public TwoPhaseCommit(List&lt;Participant&gt; participants) {
        this.participants = participants;
}

    public void executeTransaction() {
        // Фаза подготовки
        boolean allPrepared = true;
for (Participant participant : participants) {
            if (!participant.prepare()) {
                allPrepared = false;
                break;
}
        }

        // Фаза фиксации или отката
        if (allPrepared) {
            for (Participant participant : participants) {
                participant.commit();
}
        } else {
            for (Participant participant : participants) {
                participant.rollback();
}
        }
    }
}

interface Participant {
    boolean prepare();
    void commit();
    void rollback();
}
    </code></pre>

    <h2>Пример реализации Saga</h2>
    <pre><code>
import java.util.ArrayList;
import java.util.List;

public class Saga {
    private List&lt;SagaStep&gt; steps = new ArrayList&lt;&gt;();

public void addStep(SagaStep step) {
        steps.add(step);
}

    public void execute() {
        for (SagaStep step : steps) {
            try {
                step.execute();
} catch (Exception e) {
                // В случае ошибки выполняем компенсирующие действия
                for (int i = steps.indexOf(step); i >= 0; i--) {
                    steps.get(i).compensate();
                }
                break;
            }
        }
    }
}

interface SagaStep {
    void execute();
    void compensate();
}
    </code></pre>

    <h2>Пример реализации локальных транзакций с компенсацией</h2>
    <pre><code>
public class LocalTransaction {
    public void execute() {
        try {
            // Локальная транзакция
            performLocalTransaction();
        } catch (Exception e) {
            // Компенсирующее действие
            compensate();
        }
    }

    private void performLocalTransaction() {
        // Логика выполнения транзакции
    }

    private void compensate() {
        // Логика компенсации
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор подхода зависит от требований к согласованности, производительности и сложности реализации. Двухфазный commit обеспечивает строгую согласованность, но может быть медленным, в то время как Saga и локальные транзакции с компенсацией более гибкие, но требуют тщательной проработки компенсирующих действий.
        </p>
    </div>

    <h2>Рекомендации по реализации отката</h2>
    <ul>
        <li>
            <span class="highlight">Используйте двухфазный commit для строгой согласованности:</span> Это гарантирует, что все участники либо фиксируют, либо откатывают транзакцию.
        </li>
        <li>
            <span class="highlight">Используйте Saga для длительных транзакций:</span> Saga позволяет разбить транзакцию на несколько шагов и выполнить компенсацию в случае ошибки.
        </li>
        <li>
            <span class="highlight">Реализуйте компенсирующие действия:</span> Убедитесь, что каждое действие может быть откачено с помощью компенсирующего действия.
        </li>
        <li>
            <span class="highlight">Тестируйте откаты:</span> Убедитесь, что механизм отката корректно работает в различных сценариях.
        </li>
    </ul>

    <h2>Пример использования двухфазного commit</h2>
    <pre><code>
public class TwoPhaseCommitExample {
    public static void main(String[] args) {
        List&lt;Participant&gt; participants = List.of(new ParticipantImpl(), new ParticipantImpl());
        TwoPhaseCommit twoPhaseCommit = new TwoPhaseCommit(participants);
        twoPhaseCommit.executeTransaction();
    }
}

class ParticipantImpl implements Participant {
    @Override
    public boolean prepare() {
        // Логика подготовки
        return true;
    }

    @Override
    public void commit() {
        // Логика фиксации
    }

    @Override
    public void rollback() {
        // Логика отката
    }
}
    </code></pre>

    <h2>Пример использования Saga</h2>
    <pre><code>
public class SagaExample {
    public static void main(String[] args) {
        Saga saga = new Saga();
        saga.addStep(new SagaStepImpl());
        saga.addStep(new SagaStepImpl());
        saga.execute();
    }
}

class SagaStepImpl implements SagaStep {
    @Override
    public void execute() {
        // Логика выполнения шага
    }

    @Override
    public void compensate() {
        // Логика компенсации
    }
}
    </code></pre>
</body>
</html>', 'DATA_BASE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('05a566b7-75c2-43c2-9ced-fed3d2a44248', 'Что такое "реактивное программирование" и как оно реализовано в Java (например, через Project Reactor)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Реактивное программирование в Java</title>
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
    <h1>Реактивное программирование в Java</h1>
    <p>
        Реактивное программирование — это парадигма программирования, ориентированная на потоки данных и распространение изменений. Оно позволяет эффективно обрабатывать асинхронные и событийно-ориентированные задачи, такие как обработка запросов в реальном времени, потоковая передача данных и другие.
    </p>

    <h2>Основные принципы реактивного программирования</h2>
    <ul>
        <li>
            <span class="highlight">Асинхронность:</span>
            <ul>
                <li>Операции выполняются без блокировки основного потока.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Неблокирующие операции:</span>
            <ul>
                <li>Потоки не блокируются в ожидании завершения операций.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Обработка потоков данных:</span>
            <ul>
                <li>Данные обрабатываются как потоки событий, которые можно фильтровать, преобразовывать и комбинировать.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Реактивность:</span>
            <ul>
                <li>Система автоматически реагирует на изменения в данных.</li>
            </ul>
        </li>
    </ul>

    <h2>Реактивное программирование в Java: Project Reactor</h2>
    <p>
        <span class="highlight">Project Reactor</span> — это библиотека для реактивного программирования в Java, которая реализует Reactive Streams API. Она предоставляет мощные инструменты для работы с асинхронными потоками данных, такие как <code>Flux</code> и <code>Mono</code>.
    </p>

    <h3>Основные компоненты Project Reactor</h3>
    <ul>
        <li>
            <span class="highlight">Flux:</span>
            <ul>
                <li>Представляет поток из 0..N элементов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Mono:</span>
            <ul>
                <li>Представляет поток из 0..1 элемента.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Операторы:</span>
            <ul>
                <li>Методы для преобразования, фильтрации и комбинирования потоков данных.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования Project Reactor</h2>
    <pre><code>
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

public class ReactorExample {
    public static void main(String[] args) {
        // Создание Flux из списка элементов
        Flux&lt;String&gt; flux = Flux.just("Apple", "Banana", "Cherry");

        // Подписка на поток и обработка элементов
        flux.subscribe(System.out::println);

        // Фильтрация и преобразование элементов
        flux.filter(fruit -> fruit.startsWith("A"))
            .map(String::toUpperCase)
            .subscribe(System.out::println);

        // Использование Mono для одного элемента
        Mono&lt;String&gt; mono = Mono.just("Single Fruit");
        mono.subscribe(System.out::println);
    }
}
    </code></pre>

    <h2>Пример асинхронной обработки с Project Reactor</h2>
    <pre><code>
import reactor.core.publisher.Flux;
import reactor.core.scheduler.Schedulers;

public class AsyncReactorExample {
    public static void main(String[] args) throws InterruptedException {
        Flux.range(1, 10)
            .parallel() // Параллельная обработка
            .runOn(Schedulers.parallel()) // Использование параллельного планировщика
            .map(i -> i * 2) // Преобразование элементов
            .subscribe(System.out::println); // Подписка на поток

        // Ждём завершения асинхронных операций
        Thread.sleep(1000);
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Реактивное программирование требует изменения мышления и подхода к проектированию приложений. Оно особенно полезно для задач, связанных с асинхронной обработкой данных и высокой нагрузкой.
        </p>
    </div>

    <h2>Рекомендации по использованию реактивного программирования</h2>
    <ul>
        <li>
            <span class="highlight">Используйте Flux и Mono:</span> Эти абстракции позволяют эффективно работать с потоками данных.
        </li>
        <li>
            <span class="highlight">Применяйте операторы:</span> Используйте операторы для фильтрации, преобразования и комбинирования данных.
        </li>
        <li>
            <span class="highlight">Управляйте многопоточностью:</span> Используйте планировщики (<code>Schedulers</code>) для управления потоками выполнения.
        </li>
        <li>
            <span class="highlight">Тестируйте производительность:</span> Убедитесь, что реактивное программирование действительно улучшает производительность вашего приложения.
        </li>
    </ul>

    <h2>Преимущества реактивного программирования</h2>
    <ul>
        <li>
            <span class="highlight">Эффективность:</span> Асинхронная и неблокирующая обработка данных повышает производительность.
        </li>
        <li>
            <span class="highlight">Масштабируемость:</span> Реактивные приложения лучше масштабируются на многопроцессорных системах.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Потоки данных можно легко комбинировать и преобразовывать.
        </li>
    </ul>

    <h2>Недостатки реактивного программирования</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span> Реактивное программирование требует изменения подхода к проектированию и может быть сложным для понимания.
        </li>
        <li>
            <span class="highlight">Отладка:</span> Асинхронные потоки данных сложнее отлаживать, чем синхронный код.
        </li>
    </ul>
</body>
</html>', 'OTHER', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('91d455bf-0ab7-4bdd-a82e-3b51b92dc408', 'Как поведет себя уже инстанциированный итератор для collection, если  вызвать collection.remove()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Поведение итератора при вызове collection.remove()</title>
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
    <h1>Поведение итератора при вызове collection.remove()</h1>
    <p>
        Если после создания итератора для коллекции вызывается метод <code>collection.remove()</code>, это может привести к выбрасыванию исключения <code>ConcurrentModificationException</code> при следующем использовании итератора.
    </p>

    <h2>Причина исключения</h2>
    <ul>
        <li>
            <span class="highlight">Fail-fast поведение:</span>
            <ul>
                <li>Итераторы большинства коллекций в Java (например, <code>ArrayList</code>, <code>HashMap</code>) реализуют fail-fast поведение.</li>
                <li>Это означает, что итератор проверяет, была ли коллекция изменена после его создания.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Счётчик модификаций:</span>
            <ul>
                <li>Коллекция поддерживает счётчик модификаций (<code>modification count</code>).</li>
                <li>При создании итератора сохраняется текущее значение счётчика.</li>
                <li>Если коллекция изменяется (например, через <code>collection.remove()</code>), счётчик увеличивается.</li>
                <li>При следующем вызове метода итератора (например, <code>next()</code> или <code>hasNext()</code>) сохранённое значение счётчика сравнивается с текущим. Если значения не совпадают, выбрасывается <code>ConcurrentModificationException</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

Iterator&lt;String&gt; iterator = list.iterator();
list.remove("A"); // Модификация коллекции после создания итератора

while (iterator.hasNext()) {
    System.out.println(iterator.next()); // Выбросит ConcurrentModificationException
}
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если коллекция изменяется после создания итератора (например, через <code>collection.remove()</code>), при следующем использовании итератора будет выброшено исключение <code>ConcurrentModificationException</code>. Это связано с fail-fast поведением итераторов.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2c3a5f88-0695-4f16-bd4a-6d5b736e5a54', 'Как поведет себя коллекция, если вызвать iterator.remove()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Поведение коллекции при вызове iterator.remove()</title>
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
    <h1>Поведение коллекции при вызове iterator.remove()</h1>
    <p>
        Метод <code>iterator.remove()</code> используется для удаления текущего элемента коллекции, на который указывает итератор. Однако его поведение зависит от того, был ли вызван метод <code>iterator.next()</code> перед удалением.
    </p>

    <h2>Условия работы iterator.remove()</h2>
    <ul>
        <li>
            <span class="highlight">Успешное удаление:</span>
            <ul>
                <li>Если перед вызовом <code>iterator.remove()</code> был вызван <code>iterator.next()</code>, то текущий элемент, на который указывает итератор, будет удалён из коллекции.</li>
                <li>Пример:
                    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

Iterator&lt;String&gt; iterator = list.iterator();
iterator.next(); // Переход к элементу "A"
iterator.remove(); // Удаление элемента "A"

System.out.println(list); // Выведет [B]
</code>
                    </pre>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Исключение IllegalStateException:</span>
            <ul>
                <li>Если <code>iterator.remove()</code> вызывается без предварительного вызова <code>iterator.next()</code>, будет выброшено исключение <code>IllegalStateException</code>.</li>
                <li>Пример:
                    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");

Iterator&lt;String&gt; iterator = list.iterator();
iterator.remove(); // Выбросит IllegalStateException
</code>
                    </pre>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Метод <code>iterator.remove()</code> удаляет текущий элемент коллекции, на который указывает итератор, только если перед этим был вызван <code>iterator.next()</code>. В противном случае выбрасывается исключение <code>IllegalStateException</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5a2abc93-d132-4481-aa87-5389b5a1e01b', 'Как бы вы обработали ситуацию, когда OutOfMemoryError возникает в production?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Обработка OutOfMemoryError в production</title>
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
    <h1>Обработка OutOfMemoryError в production</h1>
    <p>
        <span class="highlight">OutOfMemoryError</span> — это критическая ошибка, которая возникает, когда JVM не может выделить достаточно памяти для создания нового объекта. В production-среде это может привести к остановке приложения и потере данных. Важно быстро диагностировать и устранить проблему.
    </p>

    <h2>Шаги для обработки OutOfMemoryError</h2>
    <ul>
        <li>
            <span class="highlight">1. Анализ логов:</span>
            <ul>
                <li>Изучите логи приложения и JVM, чтобы определить, где и почему произошла ошибка.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Сбор дампа памяти:</span>
            <ul>
                <li>Настройте JVM для автоматического создания дампа памяти при возникновении <code>OutOfMemoryError</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Мониторинг и алертинг:</span>
            <ul>
                <li>Настройте мониторинг использования памяти и алертинг для своевременного обнаружения проблем.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">4. Оптимизация памяти:</span>
            <ul>
                <li>Проверьте код на наличие утечек памяти и оптимизируйте использование памяти.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">5. Увеличение памяти:</span>
            <ul>
                <li>Если проблема связана с недостатком памяти, увеличьте размер heap-памяти JVM.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример настройки JVM для создания дампа памяти</h2>
    <pre><code>
java -Xmx512m -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/path/to/dumps -jar your-app.jar
    </code></pre>

    <h2>Пример анализа дампа памяти</h2>
    <p>
        Для анализа дампа памяти можно использовать инструменты, такие как <code>Eclipse MAT</code> или <code>VisualVM</code>. Эти инструменты помогают найти объекты, которые занимают больше всего памяти, и выявить утечки памяти.
    </p>

    <h2>Пример настройки мониторинга и алертинга</h2>
    <pre><code>
# Пример настройки Prometheus и Grafana для мониторинга памяти
- job_name: \'java_app\'
  metrics_path: \'/actuator/prometheus\'
  static_configs:
    - targets: [\'localhost:8080\']

# Настройка алерта в Grafana
ALERT HighMemoryUsage
  IF sum(jvm_memory_used_bytes{area="heap"}) / sum(jvm_memory_max_bytes{area="heap"}) > 0.8
  FOR 5m
  LABELS { severity="critical" }
  ANNOTATIONS {
    summary = "High memory usage in Java application",
    description = "Memory usage is above 80% for more than 5 minutes."
  }
    </code></pre>

    <h2>Рекомендации по оптимизации памяти</h2>
    <ul>
        <li>
            <span class="highlight">Используйте пулы объектов:</span> Для часто используемых объектов используйте пулы, чтобы уменьшить нагрузку на сборщик мусора.
        </li>
        <li>
            <span class="highlight">Ограничивайте размер кэшей:</span> Убедитесь, что кэши не растут бесконечно и используют алгоритмы вытеснения (например, LRU).
        </li>
        <li>
            <span class="highlight">Избегайте утечек памяти:</span> Убедитесь, что все ресурсы освобождаются после использования (например, закрывайте потоки и соединения).
        </li>
        <li>
            <span class="highlight">Используйте профилирование:</span> Регулярно профилируйте приложение для выявления узких мест в использовании памяти.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> OutOfMemoryError — это серьёзная ошибка, которая требует немедленного внимания. Регулярный мониторинг и профилактические меры помогут избежать таких ситуаций в production.
        </p>
    </div>

    <h2>Пример увеличения памяти JVM</h2>
    <pre><code>
# Увеличение максимального размера heap-памяти до 2 ГБ
java -Xmx2g -jar your-app.jar
    </code></pre>

    <h2>Пример использования Eclipse MAT</h2>
    <p>
        Eclipse MAT (Memory Analyzer Tool) — это мощный инструмент для анализа дампов памяти. Он помогает найти объекты, которые занимают больше всего памяти, и выявить утечки памяти.
    </p>
    <pre><code>
1. Откройте дамп памяти в Eclipse MAT.
2. Используйте отчеты, такие как "Leak Suspects" и "Dominator Tree", чтобы найти проблемные объекты.
3. Изучите ссылки на объекты, чтобы понять, почему они не освобождаются.
    </code></pre>

    <h2>Преимущества своевременной обработки OutOfMemoryError</h2>
    <ul>
        <li>
            <span class="highlight">Минимизация downtime:</span> Быстрое устранение проблемы уменьшает время простоя приложения.
        </li>
        <li>
            <span class="highlight">Сохранение данных:</span> Правильная обработка ошибки помогает избежать потери данных.
        </li>
        <li>
            <span class="highlight">Улучшение стабильности:</span> Оптимизация памяти и мониторинг повышают стабильность приложения.
        </li>
    </ul>

    <h2>Недостатки игнорирования OutOfMemoryError</h2>
    <ul>
        <li>
            <span class="highlight">Потеря данных:</span> Приложение может потерять данные, если не обработать ошибку должным образом.
        </li>
        <li>
            <span class="highlight">Длительный downtime:</span> Игнорирование проблемы может привести к длительному простою приложения.
        </li>
        <li>
            <span class="highlight">Ухудшение пользовательского опыта:</span> Пользователи могут столкнуться с ошибками и замедлением работы приложения.
        </li>
    </ul>
</body>
</html>', 'SYSTEM_DESIGN', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ceee8fbb-3d3b-4736-834c-5652277d0d37', 'Что такое "неблокирующие алгоритмы" и как они реализованы в Java (например, AtomicInteger)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Неблокирующие алгоритмы в Java</title>
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
    <h1>Неблокирующие алгоритмы в Java</h1>
    <p>
        Неблокирующие алгоритмы — это алгоритмы, которые позволяют потокам выполнять операции без блокировки других потоков. Они основаны на атомарных операциях и обеспечивают высокую производительность в многопоточных приложениях. В Java неблокирующие алгоритмы реализованы с использованием классов из пакета <code>java.util.concurrent.atomic</code>, таких как <code>AtomicInteger</code>, <code>AtomicLong</code> и других.
    </p>

    <h2>Основные характеристики неблокирующих алгоритмов</h2>
    <ul>
        <li>
            <span class="highlight">Атомарность:</span>
            <ul>
                <li>Операции выполняются как единое целое, без возможности прерывания другими потоками.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Отсутствие блокировок:</span>
            <ul>
                <li>Потоки не блокируют друг друга, что повышает производительность.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Масштабируемость:</span>
            <ul>
                <li>Неблокирующие алгоритмы лучше масштабируются на многопроцессорных системах.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования AtomicInteger</h2>
    <pre><code>
import java.util.concurrent.atomic.AtomicInteger;

public class AtomicIntegerExample {
    private static AtomicInteger counter = new AtomicInteger(0);

    public static void main(String[] args) {
        // Увеличение значения на 1
        int newValue = counter.incrementAndGet();
        System.out.println("Новое значение: " + newValue);

        // Увеличение значения на заданное число
        int addedValue = counter.addAndGet(5);
        System.out.println("Значение после добавления: " + addedValue);

        // Сравнение и установка значения
        boolean updated = counter.compareAndSet(addedValue, 10);
        System.out.println("Значение обновлено: " + updated + ", текущее значение: " + counter.get());
    }
}
    </code></pre>

    <h2>Основные методы AtomicInteger</h2>
    <ul>
        <li>
            <span class="highlight">incrementAndGet():</span>
            <ul>
                <li>Увеличивает значение на 1 и возвращает новое значение.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">decrementAndGet():</span>
            <ul>
                <li>Уменьшает значение на 1 и возвращает новое значение.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">addAndGet(int delta):</span>
            <ul>
                <li>Добавляет заданное значение и возвращает новое значение.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">compareAndSet(int expect, int update):</span>
            <ul>
                <li>Сравнивает текущее значение с ожидаемым и, если они равны, устанавливает новое значение.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Неблокирующие алгоритмы особенно полезны в высоконагруженных приложениях, где важно минимизировать время блокировки потоков.
        </p>
    </div>

    <h2>Пример неблокирующего стека</h2>
    <pre><code>
import java.util.concurrent.atomic.AtomicReference;

public class NonBlockingStack&lt;T&gt; {
    private static class Node&lt;T&gt; {
        final T value;
        Node&lt;T&gt; next;

        Node(T value) {
            this.value = value;
        }
    }

    private final AtomicReference&lt;Node&lt;T&gt;&gt; top = new AtomicReference&lt;&gt;();

    public void push(T value) {
        Node&lt;T&gt; newHead = new Node&lt;&gt;(value);
        Node&lt;T&gt; oldHead;
        do {
            oldHead = top.get();
            newHead.next = oldHead;
        } while (!top.compareAndSet(oldHead, newHead));
    }

    public T pop() {
        Node&lt;T&gt; oldHead;
        Node&lt;T&gt; newHead;
        do {
            oldHead = top.get();
            if (oldHead == null) {
                return null;
            }
            newHead = oldHead.next;
        } while (!top.compareAndSet(oldHead, newHead));
        return oldHead.value;
    }
}
    </code></pre>

    <h2>Рекомендации по использованию неблокирующих алгоритмов</h2>
    <ul>
        <li>
            <span class="highlight">Используйте атомарные классы:</span> Для простых операций используйте <code>AtomicInteger</code>, <code>AtomicLong</code> и другие атомарные классы.
        </li>
        <li>
            <span class="highlight">Избегайте сложных операций:</span> Неблокирующие алгоритмы сложнее реализовать для сложных структур данных.
        </li>
        <li>
            <span class="highlight">Тестируйте многопоточность:</span> Убедитесь, что ваш код корректно работает в многопоточной среде.
        </li>
        <li>
            <span class="highlight">Используйте CAS (Compare-And-Swap):</span> Для реализации неблокирующих операций используйте метод <code>compareAndSet</code>.
        </li>
    </ul>

    <h2>Преимущества неблокирующих алгоритмов</h2>
    <ul>
        <li>
            <span class="highlight">Высокая производительность:</span> Отсутствие блокировок уменьшает contention (состязание за ресурсы).
        </li>
        <li>
            <span class="highlight">Масштабируемость:</span> Неблокирующие алгоритмы лучше масштабируются на многопроцессорных системах.
        </li>
        <li>
            <span class="highlight">Отсутствие deadlock\'ов:</span> Неблокирующие алгоритмы исключают возможность взаимоблокировок.
        </li>
    </ul>

    <h2>Недостатки неблокирующих алгоритмов</h2>
    <ul>
        <li>
            <span class="highlight">Сложность реализации:</span> Неблокирующие алгоритмы сложнее проектировать и отлаживать.
        </li>
        <li>
            <span class="highlight">Ограниченная применимость:</span> Не все задачи можно эффективно решить с помощью неблокирующих алгоритмов.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('beb8200f-c654-4336-86da-13000fb84c5d', 'Как бы вы реализовали свою собственную реализацию Future или CompletableFuture?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Реализация Future и CompletableFuture</title>
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
    <h1>Реализация Future и CompletableFuture</h1>
    <p>
        <span class="highlight">Future</span> и <span class="highlight">CompletableFuture</span> — это интерфейсы в Java, которые представляют асинхронные вычисления. <code>Future</code> позволяет проверить, завершено ли вычисление, и получить результат, а <code>CompletableFuture</code> предоставляет более гибкие возможности для работы с асинхронными задачами, такие как цепочки вызовов и комбинирование результатов.
    </p>

    <h2>Реализация простого Future</h2>
    <p>
        Простая реализация <code>Future</code> может быть выполнена с использованием <code>Callable</code> и <code>ExecutorService</code>. Вот пример:
    </p>
    <pre><code>
import java.util.concurrent.*;

public class SimpleFuture&lt;T&gt; implements Future&lt;T&gt; {
    private final Callable&lt;T&gt; task;
    private final ExecutorService executor;
    private T result;
    private boolean isDone = false;
    private boolean isCancelled = false;

    public SimpleFuture(Callable&lt;T&gt; task, ExecutorService executor) {
        this.task = task;
        this.executor = executor;
        executor.submit(() -> {
            try {
                result = task.call();
                isDone = true;
            } catch (Exception e) {
                isDone = true;
                throw new RuntimeException(e);
            }
        });
    }

    @Override
    public boolean cancel(boolean mayInterruptIfRunning) {
        if (isDone || isCancelled) {
            return false;
        }
        isCancelled = true;
        executor.shutdownNow();
        return true;
    }

    @Override
    public boolean isCancelled() {
        return isCancelled;
    }

    @Override
    public boolean isDone() {
        return isDone;
    }

    @Override
    public T get() throws InterruptedException, ExecutionException {
        while (!isDone) {
            Thread.sleep(100);
        }
        return result;
    }

    @Override
    public T get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        long endTime = System.currentTimeMillis() + unit.toMillis(timeout);
        while (!isDone && System.currentTimeMillis() < endTime) {
            Thread.sleep(100);
        }
        if (!isDone) {
            throw new TimeoutException();
        }
        return result;
    }
}
    </code></pre>

    <h2>Пример использования SimpleFuture</h2>
    <pre><code>
public class SimpleFutureExample {
    public static void main(String[] args) throws Exception {
        ExecutorService executor = Executors.newSingleThreadExecutor();
        SimpleFuture&lt;String&gt; future = new SimpleFuture&lt;&gt;(() -> {
            Thread.sleep(1000);
            return "Hello, Future!";
        }, executor);

        System.out.println("Результат: " + future.get());
        executor.shutdown();
    }
}
    </code></pre>

    <h2>Реализация CompletableFuture</h2>
    <p>
        <code>CompletableFuture</code> предоставляет более гибкие возможности для работы с асинхронными задачами. Вот пример простой реализации:
    </p>
    <pre><code>
import java.util.concurrent.*;
import java.util.function.*;

public class SimpleCompletableFuture&lt;T&gt; {
    private T result;
    private Throwable exception;
    private boolean isDone = false;
    private final Object lock = new Object();
    private Consumer&lt;T&gt; successCallback;
    private Consumer&lt;Throwable&gt; failureCallback;

    public void complete(T result) {
        synchronized (lock) {
            if (isDone) {
                return;
            }
            this.result = result;
            isDone = true;
            if (successCallback != null) {
                successCallback.accept(result);
            }
            lock.notifyAll();
        }
    }

    public void completeExceptionally(Throwable exception) {
        synchronized (lock) {
            if (isDone) {
                return;
            }
            this.exception = exception;
            isDone = true;
            if (failureCallback != null) {
                failureCallback.accept(exception);
            }
            lock.notifyAll();
        }
    }

    public T get() throws InterruptedException, ExecutionException {
        synchronized (lock) {
            while (!isDone) {
                lock.wait();
            }
            if (exception != null) {
                throw new ExecutionException(exception);
            }
            return result;
        }
    }

    public SimpleCompletableFuture&lt;T&gt; thenAccept(Consumer&lt;T&gt; callback) {
        synchronized (lock) {
            if (isDone) {
                if (exception == null) {
                    callback.accept(result);
                }
            } else {
                successCallback = callback;
            }
        }
        return this;
    }

    public SimpleCompletableFuture&lt;T&gt; exceptionally(Consumer&lt;Throwable&gt; callback) {
        synchronized (lock) {
            if (isDone) {
                if (exception != null) {
                    callback.accept(exception);
                }
            } else {
                failureCallback = callback;
            }
        }
        return this;
    }
}
    </code></pre>

    <h2>Пример использования SimpleCompletableFuture</h2>
    <pre><code>
public class SimpleCompletableFutureExample {
    public static void main(String[] args) throws Exception {
        SimpleCompletableFuture&lt;String&gt; future = new SimpleCompletableFuture&lt;&gt;();

        Executors.newSingleThreadExecutor().submit(() -> {
            try {
                Thread.sleep(1000);
                future.complete("Hello, CompletableFuture!");
            } catch (Exception e) {
                future.completeExceptionally(e);
            }
        });

        future.thenAccept(result -> System.out.println("Результат: " + result))
              .exceptionally(error -> {
                  System.err.println("Ошибка: " + error.getMessage());
                  return null;
              });

        System.out.println("Ожидание завершения...");
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Реализация собственных версий <code>Future</code> и <code>CompletableFuture</code> может быть полезной для обучения, но для production-кода рекомендуется использовать стандартные реализации из <code>java.util.concurrent</code>.
        </p>
    </div>

    <h2>Рекомендации по реализации Future и CompletableFuture</h2>
    <ul>
        <li>
            <span class="highlight">Используйте стандартные реализации:</span> Для большинства задач используйте <code>Future</code> и <code>CompletableFuture</code> из стандартной библиотеки.
        </li>
        <li>
            <span class="highlight">Обрабатывайте исключения:</span> Убедитесь, что ваша реализация корректно обрабатывает исключения.
        </li>
        <li>
            <span class="highlight">Тестируйте многопоточность:</span> Убедитесь, что ваша реализация корректно работает в многопоточной среде.
        </li>
        <li>
            <span class="highlight">Оптимизируйте производительность:</span> Убедитесь, что ваша реализация эффективно использует ресурсы.
        </li>
    </ul>

    <h2>Преимущества стандартных реализаций</h2>
    <ul>
        <li>
            <span class="highlight">Надёжность:</span> Стандартные реализации тщательно протестированы и оптимизированы.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> <code>CompletableFuture</code> предоставляет мощные возможности для работы с асинхронными задачами.
        </li>
        <li>
            <span class="highlight">Поддержка:</span> Стандартные реализации поддерживаются и обновляются разработчиками Java.
        </li>
    </ul>

    <h2>Недостатки собственных реализаций</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span> Реализация собственных версий может быть сложной и подверженной ошибкам.
        </li>
        <li>
            <span class="highlight">Ограниченная функциональность:</span> Собственные реализации могут не поддерживать все возможности стандартных классов.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a23a9cc0-4d93-4fd0-a92a-a5349f0c8f42', 'Что такое "паттерн Circuit Breaker" и как его можно реализовать в Java?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн Circuit Breaker</title>
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
    <h1>Паттерн Circuit Breaker</h1>
    <p>
        Паттерн <span class="highlight">Circuit Breaker</span> (автоматический выключатель) — это шаблон проектирования, который используется для предотвращения каскадных сбоев в распределённых системах. Он отслеживает количество ошибок при вызове внешнего сервиса и, при превышении порога, временно блокирует вызовы, чтобы дать сервису время на восстановление.
    </p>

    <h2>Основные состояния Circuit Breaker</h2>
    <ul>
        <li>
            <span class="highlight">Закрыто (Closed):</span>
            <ul>
                <li>Вызовы сервиса выполняются как обычно.</li>
                <li>Если количество ошибок превышает порог, Circuit Breaker переходит в состояние "Открыто".</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Открыто (Open):</span>
            <ul>
                <li>Вызовы сервиса блокируются, и сразу возвращается ошибка.</li>
                <li>Через определённое время Circuit Breaker переходит в состояние "Полуоткрыто".</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Полуоткрыто (Half-Open):</span>
            <ul>
                <li>Разрешается ограниченное количество вызовов для проверки восстановления сервиса.</li>
                <li>Если вызовы успешны, Circuit Breaker переходит в состояние "Закрыто".</li>
                <li>Если вызовы завершаются ошибкой, Circuit Breaker возвращается в состояние "Открыто".</li>
            </ul>
        </li>
    </ul>

    <h2>Пример реализации Circuit Breaker на Java</h2>
    <pre><code>
public class CircuitBreaker {
    private enum State {
        CLOSED, OPEN, HALF_OPEN
    }

    private State state = State.CLOSED;
    private int failureCount = 0;
    private final int failureThreshold;
    private final long timeout;
    private long lastFailureTime;

    public CircuitBreaker(int failureThreshold, long timeout) {
        this.failureThreshold = failureThreshold;
        this.timeout = timeout;
    }

    public void execute(Runnable task) {
        if (state == State.OPEN && System.currentTimeMillis() - lastFailureTime < timeout) {
            throw new RuntimeException("Circuit Breaker is open");
        }

        if (state == State.OPEN) {
            state = State.HALF_OPEN;
        }

        try {
            task.run();
            if (state == State.HALF_OPEN) {
                state = State.CLOSED;
                failureCount = 0;
            }
        } catch (Exception e) {
            handleFailure();
            throw e;
        }
    }

    private void handleFailure() {
        failureCount++;
        if (failureCount >= failureThreshold) {
            state = State.OPEN;
            lastFailureTime = System.currentTimeMillis();
        }
    }

    public State getState() {
        return state;
    }
}
    </code></pre>

    <h2>Пример использования Circuit Breaker</h2>
    <pre><code>
public class CircuitBreakerExample {
    public static void main(String[] args) {
        CircuitBreaker circuitBreaker = new CircuitBreaker(3, 5000);

        for (int i = 0; i < 10; i++) {
            try {
                circuitBreaker.execute(() -> {
                    // Имитация вызова сервиса
                    if (Math.random() > 0.5) {
                        throw new RuntimeException("Service failure");
                    }
                    System.out.println("Service call successful");
                });
            } catch (Exception e) {
                System.out.println("Error: " + e.getMessage());
            }

            System.out.println("Circuit Breaker state: " + circuitBreaker.getState());
        }
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн Circuit Breaker помогает предотвратить каскадные сбои и даёт возможность сервису восстановиться после сбоев. Однако, его реализация требует тщательной настройки параметров, таких как порог ошибок и время ожидания.
        </p>
    </div>

    <h2>Рекомендации по реализации Circuit Breaker</h2>
    <ul>
        <li>
            <span class="highlight">Настройте параметры:</span> Выберите подходящие значения для порога ошибок и времени ожидания.
        </li>
        <li>
            <span class="highlight">Мониторинг и логирование:</span> Логируйте изменения состояния Circuit Breaker для анализа и отладки.
        </li>
        <li>
            <span class="highlight">Тестируйте сценарии сбоев:</span> Убедитесь, что Circuit Breaker корректно обрабатывает различные сценарии сбоев.
        </li>
        <li>
            <span class="highlight">Используйте готовые библиотеки:</span> Для production-кода рекомендуется использовать готовые реализации, такие как <code>Resilience4j</code> или <code>Hystrix</code>.
        </li>
    </ul>

    <h2>Пример использования Resilience4j</h2>
    <pre><code>
import io.github.resilience4j.circuitbreaker.CircuitBreaker;
import io.github.resilience4j.circuitbreaker.CircuitBreakerConfig;
import io.github.resilience4j.circuitbreaker.CircuitBreakerRegistry;

public class Resilience4jExample {
    public static void main(String[] args) {
        CircuitBreakerConfig config = CircuitBreakerConfig.custom()
            .failureRateThreshold(50)
            .waitDurationInOpenState(Duration.ofMillis(1000))
            .build();

        CircuitBreakerRegistry registry = CircuitBreakerRegistry.of(config);
        CircuitBreaker circuitBreaker = registry.circuitBreaker("myService");

        for (int i = 0; i < 10; i++) {
            try {
                String result = circuitBreaker.executeSupplier(() -> {
                    if (Math.random() > 0.5) {
                        throw new RuntimeException("Service failure");
                    }
                    return "Service call successful";
                });
                System.out.println(result);
            } catch (Exception e) {
                System.out.println("Error: " + e.getMessage());
            }

            System.out.println("Circuit Breaker state: " + circuitBreaker.getState());
        }
    }
}
    </code></pre>

    <h2>Преимущества Circuit Breaker</h2>
    <ul>
        <li>
            <span class="highlight">Предотвращение каскадных сбоев:</span> Circuit Breaker блокирует вызовы к неработающему сервису, предотвращая распространение сбоев.
        </li>
        <li>
            <span class="highlight">Восстановление сервиса:</span> Сервису даётся время на восстановление, что повышает общую надёжность системы.
        </li>
        <li>
            <span class="highlight">Улучшение отказоустойчивости:</span> Circuit Breaker делает систему более устойчивой к сбоям.
        </li>
    </ul>

    <h2>Недостатки Circuit Breaker</h2>
    <ul>
        <li>
            <span class="highlight">Сложность настройки:</span> Неправильная настройка параметров может привести к неэффективной работе.
        </li>
        <li>
            <span class="highlight">Ложные срабатывания:</span> Circuit Breaker может ошибочно блокировать вызовы, если порог ошибок установлен слишком низко.
        </li>
    </ul>
</body>
</html>', 'OTHER', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('80094236-cb17-4337-9539-9a969152717a', 'Какие  две основных реализации Hash Map', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Реализация HashMap: метод цепочек и открытая адресация</title>
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
    <h1>Реализация HashMap: метод цепочек и открытая адресация</h1>
    <p>
        В Java <code>HashMap</code> реализован с использованием метода цепочек. Это одна из двух основных реализаций хеш-таблиц, описанных Кнутом и Корменом. Рассмотрим, почему был выбран именно этот подход, а также плюсы и минусы каждого метода.
    </p>

    <h2>Метод цепочек</h2>
    <ul>
        <li>
            <span class="highlight">Реализация:</span>
            <ul>
                <li>Каждой ячейке массива (корзине) соответствует связный список.</li>
                <li>При возникновении коллизии (когда два ключа попадают в одну корзину) новый элемент добавляется в связный список.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Коэффициент заполнения может быть больше 1, что позволяет хранить больше элементов, чем размер массива.</li>
                <li>Подходит для случаев, когда количество элементов заранее неизвестно или может быть очень большим.</li>
                <li>Простота реализации удаления элементов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>С увеличением числа элементов производительность убывает линейно.</li>
                <li>Требуется дополнительная память для хранения связных списков.</li>
            </ul>
        </li>
    </ul>

    <h2>Метод открытой адресации</h2>
    <ul>
        <li>
            <span class="highlight">Реализация:</span>
            <ul>
                <li>Все элементы хранятся в самом массиве.</li>
                <li>При возникновении коллизии используется один из методов поиска свободной ячейки:
                    <ul>
                        <li>Линейное пробирование.</li>
                        <li>Квадратичное пробирование.</li>
                        <li>Двойное хеширование.</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Отсутствие затрат на создание и хранение объектов списка.</li>
                <li>Простота организации сериализации/десериализации.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Количество элементов не может превышать размера массива.</li>
                <li>При высоком коэффициенте заполнения производительность резко падает, требуется перехеширование.</li>
                <li>Сложность организации удаления элементов.</li>
                <li>Проблема первичной и вторичной группировок (для линейного и квадратичного пробирования).</li>
            </ul>
        </li>
    </ul>

    <h2>Почему выбран метод цепочек?</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span>
            <ul>
                <li>Метод цепочек позволяет хранить больше элементов, чем размер массива, что делает его более гибким.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Простота удаления:</span>
            <ul>
                <li>Удаление элементов в методе цепочек реализовано проще, чем в методе открытой адресации.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Стабильная производительность:</span>
            <ul>
                <li>Метод цепочек обеспечивает более стабильную производительность при увеличении числа элементов.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>HashMap</code> использует метод цепочек, так как он обеспечивает гибкость, простоту удаления элементов и стабильную производительность. Метод открытой адресации, хотя и экономит память, имеет ограничения по количеству элементов и сложности удаления.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1fa16679-8076-4db7-ae56-b30c79fa091c', 'В WeakHashMap используются WeakReferences. А почему бы не создать  SoftHashMap на SoftReferences?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему не используется SoftHashMap</title>
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
    <h1>Почему не используется SoftHashMap</h1>
    <p>
        В Java существует <code>WeakHashMap</code>, который использует слабые ссылки (<code>WeakReference</code>) для хранения ключей. Однако аналогичная структура данных на основе мягких ссылок (<code>SoftReference</code>) – <code>SoftHashMap</code> – не входит в стандартную библиотеку Java. Тем не менее, такие реализации существуют в сторонних библиотеках, например, в Apache Commons.
    </p>

    <h2>Разница между WeakReference и SoftReference</h2>
    <ul>
        <li>
            <span class="highlight">WeakReference:</span>
            <ul>
                <li>Объекты, на которые ссылаются только слабые ссылки, удаляются сборщиком мусора при первой же возможности.</li>
                <li>Используются в <code>WeakHashMap</code> для автоматического удаления записей при удалении ключей.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">SoftReference:</span>
            <ul>
                <li>Объекты, на которые ссылаются только мягкие ссылки, удаляются сборщиком мусора только при нехватке памяти.</li>
                <li>Мягкие ссылки полезны для реализации кэшей, где данные могут быть удалены при нехватке памяти, но сохраняются в остальное время.</li>
            </ul>
        </li>
    </ul>

    <h2>Почему SoftHashMap не входит в стандартную библиотеку?</h2>
    <ul>
        <li>
            <span class="highlight">Специфика использования:</span>
            <ul>
                <li><code>WeakHashMap</code> используется для управления временными данными, которые должны быть удалены сразу после потери сильных ссылок.</li>
                <li><code>SoftHashMap</code> более подходит для кэширования, где данные могут быть удалены только при нехватке памяти.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Реализация в сторонних библиотеках:</span>
            <ul>
                <li>Реализации <code>SoftHashMap</code> доступны в сторонних библиотеках, таких как Apache Commons.</li>
                <li>Это позволяет разработчикам использовать <code>SoftHashMap</code> в случаях, когда это необходимо, без включения в стандартную библиотеку.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования SoftHashMap</h2>
    <pre>
<code>
// Пример использования SoftHashMap из Apache Commons
SoftHashMap&lt;Object, String&gt; softHashMap = new SoftHashMap&lt;&gt;();
Object key = new Object();
softHashMap.put(key, "Value");

System.out.println(softHashMap.get(key)); // Выведет "Value"

key = null; // Удаляем сильную ссылку на ключ
System.gc(); // Вызов сборщика мусора

// Запись может быть удалена только при нехватке памяти
System.out.println(softHashMap.isEmpty()); // Может вывести false
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Ключ <code>key</code> хранится в <code>SoftHashMap</code> как мягкая ссылка.</li>
        <li>Запись может быть удалена только при нехватке памяти, в отличие от <code>WeakHashMap</code>, где запись удаляется сразу после потери сильных ссылок.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>SoftHashMap</code> полезен для реализации кэшей, где данные могут быть удалены только при нехватке памяти. Хотя он не входит в стандартную библиотеку Java, его можно найти в сторонних библиотеках, таких как Apache Commons.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1835c00a-fbdb-4cf4-be62-5fe7b3d9d4ea', 'Расскажите про нововведения Spring 5', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Нововведения Spring 5</title>
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
    <h1>Нововведения Spring 5</h1>
    <p>
        Spring Framework 5 представляет собой значительное обновление, которое привносит множество новых функций и улучшений. В этой статье мы рассмотрим ключевые нововведения Spring 5, включая поддержку современных технологий, реактивное программирование и улучшения в тестировании.
    </p>

    <h2>Основные нововведения Spring 5</h2>
    <p>
        Spring 5 ориентирован на современные технологии и требования разработки. Вот основные изменения и нововведения:
    </p>

    <h3>1. Поддержка JDK 8+</h3>
    <p>
        Spring 5 требует JDK 8 или выше. Это позволяет использовать современные функции Java, такие как:
    </p>
    <ul>
        <li><code>Optional</code>: Для работы с nullable-значениями.</li>
        <li><code>CompletableFuture</code>: Для асинхронного программирования.</li>
        <li><code>Time API</code>: Новый API для работы с датами и временем.</li>
        <li><code>java.util.function</code>: Функциональные интерфейсы для лямбда-выражений.</li>
        <li><code>default methods</code>: Методы по умолчанию в интерфейсах.</li>
    </ul>

    <h3>2. Поддержка Java 9</h3>
    <p>
        Spring 5 поддерживает Java 9, включая модульную систему (Jigsaw). В Spring 5 добавлены:
    </p>
    <ul>
        <li><code>Automatic-Module-Name</code>: Для совместимости с модулями Java 9.</li>
        <li>Поддержка <code>module-info</code> в Spring 6 и выше.</li>
        <li>Обновление ASM до версии 6 для работы с новыми функциями Java.</li>
    </ul>

    <h3>3. Поддержка HTTP/2</h3>
    <p>
        Spring 5 добавляет поддержку HTTP/2, включая:
    </p>
    <ul>
        <li><strong>TLS</strong>: Для безопасного соединения.</li>
        <li><strong>Server Push</strong>: Для отправки ресурсов клиенту до их запроса.</li>
        <li>Поддержка NIO/NIO.2 для асинхронной обработки запросов.</li>
    </ul>

    <h3>4. Поддержка Kotlin</h3>
    <p>
        Spring 5 предоставляет встроенную поддержку Kotlin, включая:
    </p>
    <ul>
        <li>Функции расширения для Spring API.</li>
        <li>Поддержка null-safety в Kotlin.</li>
        <li>Упрощённая конфигурация с использованием DSL (Domain Specific Language).</li>
    </ul>

    <h3>5. Реактивное программирование</h3>
    <p>
        Spring 5 вводит реактивный стек <strong>Spring WebFlux</strong>, который позволяет создавать неблокирующие, асинхронные веб-приложения. Основные компоненты:
    </p>
    <ul>
        <li><strong>Reactive Streams</strong>: Поддержка реактивных потоков данных.</li>
        <li><strong>WebFlux</strong>: Альтернатива Spring MVC для реактивных приложений.</li>
        <li><strong>Reactive Repositories</strong>: Поддержка реактивных репозиториев в Spring Data.</li>
    </ul>

    <h3>6. Null-safety аннотации</h3>
    <p>
        Spring 5 добавляет аннотации для улучшения null-safety:
    </p>
    <ul>
        <li><code>@Nullable</code>: Указывает, что параметр, возвращаемое значение или поле может быть <code>null</code>.</li>
        <li><code>@NonNull</code>: Указывает, что параметр, возвращаемое значение или поле не может быть <code>null</code>.</li>
        <li>Новая документация с акцентом на null-safety.</li>
    </ul>

    <h3>7. Совместимость с Java EE 8</h3>
    <p>
        Spring 5 поддерживает последние версии стандартов Java EE:
    </p>
    <ul>
        <li><strong>Servlet 4.0</strong>: Поддержка новых функций, таких как HTTP/2.</li>
        <li><strong>Bean Validation 2.0</strong>: Улучшенная поддержка валидации данных.</li>
        <li><strong>JPA 2.2</strong>: Поддержка новых функций JPA.</li>
        <li><strong>JSON Binding API 1.0</strong>: Упрощённая работа с JSON.</li>
    </ul>

    <h3>8. Поддержка JUnit 5</h3>
    <p>
        Spring 5 полностью поддерживает JUnit 5, включая:
    </p>
    <ul>
        <li><strong>Условные тесты</strong>: Тесты, которые выполняются только при определённых условиях.</li>
        <li><strong>Параллельное выполнение тестов</strong>: Ускорение выполнения тестов за счёт параллелизма.</li>
        <li>Улучшения в тестировании Spring-приложений.</li>
    </ul>

    <h3>9. Удаление устаревших технологий</h3>
    <p>
        Spring 5 удаляет поддержку устаревших технологий, таких как:
    </p>
    <ul>
        <li><strong>Portlet</strong>: Устаревшая технология для порталов.</li>
        <li><strong>Velocity</strong>: Шаблонизатор, заменённый на Thymeleaf и FreeMarker.</li>
        <li><strong>JasperReports</strong>: Устаревшая библиотека для генерации отчётов.</li>
        <li><strong>XMLBeans</strong>: Устаревшая библиотека для работы с XML.</li>
        <li><strong>JDO</strong>: Устаревшая технология для доступа к данным.</li>
        <li><strong>Guava</strong>: Устаревшая библиотека, заменённая на стандартные функции Java.</li>
    </ul>

    <h2>Преимущества Spring 5</h2>
    <ul>
        <li>
            <span class="highlight">Современные технологии:</span> Поддержка JDK 8+, Java 9, HTTP/2 и Kotlin.
        </li>
        <li>
            <span class="highlight">Реактивное программирование:</span> Возможность создавать неблокирующие, асинхронные приложения.
        </li>
        <li>
            <span class="highlight">Улучшенное тестирование:</span> Поддержка JUnit 5 и улучшения в тестировании.
        </li>
        <li>
            <span class="highlight">Null-safety:</span> Аннотации для улучшения безопасности и читаемости кода.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Требования к JDK:</span> Spring 5 требует JDK 8 или выше, что может быть ограничением для старых проектов.
        </li>
        <li>
            <span class="highlight">Удаление устаревших технологий:</span> Некоторые проекты могут потребовать миграции с устаревших технологий.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring 5 представляет собой значительный шаг вперёд, предлагая поддержку современных технологий и улучшения для разработчиков. Однако переход на Spring 5 может потребовать обновления JDK и миграции с устаревших технологий.
        </p>
    </div>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e60224bd-2a39-4932-9426-af40372e2a61', 'Что такое синхронизация? Какие способы синхронизации существуют в  Java?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Синхронизация в Java</title>
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
    <h1>Синхронизация в Java</h1>
    <p>
        Синхронизация — это процесс, который позволяет управлять доступом нескольких потоков к общим ресурсам,
        предотвращая повреждение состояния объекта и обеспечивая корректную работу в многопоточной среде.
    </p>

    <h2>Что такое синхронизация?</h2>
    <ul>
        <li>
            <span class="highlight">Синхронизация:</span> Это механизм, который позволяет выполнять потоки параллельно,
            но при этом контролировать доступ к критическим участкам кода. В Java каждый объект
            имеет встроенную блокировку, благодаря которой только один поток может получить
            доступ к критическому коду в объекте одновременно.
        </li>
    </ul>

    <h2>Способы синхронизации в Java</h2>
    <ul>
        <li>
            <span class="highlight">1. Системная синхронизация с использованием <code>wait()</code>/<code>notify()</code>:</span>
            <ul>
                <li>
                    Поток, который ожидает выполнения определённых условий, вызывает метод <code>wait()</code>
                    у объекта, предварительно захватив его монитор. Это приостанавливает выполнение потока.
                </li>
                <li>
                    Другой поток может вызвать метод <code>notify()</code> на том же объекте, чтобы "разбудить"
                    ожидающий поток. Оба метода требуют захвата монитора через <code>synchronized</code> блок,
                    так как сами по себе они не синхронизированы.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">2. Системная синхронизация с использованием <code>join()</code>:</span>
            <ul>
                <li>
                    Метод <code>join()</code>, вызванный у экземпляра класса <code>Thread</code>, позволяет текущему потоку
                    остановиться до тех пор, пока поток, связанный с этим экземпляром, не завершит свою работу.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">3. Использование классов из пакета <code>java.util.concurrent.locks</code>:</span>
            <ul>
                <li>
                    Это альтернативные механизмы синхронизации, такие как <code>Lock</code>, <code>Condition</code> и
                    <code>ReadWriteLock</code>. Они предоставляют более гибкие и мощные средства для управления
                    потоками по сравнению с базовыми <code>synchronized</code>, <code>wait</code>, <code>notify</code> и <code>notifyAll</code>.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Синхронизация в Java помогает избежать состояния гонки (race condition) и
            обеспечивает безопасность потоков при работе с общими ресурсами.
        </p>
    </div>

    <h2>Примеры использования синхронизации</h2>
    <ul>
        <li>
            <code>synchronized методы и блоки:</code> Обеспечивают доступ к критическому коду только одному потоку одновременно.
        </li>
        <li>
            <code>wait()/notify():</code> Используются для координации потоков, ожидающих определённых условий.
        </li>
        <li>
            <code>Lock и Condition:</code> Предоставляют более гибкие механизмы для управления блокировками и ожиданием.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fc7d96af-4a0e-4501-a6cd-d34382d6f11a', 'Что такое «шаблон проектирования»?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое шаблон проектирования?</title>
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
    <h1>Что такое шаблон проектирования?</h1>
    <p>
        <strong>Шаблон проектирования</strong> — это проверенное и готовое к использованию логическое решение, которое помогает решать типичные задачи в разработке программного обеспечения. Шаблоны проектирования предоставляют стандартные подходы к решению проблем, которые могут быть реализованы по-разному в зависимости от языка программирования и контекста.
    </p>

    <h2>Основные характеристики шаблонов проектирования</h2>
    <ul>
        <li>
            <span class="highlight">Повторное использование:</span> Шаблоны проектирования позволяют использовать готовые решения для типичных задач, что ускоряет разработку.
        </li>
        <li>
            <span class="highlight">Абстракция:</span> Шаблоны предоставляют высокоуровневые абстракции, которые упрощают понимание и проектирование сложных систем.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Шаблоны проектирования могут быть адаптированы под конкретные требования проекта.
        </li>
    </ul>

    <h2>Плюсы использования шаблонов проектирования</h2>
    <ul>
        <li>
            <span class="highlight">Снижение сложности разработки:</span> Шаблоны предоставляют готовые решения для типичных задач, что уменьшает сложность проектирования и реализации.
        </li>
        <li>
            <span class="highlight">Улучшение коммуникации:</span> Использование шаблонов позволяет разработчикам быстрее понимать архитектуру и логику программы, так как они основаны на общепринятых концепциях.
        </li>
        <li>
            <span class="highlight">Повышение качества кода:</span> Шаблоны проектирования способствуют созданию более структурированного, поддерживаемого и масштабируемого кода.
        </li>
    </ul>

    <h2>Минусы использования шаблонов проектирования</h2>
    <ul>
        <li>
            <span class="highlight">Слепое следование шаблонам:</span> Использование шаблонов без понимания их назначения и контекста может привести к усложнению программы и снижению её эффективности.
        </li>
        <li>
            <span class="highlight">Избыточность:</span> Применение шаблонов в ситуациях, где они не нужны, может привести к избыточному коду и снижению производительности.
        </li>
        <li>
            <span class="highlight">Ограниченная гибкость:</span> Некоторые шаблоны могут ограничивать гибкость системы, если используются неправильно или в неподходящем контексте.
        </li>
    </ul>

    <h2>Примеры популярных шаблонов проектирования</h2>
    <p>
        Вот несколько примеров популярных шаблонов проектирования:
    </p>
    <ul>
        <li>
            <span class="highlight">Singleton (Одиночка):</span> Гарантирует, что у класса есть только один экземпляр, и предоставляет глобальную точку доступа к нему.
        </li>
        <li>
            <span class="highlight">Factory Method (Фабричный метод):</span> Определяет интерфейс для создания объекта, но позволяет подклассам изменять тип создаваемого объекта.
        </li>
        <li>
            <span class="highlight">Observer (Наблюдатель):</span> Определяет зависимость "один ко многим" между объектами, чтобы при изменении состояния одного объекта все зависящие от него объекты автоматически уведомлялись.
        </li>
        <li>
            <span class="highlight">Decorator (Декоратор):</span> Позволяет динамически добавлять объектам новую функциональность, оборачивая их в объекты-декораторы.
        </li>
    </ul>

    <h2>Когда использовать шаблоны проектирования?</h2>
    <p>
        Шаблоны проектирования следует использовать в следующих случаях:
    </p>
    <ul>
        <li>
            <span class="highlight">Типичные задачи:</span> Если задача является типичной и имеет стандартное решение, использование шаблона может ускорить разработку.
        </li>
        <li>
            <span class="highlight">Сложные системы:</span> В сложных системах шаблоны помогают структурировать код и упростить его понимание.
        </li>
        <li>
            <span class="highlight">Командная разработка:</span> Шаблоны улучшают коммуникацию между разработчиками, так как они основаны на общепринятых концепциях.
        </li>
    </ul>

    <h2>Когда не стоит использовать шаблоны проектирования?</h2>
    <p>
        Шаблоны проектирования не следует использовать, если:
    </p>
    <ul>
        <li>
            <span class="highlight">Задача простая:</span> Для простых задач использование шаблонов может привести к избыточному коду.
        </li>
        <li>
            <span class="highlight">Нет понимания шаблона:</span> Использование шаблона без понимания его назначения может усложнить код.
        </li>
        <li>
            <span class="highlight">Шаблон не подходит:</span> Если шаблон не соответствует требованиям задачи, его использование может ухудшить архитектуру системы.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Шаблоны проектирования — это мощный инструмент, который помогает решать типичные задачи в разработке программного обеспечения. Однако их следует использовать с умом, чтобы избежать избыточности и усложнения кода.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d98145a3-59f4-49b6-8a96-9ccbcb2b478d', 'Назовите основные характеристики шаблонов', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Основные характеристики шаблонов проектирования</title>
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
    <h1>Основные характеристики шаблонов проектирования</h1>
    <p>
        Шаблоны проектирования — это проверенные решения для типичных задач в разработке программного обеспечения. Каждый шаблон имеет определённые характеристики, которые помогают понять его назначение, применение и реализацию. В этой статье мы рассмотрим основные характеристики шаблонов проектирования.
    </p>

    <h2>Основные характеристики шаблонов</h2>
    <p>
        Шаблоны проектирования описываются с помощью следующих характеристик:
    </p>

    <h3>1. Имя шаблона</h3>
    <p>
        Каждый шаблон имеет уникальное имя, которое служит для его идентификации. Имя шаблона помогает разработчикам быстро понять, о каком шаблоне идёт речь, и использовать его в коммуникации.
    </p>
    <ul>
        <li><strong>Пример:</strong> Singleton, Factory Method, Observer.</li>
    </ul>

    <h3>2. Назначение шаблона</h3>
    <p>
        Назначение шаблона описывает, для чего он используется и какие проблемы помогает решить. Это помогает разработчикам понять, подходит ли шаблон для их задачи.
    </p>
    <ul>
        <li><strong>Пример:</strong> Singleton используется для создания единственного экземпляра класса.</li>
    </ul>

    <h3>3. Задача, которую решает шаблон</h3>
    <p>
        Шаблон проектирования решает определённую задачу, которая часто возникает в разработке программного обеспечения. Описание задачи помогает понять, в каких ситуациях следует применять шаблон.
    </p>
    <ul>
        <li><strong>Пример:</strong> Задача Singleton — обеспечить, чтобы у класса был только один экземпляр.</li>
    </ul>

    <h3>4. Способ решения</h3>
    <p>
        Шаблон предлагает конкретный способ решения задачи. Это описание того, как шаблон работает и какие шаги необходимо выполнить для его реализации.
    </p>
    <ul>
        <li><strong>Пример:</strong> Singleton решает задачу, скрывая конструктор и предоставляя статический метод для получения экземпляра.</li>
    </ul>

    <h3>5. Участники</h3>
    <p>
        Участники — это сущности (классы, объекты, интерфейсы), которые принимают участие в реализации шаблона. Описание участников помогает понять, какие компоненты системы задействованы.
    </p>
    <ul>
        <li><strong>Пример:</strong> В шаблоне Observer участниками являются Subject (наблюдаемый объект) и Observer (наблюдатель).</li>
    </ul>

    <h3>6. Следствия от использования шаблона</h3>
    <p>
        Следствия описывают результаты применения шаблона, включая преимущества и возможные недостатки. Это помогает разработчикам оценить, подходит ли шаблон для их задачи.
    </p>
    <ul>
        <li><strong>Пример:</strong> Singleton обеспечивает глобальный доступ к экземпляру, но может затруднить тестирование.</li>
    </ul>

    <h3>7. Реализация</h3>
    <p>
        Реализация описывает возможный вариант кода или структуры, которая используется для реализации шаблона. Это помогает разработчикам понять, как применить шаблон на практике.
    </p>
    <ul>
        <li><strong>Пример:</strong> Реализация Singleton может включать приватный конструктор и статический метод для получения экземпляра.</li>
    </ul>

    <h2>Пример описания шаблона Singleton</h2>
    <p>
        Рассмотрим пример описания шаблона Singleton с использованием перечисленных характеристик:
    </p>
    <ul>
        <li>
            <span class="highlight">Имя:</span> Singleton (Одиночка).
        </li>
        <li>
            <span class="highlight">Назначение:</span> Обеспечивает создание единственного экземпляра класса.
        </li>
        <li>
            <span class="highlight">Задача:</span> Гарантировать, что у класса есть только один экземпляр, и предоставить глобальную точку доступа к нему.
        </li>
        <li>
            <span class="highlight">Способ решения:</span> Скрыть конструктор класса и предоставить статический метод для получения экземпляра.
        </li>
        <li>
            <span class="highlight">Участники:</span> Класс, который реализует Singleton.
        </li>
        <li>
            <span class="highlight">Следствия:</span> Глобальный доступ к экземпляру, но возможные проблемы с тестированием и многопоточностью.
        </li>
        <li>
            <span class="highlight">Реализация:</span>
            <pre><code>public class Singleton {
    private static Singleton instance;

    private Singleton() {}

    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
}</code></pre>
        </li>
    </ul>

    <h2>Преимущества использования характеристик шаблонов</h2>
    <ul>
        <li>
            <span class="highlight">Упрощение понимания:</span> Характеристики шаблонов помогают разработчикам быстро понять их назначение и применение.
        </li>
        <li>
            <span class="highlight">Улучшение коммуникации:</span> Использование стандартных характеристик упрощает обсуждение шаблонов в команде.
        </li>
        <li>
            <span class="highlight">Повышение качества кода:</span> Понимание характеристик шаблонов помогает выбрать подходящее решение для задачи.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Характеристики шаблонов проектирования — это ключевой инструмент для понимания и применения шаблонов в разработке программного обеспечения. Они помогают разработчикам выбирать подходящие решения и избегать ошибок.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('353a3a53-5707-460f-ad05-a9a8876e163a', 'Как правильно остановить поток? Для чего нужны методы stop(), interrupt(),  interrupted(), isInterrupted()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Остановка потока в Java</title>
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
    <h1>Остановка потока в Java</h1>
    <p>
        Остановка потока в Java требует аккуратного подхода, чтобы избежать проблем, таких как взаимные блокировки или
        повреждение данных. В Java принят уведомительный порядок остановки потока, а методы <code>stop()</code>,
        <code>suspend()</code> и <code>resume()</code> помечены как устаревшие (<code>deprecated</code>) из-за их потенциальных рисков.
    </p>

    <h2>Как правильно остановить поток?</h2>
    <ul>
        <li>
            <span class="highlight">Метод interrupt():</span>
            <ul>
                <li>
                    Метод <code>interrupt()</code> выставляет внутренний флаг-статус прерывания потока.
                </li>
                <li>
                    Если поток находится в состоянии ожидания (<code>wait()</code>) или спячки (<code>sleep()</code>), метод <code>interrupt()</code>
                    прерывает это состояние и выбрасывает исключение <code>InterruptedException</code>.
                </li>
                <li>
                    Флаг прерывания можно проверить с помощью методов <code>isInterrupted()</code> или <code>Thread.interrupted()</code>.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Схема остановки потока:</span>
            <ul>
                <li>
                    Реализовать поток с периодической проверкой статуса прерывания через <code>isInterrupted()</code>.
                </li>
                <li>
                    Если флаг прерывания установлен или выброшено исключение <code>InterruptedException</code>, принять
                    решение о завершении работы потока.
                </li>
                <li>
                    Освободить заблокированные ресурсы и завершить выполнение.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Проблемы и решения</h2>
    <ul>
        <li>
            <span class="highlight">Блокировки на потоковом вводе-выводе:</span>
            <ul>
                <li>
                    Если поток заблокирован на чтении данных (например, из файла или сети), вызов <code>interrupt()</code>
                    не выведет его из этого состояния.
                </li>
                <li>
                    Решение: Использовать неблокирующий ввод-вывод (Java NIO) или дождаться завершения операции.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Собственный аналог interrupt():</span>
            <ul>
                <li>
                    Можно объявить в классе потока флаги для остановки и приостановки, управляемые извне.
                </li>
                <li>
                    Недостатки:
                    <ul>
                        <li>Потоки в состоянии ожидания не могут быть "оживлены".</li>
                        <li>Флаги могут быть не сразу видны другим потокам из-за кэширования данных.</li>
                    </ul>
                </li>
                <li>
                    Решение: Использовать переменную-флаг с модификатором <code>volatile</code> для обеспечения видимости изменений.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Методы для работы с прерыванием</h2>
    <ul>
        <li>
            <span class="highlight">interrupt():</span> Устанавливает флаг прерывания потока.
        </li>
        <li>
            <span class="highlight">isInterrupted():</span> Проверяет, установлен ли флаг прерывания у потока.
        </li>
        <li>
            <span class="highlight">Thread.interrupted():</span> Проверяет и сбрасывает флаг прерывания для текущего потока.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Метод <code>stop()</code> устарел и не должен использоваться, так как он может привести к
                    повреждению данных и взаимным блокировкам.
                </li>
                <li>
                    Используйте <code>interrupt()</code> и проверку флага прерывания для корректной остановки потоков.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример корректной остановки потока</h2>
    <ul>
        <li>
            <code>Thread thread = new Thread(() -> { while (!Thread.currentThread().isInterrupted()) { ... } });</code> —
            поток с проверкой флага прерывания.
        </li>
        <li>
            <code>thread.interrupt();</code> — установка флага прерывания.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('101c5156-0e4b-4126-9d14-eaa809928bc8', 'Почему не рекомендуется использовать метод Thread.stop()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему не рекомендуется использовать Thread.stop()</title>
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
    <h1>Почему не рекомендуется использовать Thread.stop()?</h1>
    <p>
        Метод <code>Thread.stop()</code> в Java помечен как устаревший (<code>deprecated</code>) из-за его потенциально опасного поведения.
        Его использование может привести к неожиданным проблемам, таким как повреждение данных, утечка ресурсов и нарушение
        консистентности системы.
    </p>

    <h2>Основные проблемы метода Thread.stop()</h2>
    <ul>
        <li>
            <span class="highlight">Недетерминированная остановка:</span>
            <ul>
                <li>
                    Метод <code>stop()</code> принудительно останавливает поток в произвольном месте выполнения, что может
                    привести к неопределённому состоянию программы.
                </li>
                <li>
                    Поток может быть остановлен в момент работы с разделяемыми ресурсами, что приведёт к их
                    повреждению или утечке.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Проблемы с ресурсами:</span>
            <ul>
                <li>
                    Если поток открыл сетевое соединение или заблокировал ресурс, принудительная остановка может
                    оставить эти ресурсы в неопределённом состоянии.
                </li>
                <li>
                    Например, данные могут быть не дочитаны, а транзакции в базе данных — не завершены.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Нарушение консистентности:</span>
            <ul>
                <li>
                    Если поток блокировал разделяемый ресурс, его принудительная остановка может привести к
                    нарушению консистентности системы.
                </li>
                <li>
                    Другие потоки могут остаться в заблокированном состоянии или получить доступ к
                    повреждённым данным.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Альтернативы Thread.stop()</h2>
    <ul>
        <li>
            <span class="highlight">Использование interrupt():</span>
            <ul>
                <li>
                    Метод <code>interrupt()</code> выставляет флаг прерывания, позволяя потоку корректно завершить
                    свою работу.
                </li>
                <li>
                    Поток может проверить флаг прерывания с помощью <code>isInterrupted()</code> и завершить выполнение,
                    освободив ресурсы.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Собственные флаги остановки:</span>
            <ul>
                <li>
                    Можно использовать переменную-флаг (например, <code>volatile boolean</code>) для управления
                    остановкой потока.
                </li>
                <li>
                    Поток периодически проверяет значение флага и завершает выполнение, если флаг установлен.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Метод <code>Thread.stop()</code> не рекомендуется использовать, так как он может привести к
                    серьёзным проблемам, включая утечку ресурсов и повреждение данных.
                </li>
                <li>
                    Для корректной остановки потока используйте <code>interrupt()</code> или собственные механизмы
                    управления выполнением.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример корректной остановки потока</h2>
    <ul>
        <li>
            <code>Thread thread = new Thread(() -> { while (!Thread.currentThread().isInterrupted()) { ... } });</code> —
            поток с проверкой флага прерывания.
        </li>
        <li>
            <code>thread.interrupt();</code> — установка флага прерывания.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2ef837f2-1df7-433f-bb7a-280c775e504f', 'Что такое race condition?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Race Condition, Data Race и Starvation в Java</title>
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
    <h1>Race Condition, Data Race и Starvation в Java</h1>
    <p>
        В многопоточных приложениях могут возникать различные проблемы, такие как состояние гонки (race condition),
        гонка данных (data race) и голодание (starvation). Эти проблемы могут привести к нестабильной работе
        программы и ошибкам, которые сложно воспроизвести.
    </p>

    <h2>Что такое Race Condition?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span>
            <ul>
                <li>
                    Состояние гонки (race condition) — это ошибка, при которой результат выполнения программы
                    зависит от порядка выполнения потоков.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Причина:</span>
            <ul>
                <li>
                    Возникает, когда несколько потоков одновременно пытаются изменить общие данные, и их
                    действия пересекаются.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <ul>
                <li>
                    Если два потока одновременно увеличивают значение переменной, результат может быть
                    некорректным.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Что такое Data Race?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span>
            <ul>
                <li>
                    Гонка данных (data race) — это ситуация, когда два или более потока обращаются к одной и
                    той же переменной, и хотя бы один из них выполняет запись, при этом доступ не упорядочен
                    отношениями «happens before».
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Согласно JMM:</span>
            <ul>
                <li>
                    Выполнение программы считается содержащим гонку данных, если есть конфликтующие доступы
                    (чтение/запись), которые не упорядочены.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Что такое Starvation?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span>
            <ul>
                <li>
                    Голодание (starvation) — это ситуация, когда потоки не блокируются, но не могут получить
                    доступ к ресурсам из-за их нехватки или неправильного распределения.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Причина:</span>
            <ul>
                <li>
                    Возникает, когда некоторые потоки постоянно откладываются в пользу других, более
                    приоритетных потоков.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Как решить проблемы?</h2>
    <ul>
        <li>
            <span class="highlight">Копирование переменной:</span>
            <ul>
                <li>
                    Самый простой способ избежать race condition — копировать общую переменную в локальную
                    переменную перед использованием.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Синхронизация:</span>
            <ul>
                <li>
                    Используйте механизмы синхронизации, такие как <code>synchronized</code> методы и блоки,
                    чтобы упорядочить доступ к общим ресурсам.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Race condition и data race могут привести к недетерминированным ошибкам, которые сложно
                    воспроизвести и исправить.
                </li>
                <li>
                    Starvation может снизить производительность системы, так как некоторые потоки не получают
                    достаточно ресурсов для выполнения.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример Race Condition</h2>
    <pre><code>public class RaceConditionExample {
    private static int counter = 0;

    public static void main(String[] args) {
        Runnable task = () -> {
            for (int i = 0; i < 1000; i++) {
                counter++;
            }
        };

        Thread thread1 = new Thread(task);
        Thread thread2 = new Thread(task);

        thread1.start();
        thread2.start();

        try {
            thread1.join();
            thread2.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println("Counter: " + counter); // Результат может быть меньше 2000
    }
}</code></pre>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('722b1894-4058-4d75-8373-1a385dfd8afd', 'Что такое livelock?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Livelock в Java</title>
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
    <h1>Livelock в Java</h1>
    <p>
        Livelock (активная блокировка) — это ситуация в многопоточной среде, при которой потоки выполняют
        бесполезную работу, постоянно изменяя свои состояния в зависимости друг от друга, но не продвигаясь
        в выполнении задачи. Это приводит к падению эффективности системы до нуля.
    </p>

    <h2>Что такое livelock?</h2>
    <ul>
        <li>
            <span class="highlight">Бесполезная работа:</span>
            <ul>
                <li>
                    Потоки зацикливаются на попытках получения ресурсов, но не могут завершить свои задачи.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Отсутствие ошибок:</span>
            <ul>
                <li>
                    В отличие от deadlock, потоки не блокируются полностью, но их работа становится бесполезной.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Причины возникновения:</span>
            <ul>
                <li>
                    Часто возникает при попытках предотвращения deadlock, когда потоки пытаются "уступить"
                    друг другу ресурсы.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Примеры livelock</h2>
    <ul>
        <li>
            <span class="highlight">Люди в коридоре:</span>
            <ul>
                <li>
                    Два человека встречаются в узком коридоре и, пытаясь быть вежливыми, бесконечно
                    отходят в сторону, не продвигаясь в нужном направлении.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пылесосы в коридоре:</span>
            <ul>
                <li>
                    Два пылесоса в узком коридоре пытаются определить, кто должен первым убрать один и
                    тот же участок.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Автомобили на перекрёстке:</span>
            <ul>
                <li>
                    На равнозначном перекрёстке четыре автомобиля не могут определить, кто должен уступить
                    дорогу.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Одновременный звонок:</span>
            <ul>
                <li>
                    Два человека одновременно звонят друг другу и не могут дозвониться, так как линии заняты.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Livelock сложнее обнаружить, чем deadlock, так как потоки продолжают работать, но их
                    работа не приносит результата.
                </li>
                <li>
                    Для обнаружения livelock можно проверить уровень загрузки процессора в состоянии покоя.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример livelock в коде</h2>
    <pre><code>public class LivelockExample {
    private static final Object resource1 = new Object();
    private static final Object resource2 = new Object();

    public static void main(String[] args) {
        Thread thread1 = new Thread(() -> {
            while (true) {
                synchronized (resource1) {
                    System.out.println("Thread 1: Holding resource 1...");
                    try { Thread.sleep(100); } catch (InterruptedException e) {}
                    synchronized (resource2) {
                        System.out.println("Thread 1: Holding resource 1 and 2...");
                    }
                }
            }
        });

        Thread thread2 = new Thread(() -> {
            while (true) {
                synchronized (resource2) {
                    System.out.println("Thread 2: Holding resource 2...");
                    try { Thread.sleep(100); } catch (InterruptedException e) {}
                    synchronized (resource1) {
                        System.out.println("Thread 2: Holding resource 2 and 1...");
                    }
                }
            }
        });

        thread1.start();
        thread2.start();
    }
}</code></pre>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6f62ca34-ab59-44c3-b734-e866e5bd1321', 'Что такое deadlock?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deadlock в Java</title>
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
    <h1>Deadlock в Java</h1>
    <p>
        Deadlock (взаимная блокировка) — это ситуация в многопоточной среде, при которой два или более потоков
        находятся в состоянии бесконечного ожидания ресурсов, удерживаемых друг другом. Это приводит к тому, что
        потоки не могут продолжить выполнение.
    </p>

    <h2>Условия возникновения deadlock</h2>
    <ul>
        <li>
            <span class="highlight">Взаимное исключение:</span>
            <ul>
                <li>
                    По крайней мере один ресурс занят в режиме неделимости, и только один поток может использовать
                    его в данный момент времени.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Удержание и ожидание:</span>
            <ul>
                <li>
                    Поток удерживает как минимум один ресурс и запрашивает дополнительные ресурсы, которые уже
                    удерживаются другими потоками.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Отсутствие предочистки:</span>
            <ul>
                <li>
                    Операционная система не переназначает ресурсы. Если ресурс занят, он должен быть освобождён
                    удерживающим его потоком.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Цикличное ожидание:</span>
            <ul>
                <li>
                    Поток ждёт освобождения ресурса, который удерживается другим потоком, а тот, в свою очередь,
                    ждёт освобождения ресурса, удерживаемого первым потоком.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Как избежать deadlock?</h2>
    <ul>
        <li>
            <span class="highlight">Упорядоченное получение ресурсов:</span>
            <ul>
                <li>
                    Получайте мониторы разделяемых ресурсов в определённом порядке и освобождайте их в обратном
                    порядке. Это предотвращает цикличное ожидание.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование тайм-аутов:</span>
            <ul>
                <li>
                    Используйте методы с тайм-аутами, такие как <code>tryLock()</code>, чтобы избежать бесконечного ожидания.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Анализ и проектирование:</span>
            <ul>
                <li>
                    Тщательно проектируйте многопоточные приложения, чтобы минимизировать вероятность
                    возникновения deadlock.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Deadlock — это серьёзная проблема, которая может привести к полной остановке работы приложения.
                </li>
                <li>
                    Для предотвращения deadlock важно следовать правилам упорядоченного получения ресурсов и
                    использовать механизмы тайм-аутов.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример deadlock</h2>
    <pre><code>public class DeadlockExample {
    private static final Object resource1 = new Object();
    private static final Object resource2 = new Object();

    public static void main(String[] args) {
        Thread thread1 = new Thread(() -> {
            synchronized (resource1) {
                System.out.println("Thread 1: Holding resource 1...");
                try { Thread.sleep(100); } catch (InterruptedException e) {}
                synchronized (resource2) {
                    System.out.println("Thread 1: Holding resource 1 and 2...");
                }
            }
        });

        Thread thread2 = new Thread(() -> {
            synchronized (resource2) {
                System.out.println("Thread 2: Holding resource 2...");
                try { Thread.sleep(100); } catch (InterruptedException e) {}
                synchronized (resource1) {
                    System.out.println("Thread 2: Holding resource 2 and 1...");
                }
            }
        });

        thread1.start();
        thread2.start();
    }
}</code></pre>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('996930a3-289c-4e9b-908f-af7510c4d86b', 'Что такое Фреймворк fork/join? Для чего он нужен?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Фреймворк Fork/Join в Java</title>
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
    <h1>Фреймворк Fork/Join в Java</h1>
    <p>
        Фреймворк Fork/Join, представленный в JDK 7, — это набор классов и интерфейсов, предназначенных для
        эффективного выполнения задач, которые можно рекурсивно разбить на более мелкие подзадачи. Он идеально
        подходит для использования преимуществ многопроцессорной архитектуры современных компьютеров.
    </p>

    <h2>Для чего нужен Fork/Join?</h2>
    <ul>
        <li>
            <span class="highlight">Параллельное выполнение задач:</span>
            <ul>
                <li>
                    Фреймворк позволяет разбивать большие задачи на более мелкие подзадачи, которые могут
                    выполняться параллельно.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Рекурсивное разделение:</span>
            <ul>
                <li>
                    Задачи рекурсивно делятся на подзадачи до тех пор, пока они не станут достаточно простыми
                    для последовательного выполнения.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Work-stealing алгоритм:</span>
            <ul>
                <li>
                    Потоки, завершившие свои задачи, могут "воровать" задачи у других потоков, что повышает
                    эффективность использования ресурсов.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Этапы работы Fork/Join</h2>
    <ul>
        <li>
            <span class="highlight">Fork (Разделение):</span>
            <ul>
                <li>
                    Большая задача разделяется на несколько меньших подзадач, которые также могут быть
                    рекурсивно разделены.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Join (Объединение):</span>
            <ul>
                <li>
                    Решения подзадач объединяются для получения конечного результата. Этот этап может быть
                    опциональным, в зависимости от задачи.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования Fork/Join</h2>
    <ul>
        <li>
            <span class="highlight">Параллельный QuickSort:</span>
            <ul>
                <li>
                    Массив рекурсивно делится на меньшие диапазоны, пока не достигается тривиальный случай
                    (например, массив из одного элемента).
                </li>
                <li>
                    Хотя этап Join может не требоваться для самого алгоритма, необходимо дождаться завершения
                    всех подзадач.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Фреймворк Fork/Join особенно полезен для задач, которые можно легко разделить на независимые
                    подзадачи, такие как сортировка, поиск или обработка больших данных.
                </li>
                <li>
                    Work-stealing алгоритм позволяет эффективно распределять задачи между потоками, минимизируя
                    простои.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример кода с использованием Fork/Join</h2>
    <pre><code>import java.util.concurrent.RecursiveTask;
import java.util.concurrent.ForkJoinPool;

public class ForkJoinExample extends RecursiveTask&lt;Long&gt; {
    private final long[] array;
    private final int start;
    private final int end;

    public ForkJoinExample(long[] array, int start, int end) {
        this.array = array;
        this.start = start;
        this.end = end;
    }

    @Override
    protected Long compute() {
        if (end - start <= 1000) {
            long sum = 0;
            for (int i = start; i < end; i++) {
                sum += array[i];
            }
            return sum;
        } else {
            int mid = (start + end) / 2;
            ForkJoinExample leftTask = new ForkJoinExample(array, start, mid);
            ForkJoinExample rightTask = new ForkJoinExample(array, mid, end);
            leftTask.fork();
            long rightResult = rightTask.compute();
            long leftResult = leftTask.join();
            return leftResult + rightResult;
        }
    }

    public static void main(String[] args) {
        long[] array = new long[10_000];
        for (int i = 0; i < array.length; i++) {
            array[i] = i + 1;
        }

        ForkJoinPool pool = new ForkJoinPool();
        long result = pool.invoke(new ForkJoinExample(array, 0, array.length));
        System.out.println("Sum: " + result);
    }
}</code></pre>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fd051070-b4f3-4d99-94a3-bed00005d58b', 'Что означает ключевое слово synchronized? Где и для чего может  использоваться?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ключевое слово synchronized в Java</title>
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
    <h1>Ключевое слово synchronized в Java</h1>
    <p>
        Ключевое слово <code>synchronized</code> в Java используется для обеспечения синхронизации доступа к общим
        ресурсам в многопоточной среде. Оно позволяет избежать состояния гонки (race condition) и гарантирует,
        что только один поток может выполнять синхронизированный код в определённый момент времени.
    </p>

    <h2>Для чего используется synchronized?</h2>
    <ul>
        <li>
            <span class="highlight">Синхронизация методов:</span>
            <ul>
                <li>
                    Если метод помечен как <code>synchronized</code>, только один поток может выполнять этот метод
                    для конкретного экземпляра класса.
                </li>
                <li>
                    Пример: <code>public synchronized void method() { ... }</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Синхронизация блоков кода:</span>
            <ul>
                <li>
                    Можно синхронизировать только определённый блок кода, указав объект-монитор.
                </li>
                <li>
                    Пример: <code>synchronized (obj) { ... }</code>
                </li>
            </ul>
        </li>
    </ul>

    <h2>Где используется synchronized?</h2>
    <ul>
        <li>
            <span class="highlight">Методы:</span>
            <ul>
                <li>
                    Используется для синхронизации доступа к методам, которые изменяют общие данные.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Блоки кода:</span>
            <ul>
                <li>
                    Используется для синхронизации доступа к определённым участкам кода, где происходит
                    работа с общими ресурсами.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>synchronized</code> гарантирует, что только один поток может выполнять синхронизированный
                    код в определённый момент времени.
                </li>
                <li>
                    Использование <code>synchronized</code> может привести к снижению производительности, так как
                    потоки блокируются, ожидая доступа к синхронизированному коду.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования synchronized</h2>
    <ul>
        <li>
            <span class="highlight">Синхронизированный метод:</span>
            <pre><code>public class Counter {
    private int count = 0;

    public synchronized void increment() {
        count++;
    }

    public int getCount() {
        return count;
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">Синхронизированный блок:</span>
            <pre><code>public class Counter {
    private int count = 0;
    private final Object lock = new Object();

    public void increment() {
        synchronized (lock) {
            count++;
        }
    }

    public int getCount() {
        return count;
    }
}</code></pre>
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('070e40ab-917b-42e6-895d-37e0113411dd', 'Java Memory Model', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Memory Model (JMM)</title>
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
    <h1>Java Memory Model (JMM)</h1>
    <p>
        Java Memory Model (JMM) описывает, как потоки взаимодействуют через общую память. Она определяет набор
        правил и гарантий, которые обеспечивают корректное выполнение многопоточных программ. JMM регулирует
        видимость изменений и порядок выполнения операций между потоками.
    </p>

    <h2>Основные аспекты JMM</h2>
    <ul>
        <li>
            <span class="highlight">Отношение happens-before:</span>
            <ul>
                <li>
                    Это абстракция, которая определяет порядок выполнения операций между потоками. Если операция
                    X happens-before операция Y, то все изменения, сделанные до операции X, будут видны после
                    выполнения операции Y.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Видимость (Visibility):</span>
            <ul>
                <li>
                    Потоки могут временно хранить значения переменных в регистрах или локальных кэшах, что может
                    привести к тому, что другие потоки не увидят последних изменений.
                </li>
                <li>
                    Ключевые слова <code>synchronized</code>, <code>volatile</code> и <code>final</code> помогают управлять видимостью
                    изменений между потоками.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Переупорядочивание (Reordering):</span>
            <ul>
                <li>
                    Процессор или компилятор могут переставлять местами инструкции для повышения
                    производительности. Это может привести к тому, что один поток увидит изменения в
                    неправильном порядке.
                </li>
                <li>
                    Правила happens-before предотвращают переупорядочивание операций с <code>volatile</code> переменными
                    и другими операциями.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Как работает JMM?</h2>
    <ul>
        <li>
            <span class="highlight">Heap-память и локальная память:</span>
            <ul>
                <li>
                    Все переменные (кроме локальных переменных методов) хранятся в heap-памяти, которая доступна
                    всем потокам.
                </li>
                <li>
                    Каждый поток имеет свою локальную рабочую память, где хранятся копии переменных, с которыми
                    он работает.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Синхронизация:</span>
            <ul>
                <li>
                    Ключевое слово <code>synchronized</code> гарантирует, что только один поток может выполнять
                    синхронизированный блок кода, а также обеспечивает видимость изменений между потоками.
                </li>
                <li>
                    Ключевое слово <code>volatile</code> гарантирует, что изменения переменной будут сразу видны всем
                    потокам.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    JMM обеспечивает корректное выполнение многопоточных программ, управляя видимостью и
                    порядком выполнения операций.
                </li>
                <li>
                    Понимание JMM помогает избежать таких проблем, как гонки данных (data races) и
                    непредсказуемое поведение в многопоточных приложениях.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример happens-before</h2>
    <pre><code>public class HappensBeforeExample {
    private int x = 0;
    private volatile boolean flag = false;

    public void writer() {
        x = 42; // Операция 1
        flag = true; // Операция 2 (volatile запись)
    }

    public void reader() {
        if (flag) { // Операция 3 (volatile чтение)
            System.out.println(x); // Операция 4
        }
    }
}</code></pre>

    <h2>Объяснение</h2>
    <ul>
        <li>
            <span class="highlight">Happens-before:</span>
            <ul>
                <li>
                    Операция 1 (запись в <code>x</code>) happens-before операция 2 (запись в <code>flag</code>), так как они выполняются
                    в одном потоке.
                </li>
                <li>
                    Операция 2 (запись в <code>flag</code>) happens-before операция 3 (чтение <code>flag</code>), так как <code>flag</code> —
                    <code>volatile</code> переменная.
                </li>
                <li>
                    Операция 3 (чтение <code>flag</code>) happens-before операция 4 (чтение <code>x</code>), так как они выполняются
                    в одном потоке.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Гарантии:</span>
            <ul>
                <li>
                    Благодаря happens-before, поток, выполняющий <code>reader()</code>, увидит значение <code>x = 42</code>, если
                    <code>flag</code> равен <code>true</code>.
                </li>
            </ul>
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8debae5e-00b5-4703-a972-082b1e4c37fa', 'util.Concurrent поверхностно', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Пакет java.util.concurrent в Java</title>
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
    <h1>Пакет java.util.concurrent в Java</h1>
    <p>
        Пакет <code>java.util.concurrent</code> предоставляет набор классов и интерфейсов для работы с многопоточностью.
        Он разделён на несколько групп по функциональному признаку, каждая из которых решает определённые задачи.
    </p>

    <h2>Основные группы пакета java.util.concurrent</h2>
    <ul>
        <li>
            <span class="highlight">Коллекции (Collections):</span>
            <ul>
                <li>
                    <strong>CopyOnWriteArrayList, CopyOnWriteArraySet:</strong> Коллекции, которые создают новую копию
                    внутреннего массива при изменении. Это гарантирует, что итераторы не выбросят
                    <code>ConcurrentModificationException</code>.
                </li>
                <li>
                    <strong>ConcurrentHashMap:</strong> Хэш-таблица, разделённая на сегменты. Блокируется только
                    тот сегмент, в котором происходит изменение, что повышает производительность.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Синхронизаторы (Synchronizers):</span>
            <ul>
                <li>
                    <strong>Semaphore:</strong> Ограничивает количество потоков, которые могут одновременно
                    получить доступ к ресурсу.
                </li>
                <li>
                    <strong>CountDownLatch:</strong> Блокирует потоки до тех пор, пока счётчик не достигнет нуля.
                    Одноразовый.
                </li>
                <li>
                    <strong>CyclicBarrier:</strong> Барьер, который блокирует потоки до тех пор, пока все они не
                    достигнут определённой точки. Многоразовый.
                </li>
                <li>
                    <strong>Exchanger:</strong> Позволяет двум потокам обмениваться данными.
                </li>
                <li>
                    <strong>Phaser:</strong> Более гибкий барьер, поддерживающий несколько фаз и изменяемое
                    количество участников.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Атомарные классы (Atomic):</span>
            <ul>
                <li>
                    <strong>AtomicInteger, AtomicLong, AtomicReference и др.:</strong> Предоставляют атомарные
                    операции для примитивов и объектов. Не требуют блокировок.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Очереди (Queues):</span>
            <ul>
                <li>
                    <strong>BlockingQueue:</strong> Очереди, которые блокируют потоки при попытке добавить или
                    удалить элементы, если очередь полна или пуста.
                </li>
                <li>
                    <strong>ConcurrentLinkedQueue:</strong> Неблокирующая очередь, оптимизированная для
                    многопоточного доступа.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Механизмы блокировок (Locks):</span>
            <ul>
                <li>
                    <strong>Lock, ReentrantLock:</strong> Альтернатива <code>synchronized</code> с более гибкими
                    возможностями, такими как тайм-ауты и прерываемые блокировки.
                </li>
                <li>
                    <strong>ReadWriteLock:</strong> Позволяет разделять блокировки для чтения и записи.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Исполнители (Executors):</span>
            <ul>
                <li>
                    <strong>ExecutorService:</strong> Управляет пулом потоков и позволяет выполнять задачи
                    асинхронно.
                </li>
                <li>
                    <strong>Future, Callable:</strong> Позволяют получать результаты выполнения задач.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Пакет <code>java.util.concurrent</code> предоставляет мощные инструменты для работы с
                    многопоточностью, которые упрощают разработку и повышают производительность.
                </li>
                <li>
                    Использование этих классов помогает избежать распространённых проблем, таких как
                    deadlock, race condition и других.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования ExecutorService</h2>
    <pre><code>import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ExecutorExample {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(2);

        executor.submit(() -> {
            System.out.println("Task 1 executed by " + Thread.currentThread().getName());
        });

        executor.submit(() -> {
            System.out.println("Task 2 executed by " + Thread.currentThread().getName());
        });

        executor.shutdown();
    }
}</code></pre>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1c3ebccb-0b59-4b17-b567-6473d7f8b106', 'Что такое «триггер»?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Триггеры</title>
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
    <h1>Триггеры</h1>
    <p>
        Триггер (trigger) – это хранимая процедура особого типа, исполнение которой обусловлено
        действием по модификации данных: добавлением, удалением или изменением данных в
        заданной таблице реляционной базы данных. Триггер запускается сервером автоматически,
        и все производимые им модификации данных рассматриваются как выполняемые в
        транзакции, в которой выполнено действие, вызвавшее срабатывание триггера.
    </p>

    <h2>Для чего нужны триггеры?</h2>
    <ul>
        <li>
            <span class="highlight">Автоматизация задач:</span> Триггеры позволяют автоматически выполнять определённые
            действия при изменении данных в таблице, что упрощает управление данными и
            снижает вероятность ошибок.
        </li>
        <li>
            <span class="highlight">Обеспечение целостности данных:</span> Триггеры могут использоваться для проверки
            и поддержания целостности данных, например, для проверки корректности вводимых
            значений или каскадного обновления связанных таблиц.
        </li>
        <li>
            <span class="highlight">Логирование изменений:</span> Триггеры могут записывать изменения данных в отдельные
            таблицы для аудита или отслеживания истории изменений.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Триггеры выполняются в контексте транзакции, что позволяет откатить
            изменения, если в процессе выполнения триггера возникнет ошибка.
        </p>
    </div>

    <h2>Момент запуска триггеров</h2>
    <ul>
        <li>
            <span class="highlight">BEFORE:</span> Триггер запускается до выполнения связанного с ним события (например,
            перед вставкой, обновлением или удалением данных). Это позволяет проверить или
            изменить данные перед их сохранением.
        </li>
        <li>
            <span class="highlight">AFTER:</span> Триггер запускается после выполнения связанного с ним события. Это
            полезно для выполнения действий, которые должны произойти после изменения данных,
            например, для обновления связанных таблиц или логирования.
        </li>
    </ul>

    <h2>Примеры использования триггеров</h2>
    <ul>
        <li>
            <span class="highlight">Проверка данных:</span> Триггеры могут проверять корректность вводимых данных перед
            их сохранением в таблице.
        </li>
        <li>
            <span class="highlight">Каскадные изменения:</span> Триггеры могут автоматически обновлять или удалять
            данные в связанных таблицах при изменении основной таблицы.
        </li>
        <li>
            <span class="highlight">Логирование:</span> Триггеры могут записывать информацию о изменениях данных в
            отдельную таблицу для аудита или анализа.
        </li>
    </ul>
</body>
</html>', 'SQL', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('14bc6bf3-105c-4f3f-97a9-4167c7db229a', 'Что такое транзакции? Расскажите про принципы ACID', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Транзакции и принципы ACID</title>
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
    <h1>Транзакции и принципы ACID</h1>
    <p>
        Транзакция – это воздействие на базу данных, переводящее её из одного целостного состояния
        в другое и выражаемое в изменении данных, хранящихся в базе данных. Транзакции обеспечивают
        надёжность и целостность данных, даже в случае сбоев или ошибок.
    </p>

    <h2>Принципы ACID</h2>
    <p>
        ACID – это набор принципов, которые гарантируют надёжность выполнения транзакций в базах данных.
        Каждая буква в аббревиатуре ACID обозначает один из принципов:
    </p>
    <ul>
        <li>
            <span class="highlight">Атомарность (Atomicity):</span> Гарантирует, что транзакция будет выполнена полностью
            или не будет выполнена вовсе. Если какая-либо часть транзакции завершается с ошибкой,
            вся транзакция откатывается, и база данных возвращается в исходное состояние.
        </li>
        <li>
            <span class="highlight">Согласованность (Consistency):</span> Обеспечивает, что транзакция переводит базу данных
            из одного согласованного состояния в другое. Это означает, что все правила и ограничения
            базы данных должны соблюдаться после завершения транзакции.
        </li>
        <li>
            <span class="highlight">Изолированность (Isolation):</span> Гарантирует, что параллельные транзакции не влияют
            друг на друга. Каждая транзакция выполняется так, как если бы она была единственной в системе.
        </li>
        <li>
            <span class="highlight">Долговечность (Durability):</span> Обеспечивает, что результаты успешно завершённой
            транзакции сохраняются в базе данных даже в случае сбоев системы (например, отключения
            питания или аварийного завершения работы).
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Принципы ACID являются основой для обеспечения надёжности и целостности
            данных в системах управления базами данных (СУБД).
        </p>
    </div>

    <h2>Пример работы транзакции</h2>
    <p>
        Предположим, у нас есть транзакция, которая переводит деньги с одного счёта на другой. Эта
        транзакция должна быть атомарной (либо выполняется полностью, либо не выполняется вовсе),
        согласованной (баланс счетов должен оставаться корректным), изолированной (другие транзакции
        не должны видеть промежуточные результаты) и долговечной (изменения должны сохраниться даже
        после сбоя системы).
    </p>

    <h2>Преимущества использования транзакций</h2>
    <ul>
        <li>
            <span class="highlight">Надёжность:</span> Транзакции гарантируют, что данные остаются в согласованном состоянии
            даже в случае ошибок.
        </li>
        <li>
            <span class="highlight">Целостность данных:</span> Транзакции обеспечивают соблюдение всех правил и ограничений
            базы данных.
        </li>
        <li>
            <span class="highlight">Параллельная обработка:</span> Принцип изолированности позволяет выполнять несколько
            транзакций одновременно без конфликтов.
        </li>
        <li>
            <span class="highlight">Восстановление после сбоев:</span> Долговечность гарантирует, что результаты транзакций
            сохраняются даже после сбоев системы.
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('57847f96-6784-41de-89a3-21e33195792f', 'Расскажите про уровни изолированности транзакций', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Уровни изолированности транзакций</title>
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
    <h1>Уровни изолированности транзакций</h1>
    <p>
        Уровни изолированности транзакций определяют, насколько транзакции изолированы друг от друга
        при одновременном выполнении. Разные уровни изолированности позволяют управлять балансом
        между производительностью и целостностью данных, а также предотвращают определённые проблемы,
        такие как "грязное чтение", "неповторяющееся чтение" и "фантомное чтение".
    </p>

    <h2>Основные проблемы, связанные с уровнями изолированности</h2>
    <ul>
        <li>
            <span class="highlight">Грязное чтение (Dirty Read):</span>
            <ul>
                <li>Транзакция A производит запись.</li>
                <li>Транзакция B считывает эту запись до завершения транзакции A.</li>
                <li>Транзакция A решает откатиться, и изменения, которые видела транзакция B, становятся недействительными.</li>
                <li>Это называется "грязным чтением". Транзакция B работала на уровне изоляции <code>READ UNCOMMITTED</code>,
                    поэтому она могла считывать незафиксированные изменения транзакции A.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Неповторяющееся чтение (Non-Repeatable Read):</span>
            <ul>
                <li>Транзакция A считывает некоторые записи.</li>
                <li>Транзакция B изменяет эти записи и фиксирует изменения.</li>
                <li>Транзакция A снова считывает те же записи и получает разные значения, так как транзакция B
                    внесла изменения.</li>
                <li>Это называется "неповторяющимся чтением".</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Фантомное чтение (Phantom Read):</span>
            <ul>
                <li>Транзакция A считывает набор записей.</li>
                <li>Транзакция B вставляет новую запись, которая попадает в диапазон запроса транзакции A.</li>
                <li>Транзакция A снова считывает тот же диапазон и видит новую запись, добавленную транзакцией B.</li>
                <li>Это называется "фантомным чтением". Транзакция A получает разные результирующие наборы при
                    повторном выполнении запроса.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Уровень изолированности транзакций определяет, какие из этих проблем могут
            возникать. Чем выше уровень изолированности, тем меньше вероятность возникновения
            подобных проблем, но тем выше накладные расходы на производительность.
        </p>
    </div>

    <h2>Уровни изолированности и их влияние на проблемы</h2>
    <table>
        <thead>
            <tr>
                <th>Уровень изолированности</th>
                <th>Грязное чтение</th>
                <th>Неповторяющееся чтение</th>
                <th>Фантомное чтение</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><code>READ UNCOMMITTED</code></td>
                <td>Возможно</td>
                <td>Возможно</td>
                <td>Возможно</td>
            </tr>
            <tr>
                <td><code>READ COMMITTED</code></td>
                <td>Невозможно</td>
                <td>Возможно</td>
                <td>Возможно</td>
            </tr>
            <tr>
                <td><code>REPEATABLE READ</code></td>
                <td>Невозможно</td>
                <td>Невозможно</td>
                <td>Возможно</td>
            </tr>
            <tr>
                <td><code>SERIALIZABLE</code></td>
                <td>Невозможно</td>
                <td>Невозможно</td>
                <td>Невозможно</td>
            </tr>
        </tbody>
    </table>

    <h2>Выбор уровня изолированности</h2>
    <p>
        Выбор уровня изолированности зависит от требований приложения:
    </p>
    <ul>
        <li>
            <span class="highlight">READ UNCOMMITTED:</span> Используется, когда важна максимальная производительность, а
            целостность данных не критична.
        </li>
        <li>
            <span class="highlight">READ COMMITTED:</span> Используется по умолчанию в большинстве СУБД. Подходит для
            большинства приложений, где важен баланс между производительностью и целостностью данных.
        </li>
        <li>
            <span class="highlight">REPEATABLE READ:</span> Используется, когда важно обеспечить повторяемость чтения данных
            в рамках одной транзакции.
        </li>
        <li>
            <span class="highlight">SERIALIZABLE:</span> Используется, когда требуется максимальная изоляция и целостность
            данных, даже если это снижает производительность.
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f8ab324d-6954-41d2-a42d-e10f654e53f1', 'Что такое нормализация и денормализация? Расскажите про 3 нормальные  формы', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Нормализация и денормализация</title>
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
    <h1>Нормализация и денормализация</h1>
    <p>
        Нормализация – это процесс преобразования отношений базы данных к виду, отвечающему
        нормальным формам. Это пошаговый и обратимый процесс, который приводит данные к более
        простой и логичной структуре. Цель нормализации – уменьшение потенциальной
        противоречивости хранимой в базе данных информации.
    </p>
    <p>
        Денормализация базы данных – это процесс, обратный нормализации. Она добавляет
        избыточные данные в таблицу для повышения производительности и скорости извлечения
        данных за счёт уменьшения количества соединений между таблицами. Однако это увеличивает
        избыточность данных.
    </p>

    <h2>Нормальные формы</h2>
    <p>
        Нормальные формы – это набор правил, которые определяют, как данные должны быть
        организованы в базе данных. Каждая нормальная форма включает в себя предыдущую.
    </p>

    <h3>Первая нормальная форма (1NF)</h3>
    <p>
        Требования первой нормальной формы:
    </p>
    <ul>
        <li>В таблице не должно быть дублирующих строк.</li>
        <li>В каждой ячейке таблицы хранится атомарное значение (одно не составное значение).</li>
        <li>В столбце хранятся данные одного типа.</li>
        <li>Отсутствуют массивы и списки в любом виде.</li>
    </ul>
    <p>
        Таким образом, первая нормальная форма требует, чтобы все значения в таблице были
        атомарными и не содержали повторяющихся групп.
    </p>

    <h3>Вторая нормальная форма (2NF)</h3>
    <p>
        Требования второй нормальной формы:
    </p>
    <ul>
        <li>Таблица должна находиться в первой нормальной форме.</li>
        <li>Таблица должна иметь ключ.</li>
        <li>Все неключевые столбцы таблицы должны зависеть от полного ключа (в случае если он составной).</li>
    </ul>
    <p>
        Вторая нормальная форма устраняет частичные зависимости, когда неключевые атрибуты зависят
        только от части составного ключа.
    </p>

    <h3>Третья нормальная форма (3NF)</h3>
    <p>
        Требования третьей нормальной формы:
    </p>
    <ul>
        <li>Таблица должна находиться во второй нормальной форме.</li>
        <li>Все неключевые поля не должны зависеть друг от друга (отсутствие транзитивной зависимости).</li>
    </ul>
    <p>
        Третья нормальная форма устраняет транзитивные зависимости, когда неключевые атрибуты зависят
        от других неключевых атрибутов.
    </p>

    <h3>Нормальная форма Бойса-Кодда (BCNF)</h3>
    <p>
        Нормальная форма Бойса-Кодда – это усиленная третья нормальная форма. Требования:
    </p>
    <ul>
        <li>Таблица должна находиться в третьей нормальной форме.</li>
        <li>Ключевые атрибуты составного ключа не должны зависеть от неключевых атрибутов.</li>
    </ul>
    <p>
        BCNF устраняет аномалии, которые могут возникать в 3NF, когда детерминанты функциональных
        зависимостей не являются потенциальными ключами.
    </p>

    <h3>Четвертая нормальная форма (4NF)</h3>
    <p>
        Требования четвертой нормальной формы:
    </p>
    <ul>
        <li>Таблица должна находиться в нормальной форме Бойса-Кодда.</li>
        <li>В таблице не должно быть независимых групп полей, между которыми существует отношение
            «многие-ко-многим» (отсутствие нетривиальных многозначных зависимостей).</li>
    </ul>
    <p>
        Четвертая нормальная форма устраняет многозначные зависимости, когда атрибуты зависят от
        одного ключа, но не связаны друг с другом.
    </p>

    <h3>Пятая нормальная форма (5NF)</h3>
    <p>
        Требования пятой нормальной формы:
    </p>
    <ul>
        <li>Таблица должна находиться в четвертой нормальной форме.</li>
        <li>Каждая нетривиальная зависимость соединения в таблице определяется потенциальным ключом.</li>
    </ul>
    <p>
        Пятая нормальная форма устраняет зависимости соединения, которые не могут быть выражены через
        функциональные зависимости.
    </p>

    <h3>Доменно-ключевая нормальная форма (DKNF)</h3>
    <p>
        Требования доменно-ключевой нормальной формы:
    </p>
    <ul>
        <li>Каждое ограничение на таблицу является логическим следствием ограничений доменов и ключей.</li>
    </ul>
    <p>
        DKNF требует, чтобы все ограничения на таблицу вытекали из ограничений на домены и ключи.
    </p>

    <h3>Шестая нормальная форма (6NF)</h3>
    <p>
        Шестая нормальная форма применяется в хронологических базах данных, которые хранят данные
        за разные периоды времени. Требования:
    </p>
    <ul>
        <li>Таблица не может быть подвергнута дальнейшей декомпозиции без потерь.</li>
        <li>Удовлетворяет всем нетривиальным зависимостям соединения.</li>
    </ul>
    <p>
        6NF используется для хранения исторических данных и данных, относящихся к будущим периодам.
    </p>

    <h2>Денормализация</h2>
    <p>
        Денормализация – это процесс добавления избыточных данных в таблицу для повышения
        производительности. Она используется, когда частые запросы требуют объединения данных из
        нескольких таблиц. Однако денормализация увеличивает избыточность данных и может привести
        к аномалиям при обновлении данных.
    </p>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('23c8afe9-5301-4769-9c9e-a1bae065e9c7', 'Может ли entity-класс наследоваться от других entity-классов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Наследование Entity-класса от другого Entity-класса</title>
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
    <h1>Наследование Entity-класса от другого Entity-класса</h1>
    <p>
        В JPA (Java Persistence API) <span class="highlight">Entity-класс</span> может наследоваться от другого Entity-класса.
        Это позволяет создавать иерархии сущностей, где общие свойства и методы вынесены в
        родительский Entity-класс, а специфичные – в классы-наследники.
    </p>

    <h2>Особенности наследования Entity-классов</h2>
    <p>
        Когда Entity-класс наследуется от другого Entity-класса, важно учитывать следующие моменты:
    </p>
    <ul>
        <li>
            <span class="highlight">Стратегии наследования:</span> JPA поддерживает несколько стратегий наследования,
            таких как <code>SINGLE_TABLE</code>, <code>JOINED</code> и <code>TABLE_PER_CLASS</code>. Выбор стратегии влияет на то, как
            данные будут храниться в базе данных.
        </li>
        <li>
            <span class="highlight">Аннотации:</span> Родительский Entity-класс должен быть помечен аннотацией <code>@Entity</code>,
            а также может использовать аннотации для определения стратегии наследования, например,
            <code>@Inheritance</code>.
        </li>
        <li>
            <span class="highlight">Первичный ключ:</span> Первичный ключ родительского Entity-класса будет унаследован
            классом-наследником. Класс-наследник не может иметь собственный первичный ключ,
            отличный от родительского.
        </li>
        <li>
            <span class="highlight">Поля и методы:</span> Класс-наследник наследует все поля и методы родительского
            Entity-класса, включая маппинг на базу данных.
        </li>
    </ul>

    <h2>Пример наследования Entity-классов</h2>
    <p>
        Рассмотрим пример, где Entity-класс наследуется от другого Entity-класса:
    </p>
    <pre><code>
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

// Родительский Entity-класс
@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public class Vehicle {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String manufacturer;

    public Vehicle() {}

    public Vehicle(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }
}

// Класс-наследник
@Entity
public class Car extends Vehicle {
    private int numberOfDoors;

    public Car() {}

    public Car(String manufacturer, int numberOfDoors) {
        super(manufacturer);
        this.numberOfDoors = numberOfDoors;
    }

    // Геттеры и сеттеры
    public int getNumberOfDoors() {
        return numberOfDoors;
    }

    public void setNumberOfDoors(int numberOfDoors) {
        this.numberOfDoors = numberOfDoors;
    }
}
    </code></pre>

    <h2>Стратегии наследования</h2>
    <p>
        В JPA доступны следующие стратегии наследования:
    </p>
    <ul>
        <li>
            <span class="highlight">SINGLE_TABLE:</span> Все классы иерархии хранятся в одной таблице. Используется
            дискриминаторный столбец для определения типа сущности.
        </li>
        <li>
            <span class="highlight">JOINED:</span> Каждый класс иерархии хранится в отдельной таблице. Таблицы
            связаны через внешние ключи.
        </li>
        <li>
            <span class="highlight">TABLE_PER_CLASS:</span> Каждый класс иерархии хранится в отдельной таблице, но
            без связи через внешние ключи.
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        Entity-класс может наследоваться от другого Entity-класса, что позволяет создавать иерархии
        сущностей с общими свойствами и методами. Это упрощает проектирование и поддержку кода,
        особенно в сложных системах. Однако важно правильно выбрать стратегию наследования, чтобы
        обеспечить эффективное хранение данных в базе данных.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ecce4649-5c59-46a2-9469-426e165b36cb', 'Как сделать запрос из двух баз?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Запрос из двух баз данных</title>
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
    <h1>Запрос из двух баз данных</h1>
    <p>
        В SQL можно выполнять запросы, которые объединяют данные из таблиц, находящихся в разных базах
        данных, при условии, что эти базы данных находятся на одном сервере. Для этого в запросе
        необходимо указать имя базы данных перед именем таблицы.
    </p>

    <h2>Как сделать запрос из двух баз данных?</h2>
    <p>
        Чтобы выполнить запрос, который объединяет данные из двух таблиц, находящихся в разных базах
        данных, нужно указать имя базы данных перед именем таблицы. Например:
    </p>
    <pre><code>
SELECT t1.*, t2.*
FROM database1.table1 AS t1
INNER JOIN database2.table2 AS t2 ON t1.field1 = t2.field1;
    </code></pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li><code>database1.table1</code> – таблица <code>table1</code> из базы данных <code>database1</code>.</li>
        <li><code>database2.table2</code> – таблица <code>table2</code> из базы данных <code>database2</code>.</li>
        <li><code>t1.field1 = t2.field1</code> – условие соединения таблиц по полю <code>field1</code>.</li>
    </ul>

    <h2>Пример запроса</h2>
    <p>
        Предположим, у нас есть две базы данных: <code>sales</code> и <code>customers</code>. В базе <code>sales</code> находится таблица
        <code>orders</code>, а в базе <code>customers</code> – таблица <code>clients</code>. Мы хотим получить список заказов с
        информацией о клиентах:
    </p>
    <pre><code>
SELECT o.order_id, o.order_date, c.client_name, c.client_email
FROM sales.orders AS o
INNER JOIN customers.clients AS c ON o.client_id = c.client_id;
    </code></pre>
    <p>
        В этом запросе:
    </p>
    <ul>
        <li><code>sales.orders</code> – таблица заказов из базы данных <code>sales</code>.</li>
        <li><code>customers.clients</code> – таблица клиентов из базы данных <code>customers</code>.</li>
        <li><code>o.client_id = c.client_id</code> – условие соединения таблиц по полю <code>client_id</code>.</li>
    </ul>

    <h2>Важные моменты</h2>
    <ul>
        <li><span class="highlight">Базы данных должны быть на одном сервере:</span> Запросы между базами данных
            работают только в том случае, если обе базы находятся на одном сервере.</li>
        <li><span class="highlight">Указание имени базы данных:</span> Если имя базы данных не указано, таблица
            будет выбрана из активной базы данных.</li>
        <li><span class="highlight">Права доступа:</span> Убедитесь, что пользователь, от имени которого выполняется
            запрос, имеет права доступа к обеим базам данных.</li>
    </ul>

    <h2>Преимущества использования запросов из нескольких баз данных</h2>
    <ul>
        <li><span class="highlight">Объединение данных:</span> Позволяет объединять данные из разных баз данных без
            необходимости их физического объединения.</li>
        <li><span class="highlight">Гибкость:</span> Упрощает работу с данными, которые логически разделены между
            разными базами.</li>
        <li><span class="highlight">Экономия ресурсов:</span> Не требует дублирования данных или создания временных
            таблиц.</li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li><span class="highlight">Производительность:</span> Запросы, объединяющие данные из разных баз данных, могут
            быть медленнее, чем запросы в пределах одной базы.</li>
        <li><span class="highlight">Сложность управления:</span> Усложняет управление и отладку запросов, особенно
            при большом количестве таблиц и баз данных.</li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d02f7259-13f3-4cae-91db-d52cafe01f14', 'Как можно просмотреть все ветки в репозитории по локальным и удаленным веткам?', e'<!DOCTYPE html><html lang="ru"> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <title>Просмотр веток в Git</title><style>

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

</style> </head> <body> <h1>Просмотр всех веток в репозитории</h1> <p> В Git можно просматривать как локальные, так и удалённые ветки. Это помогает отслеживать состояние репозитория и управлять ветками. </p>
Copy
<h2>Как просмотреть локальные и удалённые ветки?</h2>
<ul>
    <li>
        <span class="highlight">Локальные ветки:</span> Локальные ветки — это ветки, которые находятся на вашем компьютере. Чтобы просмотреть их, используйте команду:
        <pre><code>git branch</code></pre>
        Эта команда выведет список всех локальных веток. Текущая ветка будет выделена звёздочкой (<code>*</code>).
    </li>
    <li>
        <span class="highlight">Удалённые ветки:</span> Удалённые ветки — это ветки, которые находятся на удалённом сервере (например, GitHub или GitLab). Чтобы просмотреть их, используйте команду:
        <pre><code>git branch -r</code></pre>
        Эта команда покажет все ветки, доступные на удалённом репозитории.
    </li>
    <li>
        <span class="highlight">Все ветки (локальные и удалённые):</span> Чтобы одновременно просмотреть и локальные, и удалённые ветки, используйте команду:
        <pre><code>git branch -a</code></pre>
        Эта команда выведет список всех веток, включая локальные и удалённые.
    </li>
</ul>

<div class="note">
    <p>
        <span class="highlight">Важно:</span> Удалённые ветки обычно отображаются с префиксом <code>origin/</code>, который указывает на удалённый репозиторий. Например, <code>origin/main</code> — это ветка <code>main</code> на удалённом сервере.
    </p>
</div>

<h2>Примеры команд</h2>
<ul>
    <li>
        <code>git branch</code> — показывает список локальных веток.
    </li>
    <li>
        <code>git branch -r</code> — показывает список удалённых веток.
    </li>
    <li>
        <code>git branch -a</code> — показывает список всех веток (локальных и удалённых).
    </li>
</ul>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a5b8b94f-6848-4543-a07c-f149c1a9eeb0', 'Для чего нужна аннотация Column?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Column в JPA</title>
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
    <h1>Аннотация @Column в JPA</h1>
    <p>
        Аннотация <code>@Column</code> в JPA (Java Persistence API) используется для сопоставления поля класса с колонкой
        таблицы базы данных. Она позволяет настроить свойства колонки, такие как имя, возможность вставки и
        обновления, длину для строковых типов и другие параметры.
    </p>

    <h2>Для чего нужна аннотация @Column?</h2>
    <ul>
        <li>
            <span class="highlight">Сопоставление поля с колонкой:</span>
            <ul>
                <li>Аннотация <code>@Column</code> указывает, что поле сущности должно быть сохранено в определённой
                    колонке таблицы базы данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Настройка свойств колонки:</span>
            <ul>
                <li>Позволяет задать имя колонки, возможность вставки и обновления данных, длину для строковых
                    типов и другие параметры.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Генерация схемы базы данных:</span>
            <ul>
                <li>Используется для автоматической генерации схемы базы данных на основе сущностей JPA.</li>
            </ul>
        </li>
    </ul>

    <h2>Атрибуты аннотации @Column</h2>
    <ul>
        <li>
            <span class="highlight">name:</span>
            <ul>
                <li>Определяет имя колонки в таблице базы данных.</li>
                <li>По умолчанию имя колонки совпадает с именем поля.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">nullable:</span>
            <ul>
                <li>Определяет, может ли колонка содержать значения <code>null</code>.</li>
                <li>По умолчанию <code>true</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">insertable:</span>
            <ul>
                <li>Определяет, можно ли вставлять данные в колонку.</li>
                <li>По умолчанию <code>true</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">updatable:</span>
            <ul>
                <li>Определяет, можно ли обновлять данные в колонке.</li>
                <li>По умолчанию <code>true</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">length:</span>
            <ul>
                <li>Определяет длину для строковых типов данных.</li>
                <li>По умолчанию <code>255</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Разница между @Basic и @Column</h2>
    <ul>
        <li>
            <span class="highlight">@Basic:</span>
            <ul>
                <li>Применяется к сущностям JPA.</li>
                <li>Имеет атрибут <code>optional</code>, который указывает, может ли поле объекта быть <code>null</code>.</li>
                <li>Позволяет указать стратегию загрузки (<code>EAGER</code> или <code>LAZY</code>).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@Column:</span>
            <ul>
                <li>Применяется к колонкам базы данных.</li>
                <li>Имеет атрибут <code>nullable</code>, который указывает, может ли колонка содержать <code>null</code>.</li>
                <li>Позволяет настроить свойства колонки, такие как имя, длина, возможность вставки и обновления.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>@Basic</code> для настройки поведения полей сущности (например, стратегии загрузки).</li>
                <li>Используйте <code>@Column</code> для настройки свойств колонок базы данных (например, ограничений).</li>
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

    @Column(name = "user_name", nullable = false, length = 100)
    private String name;

    @Column(updatable = false)
    private String email;

    @Basic(optional = false, fetch = FetchType.LAZY)
    private String description;
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Поле <code>name</code> сопоставляется с колонкой <code>user_name</code>, которая не может быть <code>null</code> и имеет
                максимальную длину 100 символов.</li>
            <li>Поле <code>email</code> не может быть обновлено после вставки.</li>
            <li>Поле <code>description</code> загружается лениво и не может быть <code>null</code>.</li>
        </ul>
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c0fea0f3-1745-4876-b9b9-6c2379cca219', 'Что такое IoC контейнер?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IoC-контейнер в Spring</title>
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
    <h1>IoC-контейнер в Spring</h1>
    <p>
        <strong>IoC-контейнер (Inversion of Control container)</strong> — это ключевой компонент фреймворка Spring,
        который управляет созданием, конфигурацией и жизненным циклом объектов (бинов). В Spring IoC-контейнер
        представлен интерфейсом <code>ApplicationContext</code>, который является расширением интерфейса
        <code>BeanFactory</code>.
    </p>

    <h2>Основные функции IoC-контейнера</h2>
    <ul>
        <li>
            <span class="highlight">Создание и управление бинами:</span>
            <ul>
                <li>Контейнер создаёт объекты (бины) на основе конфигурации (аннотации или XML).</li>
                <li>Управляет их жизненным циклом: от создания до уничтожения.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Внедрение зависимостей:</span>
            <ul>
                <li>Контейнер автоматически внедряет зависимости между бинами через конструкторы, методы или
                    поля.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Дополнительные возможности:</span>
            <ul>
                <li>Поддержка AOP (аспектно-ориентированного программирования).</li>
                <li>Управление транзакциями.</li>
                <li>Интеграция с другими технологиями (например, JPA, JDBC).</li>
            </ul>
        </li>
    </ul>

    <h2>Интерфейсы IoC-контейнера</h2>
    <ul>
        <li>
            <span class="highlight">BeanFactory:</span>
            <ul>
                <li>Базовый интерфейс, предоставляющий фабрику для создания и управления бинами.</li>
                <li>Обеспечивает минимальную функциональность для работы с бинами.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">ApplicationContext:</span>
            <ul>
                <li>Расширяет интерфейс <code>BeanFactory</code> и предоставляет дополнительные возможности, такие как
                    AOP, управление событиями, интернационализация и другие.</li>
                <li>Является основным интерфейсом для работы с IoC-контейнером в Spring.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример работы с ApplicationContext</h2>
    <pre><code>
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        // Создание контекста на основе аннотаций
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);

        // Получение бина из контекста
        UserService userService = context.getBean(UserService.class);

        // Использование бина
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

    <h2>Конфигурация IoC-контейнера</h2>
    <p>
        Конфигурация IoC-контейнера может осуществляться двумя способами:
    </p>
    <ul>
        <li>
            <span class="highlight">Через аннотации:</span>
            <pre><code>
@Configuration
public class AppConfig {
    @Bean
    public UserService userService() {
        return new UserService(userRepository());
    }

    @Bean
    public UserRepository userRepository() {
        return new UserRepository();
    }
}
            </code></pre>
        </li>
        <li>
            <span class="highlight">Через XML:</span>
            <pre><code>
<beans>
    <bean id="userRepository" class="com.example.UserRepository" />
    <bean id="userService" class="com.example.UserService">
        <constructor-arg ref="userRepository" />
    </bean>
</beans>
            </code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>IoC-контейнер управляет созданием и жизненным циклом бинов.</li>
                <li>Используйте <code>ApplicationContext</code> для работы с IoC-контейнером в Spring.</li>
                <li>Конфигурация может осуществляться через аннотации или XML-файлы.</li>
            </ul>
        </p>
    </div>

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
                <td>Минимальная функциональность для управления бинами.</td>
                <td>Расширенные возможности, включая AOP, управление событиями и интернационализацию.</td>
            </tr>
            <tr>
                <td>Использование</td>
                <td>Подходит для простых приложений с минимальными требованиями.</td>
                <td>Рекомендуется для большинства приложений, так как предоставляет больше возможностей.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c29dc995-373c-45d1-935a-581241ba343b', 'Расскажите про проблему N+1 Select и путях ее решения', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Проблема N+1 Select и пути её решения</title>
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
    <h1>Проблема N+1 Select и пути её решения</h1>
    <p>
        Проблема <strong>N+1 Select</strong> возникает, когда для получения данных из базы данных выполняется
        один основной запрос, а затем <code>N</code> дополнительных запросов для извлечения связанных данных.
        Это может привести к значительному снижению производительности приложения.
    </p>

    <h2>Что такое проблема N+1 Select?</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Основной запрос возвращает список сущностей.</li>
                <li>Для каждой сущности выполняется дополнительный запрос для получения связанных данных
                    (например, коллекций или связанных объектов).</li>
                <li>В результате выполняется <code>N+1</code> запросов, где <code>N</code> — количество сущностей,
                    возвращаемых основным запросом.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <ul>
                <li>Основной запрос: <code>SELECT * FROM Post</code>.</li>
                <li>Дополнительные запросы: <code>SELECT * FROM PostComment WHERE post_id = ?</code> для каждого
                    поста.</li>
            </ul>
        </li>
    </ul>

    <h2>Пути решения проблемы N+1 Select</h2>
    <p>
        Существует несколько способов решения проблемы N+1 Select:
    </p>

    <h3>1. JOIN FETCH</h3>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Используется в JPQL-запросах для выборки связанных объектов в одном запросе.</li>
                <li>Подходит для простых запросов с 1-3 уровнями вложенности.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
SELECT pc FROM PostComment pc JOIN FETCH pc.post p
            </code></pre>
        </li>
    </ul>

    <h3>2. EntityGraph</h3>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Позволяет указать, какие связанные объекты должны быть загружены вместе с основной сущностью.</li>
                <li>Подходит для сложных запросов с большим количеством связанных данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
@Entity
@NamedEntityGraph(
    name = "Post.withComments",
    attributeNodes = @NamedAttributeNode("comments")
)
public class Post {
    // Поля и методы
}
            </code></pre>
        </li>
    </ul>

    <h3>3. @Fetch(FetchMode.SUBSELECT)</h3>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Аннотация Hibernate, которая позволяет загружать связанные коллекции с помощью одного
                    дополнительного запроса.</li>
                <li>Подходит для коллекций с ленивой загрузкой.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
@Fetch(value = FetchMode.SUBSELECT)
private Set<Order> orders = new HashSet<>();
            </code></pre>
        </li>
    </ul>

    <h3>4. Batch fetching</h3>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Аннотация Hibernate, которая позволяет загружать связанные коллекции партиями.</li>
                <li>Указывается над классом сущности или полем коллекции.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
@BatchSize(size = 5)
private Set<Order> orders = new HashSet<>();
            </code></pre>
        </li>
    </ul>

    <h3>5. HibernateSpecificMapping и SqlResultSetMapping</h3>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Используется для нативных SQL-запросов.</li>
                <li>Позволяет явно указать, как результаты запроса должны быть отображены на сущности.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
@SqlResultSetMapping(
    name = "PostWithComments",
    entities = @EntityResult(entityClass = Post.class),
    columns = @ColumnResult(name = "comment_count"))
            </code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>JOIN FETCH</code> для простых запросов с небольшим количеством вложенных данных.</li>
                <li>Используйте <code>EntityGraph</code> для сложных запросов с большим количеством связанных данных.</li>
                <li>Используйте <code>@Fetch(FetchMode.SUBSELECT)</code> и <code>@BatchSize</code> для оптимизации загрузки
                    коллекций.</li>
                <li>Для нативных запросов используйте <code>SqlResultSetMapping</code>.</li>
            </ul>
        </p>
    </div>

    <h2>Сравнение подходов</h2>
    <table>
        <thead>
            <tr>
                <th>Подход</th>
                <th>Описание</th>
                <th>Использование</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>JOIN FETCH</td>
                <td>Загрузка связанных данных в одном запросе.</td>
                <td>Простыe запросы с 1-3 уровнями вложенности.</td>
            </tr>
            <tr>
                <td>EntityGraph</td>
                <td>Указание связанных данных для загрузки.</td>
                <td>Сложные запросы с большим количеством данных.</td>
            </tr>
            <tr>
                <td>@Fetch(FetchMode.SUBSELECT)</td>
                <td>Загрузка коллекций одним дополнительным запросом.</td>
                <td>Коллекции с ленивой загрузкой.</td>
            </tr>
            <tr>
                <td>@BatchSize</td>
                <td>Загрузка коллекций партиями.</td>
                <td>Коллекции с ленивой загрузкой.</td>
            </tr>
            <tr>
                <td>SqlResultSetMapping</td>
                <td>Отображение результатов нативных запросов.</td>
                <td>Нативные SQL-запросы.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'HIBERNATE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2593b842-d835-4c12-b780-315c7c920cb2', 'Что такое EntityGraph? Как и для чего их использовать?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EntityGraph в JPA</title>
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
    <h1>EntityGraph в JPA</h1>
    <p>
        <strong>EntityGraph</strong> — это механизм в JPA (Java Persistence API), который позволяет улучшить
        производительность при загрузке сущностей и связанных данных. Он позволяет явно указать, какие атрибуты
        и связанные сущности должны быть загружены вместе с основной сущностью, что помогает избежать
        проблемы N+1 Select.
    </p>

    <h2>Для чего используется EntityGraph?</h2>
    <ul>
        <li>
            <span class="highlight">Улучшение производительности:</span>
            <ul>
                <li>Позволяет загружать связанные данные в одном запросе, что снижает количество обращений к
                    базе данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Гибкость:</span>
            <ul>
                <li>Позволяет динамически выбирать, какие атрибуты и связанные сущности должны быть
                    загружены.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Контроль над загрузкой данных:</span>
            <ul>
                <li>Позволяет управлять стратегией загрузки (EAGER или LAZY) для отдельных атрибутов и
                    связанных сущностей.</li>
            </ul>
        </li>
    </ul>

    <h2>Как использовать EntityGraph?</h2>
    <p>
        EntityGraph можно определить с помощью аннотации <code>@NamedEntityGraph</code> или динамически создать
        с помощью API.
    </p>

    <h3>1. Определение EntityGraph с помощью аннотации</h3>
    <pre><code>
@Entity
@NamedEntityGraph(
    name = "Post.withCommentsAndUser",
    attributeNodes = {
        @NamedAttributeNode("subject"),
        @NamedAttributeNode("user"),
        @NamedAttributeNode(value = "comments", subgraph = "comments")
    },
    subgraphs = @NamedSubgraph(
        name = "comments",
        attributeNodes = @NamedAttributeNode("user")
    )
)
public class Post {
    // Поля и методы
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Определён <code>EntityGraph</code> с именем <code>"Post.withCommentsAndUser"</code>.</li>
            <li>Загружаются атрибуты <code>subject</code>, <code>user</code> и коллекция <code>comments</code>.</li>
            <li>Для коллекции <code>comments</code> определён подграф (<code>subgraph</code>), который загружает
                связанные сущности <code>user</code>.</li>
        </ul>
    </p>

    <h3>2. Создание EntityGraph динамически</h3>
    <pre><code>
EntityGraph<Post> entityGraph = entityManager.createEntityGraph(Post.class);
entityGraph.addAttributeNodes("subject");
entityGraph.addAttributeNodes("user");
entityGraph.addSubgraph("comments").addAttributeNodes("user");
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Создаётся <code>EntityGraph</code> для сущности <code>Post</code>.</li>
            <li>Добавляются атрибуты <code>subject</code> и <code>user</code>.</li>
            <li>Для коллекции <code>comments</code> добавляется подграф, который загружает связанные сущности
                <code>user</code>.</li>
        </ul>
    </p>

    <h2>Стратегии загрузки EntityGraph</h2>
    <p>
        JPA определяет две стратегии загрузки данных с помощью <code>EntityGraph</code>:
    </p>
    <ul>
        <li>
            <span class="highlight">fetchgraph:</span>
            <ul>
                <li>Все атрибуты, перечисленные в <code>EntityGraph</code>, загружаются с <code>FetchType.EAGER</code>.</li>
                <li>Все остальные атрибуты загружаются с <code>FetchType.LAZY</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">loadgraph:</span>
            <ul>
                <li>Все атрибуты, перечисленные в <code>EntityGraph</code>, загружаются с <code>FetchType.EAGER</code>.</li>
                <li>Все остальные атрибуты сохраняют свой <code>FetchType</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Способы загрузки EntityGraph</h2>
    <p>
        Загрузить данные с помощью <code>EntityGraph</code> можно тремя способами:
    </p>
    <ul>
        <li>
            <span class="highlight">1. Использование метода find():</span>
            <pre><code>
Map<String, Object> properties = new HashMap<>();
properties.put("javax.persistence.fetchgraph", entityGraph);
Post post = entityManager.find(Post.class, postId, properties);
            </code></pre>
        </li>
        <li>
            <span class="highlight">2. Использование JPQL:</span>
            <pre><code>
TypedQuery<Post> query = entityManager.createQuery(
    "SELECT p FROM Post p WHERE p.id = :id", Post.class);
query.setParameter("id", postId);
query.setHint("javax.persistence.fetchgraph", entityGraph);
Post post = query.getSingleResult();
            </code></pre>
        </li>
        <li>
            <span class="highlight">3. Использование Criteria API:</span>
            <pre><code>
CriteriaBuilder cb = entityManager.getCriteriaBuilder();
CriteriaQuery<Post> query = cb.createQuery(Post.class);
Root<Post> post = query.from(Post.class);
query.select(post).where(cb.equal(post.get("id"), postId));

TypedQuery<Post> typedQuery = entityManager.createQuery(query);
typedQuery.setHint("javax.persistence.fetchgraph", entityGraph);
Post result = typedQuery.getSingleResult();
            </code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>EntityGraph</code> для оптимизации загрузки данных и предотвращения проблемы
                    N+1 Select.</li>
                <li>Выбирайте стратегию загрузки (<code>fetchgraph</code> или <code>loadgraph</code>) в зависимости от
                    требований приложения.</li>
                <li>Используйте аннотации или динамическое создание <code>EntityGraph</code> для управления загрузкой
                    данных.</li>
            </ul>
        </p>
    </div>

    <h2>Пример использования EntityGraph</h2>
    <pre><code>
// Определение EntityGraph
@Entity
@NamedEntityGraph(
    name = "Post.withCommentsAndUser",
    attributeNodes = {
        @NamedAttributeNode("subject"),
        @NamedAttributeNode("user"),
        @NamedAttributeNode(value = "comments", subgraph = "comments")
    },
    subgraphs = @NamedSubgraph(
        name = "comments",
        attributeNodes = @NamedAttributeNode("user")
    )
)
public class Post {
    // Поля и методы
}

// Загрузка данных с использованием EntityGraph
EntityGraph<Post> entityGraph = entityManager.createEntityGraph(Post.class);
entityGraph.addAttributeNodes("subject");
entityGraph.addAttributeNodes("user");
entityGraph.addSubgraph("comments").addAttributeNodes("user");

Map<String, Object> properties = new HashMap<>();
properties.put("javax.persistence.fetchgraph", entityGraph);
Post post = entityManager.find(Post.class, postId, properties);
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Определён <code>EntityGraph</code> для сущности <code>Post</code>.</li>
            <li>Данные загружаются с использованием <code>EntityGraph</code> через метод <code>find()</code>.</li>
        </ul>
    </p>
</body>
</html>', 'HIBERNATE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('90ca2507-b1f4-4afa-b32c-4a8154c5e737', 'Мемоизация', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Мемоизация</title>
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
    <h1>Мемоизация</h1>
    <p>
        <strong>Мемоизация</strong> — это техника оптимизации, которая заключается в кэшировании результатов
        выполнения функции для определённых входных параметров. Это позволяет избежать повторных
        вычислений и ускорить выполнение программы за счёт использования дополнительной памяти.
    </p>

    <h2>Основные принципы мемоизации</h2>
    <ul>
        <li>
            <span class="highlight">Детерминированность:</span>
            <ul>
                <li>Функция должна быть детерминированной, то есть при одинаковых входных параметрах
                    возвращать одинаковый результат.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Отсутствие побочных эффектов:</span>
            <ul>
                <li>Функция не должна изменять состояние системы или зависеть от внешних факторов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование кэша:</span>
            <ul>
                <li>Результаты вычислений сохраняются в кэше (например, в <code>Map</code>), чтобы избежать повторных
                    вычислений для одинаковых входных данных.</li>
            </ul>
        </li>
    </ul>

    <h2>Преимущества мемоизации</h2>
    <ul>
        <li>
            <span class="highlight">Ускорение выполнения:</span>
            <ul>
                <li>Повторные вызовы функции с одинаковыми параметрами выполняются мгновенно, так как
                    результат берётся из кэша.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Снижение нагрузки на процессор:</span>
            <ul>
                <li>Избегаются повторные вычисления, что снижает нагрузку на процессор.</li>
            </ul>
        </li>
    </ul>

    <h2>Недостатки мемоизации</h2>
    <ul>
        <li>
            <span class="highlight">Использование дополнительной памяти:</span>
            <ul>
                <li>Для хранения результатов требуется дополнительная память.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ограниченная применимость:</span>
            <ul>
                <li>Мемоизация применима только к детерминированным функциям без побочных эффектов.</li>
            </ul>
        </li>
    </ul>

    <h2>Реализация мемоизации в Java</h2>
    <p>
        В Java мемоизация может быть реализована с использованием интерфейса <code>Map</code>, где ключами
        являются входные параметры функции, а значениями — результаты вычислений.
    </p>
    <pre><code>
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

public class MemoizationExample {

    public static void main(String[] args) {
        Function<Integer, Integer> factorial = MemoizationExample::computeFactorial;
        Function<Integer, Integer> memoizedFactorial = memoize(factorial);

        System.out.println(memoizedFactorial.apply(5)); // Вычисление и кэширование
        System.out.println(memoizedFactorial.apply(5)); // Результат из кэша
    }

    private static int computeFactorial(int n) {
        if (n == 0) return 1;
        return n * computeFactorial(n - 1);
    }

    private static <T, R> Function<T, R> memoize(Function<T, R> function) {
        Map<T, R> cache = new HashMap<>();
        return input -> cache.computeIfAbsent(input, function);
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Функция <code>computeFactorial</code> вычисляет факториал числа.</li>
            <li>Функция <code>memoize</code> создаёт мемоизированную версию функции, используя <code>HashMap</code> для
                кэширования результатов.</li>
            <li>При повторном вызове функции с одинаковыми параметрами результат берётся из кэша.</li>
        </ul>
    </p>

    <h2>Мемоизация в библиотеке Ehcache</h2>
    <p>
        <strong>Ehcache</strong> — это популярная библиотека для кэширования в Java, которая поддерживает мемоизацию.
        Она предоставляет мощные инструменты для управления кэшем, включая настройку времени жизни
        записей, размер кэша и другие параметры.
    </p>
    <pre><code>
import org.ehcache.Cache;
import org.ehcache.CacheManager;
import org.ehcache.config.builders.CacheConfigurationBuilder;
import org.ehcache.config.builders.CacheManagerBuilder;
import org.ehcache.config.builders.ResourcePoolsBuilder;

public class EhcacheMemoizationExample {

    public static void main(String[] args) {
        CacheManager cacheManager = CacheManagerBuilder.newCacheManagerBuilder()
            .withCache("factorialCache", CacheConfigurationBuilder
                .newCacheConfigurationBuilder(Integer.class, Integer.class, ResourcePoolsBuilder.heap(10)))
            .build();
        cacheManager.init();

        Cache<Integer, Integer> factorialCache = cacheManager.getCache("factorialCache", Integer.class, Integer.class);

        System.out.println(computeFactorialWithCache(5, factorialCache)); // Вычисление и кэширование
        System.out.println(computeFactorialWithCache(5, factorialCache)); // Результат из кэша

        cacheManager.close();
    }

    private static int computeFactorialWithCache(int n, Cache<Integer, Integer> cache) {
        if (cache.containsKey(n)) {
            return cache.get(n);
        }
        int result = computeFactorial(n);
        cache.put(n, result);
        return result;
    }

    private static int computeFactorial(int n) {
        if (n == 0) return 1;
        return n * computeFactorial(n - 1);
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Используется <code>Ehcache</code> для кэширования результатов вычисления факториала.</li>
            <li>Результаты сохраняются в кэше и извлекаются из него при повторных вызовах.</li>
        </ul>
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Мемоизация подходит только для детерминированных функций без побочных эффектов.</li>
                <li>Используйте <code>Map</code> для простой реализации мемоизации.</li>
                <li>Для более сложных сценариев используйте библиотеки, такие как <code>Ehcache</code>.</li>
            </ul>
        </p>
    </div>

    <h2>Сравнение мемоизации и кэширования</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>Мемоизация</th>
                <th>Кэширование</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Область применения</td>
                <td>Функции с детерминированным поведением.</td>
                <td>Любые данные, которые могут быть кэшированы.</td>
            </tr>
            <tr>
                <td>Реализация</td>
                <td>Часто реализуется с использованием <code>Map</code>.</td>
                <td>Может использовать различные технологии (например, <code>Ehcache</code>, <code>Redis</code>).</td>
            </tr>
            <tr>
                <td>Производительность</td>
                <td>Высокая, так как результаты хранятся в памяти.</td>
                <td>Зависит от реализации кэша.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'HIBERNATE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2335316c-e318-4932-9b28-ba4b61d21320', 'Как настроить кэширование в Hibernate? Приведите пример конфигурации.', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Настройка кэширования в Hibernate</title>
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
        <h1>Настройка кэширования в Hibernate</h1>
        <p>
            Кэширование в Hibernate позволяет повысить производительность приложения за счёт уменьшения количества обращений к базе данных. Hibernate поддерживает кэширование первого и второго уровня, а также кэширование запросов. В этом руководстве мы рассмотрим, как настроить кэширование второго уровня и кэширование запросов.
        </p>

        <h2>Шаги для настройки кэширования</h2>
        <p>
            Для настройки кэширования в Hibernate необходимо выполнить следующие шаги:
        </p>
        <ol>
            <li>Добавить зависимости для выбранного провайдера кэширования (например, Ehcache).</li>
            <li>Настроить Hibernate для использования кэша второго уровня и кэширования запросов.</li>
            <li>Указать, какие сущности и запросы должны кэшироваться.</li>
        </ol>

        <h2>1. Добавление зависимостей</h2>
        <p>
            Для использования кэширования второго уровня необходимо добавить зависимости для выбранного провайдера. Например, для Ehcache добавьте следующие зависимости в <code>pom.xml</code> (если используете Maven):
        </p>
        <pre><code>&lt;dependency&gt;
    &lt;groupId&gt;org.hibernate&lt;/groupId&gt;
    &lt;artifactId&gt;hibernate-ehcache&lt;/artifactId&gt;
    &lt;version&gt;5.6.14.Final&lt;/version&gt;
&lt;/dependency&gt;
&lt;dependency&gt;
    &lt;groupId&gt;net.sf.ehcache&lt;/groupId&gt;
    &lt;artifactId&gt;ehcache&lt;/artifactId&gt;
    &lt;version&gt;2.10.9.2&lt;/version&gt;
&lt;/dependency&gt;</code></pre>

        <h2>2. Настройка Hibernate</h2>
        <p>
            Добавьте следующие настройки в файл конфигурации Hibernate (<code>hibernate.cfg.xml</code>):
        </p>
        <pre><code>&lt;property name="hibernate.cache.use_second_level_cache"&gt;true&lt;/property&gt;
&lt;property name="hibernate.cache.region.factory_class"&gt;org.hibernate.cache.ehcache.EhCacheRegionFactory&lt;/property&gt;
&lt;property name="hibernate.cache.use_query_cache"&gt;true&lt;/property&gt;
&lt;property name="hibernate.generate_statistics"&gt;true&lt;/property&gt;</code></pre>
        <p>
            Эти настройки включают кэш второго уровня, указывают провайдера кэширования (Ehcache) и включают кэширование запросов.
        </p>

        <h2>3. Указание кэшируемых сущностей</h2>
        <p>
            Чтобы указать, какие сущности должны кэшироваться, используйте аннотацию <code>@Cacheable</code> и <code>@org.hibernate.annotations.Cache</code>:
        </p>
        <pre><code>import javax.persistence.*;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Cacheable
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

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
        <p>
            Здесь <code>@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)</code> указывает стратегию кэширования (чтение-запись).
        </p>

        <h2>4. Кэширование запросов</h2>
        <p>
            Чтобы включить кэширование для конкретного запроса, используйте метод <code>setCacheable(true)</code>:
        </p>
        <pre><code>Session session = sessionFactory.openSession();

String hql = "FROM User WHERE name = :name";
Query&lt;User&gt; query = session.createQuery(hql, User.class);
query.setParameter("name", "John");
query.setCacheable(true); // Включение кэширования запроса

List&lt;User&gt; users = query.getResultList();
session.close();</code></pre>

        <h2>5. Конфигурация Ehcache (опционально)</h2>
        <p>
            Если вы используете Ehcache, вы можете настроить его, создав файл <code>ehcache.xml</code> в папке <code>src/main/resources</code>:
        </p>
        <pre><code>&lt;ehcache&gt;
    &lt;defaultCache
        maxElementsInMemory="10000"
        eternal="false"
        timeToIdleSeconds="120"
        timeToLiveSeconds="120"
        overflowToDisk="true"
        diskPersistent="false"
        diskExpiryThreadIntervalSeconds="120"
        memoryStoreEvictionPolicy="LRU"/&gt;
&lt;/ehcache&gt;</code></pre>

        <h2>Преимущества кэширования в Hibernate</h2>
        <ul>
            <li>
                <span class="highlight">Повышение производительности:</span> Уменьшение количества обращений к базе данных.
            </li>
            <li>
                <span class="highlight">Снижение нагрузки на базу данных:</span> Кэширование уменьшает количество запросов к СУБД.
            </li>
            <li>
                <span class="highlight">Гибкость:</span> Возможность настройки кэширования на уровне сущностей и запросов.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Настройка кэширования в Hibernate — это важный шаг для повышения производительности приложения. Использование кэша второго уровня и кэширования запросов позволяет значительно снизить нагрузку на базу данных и ускорить выполнение запросов. Правильная конфигурация и выбор стратегии кэширования помогут вам достичь оптимальной производительности.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9dfc3ebe-d579-42cc-8504-a3fb6edee3fa', 'Как можно выполнить миграцию схемы базы данных с помощью Hibernate?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Миграция схемы базы данных с помощью Hibernate</title>
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
        <h1>Миграция схемы базы данных с помощью Hibernate</h1>
        <p>
            <span class="highlight">Миграция схемы базы данных</span> — это процесс обновления структуры базы данных в соответствии с изменениями в модели данных приложения. Hibernate предоставляет несколько способов автоматизации этого процесса, что упрощает управление схемой базы данных.
        </p>

        <h2>Способы миграции схемы с помощью Hibernate</h2>
        <p>
            Hibernate поддерживает следующие подходы для миграции схемы базы данных:
        </p>
        <ul>
            <li>
                <span class="highlight">Автоматическое создание и обновление схемы:</span> Hibernate может автоматически создавать или обновлять схему базы данных на основе маппинга сущностей.
            </li>
            <li>
                <span class="highlight">Использование инструментов миграции:</span> Интеграция с инструментами, такими как Flyway или Liquibase, для более гибкого управления миграциями.
            </li>
        </ul>

        <h2>Автоматическое создание и обновление схемы</h2>
        <p>
            Hibernate может автоматически создавать или обновлять схему базы данных на основе маппинга сущностей. Для этого используются свойства конфигурации:
        </p>
        <ul>
            <li>
                <span class="highlight">hibernate.hbm2ddl.auto:</span> Управляет поведением автоматического создания и обновления схемы.
            </li>
        </ul>

        <h3>Значения свойства hibernate.hbm2ddl.auto</h3>
        <table>
            <thead>
                <tr>
                    <th>Значение</th>
                    <th>Описание</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><code>create</code></td>
                    <td>Создаёт схему базы данных при запуске приложения. Если схема уже существует, она будет удалена и создана заново.</td>
                </tr>
                <tr>
                    <td><code>update</code></td>
                    <td>Обновляет схему базы данных, добавляя новые таблицы и столбцы. Существующие данные сохраняются.</td>
                </tr>
                <tr>
                    <td><code>create-drop</code></td>
                    <td>Создаёт схему при запуске приложения и удаляет её при завершении. Используется для тестирования.</td>
                </tr>
                <tr>
                    <td><code>validate</code></td>
                    <td>Проверяет, соответствует ли схема базы данных маппингу сущностей. Если нет, выбрасывается исключение.</td>
                </tr>
                <tr>
                    <td><code>none</code></td>
                    <td>Отключает автоматическое управление схемой.</td>
                </tr>
            </tbody>
        </table>

        <h3>Пример настройки</h3>
        <p>
            Добавьте следующее свойство в файл конфигурации <code>hibernate.cfg.xml</code>:
        </p>
        <pre><code>&lt;property name="hibernate.hbm2ddl.auto"&gt;update&lt;/property&gt;</code></pre>
        <p>
            Или в <code>application.properties</code> (для Spring Boot):
        </p>
        <pre><code>spring.jpa.hibernate.ddl-auto=update</code></pre>

        <h3>Ограничения автоматического управления схемой</h3>
        <ul>
            <li>Не подходит для production-среды, так как может привести к потере данных.</li>
            <li>Ограниченная поддержка сложных изменений схемы (например, переименование столбцов).</li>
        </ul>

        <h2>Использование инструментов миграции (Flyway, Liquibase)</h2>
        <p>
            Для более гибкого и безопасного управления миграциями рекомендуется использовать специализированные инструменты, такие как Flyway или Liquibase.
        </p>

        <h3>Flyway</h3>
        <p>
            <span class="highlight">Flyway</span> — это инструмент для управления миграциями базы данных, который использует SQL-скрипты для применения изменений.
        </p>
        <h4>Пример использования Flyway</h4>
        <ol>
            <li>Добавьте зависимость Flyway в проект (для Maven):
                <pre><code>&lt;dependency&gt;
    &lt;groupId&gt;org.flywaydb&lt;/groupId&gt;
    &lt;artifactId&gt;flyway-core&lt;/artifactId&gt;
    &lt;version&gt;8.5.13&lt;/version&gt;
&lt;/dependency&gt;</code></pre>
            </li>
            <li>Создайте SQL-скрипты миграции в папке <code>src/main/resources/db/migration</code>:
                <pre><code>-- V1__Create_user_table.sql
CREATE TABLE user (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255)
);

-- V2__Add_email_to_user.sql
ALTER TABLE user ADD COLUMN email VARCHAR(255);</code></pre>
            </li>
            <li>Настройте Flyway в <code>application.properties</code>:
                <pre><code>spring.flyway.enabled=true
spring.flyway.locations=classpath:db/migration</code></pre>
            </li>
        </ol>

        <h3>Liquibase</h3>
        <p>
            <span class="highlight">Liquibase</span> — это ещё один инструмент для управления миграциями, который поддерживает различные форматы описания изменений (XML, YAML, JSON).
        </p>
        <h4>Пример использования Liquibase</h4>
        <ol>
            <li>Добавьте зависимость Liquibase в проект (для Maven):
                <pre><code>&lt;dependency&gt;
    &lt;groupId&gt;org.liquibase&lt;/groupId&gt;
    &lt;artifactId&gt;liquibase-core&lt;/artifactId&gt;
    &lt;version&gt;4.15.0&lt;/version&gt;
&lt;/dependency&gt;</code></pre>
            </li>
            <li>Создайте файл изменений в формате XML:
                <pre><code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;databaseChangeLog xmlns="http://www.liquibase.org/xml/ns/dbchangelog"
                   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                   xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog
                   http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-4.15.xsd"&gt;

    &lt;changeSet id="1" author="me"&gt;
        &lt;createTable tableName="user"&gt;
            &lt;column name="id" type="BIGINT"&gt;
                &lt;constraints primaryKey="true"/&gt;
            &lt;/column&gt;
            &lt;column name="name" type="VARCHAR(255)"/&gt;
        &lt;/createTable&gt;
    &lt;/changeSet&gt;

    &lt;changeSet id="2" author="me"&gt;
        &lt;addColumn tableName="user"&gt;
            &lt;column name="email" type="VARCHAR(255)"/&gt;
        &lt;/addColumn&gt;
    &lt;/changeSet&gt;
&lt;/databaseChangeLog&gt;</code></pre>
            </li>
            <li>Настройте Liquibase в <code>application.properties</code>:
                <pre><code>spring.liquibase.enabled=true
spring.liquibase.change-log=classpath:db/changelog/db.changelog-master.xml</code></pre>
            </li>
        </ol>

        <h2>Заключение</h2>
        <p>
            Миграция схемы базы данных с помощью Hibernate может быть выполнена как через автоматическое управление схемой, так и с использованием специализированных инструментов, таких как Flyway или Liquibase. Автоматическое управление схемой подходит для разработки и тестирования, а инструменты миграции обеспечивают более гибкий и безопасный подход для production-среды.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5150a13b-fe53-454c-8c14-b4cca4fedffa', 'Как работает Spring Security? Как сконфигурировать? Какие интерфейсы  используются?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Security: как работает и как настроить</title>
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
    <h1>Как работает Spring Security? Как сконфигурировать? Какие интерфейсы используются?</h1>
    <p>
        <strong>Spring Security</strong> — это мощный и гибкий фреймворк для обеспечения безопасности в Spring-приложениях. Он предоставляет механизмы для аутентификации, авторизации, защиты от атак и других аспектов безопасности. В этой статье мы рассмотрим, как работает Spring Security, как его настроить и какие интерфейсы используются.
    </p>

    <h2>Основные компоненты Spring Security</h2>
    <p>
        Spring Security состоит из нескольких ключевых компонентов, которые взаимодействуют друг с другом для обеспечения безопасности:
    </p>
    <ul>
        <li>
            <span class="highlight">SecurityContextHolder:</span> Хранит контекст безопасности, который включает информацию о текущем пользователе (принципале) и его аутентификации.
        </li>
        <li>
            <span class="highlight">SecurityContext:</span> Содержит объект <code>Authentication</code>, который представляет текущего пользователя и его права доступа.
        </li>
        <li>
            <span class="highlight">Authentication:</span> Представляет принципала (пользователя) и его аутентификационные данные, такие как имя пользователя, пароль и роли.
        </li>
        <li>
            <span class="highlight">GrantedAuthority:</span> Отражает разрешения (роли), выданные пользователю.
        </li>
        <li>
            <span class="highlight">UserDetails:</span> Предоставляет информацию о пользователе, необходимую для создания объекта <code>Authentication</code>.
        </li>
        <li>
            <span class="highlight">UserDetailsService:</span> Интерфейс для загрузки информации о пользователе по его имени (или другому идентификатору).
        </li>
    </ul>

    <h2>Как работает Spring Security?</h2>
    <p>
        Процесс аутентификации и авторизации в Spring Security можно описать следующими шагами:
    </p>
    <ol>
        <li>
            <span class="highlight">Запрос аутентификации:</span> Пользователь отправляет запрос с именем и паролем.
        </li>
        <li>
            <span class="highlight">Создание токена:</span> <code>UsernamePasswordAuthenticationFilter</code> создаёт объект <code>UsernamePasswordAuthenticationToken</code>, который реализует интерфейс <code>Authentication</code>.
        </li>
        <li>
            <span class="highlight">Проверка аутентификации:</span> Токен передаётся в <code>AuthenticationManager</code>, который проверяет его валидность.
        </li>
        <li>
            <span class="highlight">Установка контекста безопасности:</span> Если аутентификация успешна, <code>AuthenticationManager</code> возвращает полностью заполненный объект <code>Authentication</code>, который сохраняется в <code>SecurityContextHolder</code>.
        </li>
        <li>
            <span class="highlight">Авторизация:</span> Проверяются права доступа пользователя (<code>GrantedAuthority</code>) для выполнения запрошенного действия.
        </li>
    </ol>

    <h3>Пример получения текущего пользователя:</h3>
    <pre><code>SecurityContextHolder.getContext().getAuthentication().getPrincipal();</code></pre>

    <h2>Основные интерфейсы Spring Security</h2>
    <ul>
        <li>
            <span class="highlight">UserDetails:</span> Предоставляет информацию о пользователе (имя, пароль, роли).
        </li>
        <li>
            <span class="highlight">UserDetailsService:</span> Загружает информацию о пользователе по его имени.
            <pre><code>public interface UserDetailsService {
    UserDetails loadUserByUsername(String username) throws UsernameNotFoundException;
}</code></pre>
        </li>
        <li>
            <span class="highlight">AuthenticationManager:</span> Управляет процессом аутентификации.
        </li>
        <li>
            <span class="highlight">GrantedAuthority:</span> Представляет роль или разрешение пользователя.
        </li>
    </ul>

    <h2>Как сконфигурировать Spring Security?</h2>
    <p>
        Для настройки Spring Security можно использовать Java-конфигурацию или XML. Рассмотрим пример Java-конфигурации:
    </p>

    <h3>Пример конфигурации Spring Security:</h3>
    <pre><code>@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
            .withUser("user").password("{noop}password").roles("USER")
            .and()
            .withUser("admin").password("{noop}admin").roles("ADMIN");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .antMatchers("/admin/**").hasRole("ADMIN")
                .antMatchers("/user/**").hasAnyRole("USER", "ADMIN")
                .anyRequest().authenticated()
            .and()
            .formLogin()
                .loginPage("/login")
                .permitAll()
            .and()
            .logout()
                .permitAll();
    }
}</code></pre>

    <h3>Объяснение конфигурации:</h3>
    <ul>
        <li>
            <span class="highlight">In-Memory аутентификация:</span> В примере используется in-memory аутентификация с двумя пользователями: <code>user</code> и <code>admin</code>.
        </li>
        <li>
            <span class="highlight">Настройка доступа:</span> Определены правила доступа для разных ролей. Например, доступ к <code>/admin/**</code> разрешён только для роли <code>ADMIN</code>.
        </li>
        <li>
            <span class="highlight">Форма входа:</span> Настроена страница входа (<code>/login</code>) и выход (<code>/logout</code>).
        </li>
    </ul>

    <h2>Преимущества Spring Security</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Поддержка различных методов аутентификации (in-memory, LDAP, OAuth2 и другие).
        </li>
        <li>
            <span class="highlight">Интеграция:</span> Легко интегрируется с другими Spring-проектами.
        </li>
        <li>
            <span class="highlight">Безопасность:</span> Предоставляет защиту от атак, таких как CSRF, XSS и других.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Сложность настройки:</span> Настройка Spring Security может быть сложной для новичков.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Некоторые механизмы безопасности могут влиять на производительность приложения.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring Security предоставляет мощные инструменты для обеспечения безопасности приложения. Однако его настройка требует понимания основных концепций и механизмов.
        </p>
    </div>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('637e20bf-5069-43b0-a1c1-c3c457db0b1e', 'Расскажите про аннотацию @Lookup', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Lookup</title>
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
    <h1>Аннотация @Lookup</h1>
    <p>
        Аннотация <code>@Lookup</code> используется в Spring для внедрения зависимостей с разными жизненными циклами. Она позволяет синглтон-бину получать новый экземпляр prototype-бина каждый раз при вызове определённого метода.
    </p>

    <h2>Когда используется @Lookup?</h2>
    <p>
        В Spring бины по умолчанию являются синглтонами (создаются один раз), но иногда требуется, чтобы синглтон-бин мог получать новый экземпляр другого бина (prototype) при каждом вызове метода. Например:
    </p>
    <ul>
        <li>
            <span class="highlight">Синглтон-бин:</span> Бин <code>Car</code> создаётся один раз и существует на протяжении всего жизненного цикла приложения.
        </li>
        <li>
            <span class="highlight">Prototype-бин:</span> Бин <code>Passenger</code> должен создаваться каждый раз новый при вызове метода в <code>Car</code>.
        </li>
    </ul>

    <h2>Как работает @Lookup?</h2>
    <ul>
        <li>
            <span class="highlight">Метод-заглушка:</span> В синглтон-бине создаётся метод, который возвращает prototype-бин. Этот метод помечается аннотацией <code>@Lookup</code>.
        </li>
        <li>
            <span class="highlight">Переопределение метода:</span> Spring создаёт подкласс и переопределяет этот метод, чтобы при каждом вызове возвращался новый экземпляр prototype-бина.
        </li>
        <li>
            <span class="highlight">Возвращаемое значение:</span> В методе-заглушке можно вернуть <code>null</code>, так как Spring всё равно переопределит его.
        </li>
    </ul>

    <h2>Пример использования @Lookup</h2>
    <p>
        Рассмотрим пример, где синглтон-бин <code>Car</code> каждый раз получает новый экземпляр prototype-бина <code>Passenger</code>:
    </p>
    <pre><code>@Component
public class Car {

    @Lookup
    public Passenger createPassenger() {
        return null; // Spring переопределит этот метод
    }

    public void drive() {
        Passenger passenger = createPassenger();
        System.out.println("Driving with passenger: " + passenger);
    }
}

@Component
@Scope("prototype")
public class Passenger {
    // Логика бина Passenger
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@Lookup</code> работает только для методов, возвращающих prototype-бины. Она не может быть использована для полей или конструкторов.
        </p>
    </div>

    <h2>Преимущества @Lookup</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет синглтон-бину получать новый экземпляр prototype-бина при каждом вызове метода.
        </li>
        <li>
            <span class="highlight">Простота:</span> Не требует сложной конфигурации или дополнительных аннотаций.
        </li>
        <li>
            <span class="highlight">Прозрачность:</span> Логика создания нового экземпляра скрыта от разработчика и управляется Spring.
        </li>
    </ul>

    <h2>Ограничения @Lookup</h2>
    <ul>
        <li>
            <span class="highlight">Только для методов:</span> Аннотация может быть применена только к методам, возвращающим prototype-бины.
        </li>
        <li>
            <span class="highlight">Зависимость от Spring:</span> Использование <code>@Lookup</code> привязывает код к Spring, что может усложнить переход на другой фреймворк.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('93721e2b-08b1-4cfe-98fe-3eb581897120', 'Что такое поток (thread) и чем он отличается от процесса (process)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Потоки и процессы в программировании</title>
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
        <h1>Что такое поток (thread) и чем он отличается от процесса (process)?</h1>
        <p>
            В программировании и операционных системах <span class="highlight">поток (thread)</span> и <span class="highlight">процесс (process)</span> — это два основных способа организации выполнения задач. Они играют ключевую роль в многозадачности и параллельном выполнении кода. Однако между ними есть существенные различия.
        </p>

        <h2>Что такое процесс (process)?</h2>
        <p>
            <span class="highlight">Процесс</span> — это экземпляр программы, который выполняется операционной системой. Каждый процесс имеет собственное адресное пространство, ресурсы (память, файловые дескрипторы) и контекст выполнения. Процессы изолированы друг от друга, что обеспечивает стабильность и безопасность.
        </p>
        <h3>Характеристики процесса</h3>
        <ul>
            <li>
                <span class="highlight">Изоляция:</span> Процессы имеют отдельные адресные пространства, что предотвращает их вмешательство друг в друга.
            </li>
            <li>
                <span class="highlight">Ресурсы:</span> Каждый процесс имеет свои ресурсы (память, файлы, сокеты и т.д.).
            </li>
            <li>
                <span class="highlight">Запуск и завершение:</span> Процессы создаются и завершаются операционной системой, что требует больше времени и ресурсов.
            </li>
            <li>
                <span class="highlight">Коммуникация:</span> Процессы взаимодействуют через механизмы межпроцессного взаимодействия (IPC), такие как pipes, sockets или shared memory.
            </li>
        </ul>

        <h2>Что такое поток (thread)?</h2>
        <p>
            <span class="highlight">Поток</span> — это наименьшая единица выполнения в процессе. Потоки разделяют адресное пространство и ресурсы процесса, но имеют собственный стек вызовов и контекст выполнения. Потоки позволяют выполнять несколько задач параллельно в рамках одного процесса.
        </p>
        <h3>Характеристики потока</h3>
        <ul>
            <li>
                <span class="highlight">Общие ресурсы:</span> Потоки разделяют память и ресурсы процесса, что упрощает обмен данными между ними.
            </li>
            <li>
                <span class="highlight">Легковесность:</span> Создание и переключение потоков требует меньше ресурсов, чем процессов.
            </li>
            <li>
                <span class="highlight">Параллелизм:</span> Потоки позволяют выполнять несколько задач одновременно в рамках одного процесса.
            </li>
            <li>
                <span class="highlight">Синхронизация:</span> Поскольку потоки разделяют ресурсы, требуется синхронизация для предотвращения конфликтов.
            </li>
        </ul>

        <h2>Разница между процессом и потоком</h2>
        <table>
            <thead>
                <tr>
                    <th>Характеристика</th>
                    <th>Процесс</th>
                    <th>Поток</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Адресное пространство</td>
                    <td>Изолированное</td>
                    <td>Разделяемое в рамках процесса</td>
                </tr>
                <tr>
                    <td>Ресурсы</td>
                    <td>Собственные</td>
                    <td>Разделяемые</td>
                </tr>
                <tr>
                    <td>Создание и переключение</td>
                    <td>Требует больше ресурсов</td>
                    <td>Требует меньше ресурсов</td>
                </tr>
                <tr>
                    <td>Коммуникация</td>
                    <td>Межпроцессное взаимодействие (IPC)</td>
                    <td>Общая память</td>
                </tr>
                <tr>
                    <td>Изоляция</td>
                    <td>Высокая</td>
                    <td>Низкая (в рамках процесса)</td>
                </tr>
                <tr>
                    <td>Параллелизм</td>
                    <td>На уровне процессов</td>
                    <td>На уровне потоков</td>
                </tr>
            </tbody>
        </table>

        <h2>Пример использования потоков и процессов</h2>
        <h3>Пример процесса</h3>
        <p>
            В операционной системе каждый запущенный браузер, текстовый редактор или сервер — это отдельный процесс.
        </p>
        <h3>Пример потока</h3>
        <p>
            Веб-сервер может использовать несколько потоков для обработки запросов клиентов одновременно. Например, один поток может обрабатывать запрос, а другой — отправлять ответ.
        </p>

        <h2>Преимущества и недостатки</h2>
        <h3>Процессы</h3>
        <ul>
            <li>
                <span class="highlight">Преимущества:</span> Высокая изоляция, стабильность, безопасность.
            </li>
            <li>
                <span class="highlight">Недостатки:</span> Большие накладные расходы на создание и переключение.
            </li>
        </ul>
        <h3>Потоки</h3>
        <ul>
            <li>
                <span class="highlight">Преимущества:</span> Легковесность, простота обмена данными, высокая производительность.
            </li>
            <li>
                <span class="highlight">Недостатки:</span> Требуется синхронизация, возможны конфликты при доступе к общим ресурсам.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Потоки и процессы — это два основных способа организации выполнения задач в программировании. Процессы обеспечивают высокую изоляцию и безопасность, но требуют больше ресурсов. Потоки легковесны и позволяют эффективно использовать ресурсы, но требуют синхронизации. Выбор между процессами и потоками зависит от конкретных требований приложения.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fa1153f1-d3f5-4651-ab2e-a044de71c50a', 'Как вы можете создать поток в java?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Создание потоков в Java</title>
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
        <h1>Как создать поток в Java?</h1>
        <p>
            В Java потоки (threads) используются для выполнения задач параллельно. Потоки позволяют выполнять несколько операций одновременно, что особенно полезно для повышения производительности в многозадачных приложениях. В Java есть несколько способов создания потоков.
        </p>

        <h2>Способы создания потоков в Java</h2>
        <p>
            В Java потоки можно создать следующими способами:
        </p>
        <ul>
            <li>
                <span class="highlight">Наследование от класса <code>Thread</code>.</span>
            </li>
            <li>
                <span class="highlight">Реализация интерфейса <code>Runnable</code>.</span>
            </li>
            <li>
                <span class="highlight">Использование <code>ExecutorService</code> (начиная с Java 5).</span>
            </li>
        </ul>

        <h2>1. Наследование от класса <code>Thread</code></h2>
        <p>
            Класс <code>Thread</code> предоставляет базовую функциональность для создания и управления потоками. Чтобы создать поток, нужно унаследовать класс <code>Thread</code> и переопределить метод <code>run()</code>.
        </p>
        <h3>Пример</h3>
        <pre><code>class MyThread extends Thread {
    @Override
    public void run() {
        System.out.println("Поток запущен: " + Thread.currentThread().getName());
    }
}

public class Main {
    public static void main(String[] args) {
        MyThread thread = new MyThread();
        thread.start(); // Запуск потока
    }
}</code></pre>
        <p>
            В этом примере метод <code>run()</code> содержит код, который будет выполнен в новом потоке. Метод <code>start()</code> запускает поток.
        </p>

        <h2>2. Реализация интерфейса <code>Runnable</code></h2>
        <p>
            Интерфейс <code>Runnable</code> предоставляет более гибкий способ создания потоков. Вместо наследования от <code>Thread</code>, можно реализовать интерфейс <code>Runnable</code> и передать его экземпляр в конструктор <code>Thread</code>.
        </p>
        <h3>Пример</h3>
        <pre><code>class MyRunnable implements Runnable {
    @Override
    public void run() {
        System.out.println("Поток запущен: " + Thread.currentThread().getName());
    }
}

public class Main {
    public static void main(String[] args) {
        Thread thread = new Thread(new MyRunnable());
        thread.start(); // Запуск потока
    }
}</code></pre>
        <p>
            Этот подход предпочтителен, так как он позволяет избежать ограничений множественного наследования и делает код более гибким.
        </p>

        <h2>3. Использование <code>ExecutorService</code></h2>
        <p>
            Начиная с Java 5, для управления потоками рекомендуется использовать <code>ExecutorService</code>. Это более высокоуровневый API, который упрощает управление пулами потоков.
        </p>
        <h3>Пример</h3>
        <pre><code>import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class Main {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(2); // Создание пула потоков

        executor.submit(() -> {
            System.out.println("Поток запущен: " + Thread.currentThread().getName());
        });

        executor.shutdown(); // Завершение работы ExecutorService
    }
}</code></pre>
        <p>
            В этом примере используется пул потоков, который позволяет эффективно управлять несколькими потоками.
        </p>

        <h2>Преимущества использования потоков</h2>
        <ul>
            <li>
                <span class="highlight">Параллелизм:</span> Потоки позволяют выполнять несколько задач одновременно.
            </li>
            <li>
                <span class="highlight">Производительность:</span> Эффективное использование ресурсов процессора.
            </li>
            <li>
                <span class="highlight">Гибкость:</span> Возможность управления задачами с помощью пулов потоков.
            </li>
        </ul>

        <h2>Рекомендации по использованию потоков</h2>
        <ul>
            <li>
                <span class="highlight">Используйте <code>Runnable</code> вместо наследования от <code>Thread</code>:</span> Это делает код более гибким и соответствует принципам ООП.
            </li>
            <li>
                <span class="highlight">Используйте <code>ExecutorService</code> для управления потоками:</span> Это упрощает управление пулами потоков и повышает производительность.
            </li>
            <li>
                <span class="highlight">Синхронизация:</span> При работе с общими ресурсами используйте механизмы синхронизации, такие как <code>synchronized</code>, <code>Lock</code> или атомарные классы.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Создание потоков в Java — это мощный инструмент для повышения производительности и параллельного выполнения задач. Вы можете использовать наследование от <code>Thread</code>, реализацию интерфейса <code>Runnable</code> или высокоуровневый API <code>ExecutorService</code>. Выбор подхода зависит от конкретных требований вашего приложения.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('be767755-3b3c-412b-b678-39925dc1319b', 'Что такое условная переменная (condition variable), и когда её следует использовать?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Условные переменные (condition variables)</title>
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
        <h1>Что такое условная переменная (condition variable)?</h1>
        <p>
            <span class="highlight">Условная переменная (condition variable)</span> — это механизм синхронизации, который позволяет потокам ожидать выполнения определённого условия перед продолжением работы. Условные переменные используются вместе с блокировками (например, мьютексами) для координации работы потоков.
        </p>

        <h2>Основные понятия условных переменных</h2>
        <ul>
            <li>
                <span class="highlight">Ожидание условия:</span> Поток может приостановить выполнение и ждать, пока другое поток не изменит состояние и не уведомит об этом.
            </li>
            <li>
                <span class="highlight">Уведомление:</span> Поток, изменивший состояние, может уведомить ожидающие потоки, чтобы они продолжили выполнение.
            </li>
            <li>
                <span class="highlight">Связь с блокировкой:</span> Условные переменные всегда используются вместе с блокировкой (например, мьютексом), чтобы обеспечить атомарность операций.
            </li>
        </ul>

        <h2>Когда использовать условные переменные?</h2>
        <p>
            Условные переменные полезны в следующих сценариях:
        </p>
        <ul>
            <li>
                <span class="highlight">Ожидание события:</span> Когда поток должен ждать, пока другой поток не выполнит определённое действие (например, заполнение буфера).
            </li>
            <li>
                <span class="highlight">Координация потоков:</span> Когда несколько потоков должны работать согласованно (например, производитель-потребитель).
            </li>
            <li>
                <span class="highlight">Управление доступом к ресурсам:</span> Когда доступ к ресурсу зависит от определённого условия (например, доступность данных).
            </li>
        </ul>

        <h2>Пример использования условной переменной</h2>
        <p>
            Рассмотрим классический пример "производитель-потребитель", где один поток производит данные, а другой их потребляет.
        </p>
        <pre><code>import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class SharedBuffer {
    private final Lock lock = new ReentrantLock();
    private final Condition notFull = lock.newCondition(); // Условная переменная
    private final Condition notEmpty = lock.newCondition(); // Условная переменная
    private int[] buffer = new int[10];
    private int count = 0;

    public void produce(int value) throws InterruptedException {
        lock.lock();
        try {
            while (count == buffer.length) {
                notFull.await(); // Ожидание, пока буфер не освободится
            }
            buffer[count++] = value;
            notEmpty.signal(); // Уведомление потребителя
        } finally {
            lock.unlock();
        }
    }

    public int consume() throws InterruptedException {
        lock.lock();
        try {
            while (count == 0) {
                notEmpty.await(); // Ожидание, пока буфер не заполнится
            }
            int value = buffer[--count];
            notFull.signal(); // Уведомление производителя
            return value;
        } finally {
            lock.unlock();
        }
    }
}

public class Main {
    public static void main(String[] args) {
        SharedBuffer buffer = new SharedBuffer();

        Thread producer = new Thread(() -> {
            try {
                for (int i = 0; i < 20; i++) {
                    buffer.produce(i);
                    System.out.println("Произведено: " + i);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        });

        Thread consumer = new Thread(() -> {
            try {
                for (int i = 0; i < 20; i++) {
                    int value = buffer.consume();
                    System.out.println("Потреблено: " + value);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        });

        producer.start();
        consumer.start();
    }
}</code></pre>
        <p>
            В этом примере условные переменные <code>notFull</code> и <code>notEmpty</code> используются для координации работы производителя и потребителя.
        </p>

        <h2>Основные методы условных переменных</h2>
        <ul>
            <li>
                <span class="highlight">await():</span> Приостанавливает выполнение потока и освобождает блокировку. Поток продолжит выполнение после вызова <code>signal()</code> или <code>signalAll()</code>.
            </li>
            <li>
                <span class="highlight">signal():</span> Пробуждает один из ожидающих потоков.
            </li>
            <li>
                <span class="highlight">signalAll():</span> Пробуждает все ожидающие потоки.
            </li>
        </ul>

        <h2>Преимущества условных переменных</h2>
        <ul>
            <li>
                <span class="highlight">Эффективность:</span> Потоки не тратят ресурсы на активное ожидание.
            </li>
            <li>
                <span class="highlight">Гибкость:</span> Позволяют реализовать сложные сценарии синхронизации.
            </li>
            <li>
                <span class="highlight">Координация потоков:</span> Упрощают управление взаимодействием между потоками.
            </li>
        </ul>

        <h2>Рекомендации по использованию условных переменных</h2>
        <ul>
            <li>
                <span class="highlight">Всегда используйте блокировки:</span> Условные переменные должны использоваться вместе с блокировками для обеспечения атомарности.
            </li>
            <li>
                <span class="highlight">Проверяйте условия в цикле:</span> Используйте <code>while</code> вместо <code>if</code> для проверки условий, чтобы избежать ложных пробуждений.
            </li>
            <li>
                <span class="highlight">Избегайте deadlock:</span> Убедитесь, что потоки не блокируют друг друга при использовании условных переменных.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Условные переменные — это мощный инструмент для координации потоков и управления доступом к ресурсам в многопоточных приложениях. Они позволяют потокам эффективно ожидать выполнения определённых условий и уведомлять друг друга об изменениях состояния. Правильное использование условных переменных помогает создавать надёжные и производительные многопоточные программы.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1bfa118f-000b-40e1-9094-6a4f9d98a235', 'Опишите проблему в многопоточке «производитель-потребитель» и возможное её решение.', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Проблема производитель-потребитель</title>
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
        <h1>Проблема производитель-потребитель</h1>
        <p>
            <span class="highlight">Проблема производитель-потребитель</span> — это классическая задача многопоточного программирования, в которой один или несколько потоков (производители) генерируют данные и помещают их в общий буфер, а другие потоки (потребители) извлекают и обрабатывают эти данные. Основная сложность заключается в синхронизации производителей и потребителей, чтобы избежать гонок (race conditions) и обеспечить корректную работу.
        </p>

        <h2>Описание проблемы</h2>
        <p>
            В задаче "производитель-потребитель" есть два типа потоков:
        </p>
        <ul>
            <li>
                <span class="highlight">Производители:</span> Генерируют данные и помещают их в общий буфер.
            </li>
            <li>
                <span class="highlight">Потребители:</span> Извлекают данные из буфера и обрабатывают их.
            </li>
        </ul>
        <p>
            Основные проблемы, которые нужно решить:
        </p>
        <ul>
            <li>
                <span class="highlight">Синхронизация:</span> Производители и потребители должны корректно работать с общим буфером, чтобы избежать гонок.
            </li>
            <li>
                <span class="highlight">Ожидание:</span> Если буфер пуст, потребители должны ждать, пока производители не добавят данные. Если буфер полон, производители должны ждать, пока потребители не освободят место.
            </li>
        </ul>

        <h2>Решение проблемы</h2>
        <p>
            Для решения проблемы "производитель-потребитель" используются механизмы синхронизации, такие как блокировки (locks) и условные переменные (condition variables). Рассмотрим пример решения на Java с использованием <code>ReentrantLock</code> и <code>Condition</code>.
        </p>

        <h3>Пример реализации</h3>
        <pre><code>import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class SharedBuffer {
    private final Lock lock = new ReentrantLock();
    private final Condition notFull = lock.newCondition(); // Условная переменная для "не полон"
    private final Condition notEmpty = lock.newCondition(); // Условная переменная для "не пуст"
    private final int[] buffer;
    private int count = 0;
    private int putIndex = 0;
    private int takeIndex = 0;

    public SharedBuffer(int size) {
        buffer = new int[size];
    }

    public void produce(int value) throws InterruptedException {
        lock.lock();
        try {
            while (count == buffer.length) {
                notFull.await(); // Ожидание, пока буфер не освободится
            }
            buffer[putIndex] = value;
            putIndex = (putIndex + 1) % buffer.length;
            count++;
            notEmpty.signal(); // Уведомление потребителей
        } finally {
            lock.unlock();
        }
    }

    public int consume() throws InterruptedException {
        lock.lock();
        try {
            while (count == 0) {
                notEmpty.await(); // Ожидание, пока буфер не заполнится
            }
            int value = buffer[takeIndex];
            takeIndex = (takeIndex + 1) % buffer.length;
            count--;
            notFull.signal(); // Уведомление производителей
            return value;
        } finally {
            lock.unlock();
        }
    }
}

public class Main {
    public static void main(String[] args) {
        SharedBuffer buffer = new SharedBuffer(10);

        Thread producer = new Thread(() -> {
            try {
                for (int i = 0; i < 20; i++) {
                    buffer.produce(i);
                    System.out.println("Произведено: " + i);
                    Thread.sleep(100); // Имитация работы
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        });

        Thread consumer = new Thread(() -> {
            try {
                for (int i = 0; i < 20; i++) {
                    int value = buffer.consume();
                    System.out.println("Потреблено: " + value);
                    Thread.sleep(150); // Имитация работы
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        });

        producer.start();
        consumer.start();
    }
}</code></pre>

        <h3>Объяснение решения</h3>
        <ul>
            <li>
                <span class="highlight">Блокировка (Lock):</span> Используется для синхронизации доступа к буферу.
            </li>
            <li>
                <span class="highlight">Условные переменные (Condition):</span> Используются для ожидания и уведомления:
                <ul>
                    <li><code>notFull</code> — ожидание, пока буфер не освободится.</li>
                    <li><code>notEmpty</code> — ожидание, пока буфер не заполнится.</li>
                </ul>
            </li>
            <li>
                <span class="highlight">Циклическая проверка условий:</span> Используется <code>while</code> вместо <code>if</code>, чтобы избежать ложных пробуждений.
            </li>
        </ul>

        <h2>Преимущества решения</h2>
        <ul>
            <li>
                <span class="highlight">Корректная синхронизация:</span> Исключает гонки и обеспечивает корректное взаимодействие потоков.
            </li>
            <li>
                <span class="highlight">Эффективное использование ресурсов:</span> Потоки не тратят ресурсы на активное ожидание.
            </li>
            <li>
                <span class="highlight">Гибкость:</span> Решение легко масштабируется на несколько производителей и потребителей.
            </li>
        </ul>

        <h2>Рекомендации по реализации</h2>
        <ul>
            <li>
                <span class="highlight">Используйте блокировки и условные переменные:</span> Это обеспечивает корректную синхронизацию и эффективное ожидание.
            </li>
            <li>
                <span class="highlight">Проверяйте условия в цикле:</span> Используйте <code>while</code> для проверки условий, чтобы избежать ложных пробуждений.
            </li>
            <li>
                <span class="highlight">Тестируйте на разных сценариях:</span> Убедитесь, что решение работает корректно при разной скорости производителей и потребителей.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Проблема "производитель-потребитель" — это важный пример многопоточного программирования, который демонстрирует необходимость синхронизации и управления доступом к общим ресурсам. Использование блокировок и условных переменных позволяет эффективно решить эту задачу, обеспечивая корректную работу производителей и потребителей.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7a45bdc4-c43f-4180-b25a-0b2075a24984', 'Что такое Big O? Как происходит оценка асимптотической сложности  алгоритмов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Big O и оценка асимптотической сложности алгоритмов</title>
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
    <h1>Big O и оценка асимптотической сложности алгоритмов</h1>
    <p>
        <span class="highlight">Big O</span> (O большое / символ Ландау) — это математическое обозначение, используемое для описания асимптотического поведения функций. В контексте алгоритмов оно применяется для оценки их временной сложности и сложности по памяти.
    </p>

    <h2>Что такое асимптотическая сложность?</h2>
    <ul>
        <li>
            <span class="highlight">Асимптотика</span> — это характер изменения функции при стремлении её аргумента к определённой точке (например, к бесконечности).
        </li>
        <li>
            Временная сложность алгоритма оценивается через количество элементарных операций процессора (шагов), необходимых для его выполнения. Каждая операция считается выполняемой за константное время, обозначаемое как <code>O(1)</code>.
        </li>
    </ul>

    <h2>Как оценивается сложность алгоритма?</h2>
    <ul>
        <li>
            Сложность алгоритма состоит из двух факторов: <span class="highlight">временная сложность</span> и <span class="highlight">сложность по памяти</span>.
        </li>
        <li>
            Временная сложность — это функция, которая показывает зависимость количества операций процессора от размера входных данных (<code>N</code>).
        </li>
        <li>
            При росте <code>N</code>, слагаемые с меньшей скоростью роста становятся незначительными. Поэтому сложность определяется слагаемым с наибольшей скоростью роста.
        </li>
    </ul>

    <h2>Пример оценки сложности</h2>
    <p>
        Рассмотрим функцию <code>T(N) = 5 * N^2 + 999 * N</code>. Здесь:
    </p>
    <ul>
        <li><code>5 * N^2</code> и <code>999 * N</code> — слагаемые функции.</li>
        <li>Константы (5 и 999) игнорируются в нотации Big O, так как они не влияют на асимптотическое поведение.</li>
        <li>Сложность функции равна <code>O(N^2)</code>.</li>
    </ul>

    <h2>Классы сложности в порядке возрастания</h2>
    <ul>
        <li><code>O(1)</code> — константная сложность (например, чтение по индексу из массива).</li>
        <li><code>O(log(n))</code> — логарифмическая сложность (например, бинарный поиск в отсортированном массиве).</li>
        <li><code>O(√n)</code> — сублинейная сложность.</li>
        <li><code>O(n)</code> — линейная сложность (например, перебор массива в цикле).</li>
        <li><code>O(n * log(n))</code> — квазилинейная сложность (например, сортировка слиянием).</li>
        <li><code>O(n^2)</code> — полиномиальная (квадратичная) сложность (например, вложенный цикл или сортировка пузырьком).</li>
        <li><code>O(2^n)</code> — экспоненциальная сложность (например, алгоритмы разложения на множители).</li>
        <li><code>O(n!)</code> — факториальная сложность (например, решение задачи коммивояжёра полным перебором).</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Алгоритм считается приемлемым, если его сложность не превышает <code>O(n * log(n))</code>. В противном случае он может быть неэффективным для больших объёмов данных.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('62ee25d2-ec84-4e4f-8744-8a42ba8106fa', 'Расскажите про паттерн Saga', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн Saga</title>
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
    <h1>Паттерн Saga</h1>
    <p>
        <span class="highlight">Saga</span> — это механизм, обеспечивающий согласованность данных в микросервисах без использования распределённых транзакций. Он помогает управлять длительными процессами, которые затрагивают несколько сервисов, обеспечивая целостность данных.
    </p>

    <h2>Как работает Saga?</h2>
    <ul>
        <li>
            Для каждой системной команды, которая обновляет данные в нескольких сервисах, создаётся сага. Сага представляет собой последовательность локальных ACID-транзакций, каждая из которых обновляет данные в одном сервисе.
        </li>
        <li>
            В случае сбоя применяются компенсирующие транзакции, которые отменяют изменения, сделанные предыдущими успешными транзакциями.
        </li>
    </ul>

    <h2>Типы транзакций в Saga</h2>
    <ul>
        <li>
            <span class="highlight">Компенсирующая транзакция:</span> Отменяет изменение, сделанное локальной транзакцией.
        </li>
        <li>
            <span class="highlight">Компенсируемая транзакция:</span> Это транзакция, которую необходимо отменить (компенсировать) в случае, если последующие транзакции завершаются неудачей.
        </li>
        <li>
            <span class="highlight">Поворотная транзакция:</span> Определяет успешность всей саги. Если она выполняется успешно, сага гарантированно завершится.
        </li>
        <li>
            <span class="highlight">Повторяемая транзакция:</span> Идёт после поворотной и гарантированно завершается успехом.
        </li>
    </ul>

    <h2>Плюсы и минусы Saga</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Обеспечивает согласованность данных в распределённых системах без использования распределённых транзакций.</li>
                <li>Позволяет управлять длительными процессами, затрагивающими несколько сервисов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минусы:</span>
            <ul>
                <li>Усложняет архитектуру системы из-за необходимости реализации компенсирующих транзакций.</li>
                <li>Требует тщательного проектирования для обработки всех возможных сценариев сбоев.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн Saga особенно полезен в микросервисной архитектуре, где необходимо обеспечивать согласованность данных между несколькими сервисами без использования распределённых транзакций.
        </p>
    </div>
</body>
</html>', 'OTHER', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('97290392-b01b-47d9-9981-0fe742ca8876', 'Шаблоны GRASP: Low Coupling (низкая связанность) и High Cohesion  (высокая сплоченность)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Шаблоны GRASP: Low Coupling и High Cohesion</title>
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
    <h1>Шаблоны GRASP: Low Coupling и High Cohesion</h1>
    <p>
        Шаблоны GRASP (General Responsibility Assignment Software Patterns) помогают распределять обязанности между классами и объектами в системе. Два ключевых принципа — <span class="highlight">Low Coupling</span> (низкая связанность) и <span class="highlight">High Cohesion</span> (высокая сплочённость) — играют важную роль в создании гибких и поддерживаемых систем.
    </p>

    <h2>Low Coupling (Низкая связанность)</h2>
    <ul>
        <li>
            <span class="highlight">Low Coupling</span> означает, что части системы, которые изменяются вместе, должны находиться близко друг к другу. Это уменьшает зависимости между классами и модулями.
        </li>
        <li>
            Низкая связанность упрощает внесение изменений в систему, так как изменения в одном классе минимально влияют на другие классы.
        </li>
    </ul>

    <h2>High Cohesion (Высокая сплочённость)</h2>
    <ul>
        <li>
            <span class="highlight">High Cohesion</span> предполагает, что классы должны содержать только связанную бизнес-логику. Это означает, что части системы, которые изменяются параллельно, должны иметь как можно меньше зависимостей друг от друга.
        </li>
        <li>
            Высокая сплочённость помогает сохранить ясность и понятность кода, так как каждый класс отвечает за определённую задачу.
        </li>
    </ul>

    <h2>Связь между Low Coupling и High Cohesion</h2>
    <ul>
        <li>
            <span class="highlight">Low Coupling</span> и <span class="highlight">High Cohesion</span> — это два связанных принципа, которые следует рассматривать вместе. Их суть заключается в том, что система должна состоять из слабо связанных классов, которые содержат связанную бизнес-логику.
        </li>
        <li>
            Соблюдение этих принципов позволяет удобно переиспользовать созданные классы, не теряя понимания их зоны ответственности.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Применение принципов Low Coupling и High Cohesion помогает создавать гибкие, поддерживаемые и легко тестируемые системы, что особенно важно в крупных проектах.
        </p>
    </div>
</body>
</html>', 'OTHER', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4f150776-2124-4745-84fd-752617f237f3', 'Объясните, что такое «параллельные алгоритмы» и дайте примеры, где они могут быть использованы.', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Параллельные алгоритмы</title>
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
        <h1>Что такое параллельные алгоритмы?</h1>
        <p>
            <span class="highlight">Параллельные алгоритмы</span> — это алгоритмы, которые выполняют несколько операций одновременно, используя несколько вычислительных ресурсов (например, процессоров или ядер). Они предназначены для ускорения выполнения задач за счёт распределения работы между несколькими потоками или процессами.
        </p>

        <h2>Основные понятия параллельных алгоритмов</h2>
        <ul>
            <li>
                <span class="highlight">Параллелизм:</span> Одновременное выполнение нескольких операций.
            </li>
            <li>
                <span class="highlight">Распределение задач:</span> Разделение задачи на подзадачи, которые могут выполняться независимо.
            </li>
            <li>
                <span class="highlight">Синхронизация:</span> Координация работы потоков или процессов для обеспечения корректности выполнения.
            </li>
        </ul>

        <h2>Преимущества параллельных алгоритмов</h2>
        <ul>
            <li>
                <span class="highlight">Ускорение выполнения:</span> Параллельные алгоритмы могут значительно сократить время выполнения задач за счёт использования нескольких процессоров или ядер.
            </li>
            <li>
                <span class="highlight">Эффективное использование ресурсов:</span> Параллельные алгоритмы позволяют задействовать все доступные вычислительные ресурсы.
            </li>
            <li>
                <span class="highlight">Масштабируемость:</span> Параллельные алгоритмы могут быть легко масштабированы для выполнения на системах с большим количеством процессоров.
            </li>
        </ul>

        <h2>Примеры использования параллельных алгоритмов</h2>
        <p>
            Параллельные алгоритмы применяются в различных областях, где требуется обработка больших объёмов данных или выполнение сложных вычислений. Вот несколько примеров:
        </p>

        <h3>1. Обработка больших данных</h3>
        <p>
            Параллельные алгоритмы используются для обработки больших объёмов данных, таких как:
        </p>
        <ul>
            <li>Анализ логов.</li>
            <li>Обработка изображений и видео.</li>
            <li>Машинное обучение и анализ данных.</li>
        </ul>
        <h4>Пример: Параллельная обработка изображений</h4>
        <pre><code>import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ImageProcessing {
    public static void main(String[] args) {
        int[] image = new int[1000]; // Пример изображения (массив пикселей)
        ExecutorService executor = Executors.newFixedThreadPool(4);

        for (int i = 0; i < image.length; i += 250) {
            int start = i;
            int end = i + 250;
            executor.submit(() -> {
                for (int j = start; j < end; j++) {
                    image[j] = processPixel(image[j]); // Обработка пикселя
                }
            });
        }

        executor.shutdown();
    }

    private static int processPixel(int pixel) {
        // Пример обработки пикселя
        return pixel * 2;
    }
}</code></pre>

        <h3>2. Научные вычисления</h3>
        <p>
            Параллельные алгоритмы используются для выполнения сложных научных вычислений, таких как:
        </p>
        <ul>
            <li>Моделирование физических процессов.</li>
            <li>Численное интегрирование и дифференцирование.</li>
            <li>Решение систем линейных уравнений.</li>
        </ul>
        <h4>Пример: Параллельное вычисление числа π</h4>
        <pre><code>import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.Callable;

public class PiCalculation {
    public static void main(String[] args) throws Exception {
        int numThreads = 4;
        int numSteps = 1000000;
        double step = 1.0 / numSteps;
        ExecutorService executor = Executors.newFixedThreadPool(numThreads);
        Future&lt;Double&gt;[] results = new Future[numThreads];

        for (int i = 0; i < numThreads; i++) {
            int start = i * (numSteps / numThreads);
            int end = (i + 1) * (numSteps / numThreads);
            results[i] = executor.submit(new PiTask(start, end, step));
        }

        double pi = 0.0;
        for (Future&lt;Double&gt; result : results) {
            pi += result.get();
        }

        executor.shutdown();
        System.out.println("Значение π: " + pi);
    }

    static class PiTask implements Callable&lt;Double&gt; {
        private final int start;
        private final int end;
        private final double step;

        PiTask(int start, int end, double step) {
            this.start = start;
            this.end = end;
            this.step = step;
        }

        @Override
        public Double call() {
            double sum = 0.0;
            for (int i = start; i < end; i++) {
                double x = (i + 0.5) * step;
                sum += 4.0 / (1.0 + x * x);
            }
            return sum * step;
        }
    }
}</code></pre>

        <h3>3. Веб-серверы и многопользовательские приложения</h3>
        <p>
            Параллельные алгоритмы используются для обработки запросов от множества пользователей одновременно:
        </p>
        <ul>
            <li>Веб-серверы, обрабатывающие HTTP-запросы.</li>
            <li>Многопользовательские игры.</li>
            <li>Онлайн-платформы для обработки транзакций.</li>
        </ul>

        <h3>4. Искусственный интеллект и машинное обучение</h3>
        <p>
            Параллельные алгоритмы используются для обучения моделей машинного обучения и обработки больших наборов данных:
        </p>
        <ul>
            <li>Обучение нейронных сетей.</li>
            <li>Кластеризация и классификация данных.</li>
            <li>Обработка естественного языка (NLP).</li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Параллельные алгоритмы — это мощный инструмент для ускорения выполнения задач за счёт использования нескольких вычислительных ресурсов. Они применяются в различных областях, таких как обработка больших данных, научные вычисления, веб-серверы и машинное обучение. Правильное использование параллельных алгоритмов позволяет значительно повысить производительность и эффективность приложений.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ea4fb8c7-0316-416b-ab7d-fe4533b75839', 'Что произойдет при вызове Iterator.next() без предварительного вызова  Iterator.hasNext()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Поведение Iterator.next() без вызова Iterator.hasNext()</title>
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
    <h1>Поведение Iterator.next() без вызова Iterator.hasNext()</h1>
    <p>
        Метод <code>Iterator.next()</code> используется для получения следующего элемента коллекции. Однако его поведение зависит от того, был ли вызван метод <code>Iterator.hasNext()</code> перед этим.
    </p>

    <h2>Возможные сценарии</h2>
    <ul>
        <li>
            <span class="highlight">Итератор указывает на последний элемент:</span>
            <ul>
                <li>Если итератор находится на последнем элементе коллекции, вызов <code>next()</code> без предварительного вызова <code>hasNext()</code> приведёт к исключению <code>NoSuchElementException</code>.</li>
                <li>Пример:
                    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");

Iterator&lt;String&gt; iterator = list.iterator();
iterator.next(); // Получение элемента "A"
iterator.next(); // Выбросит NoSuchElementException
</code>
                    </pre>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Итератор не указывает на последний элемент:</span>
            <ul>
                <li>Если в коллекции есть следующий элемент, метод <code>next()</code> вернёт его.</li>
                <li>Пример:
                    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

Iterator&lt;String&gt; iterator = list.iterator();
iterator.next(); // Получение элемента "A"
iterator.next(); // Получение элемента "B"
</code>
                    </pre>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Всегда рекомендуется использовать метод <code>hasNext()</code> перед вызовом <code>next()</code>, чтобы избежать исключения <code>NoSuchElementException</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2010566c-8577-49d9-816a-b8bd4ae95a2c', 'Как вы создаете новую ветку в Git и как ее переключить?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Создание и переключение веток в Git</title>
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
    <h1>Создание и переключение веток в Git</h1>
    <p>
        В Git ветки используются для изоляции изменений и работы над разными задачами параллельно.
        Создание и переключение веток — это основные операции, которые позволяют эффективно
        управлять разработкой.
    </p>

    <h2>Создание новой ветки</h2>
    <p>
        Чтобы создать новую ветку в Git, используется команда <code>git branch</code> или <code>git checkout -b</code>.
        Новая ветка создаётся на основе текущего состояния репозитория.
    </p>
    <ul>
        <li>
            <span class="highlight">Создание ветки с помощью git branch:</span>
            <p>
                Команда <code>git branch</code> создаёт новую ветку, но не переключает на неё.
            </p>
            <pre><code>
# Создание новой ветки
git branch new-branch-name
            </code></pre>
        </li>
        <li>
            <span class="highlight">Создание и переключение на ветку с помощью git checkout -b:</span>
            <p>
                Команда <code>git checkout -b</code> создаёт новую ветку и сразу переключает на неё.
            </p>
            <pre><code>
# Создание и переключение на новую ветку
git checkout -b new-branch-name
            </code></pre>
        </li>
    </ul>

    <h2>Переключение на существующую ветку</h2>
    <p>
        Чтобы переключиться на существующую ветку, используется команда <code>git checkout</code> или
        <code>git switch</code> (начиная с Git 2.23).
    </p>
    <ul>
        <li>
            <span class="highlight">Переключение с помощью git checkout:</span>
            <p>
                Команда <code>git checkout</code> позволяет переключиться на другую ветку.
            </p>
            <pre><code>
# Переключение на существующую ветку
git checkout branch-name
            </code></pre>
        </li>
        <li>
            <span class="highlight">Переключение с помощью git switch:</span>
            <p>
                Команда <code>git switch</code> была добавлена в Git 2.23 для упрощения переключения между ветками.
            </p>
            <pre><code>
# Переключение на существующую ветку
git switch branch-name
            </code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Перед переключением на другую ветку убедитесь, что все изменения в текущей
            ветке зафиксированы или сохранены (например, с помощью <code>git stash</code>), чтобы избежать
            потери данных.
        </p>
    </div>

    <h2>Пример рабочего процесса</h2>
    <p>
        Рассмотрим пример создания новой ветки и переключения на неё:
    </p>
    <pre><code>
# 1. Создание новой ветки и переключение на неё
git checkout -b feature/new-feature

# 2. Внесение изменений в новой ветке
echo "Новый функционал" > feature.txt
git add feature.txt
git commit -m "Добавлен новый функционал"

# 3. Переключение обратно на основную ветку (например, main)
git switch main

# 4. Слияние изменений из новой ветки в основную
git merge feature/new-feature
    </code></pre>

    <h2>Просмотр списка веток</h2>
    <p>
        Чтобы просмотреть список всех веток в репозитории, используйте команду <code>git branch</code>.
    </p>
    <pre><code>
# Просмотр списка веток
git branch

# Просмотр списка веток с указанием последнего коммита
git branch -v

# Просмотр всех веток (включая удалённые)
git branch -a
    </code></pre>

    <h2>Удаление ветки</h2>
    <p>
        Если ветка больше не нужна, её можно удалить с помощью команды <code>git branch -d</code>.
    </p>
    <pre><code>
# Удаление ветки
git branch -d branch-name

# Принудительное удаление ветки (если она не была слита)
git branch -D branch-name
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Создание и переключение веток в Git — это важные операции, которые позволяют эффективно
        управлять разработкой и изолировать изменения. Используйте команды <code>git branch</code>,
        <code>git checkout</code> и <code>git switch</code> для работы с ветками, а также не забывайте
        фиксировать изменения перед переключением.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('77426555-955a-43ec-8356-ad3258c6a38b', 'Основные требования к entity в Hibernate', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Основные требования к Entity в Hibernate</title>
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
    <h1>Основные требования к Entity в Hibernate</h1>
    <p>
        В Hibernate <span class="highlight">Entity</span> — это Java-класс, который отображается на таблицу в базе данных.
        Для того чтобы класс мог быть использован как Entity, он должен соответствовать определённым
        требованиям. Эти требования обеспечивают корректное взаимодействие между объектами Java и
        таблицами в базе данных.
    </p>

    <h2>Основные требования к Entity</h2>
    <ul>
        <li>
            <span class="highlight">Аннотация @Entity:</span>
            <p>
                Класс должен быть помечен аннотацией <code>@Entity</code>. Это указывает Hibernate, что данный
                класс является сущностью и должен быть отображён на таблицу в базе данных.
            </p>
            <pre><code>
@Entity
public class User {
    // Поля и методы класса
}
            </code></pre>
        </li>
        <li>
            <span class="highlight">Аннотация @Id:</span>
            <p>
                Класс должен содержать поле, помеченное аннотацией <code>@Id</code>. Это поле представляет
                первичный ключ таблицы.
            </p>
            <pre><code>
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;
            </code></pre>
        </li>
        <li>
            <span class="highlight">Пустой конструктор:</span>
            <p>
                Класс должен иметь пустой конструктор (конструктор без параметров). Это требуется для
                создания экземпляров сущности с помощью рефлексии.
            </p>
            <pre><code>
public User() {
    // Пустой конструктор
}
            </code></pre>
        </li>
        <li>
            <span class="highlight">Геттеры и сеттеры:</span>
            <p>
                Для всех полей, которые должны быть отображены на столбцы таблицы, должны быть
                предоставлены геттеры и сеттеры. Hibernate использует их для доступа к данным.
            </p>
            <pre><code>
public Long getId() {
    return id;
}

public void setId(Long id) {
    this.id = id;
}
            </code></pre>
        </li>
        <li>
            <span class="highlight">Нефинальный класс:</span>
            <p>
                Класс не должен быть объявлен как <code>final</code>. Это связано с тем, что Hibernate использует
                прокси-объекты для ленивой загрузки, а создание прокси требует наследования от класса.
            </p>
        </li>
        <li>
            <span class="highlight">Поля не должны быть final:</span>
            <p>
                Поля класса, которые отображаются на столбцы таблицы, не должны быть объявлены как
                <code>final</code>. Это связано с тем, что Hibernate должен иметь возможность изменять
                значения полей.
            </p>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если класс не соответствует этим требованиям, Hibernate не сможет
            корректно отобразить его на таблицу в базе данных.
        </p>
    </div>

    <h2>Дополнительные аннотации</h2>
    <ul>
        <li>
            <span class="highlight">@Table:</span>
            <p>
                Аннотация <code>@Table</code> используется для указания имени таблицы в базе данных, если оно
                отличается от имени класса.
            </p>
            <pre><code>
@Entity
@Table(name = "users")
public class User {
    // Поля и методы класса
}
            </code></pre>
        </li>
        <li>
            <span class="highlight">@Column:</span>
            <p>
                Аннотация <code>@Column</code> используется для указания имени столбца в таблице, если оно
                отличается от имени поля.
            </p>
            <pre><code>
@Column(name = "user_name")
private String username;
            </code></pre>
        </li>
        <li>
            <span class="highlight">@GeneratedValue:</span>
            <p>
                Аннотация <code>@GeneratedValue</code> используется для указания стратегии генерации значений
                первичного ключа (например, автоинкремент).
            </p>
            <pre><code>
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;
            </code></pre>
        </li>
    </ul>

    <h2>Пример Entity</h2>
    <pre><code>
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "user_name")
    private String username;

    @Column(name = "email")
    private String email;

    // Пустой конструктор
    public User() {
    }

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
            </code></pre>
    <p>
        В этом примере класс <code>User</code> соответствует всем требованиям для Entity в Hibernate.
    </p>

    <h2>Заключение</h2>
    <p>
        Для того чтобы класс мог быть использован как Entity в Hibernate, он должен соответствовать
        определённым требованиям, таким как наличие аннотации <code>@Entity</code>, пустого конструктора,
        геттеров и сеттеров, а также отсутствие модификатора <code>final</code>. Соблюдение этих
        требований обеспечивает корректное отображение объектов Java на таблицы в базе данных и
        упрощает работу с ORM.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6a5ce301-ed08-48f6-becd-7b32d5144daa', 'Объясните концепцию "состояния" в Git (staging area, working directory, и repository).', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Концепция "состояния" в Git</title>
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
    <h1>Концепция "состояния" в Git</h1>
    <p>
        В Git существует три основных состояния, в которых могут находиться файлы:
        <span class="highlight">рабочая директория (working directory)</span>,
        <span class="highlight">область подготовки (staging area)</span> и
        <span class="highlight">репозиторий (repository)</span>. Понимание этих состояний важно для эффективной работы с Git.
    </p>

    <h2>Рабочая директория (Working Directory)</h2>
    <p>
        <span class="highlight">Рабочая директория</span> — это текущее состояние файлов в вашем проекте. Это то, что вы видите
        и редактируете в своей файловой системе. Файлы в рабочей директории могут быть отслеживаемыми
        (tracked) или неотслеживаемыми (untracked).
    </p>
    <ul>
        <li>
            <span class="highlight">Отслеживаемые файлы:</span>
            <p>
                Файлы, которые уже были зафиксированы в репозитории или добавлены в область подготовки.
            </p>
        </li>
        <li>
            <span class="highlight">Неотслеживаемые файлы:</span>
            <p>
                Файлы, которые Git ещё не отслеживает (например, новые файлы).
            </p>
        </li>
    </ul>
    <pre><code>
# Проверка состояния рабочей директории
git status
    </code></pre>

    <h2>Область подготовки (Staging Area)</h2>
    <p>
        <span class="highlight">Область подготовки</span> (или индекс) — это промежуточное состояние, где вы собираете изменения,
        которые будут включены в следующий коммит. Файлы, добавленные в область подготовки,
        помечаются как готовые к фиксации.
    </p>
    <ul>
        <li>
            <span class="highlight">Добавление файлов в область подготовки:</span>
            <p>
                Используйте команду <code>git add</code>, чтобы добавить изменения из рабочей директории в область подготовки.
            </p>
        </li>
        <li>
            <span class="highlight">Просмотр состояния области подготовки:</span>
            <p>
                Команда <code>git status</code> показывает, какие файлы находятся в области подготовки.
            </p>
        </li>
    </ul>
    <pre><code>
# Добавление файла в область подготовки
git add filename.txt

# Просмотр состояния области подготовки
git status
    </code></pre>

    <h2>Репозиторий (Repository)</h2>
    <p>
        <span class="highlight">Репозиторий</span> — это хранилище всех коммитов, веток и метаданных вашего проекта. Когда вы
        фиксируете изменения с помощью команды <code>git commit</code>, изменения из области подготовки
        переносятся в репозиторий.
    </p>
    <ul>
        <li>
            <span class="highlight">Фиксация изменений:</span>
            <p>
                Используйте команду <code>git commit</code>, чтобы зафиксировать изменения из области подготовки
                в репозитории.
            </p>
        </li>
        <li>
            <span class="highlight">Просмотр истории коммитов:</span>
            <p>
                Команда <code>git log</code> показывает историю коммитов в репозитории.
            </p>
        </li>
    </ul>
    <pre><code>
# Фиксация изменений в репозитории
git commit -m "Добавлен новый файл"

# Просмотр истории коммитов
git log
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Понимание трёх состояний в Git (рабочая директория, область подготовки и
            репозиторий) помогает эффективно управлять изменениями и контролировать процесс разработки.
        </p>
    </div>

    <h2>Схема работы состояний в Git</h2>
    <p>
        Процесс работы с Git можно представить в виде следующей схемы:
    </p>
    <pre><code>
Рабочая директория (Working Directory) → Область подготовки (Staging Area) → Репозиторий (Repository)
    </code></pre>
    <ol>
        <li>Вы вносите изменения в файлы в рабочей директории.</li>
        <li>Добавляете изменения в область подготовки с помощью <code>git add</code>.</li>
        <li>Фиксируете изменения в репозитории с помощью <code>git commit</code>.</li>
    </ol>

    <h2>Пример рабочего процесса</h2>
    <pre><code>
# 1. Внесение изменений в файл
echo "Новый текст" > file.txt

# 2. Добавление изменений в область подготовки
git add file.txt

# 3. Фиксация изменений в репозитории
git commit -m "Добавлен новый текст в file.txt"
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Концепция "состояния" в Git (рабочая директория, область подготовки и репозиторий) является
        основой для управления изменениями в проекте. Понимание этих состояний позволяет эффективно
        работать с Git, контролировать процесс разработки и сохранять историю изменений.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ad1f0f32-f0d5-40a8-a8c8-1ef784cb2b8c', 'Какая разница между git pull / git fetch?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между git pull и git fetch</title>
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
    <h1>Разница между git pull и git fetch</h1>
    <p>
        В Git <span class="highlight">git pull</span> и <span class="highlight">git fetch</span> — это две команды, которые используются для получения изменений
        из удалённого репозитория. Однако они работают по-разному и имеют разные последствия для
        локального репозитория. Давайте разберёмся, в чём их основные отличия.
    </p>

    <h2>git fetch</h2>
    <p>
        <span class="highlight">git fetch</span> — это команда, которая загружает изменения из удалённого репозитория в локальный
        репозиторий, но не объединяет их с текущей веткой. Это позволяет просмотреть изменения перед
        их интеграцией.
    </p>
    <ul>
        <li>
            <span class="highlight">Как работает:</span>
            <p>
                <code>git fetch</code> загружает все изменения из удалённого репозитория (новые коммиты, ветки, теги)
                в локальный репозиторий, но не изменяет рабочую директорию или текущую ветку.
                Изменения сохраняются в специальных ссылках, таких как <code>origin/main</code>.
            </p>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Позволяет просмотреть изменения перед их объединением.</li>
                <li>Не изменяет текущую ветку или рабочую директорию.</li>
                <li>Полезен для проверки состояния удалённого репозитория.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Требует дополнительной команды (<code>git merge</code> или <code>git rebase</code>) для объединения изменений.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
# Пример использования git fetch
git fetch origin  # Загружает изменения из удалённого репозитория
    </code></pre>

    <h2>git pull</h2>
    <p>
        <span class="highlight">git pull</span> — это команда, которая загружает изменения из удалённого репозитория и сразу
        объединяет их с текущей веткой. По сути, <code>git pull</code> выполняет <code>git fetch</code>, а затем <code>git merge</code>
        (или <code>git rebase</code>, если указана соответствующая опция).
    </p>
    <ul>
        <li>
            <span class="highlight">Как работает:</span>
            <p>
                <code>git pull</code> загружает изменения из удалённого репозитория и автоматически объединяет их с
                текущей веткой. Это может быть выполнено с помощью <code>merge</code> (по умолчанию) или <code>rebase</code>
                (если указана опция <code>--rebase</code>).
            </p>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Автоматически объединяет изменения, что упрощает процесс.</li>
                <li>Подходит для быстрого обновления локальной ветки.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Может вызвать конфликты слияния, которые потребуют ручного разрешения.</li>
                <li>Не позволяет просмотреть изменения перед их объединением.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
# Пример использования git pull
git pull origin main  # Загружает и объединяет изменения из ветки main
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>git pull</code> может вызвать конфликты слияния, особенно если локальная
            ветка и удалённая ветка имеют расходящиеся изменения. В таких случаях рекомендуется
            использовать <code>git fetch</code> для предварительного просмотра изменений.
        </p>
    </div>

    <h2>Сравнение git fetch и git pull</h2>
    <table>
        <thead>
            <tr>
                <th>Критерий</th>
                <th>git fetch</th>
                <th>git pull</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Загрузка изменений</td>
                <td>Загружает изменения из удалённого репозитория.</td>
                <td>Загружает изменения из удалённого репозитория.</td>
            </tr>
            <tr>
                <td>Объединение изменений</td>
                <td>Не объединяет изменения с текущей веткой.</td>
                <td>Автоматически объединяет изменения с текущей веткой.</td>
            </tr>
            <tr>
                <td>Безопасность</td>
                <td>Безопасен, так как не изменяет текущую ветку.</td>
                <td>Может вызвать конфликты слияния.</td>
            </tr>
            <tr>
                <td>Использование</td>
                <td>Подходит для предварительного просмотра изменений.</td>
                <td>Подходит для быстрого обновления локальной ветки.</td>
            </tr>
            <tr>
                <td>Дополнительные команды</td>
                <td>Требует <code>git merge</code> или <code>git rebase</code> для объединения.</td>
                <td>Не требует дополнительных команд.</td>
            </tr>
        </tbody>
    </table>

    <h2>Когда использовать git fetch и git pull?</h2>
    <ul>
        <li>
            <span class="highlight">Используйте git fetch:</span>
            <ul>
                <li>Когда нужно просмотреть изменения перед их объединением.</li>
                <li>Когда требуется больший контроль над процессом слияния.</li>
                <li>Для проверки состояния удалённого репозитория.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Используйте git pull:</span>
            <ul>
                <li>Когда нужно быстро обновить локальную ветку.</li>
                <li>Когда уверены, что изменения можно безопасно объединить.</li>
            </ul>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        <code>git fetch</code> и <code>git pull</code> — это две команды для получения изменений из удалённого репозитория.
        <code>git fetch</code> загружает изменения без их объединения, что позволяет просмотреть их перед
        интеграцией. <code>git pull</code> автоматически объединяет изменения, что упрощает процесс, но
        может вызвать конфликты. Выбор между ними зависит от конкретной задачи и уровня контроля,
        который вам необходим.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d8ce5fcf-bb2b-49c4-94d2-18a672bd51db', 'Какая разница между rebase и merge?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между rebase и merge в Git</title>
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
    <h1>Разница между rebase и merge в Git</h1>
    <p>
        В Git <span class="highlight">rebase</span> и <span class="highlight">merge</span> — это два способа интеграции изменений из одной ветки в другую.
        Хотя оба метода служат для объединения изменений, они имеют разные подходы и последствия для
        истории коммитов. Давайте разберёмся, в чём их основные отличия.
    </p>

    <h2>Merge (Слияние)</h2>
    <p>
        <span class="highlight">Merge</span> — это операция, которая объединяет изменения из одной ветки в другую, создавая новый
        коммит слияния. Этот коммит имеет двух родителей: один из текущей ветки, а другой из ветки,
        которая сливается.
    </p>
    <ul>
        <li>
            <span class="highlight">Как работает:</span>
            <p>
                При выполнении <code>merge</code> Git создаёт новый коммит, который объединяет изменения из двух
                веток. История коммитов сохраняется в виде графа, где видно, что изменения были
                объединены.
            </p>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Простота использования.</li>
                <li>Сохраняет полную историю изменений, включая факт слияния.</li>
                <li>Подходит для публичных веток (например, <code>main</code> или <code>master</code>).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>История коммитов может стать сложной и запутанной из-за множества коммитов слияния.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
# Пример выполнения merge
git checkout main
git merge feature-branch
    </code></pre>

    <h2>Rebase (Перебазирование)</h2>
    <p>
        <span class="highlight">Rebase</span> — это операция, которая перемещает коммиты из одной ветки на вершину другой ветки,
        переписывая историю коммитов. В отличие от <code>merge</code>, <code>rebase</code> не создаёт коммит слияния.
    </p>
    <ul>
        <li>
            <span class="highlight">Как работает:</span>
            <p>
                При выполнении <code>rebase</code> Git берёт коммиты из текущей ветки и применяет их поверх
                указанной ветки. Это создаёт линейную историю, как если бы все изменения были сделаны
                последовательно.
            </p>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Создаёт чистую и линейную историю коммитов.</li>
                <li>Упрощает чтение истории, так как отсутствуют коммиты слияния.</li>
                <li>Подходит для локальных веток перед их слиянием в основную ветку.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Переписывает историю коммитов, что может вызвать проблемы при работе с удалёнными
                    репозиториями.</li>
                <li>Может потребовать разрешения конфликтов для каждого коммита.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
# Пример выполнения rebase
git checkout feature-branch
git rebase main
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>Rebase</code> переписывает историю коммитов, поэтому его не следует
            использовать для веток, которые уже были отправлены в удалённый репозиторий, если только
            вы не уверены в своих действиях.
        </p>
    </div>

    <h2>Сравнение merge и rebase</h2>
    <table>
        <thead>
            <tr>
                <th>Критерий</th>
                <th>Merge</th>
                <th>Rebase</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>История коммитов</td>
                <td>Сохраняет историю слияний (нелинейная история).</td>
                <td>Создаёт линейную историю (переписывает историю).</td>
            </tr>
            <tr>
                <td>Коммит слияния</td>
                <td>Создаёт новый коммит слияния.</td>
                <td>Не создаёт коммит слияния.</td>
            </tr>
            <tr>
                <td>Использование</td>
                <td>Подходит для публичных веток.</td>
                <td>Подходит для локальных веток перед слиянием.</td>
            </tr>
            <tr>
                <td>Конфликты</td>
                <td>Разрешаются один раз при слиянии.</td>
                <td>Могут потребоваться для каждого коммита.</td>
            </tr>
            <tr>
                <td>Безопасность</td>
                <td>Безопасен для публичных веток.</td>
                <td>Может вызвать проблемы с удалёнными репозиториями.</td>
            </tr>
        </tbody>
    </table>

    <h2>Когда использовать merge и rebase?</h2>
    <ul>
        <li>
            <span class="highlight">Используйте merge:</span>
            <ul>
                <li>Для слияния публичных веток (например, <code>main</code> или <code>master</code>).</li>
                <li>Когда важно сохранить полную историю изменений, включая факт слияния.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Используйте rebase:</span>
            <ul>
                <li>Для локальных веток перед их слиянием в основную ветку.</li>
                <li>Когда нужно создать чистую и линейную историю коммитов.</li>
            </ul>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        <code>Merge</code> и <code>rebase</code> — это два мощных инструмента в Git, которые служат для объединения изменений.
        <code>Merge</code> сохраняет историю слияний и подходит для публичных веток, в то время как <code>rebase</code>
        создаёт линейную историю и идеален для локальных веток. Выбор между ними зависит от
        конкретной задачи и предпочтений команды.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('843259f1-b1e5-497b-921a-11f795dc7e66', 'Как работают потоки и процессы в контексте работы операционной системы?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Потоки и процессы в операционной системе</title>
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
        <h1>Как работают потоки и процессы в контексте операционной системы?</h1>
        <p>
            <span class="highlight">Потоки</span> и <span class="highlight">процессы</span> — это основные единицы выполнения в операционной системе (ОС). Они позволяют выполнять несколько задач одновременно, что является основой многозадачности. Понимание их работы важно для разработки эффективных и стабильных приложений.
        </p>

        <h2>Что такое процесс?</h2>
        <p>
            <span class="highlight">Процесс</span> — это экземпляр программы, который выполняется операционной системой. Каждый процесс имеет собственное адресное пространство, ресурсы (память, файловые дескрипторы) и контекст выполнения. Процессы изолированы друг от друга, что обеспечивает стабильность и безопасность.
        </p>
        <h3>Характеристики процесса</h3>
        <ul>
            <li>
                <span class="highlight">Изоляция:</span> Процессы имеют отдельные адресные пространства, что предотвращает их вмешательство друг в друга.
            </li>
            <li>
                <span class="highlight">Ресурсы:</span> Каждый процесс имеет свои ресурсы (память, файлы, сокеты и т.д.).
            </li>
            <li>
                <span class="highlight">Создание и завершение:</span> Процессы создаются и завершаются операционной системой, что требует больше времени и ресурсов.
            </li>
            <li>
                <span class="highlight">Коммуникация:</span> Процессы взаимодействуют через механизмы межпроцессного взаимодействия (IPC), такие как pipes, sockets или shared memory.
            </li>
        </ul>

        <h2>Что такое поток?</h2>
        <p>
            <span class="highlight">Поток (thread)</span> — это наименьшая единица выполнения в процессе. Потоки разделяют адресное пространство и ресурсы процесса, но имеют собственный стек вызовов и контекст выполнения. Потоки позволяют выполнять несколько задач параллельно в рамках одного процесса.
        </p>
        <h3>Характеристики потока</h3>
        <ul>
            <li>
                <span class="highlight">Общие ресурсы:</span> Потоки разделяют память и ресурсы процесса, что упрощает обмен данными между ними.
            </li>
            <li>
                <span class="highlight">Легковесность:</span> Создание и переключение потоков требует меньше ресурсов, чем процессов.
            </li>
            <li>
                <span class="highlight">Параллелизм:</span> Потоки позволяют выполнять несколько задач одновременно в рамках одного процесса.
            </li>
            <li>
                <span class="highlight">Синхронизация:</span> Поскольку потоки разделяют ресурсы, требуется синхронизация для предотвращения конфликтов.
            </li>
        </ul>

        <h2>Как ОС управляет процессами и потоками?</h2>
        <p>
            Операционная система управляет процессами и потоками с помощью следующих механизмов:
        </p>

        <h3>1. Планировщик (Scheduler)</h3>
        <p>
            Планировщик ОС отвечает за распределение времени процессора между процессами и потоками. Он определяет, какой процесс или поток будет выполняться в следующий момент времени.
        </p>
        <ul>
            <li>
                <span class="highlight">Приоритеты:</span> Планировщик учитывает приоритеты процессов и потоков для определения порядка выполнения.
            </li>
            <li>
                <span class="highlight">Квант времени:</span> Каждому процессу или потоку выделяется определённое количество времени (квант) для выполнения.
            </li>
        </ul>

        <h3>2. Контекст переключения (Context Switch)</h3>
        <p>
            Контекст переключения — это процесс сохранения состояния текущего процесса или потока и восстановления состояния другого процесса или потока. Это позволяет операционной системе переключаться между задачами.
        </p>
        <ul>
            <li>
                <span class="highlight">Переключение между процессами:</span> Требует больше ресурсов, так как включает смену виртуального адресного пространства.
            </li>
            <li>
                <span class="highlight">Переключение между потоками:</span> Быстрее, так как потоки разделяют адресное пространство процесса.
            </li>
        </ul>

        <h3>3. Управление памятью</h3>
        <p>
            ОС управляет памятью, выделяя её процессам и потокам. Каждый процесс имеет собственное адресное пространство, а потоки разделяют память процесса.
        </p>
        <ul>
            <li>
                <span class="highlight">Виртуальная память:</span> ОС использует виртуальную память для изоляции процессов и управления физической памятью.
            </li>
            <li>
                <span class="highlight">Стек и куча:</span> Каждый поток имеет собственный стек, но разделяет кучу процесса.
            </li>
        </ul>

        <h3>4. Межпроцессное взаимодействие (IPC)</h3>
        <p>
            ОС предоставляет механизмы для взаимодействия между процессами, такие как:
        </p>
        <ul>
            <li>
                <span class="highlight">Каналы (pipes):</span> Позволяют передавать данные между процессами.
            </li>
            <li>
                <span class="highlight">Сокеты (sockets):</span> Используются для сетевого взаимодействия.
            </li>
            <li>
                <span class="highlight">Разделяемая память (shared memory):</span> Позволяет процессам обмениваться данными через общую область памяти.
            </li>
        </ul>

        <h2>Пример работы процессов и потоков</h2>
        <p>
            Рассмотрим пример, где процесс создаёт несколько потоков для выполнения задач:
        </p>
        <pre><code>public class MultiThreadExample {
    public static void main(String[] args) {
        // Создание потоков
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

        // Запуск потоков
        thread1.start();
        thread2.start();

        // Ожидание завершения потоков
        try {
            thread1.join();
            thread2.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println("Основной поток завершил выполнение");
    }
}</code></pre>
        <p>
            В этом примере основной процесс создаёт два потока, которые выполняются параллельно. ОС управляет выполнением потоков, переключая контекст между ними.
        </p>

        <h2>Заключение</h2>
        <p>
            Потоки и процессы — это ключевые элементы многозадачных операционных систем. Процессы обеспечивают изоляцию и управление ресурсами, а потоки позволяют выполнять задачи параллельно в рамках одного процесса. Операционная система управляет процессами и потоками с помощью планировщика, контекста переключения и механизмов управления памятью. Понимание их работы помогает создавать эффективные и стабильные приложения.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a8e6a06d-c525-4193-967f-890689521563', 'Объясните, что такое оптимизация параллелизма и как она влияет на производительность приложения.', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оптимизация параллелизма</title>
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
        <h1>Что такое оптимизация параллелизма?</h1>
        <p>
            <span class="highlight">Оптимизация параллелизма</span> — это процесс улучшения производительности многопоточных и параллельных приложений за счёт эффективного использования вычислительных ресурсов, таких как процессоры, ядра и память. Она включает в себя анализ и улучшение кода, чтобы минимизировать накладные расходы и максимизировать параллельное выполнение задач.
        </p>

        <h2>Основные цели оптимизации параллелизма</h2>
        <ul>
            <li>
                <span class="highlight">Увеличение производительности:</span> Ускорение выполнения задач за счёт параллельного использования ресурсов.
            </li>
            <li>
                <span class="highlight">Снижение накладных расходов:</span> Минимизация затрат на синхронизацию, переключение контекста и управление потоками.
            </li>
            <li>
                <span class="highlight">Улучшение масштабируемости:</span> Обеспечение эффективной работы приложения на системах с большим количеством процессоров или ядер.
            </li>
            <li>
                <span class="highlight">Снижение задержек:</span> Уменьшение времени ожидания потоков и улучшение отзывчивости приложения.
            </li>
        </ul>

        <h2>Основные подходы к оптимизации параллелизма</h2>
        <p>
            Для оптимизации параллелизма можно использовать следующие подходы:
        </p>

        <h3>1. Оптимизация синхронизации</h3>
        <p>
            Синхронизация потоков может быть дорогостоящей операцией. Чтобы минимизировать накладные расходы:
        </p>
        <ul>
            <li>
                <span class="highlight">Используйте минимально необходимые блокировки:</span> Синхронизируйте только те участки кода, которые действительно требуют защиты.
            </li>
            <li>
                <span class="highlight">Используйте атомарные операции:</span> Атомарные классы (например, <code>AtomicInteger</code>) могут быть более эффективными, чем блокировки.
            </li>
            <li>
                <span class="highlight">Используйте lock-free структуры данных:</span> Такие структуры данных позволяют избежать блокировок и улучшить производительность.
            </li>
        </ul>

        <h3>2. Оптимизация управления потоками</h3>
        <p>
            Управление потоками также может влиять на производительность. Для оптимизации:
        </p>
        <ul>
            <li>
                <span class="highlight">Используйте пулы потоков:</span> Пул потоков позволяет переиспользовать потоки и уменьшить накладные расходы на их создание и уничтожение.
            </li>
            <li>
                <span class="highlight">Оптимизируйте размер пула потоков:</span> Размер пула должен соответствовать количеству доступных ядер процессора.
            </li>
            <li>
                <span class="highlight">Используйте асинхронное программирование:</span> Асинхронные задачи позволяют избежать блокировки потоков и улучшить производительность.
            </li>
        </ul>

        <h3>3. Оптимизация распределения задач</h3>
        <p>
            Распределение задач между потоками должно быть сбалансированным, чтобы избежать простоя ресурсов:
        </p>
        <ul>
            <li>
                <span class="highlight">Разделяйте задачи на независимые части:</span> Это позволяет выполнять их параллельно без необходимости синхронизации.
            </li>
            <li>
                <span class="highlight">Используйте work-stealing алгоритмы:</span> Такие алгоритмы позволяют потокам "воровать" задачи у других потоков, если они простаивают.
            </li>
        </ul>

        <h3>4. Оптимизация использования памяти</h3>
        <p>
            Параллельные приложения могут страдать от проблем с памятью, таких как ложное разделение (false sharing) или contention. Для оптимизации:
        </p>
        <ul>
            <li>
                <span class="highlight">Избегайте ложного разделения:</span> Ложное разделение происходит, когда несколько потоков изменяют данные, расположенные близко в памяти. Используйте выравнивание данных (padding), чтобы избежать этого.
            </li>
            <li>
                <span class="highlight">Используйте локальные переменные:</span> Локальные переменные потоков не требуют синхронизации и могут улучшить производительность.
            </li>
        </ul>

        <h2>Пример оптимизации параллелизма</h2>
        <p>
            Рассмотрим пример оптимизации параллельного выполнения задачи:
        </p>
        <pre><code>import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

public class ParallelOptimizationExample {
    public static void main(String[] args) {
        int numTasks = 1000;
        AtomicInteger counter = new AtomicInteger(0);
        ExecutorService executor = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());

        for (int i = 0; i < numTasks; i++) {
            executor.submit(() -> {
                // Имитация работы
                int result = performTask();
                counter.addAndGet(result);
            });
        }

        executor.shutdown();
        System.out.println("Итоговое значение: " + counter.get());
    }

    private static int performTask() {
        // Имитация выполнения задачи
        return 1;
    }
}</code></pre>
        <p>
            В этом примере используется пул потоков с количеством потоков, равным количеству доступных ядер процессора, что позволяет эффективно использовать ресурсы.
        </p>

        <h2>Влияние оптимизации параллелизма на производительность</h2>
        <p>
            Оптимизация параллелизма может значительно улучшить производительность приложения:
        </p>
        <ul>
            <li>
                <span class="highlight">Ускорение выполнения задач:</span> Параллельное выполнение задач позволяет сократить время выполнения.
            </li>
            <li>
                <span class="highlight">Снижение задержек:</span> Оптимизация синхронизации и управления потоками уменьшает время ожидания.
            </li>
            <li>
                <span class="highlight">Улучшение масштабируемости:</span> Оптимизированные приложения могут эффективно использовать большее количество процессоров или ядер.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Оптимизация параллелизма — это важный этап разработки многопоточных и параллельных приложений. Она позволяет улучшить производительность, снизить накладные расходы и обеспечить эффективное использование ресурсов. Используя оптимальные стратегии синхронизации, управления потоками и распределения задач, можно значительно повысить производительность и масштабируемость приложения.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('98ee1778-f2ec-4422-b540-fd7f3f4d67ec', 'Что такое контекст переключения (context switch) и какие накладные расходы он влечет за собой?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Контекст переключения (context switch)</title>
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
        <h1>Что такое контекст переключения (context switch)?</h1>
        <p>
            <span class="highlight">Контекст переключения (context switch)</span> — это процесс сохранения состояния текущего потока или процесса и восстановления состояния другого потока или процесса, чтобы он мог продолжить выполнение. Это происходит, когда операционная система переключается между задачами, чтобы обеспечить многозадачность.
        </p>

        <h2>Основные понятия контекста переключения</h2>
        <ul>
            <li>
                <span class="highlight">Состояние потока/процесса:</span> Включает регистры процессора, счётчик команд, указатель стека и другую информацию, необходимую для выполнения.
            </li>
            <li>
                <span class="highlight">Переключение между потоками:</span> Происходит в рамках одного процесса и обычно быстрее, чем переключение между процессами.
            </li>
            <li>
                <span class="highlight">Переключение между процессами:</span> Требует больше ресурсов, так как включает смену виртуального адресного пространства.
            </li>
        </ul>

        <h2>Как происходит контекст переключение?</h2>
        <p>
            Контекст переключение включает следующие шаги:
        </p>
        <ol>
            <li>
                <span class="highlight">Сохранение состояния текущего потока/процесса:</span> Операционная система сохраняет регистры процессора, счётчик команд и другую информацию в структуре данных, называемой контекстом.
            </li>
            <li>
                <span class="highlight">Выбор следующего потока/процесса:</span> Планировщик операционной системы выбирает следующий поток или процесс для выполнения.
            </li>
            <li>
                <span class="highlight">Восстановление состояния следующего потока/процесса:</span> Операционная система загружает сохранённый контекст следующего потока или процесса.
            </li>
            <li>
                <span class="highlight">Передача управления:</span> Управление передаётся следующему потоку или процессу, который продолжает выполнение.
            </li>
        </ol>

        <h2>Накладные расходы контекста переключения</h2>
        <p>
            Контекст переключение влечёт за собой следующие накладные расходы:
        </p>
        <ul>
            <li>
                <span class="highlight">Время выполнения:</span> Сохранение и восстановление состояния требует времени, что замедляет выполнение задач.
            </li>
            <li>
                <span class="highlight">Использование процессора:</span> Контекст переключение требует вычислительных ресурсов процессора.
            </li>
            <li>
                <span class="highlight">Кэш-промахи:</span> При переключении между процессами кэш процессора может быть очищен, что приводит к снижению производительности.
            </li>
            <li>
                <span class="highlight">Использование памяти:</span> Контекст переключение требует дополнительной памяти для хранения состояния потоков или процессов.
            </li>
        </ul>

        <h2>Пример накладных расходов</h2>
        <p>
            Рассмотрим пример, где частое переключение между потоками приводит к снижению производительности:
        </p>
        <pre><code>import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ContextSwitchExample {
    public static void main(String[] args) {
        ExecutorService executor = Executors.newFixedThreadPool(100);

        for (int i = 0; i < 1000; i++) {
            executor.submit(() -> {
                // Имитация короткой задачи
                try {
                    Thread.sleep(10);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            });
        }

        executor.shutdown();
    }
}</code></pre>
        <p>
            В этом примере создаётся пул из 100 потоков, которые выполняют 1000 коротких задач. Частое переключение между потоками может привести к значительным накладным расходам.
        </p>

        <h2>Как уменьшить накладные расходы контекста переключения?</h2>
        <p>
            Чтобы уменьшить накладные расходы, можно использовать следующие подходы:
        </p>
        <ul>
            <li>
                <span class="highlight">Уменьшение количества потоков:</span> Используйте пул потоков с оптимальным количеством потоков, чтобы избежать частого переключения.
            </li>
            <li>
                <span class="highlight">Использование асинхронного программирования:</span> Асинхронные задачи позволяют избежать блокировки потоков и уменьшить количество переключений.
            </li>
            <li>
                <span class="highlight">Оптимизация задач:</span> Увеличьте время выполнения задач, чтобы уменьшить частоту переключений.
            </li>
            <li>
                <span class="highlight">Использование легковесных потоков:</span> В некоторых языках (например, Go) используются легковесные потоки (goroutines), которые имеют меньшие накладные расходы на переключение.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Контекст переключения — это важный механизм многозадачных операционных систем, который позволяет переключаться между потоками и процессами. Однако он влечёт за собой накладные расходы, такие как время выполнения, использование процессора и кэш-промахи. Чтобы уменьшить эти расходы, используйте оптимальное количество потоков, асинхронное программирование и оптимизируйте задачи. Это поможет повысить производительность вашего приложения.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3cffb620-4cdb-4a1c-b7b3-cc85f30de475', 'Как вы можете определить, кто внес определенные изменения в код?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Определение автора изменений в Git</title>
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
    <h1>Определение автора изменений в Git</h1>
    <p>
        В Git существует несколько способов определить, кто внёс определённые изменения в код.
        Это может быть полезно для отслеживания ответственности за изменения, анализа истории
        проекта или поиска автора конкретной строки кода. Давайте разберём основные методы.
    </p>

    <h2>Использование git blame</h2>
    <p>
        Команда <span class="highlight">git blame</span> позволяет просмотреть, кто и когда внёс изменения в каждую строку
        определённого файла. Это один из самых простых способов определить автора изменений.
    </p>
    <ul>
        <li>
            <span class="highlight">Базовая команда:</span>
            <p>
                Чтобы просмотреть информацию о каждой строке файла, используйте команду <code>git blame</code>
                с именем файла.
            </p>
            <pre><code>
git blame filename.txt
            </code></pre>
            <p>
                Эта команда покажет для каждой строки файла:
                <ul>
                    <li>Хеш коммита.</li>
                    <li>Автора изменений.</li>
                    <li>Дату изменения.</li>
                    <li>Содержание строки.</li>
                </ul>
            </p>
        </li>
        <li>
            <span class="highlight">Просмотр изменений в определённом диапазоне строк:</span>
            <p>
                Чтобы ограничить вывод определённым диапазоном строк, используйте опцию <code>-L</code>.
            </p>
            <pre><code>
git blame -L 10,20 filename.txt
            </code></pre>
        </li>
    </ul>

    <h2>Использование git log</h2>
    <p>
        Команда <span class="highlight">git log</span> позволяет просмотреть историю изменений файла или репозитория.
        Это полезно, если вы хотите увидеть все коммиты, которые затрагивали определённый файл.
    </p>
    <ul>
        <li>
            <span class="highlight">Просмотр истории файла:</span>
            <p>
                Чтобы просмотреть историю изменений конкретного файла, используйте команду <code>git log</code>
                с именем файла.
            </p>
            <pre><code>
git log filename.txt
            </code></pre>
        </li>
        <li>
            <span class="highlight">Просмотр изменений в файле:</span>
            <p>
                Чтобы увидеть, какие изменения были внесены в каждом коммите, используйте опцию <code>-p</code>.
            </p>
            <pre><code>
git log -p filename.txt
            </code></pre>
        </li>
    </ul>

    <h2>Использование git show</h2>
    <p>
        Команда <span class="highlight">git show</span> позволяет просмотреть детали конкретного коммита, включая
        изменения, автора и дату.
    </p>
    <ul>
        <li>
            <span class="highlight">Просмотр изменений в коммите:</span>
            <p>
                Чтобы просмотреть изменения, внесённые в определённом коммите, используйте команду
                <code>git show</code> с хешем коммита.
            </p>
            <pre><code>
git show commit-hash
            </code></pre>
        </li>
    </ul>

    <h2>Пример рабочего процесса</h2>
    <pre><code>
# 1. Определение автора изменений в конкретном файле
git blame filename.txt

# 2. Просмотр истории изменений файла
git log filename.txt

# 3. Просмотр деталей конкретного коммита
git show abc1234
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если вы хотите найти автора конкретной строки кода, используйте
            <code>git blame</code>. Если вам нужно увидеть все изменения в файле, используйте <code>git log</code> или
            <code>git show</code>.
        </p>
    </div>

    <h2>Заключение</h2>
    <p>
        Определение автора изменений в Git — это важная часть работы с системой контроля версий.
        Используйте команды <code>git blame</code>, <code>git log</code> и <code>git show</code> для отслеживания изменений и
        понимания, кто и когда внёс их в проект. Это помогает поддерживать порядок в коде и
        эффективно управлять разработкой.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('95851982-9d2a-4cf6-ae6a-15bba9add415', 'Как проверить статус вашего рабочего каталога с помощью Git?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Проверка статуса рабочего каталога в Git</title>
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
    <h1>Проверка статуса рабочего каталога в Git</h1>
    <p>
        В Git команда <span class="highlight">git status</span> используется для проверки текущего состояния рабочего
        каталога и индекса (staging area). Она показывает, какие файлы были изменены, какие
        добавлены в индекс и какие ещё не отслеживаются Git. Это одна из самых часто используемых
        команд, которая помогает понять, что происходит в вашем проекте.
    </p>

    <h2>Основное использование git status</h2>
    <p>
        Чтобы проверить статус рабочего каталога, выполните команду <code>git status</code> в терминале.
    </p>
    <pre><code>
git status
    </code></pre>
    <p>
        Эта команда выведет информацию о текущем состоянии рабочего каталога, включая:
    </p>
    <ul>
        <li>
            <span class="highlight">Изменённые файлы:</span>
            <p>
                Файлы, которые были изменены, но ещё не добавлены в индекс (staging area).
            </p>
        </li>
        <li>
            <span class="highlight">Файлы в индексе:</span>
            <p>
                Файлы, которые были добавлены в индекс и готовы к коммиту.
            </p>
        </li>
        <li>
            <span class="highlight">Неотслеживаемые файлы:</span>
            <p>
                Файлы, которые Git ещё не отслеживает (например, новые файлы).
            </p>
        </li>
        <li>
            <span class="highlight">Состояние ветки:</span>
            <p>
                Информация о текущей ветке и её состоянии относительно удалённого репозитория
                (например, отставание или опережение).
            </p>
        </li>
    </ul>

    <h2>Пример вывода git status</h2>
    <pre><code>
On branch main
Your branch is up to date with \'origin/main\'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
    modified:   README.md

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
    modified:   index.html

Untracked files:
  (use "git add <file>..." to include in what will be committed)
    new-file.txt
    </code></pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>
            <span class="highlight">README.md</span> — изменённый файл, который добавлен в индекс и готов к коммиту.
        </li>
        <li>
            <span class="highlight">index.html</span> — изменённый файл, который ещё не добавлен в индекс.
        </li>
        <li>
            <span class="highlight">new-file.txt</span> — новый файл, который Git ещё не отслеживает.
        </li>
    </ul>

    <h2>Дополнительные опции git status</h2>
    <ul>
        <li>
            <span class="highlight">Краткий вывод:</span>
            <p>
                Чтобы получить более краткий вывод, используйте опцию <code>-s</code> или <code>--short</code>.
            </p>
            <pre><code>
git status -s
            </code></pre>
            <p>
                Пример вывода:
            </p>
            <pre><code>
M  README.md
 M index.html
?? new-file.txt
            </code></pre>
            <p>
                Здесь:
                <ul>
                    <li><code>M</code> — изменённый файл.</li>
                    <li><code>??</code> — неотслеживаемый файл.</li>
                </ul>
            </p>
        </li>
        <li>
            <span class="highlight">Показ игнорируемых файлов:</span>
            <p>
                Чтобы увидеть файлы, которые игнорируются Git (например, через <code>.gitignore</code>),
                используйте опцию <code>--ignored</code>.
            </p>
            <pre><code>
git status --ignored
            </code></pre>
        </li>
    </ul>

    <h2>Пример рабочего процесса</h2>
    <pre><code>
# 1. Проверка статуса рабочего каталога
git status

# 2. Добавление изменённых файлов в индекс
git add index.html

# 3. Проверка статуса после добавления файлов
git status

# 4. Фиксация изменений
git commit -m "Обновлён index.html"
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Регулярное использование <code>git status</code> помогает поддерживать
            порядок в рабочем каталоге и избегать потери изменений.
        </p>
    </div>

    <h2>Заключение</h2>
    <p>
        Команда <code>git status</code> — это мощный инструмент для проверки состояния рабочего каталога и
        индекса в Git. Она позволяет быстро понять, какие изменения были внесены, какие файлы
        готовы к коммиту и какие ещё не отслеживаются. Используйте <code>git status</code> регулярно, чтобы
        эффективно управлять изменениями в проекте.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cd43b79a-5ae3-49e1-ad18-22d49714b0c9', 'Как вы можете игнорировать файлы или директории в Git?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Игнорирование файлов и директорий в Git</title>
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
    <h1>Игнорирование файлов и директорий в Git</h1>
    <p>
        В Git можно игнорировать определённые файлы или директории, чтобы они не отслеживались
        системой контроля версий. Это полезно для исключения временных файлов, файлов
        конфигурации, бинарных файлов и других данных, которые не должны быть частью репозитория.
        Для этого используется файл <span class="highlight">.gitignore</span>.
    </p>

    <h2>Создание и настройка .gitignore</h2>
    <p>
        Файл <span class="highlight">.gitignore</span> — это текстовый файл, в котором указываются шаблоны файлов и
        директорий, которые Git должен игнорировать. Этот файл должен находиться в корневой
        директории вашего репозитория.
    </p>
    <ul>
        <li>
            <span class="highlight">Создание .gitignore:</span>
            <p>
                Создайте файл <code>.gitignore</code> в корневой директории вашего проекта.
            </p>
            <pre><code>
touch .gitignore
            </code></pre>
        </li>
        <li>
            <span class="highlight">Добавление правил в .gitignore:</span>
            <p>
                В файле <code>.gitignore</code> укажите шаблоны файлов и директорий, которые нужно игнорировать.
                Каждый шаблон должен быть на новой строке.
            </p>
            <pre><code>
# Игнорировать все файлы с расширением .log
*.log

# Игнорировать директорию build
/build

# Игнорировать конкретный файл
config.ini

# Игнорировать все файлы в директории temp, кроме .gitkeep
/temp/*
!/temp/.gitkeep
            </code></pre>
        </li>
    </ul>

    <h2>Основные правила .gitignore</h2>
    <ul>
        <li>
            <span class="highlight">Игнорирование всех файлов с определённым расширением:</span>
            <p>
                Используйте <code>*</code> для указания любого имени файла и <code>.</code> для указания расширения.
            </p>
            <pre><code>
*.log
            </code></pre>
        </li>
        <li>
            <span class="highlight">Игнорирование конкретной директории:</span>
            <p>
                Укажите имя директории с <code>/</code> в начале.
            </p>
            <pre><code>
/build
            </code></pre>
        </li>
        <li>
            <span class="highlight">Игнорирование конкретного файла:</span>
            <p>
                Укажите полное имя файла.
            </p>
            <pre><code>
config.ini
            </code></pre>
        </li>
        <li>
            <span class="highlight">Исключение из игнорирования:</span>
            <p>
                Используйте <code>!</code> перед шаблоном, чтобы исключить файл или директорию из игнорирования.
            </p>
            <pre><code>
/temp/*
!/temp/.gitkeep
            </code></pre>
        </li>
    </ul>

    <h2>Пример .gitignore</h2>
    <pre><code>
# Игнорировать все файлы с расширением .log и .tmp
*.log
*.tmp

# Игнорировать директорию node_modules
/node_modules

# Игнорировать все файлы в директории temp, кроме .gitkeep
/temp/*
!/temp/.gitkeep

# Игнорировать файлы конфигурации
config.ini
.env
    </code></pre>

    <h2>Игнорирование уже отслеживаемых файлов</h2>
    <p>
        Если файл уже отслеживается Git, добавление его в <code>.gitignore</code> не остановит его отслеживание.
        Чтобы игнорировать уже отслеживаемый файл, нужно удалить его из индекса:
    </p>
    <pre><code>
# Удалить файл из индекса, но сохранить в рабочей директории
git rm --cached filename

# Удалить директорию из индекса, но сохранить в рабочей директории
git rm --cached -r directory
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Файл <code>.gitignore</code> не влияет на файлы, которые уже были зафиксированы
            в репозитории. Чтобы игнорировать такие файлы, их нужно удалить из индекса, как
            показано выше.
        </p>
    </div>

    <h2>Заключение</h2>
    <p>
        Использование файла <code>.gitignore</code> позволяет эффективно управлять тем, какие файлы и
        директории должны игнорироваться Git. Это помогает избежать добавления в репозиторий
        временных файлов, файлов конфигурации и других данных, которые не должны быть частью
        системы контроля версий. Следуйте правилам и рекомендациям по настройке <code>.gitignore</code>,
        чтобы поддерживать порядок в проекте.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e21d5769-d0b7-468b-b628-f138743a2f8b', 'Объясните разницу между спин-блокировкой (spin lock) и блокировкой, основанной на ожидании (blocking lock). Когда использовать каждую из них?', e'<!DOCTYPE html><html lang="ru"> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <title>Спин-блокировка и блокировка, основанная на ожидании</title><style>

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

</style> </head> <body> <h1>Спин-блокировка и блокировка, основанная на ожидании</h1> <p> <span class="highlight">Спин-блокировка (spin lock)</span> и <span class="highlight">блокировка, основанная на ожидании (blocking lock)</span> — это два подхода к синхронизации потоков, которые используются для управления доступом к общим ресурсам. Они различаются по своей работе и сценариям применения. </p>
Copy
<h2>Спин-блокировка (Spin Lock)</h2>
<p>
    Спин-блокировка — это механизм, при котором поток, пытающийся захватить блокировку, активно "крутится" в цикле, проверяя, доступна ли блокировка. Вместо того чтобы переходить в состояние ожидания, поток продолжает выполнять цикл, пока блокировка не будет освобождена.
</p>

<h3>Когда использовать спин-блокировку:</h3>
<ul>
    <li>
        <span class="highlight">Короткие критические секции:</span> Если время удержания блокировки очень мало, спин-блокировка может быть эффективнее, так как она избегает накладных расходов на переключение контекста.
    </li>
    <li>
        <span class="highlight">Системы с малым количеством потоков:</span> В системах с небольшим количеством конкурирующих потоков спин-блокировка может быть предпочтительной, так как вероятность долгого ожидания блокировки низка.
    </li>
    <li>
        <span class="highlight">Реализация в низкоуровневых системах:</span> Спин-блокировки часто используются в операционных системах и драйверах устройств, где переключение контекста нежелательно.
    </li>
</ul>

<h2>Блокировка, основанная на ожидании (Blocking Lock)</h2>
<p>
    Блокировка, основанная на ожидании, переводит поток в состояние ожидания, если блокировка недоступна. Поток освобождает процессор и ждёт, пока блокировка не будет освобождена, после чего он будет разбужен и продолжит выполнение.
</p>

<h3>Когда использовать блокировку, основанную на ожидании:</h3>
<ul>
    <li>
        <span class="highlight">Долгие критические секции:</span> Если время удержания блокировки велико, блокировка, основанная на ожидании, предпочтительна, так как она не тратит ресурсы процессора на активное ожидание.
    </li>
    <li>
        <span class="highlight">Системы с большим количеством потоков:</span> В системах с высокой конкуренцией за ресурсы блокировка, основанная на ожидании, эффективнее, так как она снижает нагрузку на процессор.
    </li>
    <li>
        <span class="highlight">Высокоуровневые приложения:</span> В приложениях, где важна энергоэффективность и минимизация нагрузки на процессор, блокировки, основанные на ожидании, являются стандартным выбором.
    </li>
</ul>

<div class="note">
    <p>
        <span class="highlight">Важно:</span> Выбор между спин-блокировкой и блокировкой, основанной на ожидании, зависит от конкретного сценария. Спин-блокировки эффективны для коротких операций и систем с низкой конкуренцией, тогда как блокировки, основанные на ожидании, лучше подходят для долгих операций и систем с высокой нагрузкой.
    </p>
</div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('520b19fb-01e1-4bdf-9a04-e9254eeb574e', 'Как создать патч из ваших изменений в Git, и для чего это может быть полезно?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Создание патча в Git</title>
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
    <h1>Создание патча в Git</h1>
    <p>
        <span class="highlight">Патч</span> — это файл, содержащий изменения, которые можно применить к другому репозиторию
        или ветке. В Git патчи создаются с помощью команды <code>git diff</code> или <code>git format-patch</code>.
        Патчи полезны для передачи изменений между разработчиками, отправки исправлений в
        open-source проекты или создания резервных копий изменений.
    </p>

    <h2>Создание патча с помощью git diff</h2>
    <p>
        Команда <span class="highlight">git diff</span> позволяет создать патч, который содержит различия между текущим
        состоянием рабочей директории и последним коммитом, или между двумя коммитами.
    </p>
    <ul>
        <li>
            <span class="highlight">Создание патча для незафиксированных изменений:</span>
            <p>
                Чтобы создать патч для изменений, которые ещё не были зафиксированы, используйте
                команду <code>git diff</code> и перенаправьте вывод в файл.
            </p>
            <pre><code>
git diff > changes.patch
            </code></pre>
        </li>
        <li>
            <span class="highlight">Создание патча между коммитами:</span>
            <p>
                Чтобы создать патч, содержащий изменения между двумя коммитами, укажите их хеши.
            </p>
            <pre><code>
git diff commit-hash-1 commit-hash-2 > changes.patch
            </code></pre>
        </li>
    </ul>

    <h2>Создание патча с помощью git format-patch</h2>
    <p>
        Команда <span class="highlight">git format-patch</span> создаёт патчи для каждого коммита в указанном диапазоне.
        Каждый патч представляет собой отдельный файл, который можно отправить по электронной
        почте или применить к другому репозиторию.
    </p>
    <ul>
        <li>
            <span class="highlight">Создание патча для последнего коммита:</span>
            <p>
                Чтобы создать патч для последнего коммита, используйте команду <code>git format-patch</code>.
            </p>
            <pre><code>
git format-patch HEAD~1
            </code></pre>
        </li>
        <li>
            <span class="highlight">Создание патча для диапазона коммитов:</span>
            <p>
                Чтобы создать патчи для нескольких коммитов, укажите диапазон.
            </p>
            <pre><code>
git format-patch commit-hash-1..commit-hash-2
            </code></pre>
        </li>
    </ul>

    <h2>Применение патча</h2>
    <p>
        Чтобы применить патч к вашему репозиторию, используйте команду <code>git apply</code> или <code>git am</code>.
    </p>
    <ul>
        <li>
            <span class="highlight">Применение патча с git apply:</span>
            <p>
                Команда <code>git apply</code> применяет изменения из патча, но не создаёт коммит.
            </p>
            <pre><code>
git apply changes.patch
            </code></pre>
        </li>
        <li>
            <span class="highlight">Применение патча с git am:</span>
            <p>
                Команда <code>git am</code> применяет патч и создаёт коммит на основе информации из патча.
            </p>
            <pre><code>
git am < changes.patch
            </code></pre>
        </li>
    </ul>

    <h2>Для чего полезны патчи?</h2>
    <ul>
        <li>
            <span class="highlight">Передача изменений:</span>
            <p>
                Патчи позволяют передавать изменения между разработчиками, особенно если у них
                нет доступа к общему репозиторию.
            </p>
        </li>
        <li>
            <span class="highlight">Отправка исправлений в open-source проекты:</span>
            <p>
                Многие open-source проекты принимают исправления в виде патчей, отправленных по
                электронной почте.
            </p>
        </li>
        <li>
            <span class="highlight">Создание резервных копий изменений:</span>
            <p>
                Патчи можно использовать для создания резервных копий изменений перед сбросом
                ветки или выполнением рискованных операций.
            </p>
        </li>
    </ul>

    <h2>Пример рабочего процесса</h2>
    <pre><code>
# 1. Создание патча для незафиксированных изменений
git diff > changes.patch

# 2. Применение патча в другом репозитории
git apply changes.patch

# 3. Создание патча для последнего коммита
git format-patch HEAD~1

# 4. Применение патча с созданием коммита
git am < 0001-Commit-message.patch
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Патчи, созданные с помощью <code>git format-patch</code>, содержат информацию
            о коммите (автор, дата, сообщение), что делает их удобными для применения с
            сохранением истории.
        </p>
    </div>

    <h2>Заключение</h2>
    <p>
        Патчи в Git — это удобный способ передачи изменений между разработчиками, отправки
        исправлений в open-source проекты и создания резервных копий изменений. Используйте
        команды <code>git diff</code> и <code>git format-patch</code> для создания патчей, а <code>git apply</code> и <code>git am</code> — для
        их применения. Это помогает эффективно управлять изменениями и collaboration в проектах.
    </p>
</body>
</html>', 'GIT', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f5e8bbd5-8b1b-4e0e-b62f-afb91ab439e1', 'Что такое "submodule" в Git, и когда вы бы его использовали?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submodule в Git</title>
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
    <h1>Submodule в Git</h1>
    <p>
        <span class="highlight">Submodule</span> (подмодуль) в Git — это механизм, который позволяет встраивать один
        репозиторий в другой в качестве поддиректории. Это полезно, когда вам нужно использовать
        сторонний код или библиотеку в вашем проекте, сохраняя при этом возможность независимого
        управления версиями для каждого репозитория.
    </p>

    <h2>Что такое Submodule?</h2>
    <p>
        Submodule — это ссылка на определённый коммит в другом репозитории. Это позволяет вам
        включать внешние проекты в ваш основной проект, сохраняя их историю и возможность
        обновления.
    </p>
    <ul>
        <li>
            <span class="highlight">Как это работает:</span>
            <p>
                Submodule представляет собой отдельный Git-репозиторий, который встраивается в
                ваш основной репозиторий как поддиректория. Основной репозиторий хранит только
                ссылку на конкретный коммит в подмодуле.
            </p>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Позволяет использовать сторонние библиотеки или проекты в вашем репозитории.</li>
                <li>Сохраняет независимость управления версиями для каждого репозитория.</li>
                <li>Упрощает обновление внешних зависимостей.</li>
            </ul>
        </li>
    </ul>

    <h2>Когда использовать Submodule?</h2>
    <p>
        Submodule полезен в следующих сценариях:
    </p>
    <ul>
        <li>
            <span class="highlight">Использование сторонних библиотек:</span>
            <p>
                Если ваш проект зависит от сторонней библиотеки, которую вы хотите включить в
                ваш репозиторий, но при этом сохранить возможность обновления.
            </p>
        </li>
        <li>
            <span class="highlight">Разделение проекта на модули:</span>
            <p>
                Если ваш проект состоит из нескольких независимых модулей, каждый из которых
                разрабатывается отдельно, но должен быть частью основного проекта.
            </p>
        </li>
        <li>
            <span class="highlight">Совместная разработка:</span>
            <p>
                Если несколько команд работают над разными частями проекта, и каждая команда
                использует свой репозиторий.
            </p>
        </li>
    </ul>

    <h2>Как добавить Submodule?</h2>
    <p>
        Чтобы добавить Submodule в ваш проект, используйте команду <code>git submodule add</code>.
    </p>
    <pre><code>
# Добавление Submodule
git submodule add https://github.com/username/repository.git path/to/submodule
    </code></pre>
    <p>
        Здесь:
        <ul>
            <li><code>https://github.com/username/repository.git</code> — URL репозитория, который вы хотите добавить.</li>
            <li><code>path/to/submodule</code> — путь, по которому Submodule будет добавлен в ваш проект.</li>
        </ul>
    </p>

    <h2>Как клонировать репозиторий с Submodule?</h2>
    <p>
        Если вы клонируете репозиторий, содержащий Submodule, вам нужно инициализировать и
        обновить Submodule.
    </p>
    <pre><code>
# Клонирование репозитория
git clone https://github.com/username/main-repository.git

# Переход в директорию репозитория
cd main-repository

# Инициализация Submodule
git submodule init

# Обновление Submodule (загрузка содержимого)
git submodule update
    </code></pre>

    <h2>Как обновить Submodule?</h2>
    <p>
        Чтобы обновить Submodule до последней версии, перейдите в его директорию и выполните
        команду <code>git pull</code>.
    </p>
    <pre><code>
# Переход в директорию Submodule
cd path/to/submodule

# Обновление Submodule
git pull origin main

# Возвращение в основную директорию
cd ../..

# Фиксация изменений в основном репозитории
git add path/to/submodule
git commit -m "Обновлён Submodule"
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Submodule — это мощный инструмент, но он требует осторожного
            использования. Убедитесь, что все члены команды понимают, как работать с Submodule,
            чтобы избежать проблем с синхронизацией.
        </p>
    </div>

    <h2>Пример рабочего процесса</h2>
    <pre><code>
# 1. Добавление Submodule
git submodule add https://github.com/username/library.git libs/library

# 2. Клонирование репозитория с Submodule
git clone https://github.com/username/main-repository.git
cd main-repository
git submodule init
git submodule update

# 3. Обновление Submodule
cd libs/library
git pull origin main
cd ../..
git add libs/library
git commit -m "Обновлён Submodule library"
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Submodule в Git — это мощный инструмент для управления зависимостями и модулями в
        проекте. Он позволяет включать сторонние репозитории в ваш проект, сохраняя их
        независимость и возможность обновления. Используйте Submodule в сценариях, где
        требуется разделение кода на модули или использование внешних библиотек, чтобы
        эффективно управлять разработкой.
    </p>
</body>
</html>', 'GIT', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('333099d1-c2d2-46f0-898b-7f0014034f20', 'Какие типы классов есть в Java?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Типы классов в Java</title>
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
        <h1>Типы классов в Java</h1>
        <ul>
            <li>
                <span class="highlight">Top level class (обычный класс):</span>
                <ul>
                    <li>Abstract class (абстрактный класс);</li>
                    <li>Final class (финализированный класс).</li>
                </ul>
            </li>
            <li>
                <span class="highlight">Interfaces (интерфейс).</span>
            </li>
            <li>
                <span class="highlight">Enum (перечисление).</span>
            </li>
            <li>
                <span class="highlight">Nested class (вложенный класс):</span>
                <ul>
                    <li>Static nested class (статический вложенный класс);</li>
                    <li>Member inner class (простой внутренний класс);</li>
                    <li>Local inner class (локальный класс);</li>
                    <li>Anonymous inner class (анонимный класс).</li>
                </ul>
            </li>
        </ul>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> В Java классы могут быть разных типов, каждый из которых имеет свои особенности
                и предназначение. Например, абстрактные классы используются для создания базовых
                классов, а вложенные классы помогают организовать код более структурированно.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('282faa54-2169-4dce-8c4b-cc7838cdbfdb', 'Что такое Lombok и как он может помочь в проектах на Spring?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lombok в Spring-проектах</title>
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
    <h1>Lombok в Spring-проектах</h1>
    <p>
        <span class="highlight">Lombok</span> — это библиотека для Java, которая помогает сократить количество шаблонного кода, автоматически генерируя методы, такие как геттеры, сеттеры, конструкторы и другие. В Spring-проектах Lombok может значительно упростить разработку, делая код более чистым и читаемым.
    </p>

    <h2>Основные возможности Lombok</h2>
    <ul>
        <li>
            <span class="highlight">Геттеры и сеттеры:</span> Автоматическая генерация методов <code>get</code> и <code>set</code> для полей класса.
        </li>
        <li>
            <span class="highlight">Конструкторы:</span> Автоматическая генерация конструкторов с параметрами или без них.
        </li>
        <li>
            <span class="highlight">Методы <code>toString</code>, <code>equals</code> и <code>hashCode</code>:</span> Автоматическая реализация этих методов.
        </li>
        <li>
            <span class="highlight">Библиотека аннотаций:</span> Lombok предоставляет множество аннотаций для упрощения кода, таких как <code>@Data</code>, <code>@Builder</code>, <code>@Slf4j</code> и другие.
        </li>
    </ul>

    <h2>Как Lombok помогает в Spring-проектах?</h2>
    <ul>
        <li>
            <span class="highlight">Сокращение шаблонного кода:</span> Lombok избавляет от необходимости писать геттеры, сеттеры, конструкторы и другие методы вручную.
        </li>
        <li>
            <span class="highlight">Улучшение читаемости кода:</span> Код становится более компактным и понятным, так как он не перегружен шаблонными методами.
        </li>
        <li>
            <span class="highlight">Ускорение разработки:</span> Lombok позволяет сосредоточиться на бизнес-логике, а не на написании boilerplate-кода.
        </li>
        <li>
            <span class="highlight">Интеграция с Spring:</span> Lombok хорошо работает с Spring-аннотациями, такими как <code>@Component</code>, <code>@Service</code>, <code>@Repository</code> и другими.
        </li>
    </ul>

    <h2>Пример использования Lombok в Spring-проекте</h2>
    <p>
        Рассмотрим пример класса сущности (Entity) с использованием Lombok:
    </p>
    <pre><code>
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String email;
}
    </code></pre>
    <p>
        Аннотация <code>@Data</code> автоматически генерирует геттеры, сеттеры, <code>toString</code>, <code>equals</code> и <code>hashCode</code>. Аннотации <code>@NoArgsConstructor</code> и <code>@AllArgsConstructor</code> создают конструкторы без параметров и со всеми параметрами соответственно.
    </p>

    <h2>Пример использования Lombok в сервисе</h2>
    <p>
        Рассмотрим пример сервиса с использованием Lombok:
    </p>
    <pre><code>
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {

    private final UserRepository userRepository;

    public User getUserById(Long id) {
        log.info("Fetching user with id: {}", id);
        return userRepository.findById(id)
                            .orElseThrow(() -> new ResourceNotFoundException("User not found"));
    }
}
    </code></pre>
    <p>
        Аннотация <code>@RequiredArgsConstructor</code> создаёт конструктор для всех final-полей, таких как <code>userRepository</code>. Аннотация <code>@Slf4j</code> автоматически добавляет логгер в класс.
    </p>

    <h2>Пример использования Lombok в DTO</h2>
    <p>
        Рассмотрим пример DTO (Data Transfer Object) с использованием Lombok:
    </p>
    <pre><code>
import lombok.Builder;
import lombok.Value;

@Value
@Builder
public class UserDTO {
    private Long id;
    private String name;
    private String email;
}
    </code></pre>
    <p>
        Аннотация <code>@Value</code> делает класс неизменяемым (immutable) и генерирует геттеры, <code>toString</code>, <code>equals</code> и <code>hashCode</code>. Аннотация <code>@Builder</code> добавляет паттерн Builder для удобного создания объектов.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Для работы Lombok необходимо установить плагин в вашу IDE (например, IntelliJ IDEA или Eclipse) и добавить зависимость в проект (Maven или Gradle).
        </p>
    </div>

    <h2>Добавление Lombok в проект</h2>
    <p>
        Для добавления Lombok в Maven-проект добавьте зависимость в <code>pom.xml</code>:
    </p>
    <pre><code>
&lt;dependency&gt;
    &lt;groupId&gt;org.projectlombok&lt;/groupId&gt;
    &lt;artifactId&gt;lombok&lt;/artifactId&gt;
    &lt;version&gt;1.18.24&lt;/version&gt;
    &lt;scope&gt;provided&lt;/scope&gt;
&lt;/dependency&gt;
    </code></pre>
    <p>
        Для Gradle добавьте зависимость в <code>build.gradle</code>:
    </p>
    <pre><code>
dependencies {
    compileOnly \'org.projectlombok:lombok:1.18.24\'
    annotationProcessor \'org.projectlombok:lombok:1.18.24\'
}
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Lombok — это мощный инструмент, который помогает сократить количество шаблонного кода в Spring-проектах. Он упрощает разработку, улучшает читаемость кода и ускоряет процесс написания приложений. Использование Lombok позволяет сосредоточиться на реализации бизнес-логики, а не на написании boilerplate-кода.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a270bc1c-1810-4321-b316-28bbc6964fef', 'Что такое @DataJpaTest?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@DataJpaTest в Spring Boot</title>
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
    <h1>@DataJpaTest в Spring Boot</h1>
    <p>
        <span class="highlight">@DataJpaTest</span> — это аннотация в Spring Boot, предназначенная для тестирования JPA-репозиториев. Она настраивает тестовый контекст, включая только те компоненты, которые необходимы для работы с JPA, такие как репозитории, EntityManager и DataSource.
    </p>

    <h2>Для чего используется @DataJpaTest?</h2>
    <ul>
        <li>
            <span class="highlight">Тестирование репозиториев:</span> Аннотация позволяет тестировать JPA-репозитории без необходимости загружать весь контекст приложения.
        </li>
        <li>
            <span class="highlight">Настройка тестовой базы данных:</span> По умолчанию <code>@DataJpaTest</code> использует встроенную базу данных (например, H2) для тестирования, что делает тесты быстрыми и изолированными.
        </li>
        <li>
            <span class="highlight">Автоконфигурация:</span> Spring Boot автоматически настраивает EntityManager, DataSource и другие компоненты, необходимые для работы с JPA.
        </li>
    </ul>

    <h2>Пример использования @DataJpaTest</h2>
    <p>
        Рассмотрим пример тестирования JPA-репозитория с использованием <code>@DataJpaTest</code>:
    </p>
    <pre><code>
@DataJpaTest
public class UserRepositoryTest {

    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private UserRepository userRepository;

    @Test
    public void testFindByEmail() {
        // Создание и сохранение тестового пользователя
        User user = new User("John Doe", "john@example.com");
        entityManager.persist(user);
        entityManager.flush();

        // Поиск пользователя по email
        User found = userRepository.findByEmail(user.getEmail());

        // Проверка результата
        assertThat(found.getEmail()).isEqualTo(user.getEmail());
    }
}
    </code></pre>

    <h2>Настройка тестовой базы данных</h2>
    <p>
        По умолчанию <code>@DataJpaTest</code> использует встроенную базу данных H2. Однако вы можете настроить использование другой базы данных, добавив соответствующие свойства в <code>application.properties</code>:
    </p>
    <pre><code>
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=password
spring.jpa.database-platform=org.hibernate.dialect.H2Dialect
    </code></pre>

    <h2>Пример тестирования с использованием SQL-скриптов</h2>
    <p>
        Вы можете использовать SQL-скрипты для инициализации тестовой базы данных. Для этого добавьте файлы <code>schema.sql</code> и <code>data.sql</code> в папку <code>src/test/resources</code>:
    </p>
    <pre><code>
-- schema.sql
CREATE TABLE user (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

-- data.sql
INSERT INTO user (name, email) VALUES (\'John Doe\', \'john@example.com\');
    </code></pre>
    <p>
        Spring Boot автоматически выполнит эти скрипты перед запуском тестов.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>@DataJpaTest</code> не загружает весь контекст Spring, что делает тесты быстрыми и изолированными. Однако, если вам нужно протестировать интеграцию с другими компонентами, используйте <code>@SpringBootTest</code>.
        </p>
    </div>

    <h2>Заключение</h2>
    <p>
        Аннотация <code>@DataJpaTest</code> — это мощный инструмент для тестирования JPA-репозиториев в Spring Boot. Она упрощает настройку тестового окружения, используя встроенную базу данных и автоматически настраивая необходимые компоненты. Это делает тестирование репозиториев быстрым, удобным и эффективным.
    </p>
</body>
</html>', 'TEST', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('bda274ed-ebba-401c-abad-87e91f010866', 'Как создать RESTful API с помощью Spring Boot?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Создание RESTful API с помощью Spring Boot</title>
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
    <h1>Создание RESTful API с помощью Spring Boot</h1>
    <p>
        Spring Boot предоставляет удобные инструменты для создания RESTful API, которые позволяют быстро разрабатывать веб-сервисы. RESTful API — это архитектурный стиль, который использует HTTP-методы (GET, POST, PUT, DELETE и др.) для взаимодействия с ресурсами.
    </p>

    <h2>Основные шаги для создания RESTful API</h2>
    <ul>
        <li>
            <span class="highlight">Создание проекта:</span> Используйте Spring Initializr для создания нового проекта Spring Boot. Добавьте зависимости <code>spring-boot-starter-web</code> для работы с веб-приложениями и RESTful API.
        </li>
        <li>
            <span class="highlight">Создание модели данных:</span> Определите классы, которые будут представлять ваши данные (сущности). Например, класс <code>User</code> для представления пользователя.
        </li>
        <li>
            <span class="highlight">Создание контроллера:</span> Контроллер обрабатывает HTTP-запросы и возвращает ответы. Используйте аннотацию <code>@RestController</code> для создания RESTful контроллера.
        </li>
        <li>
            <span class="highlight">Реализация методов API:</span> В контроллере создайте методы, которые будут обрабатывать запросы (GET, POST, PUT, DELETE и др.) и возвращать данные в формате JSON.
        </li>
    </ul>

    <h2>Пример создания RESTful API</h2>
    <p>
        Рассмотрим пример простого RESTful API для управления пользователями.
    </p>

    <h3>1. Модель данных</h3>
    <pre><code>
public class User {
    private Long id;
    private String name;
    private String email;

    // Геттеры и сеттеры
}
    </code></pre>

    <h3>2. Контроллер</h3>
    <pre><code>
@RestController
@RequestMapping("/api/users")
public class UserController {

    private List&lt;User&gt; users = new ArrayList&lt;&gt;();

    @GetMapping
    public List&lt;User&gt; getAllUsers() {
        return users;
    }

    @GetMapping("/{id}")
    public User getUserById(@PathVariable Long id) {
        return users.stream()
                    .filter(user -> user.getId().equals(id))
                    .findFirst()
                    .orElseThrow(() -> new RuntimeException("User not found"));
    }

    @PostMapping
    public User createUser(@RequestBody User user) {
        users.add(user);
        return user;
    }

    @PutMapping("/{id}")
    public User updateUser(@PathVariable Long id, @RequestBody User updatedUser) {
        User user = getUserById(id);
        user.setName(updatedUser.getName());
        user.setEmail(updatedUser.getEmail());
        return user;
    }

    @DeleteMapping("/{id}")
    public void deleteUser(@PathVariable Long id) {
        users.removeIf(user -> user.getId().equals(id));
    }
}
    </code></pre>

    <h3>3. Запуск приложения</h3>
    <p>
        После создания контроллера и модели данных запустите приложение Spring Boot. По умолчанию API будет доступно по адресу <code>http://localhost:8080/api/users</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring Boot автоматически настраивает большинство компонентов, таких как встроенный сервер (Tomcat) и преобразование объектов в JSON. Это позволяет сосредоточиться на разработке бизнес-логики.
        </p>
    </div>

    <h2>Тестирование API</h2>
    <p>
        Для тестирования RESTful API можно использовать инструменты, такие как Postman или curl. Например:
    </p>
    <ul>
        <li>
            <span class="highlight">GET /api/users</span> — получить список всех пользователей.
        </li>
        <li>
            <span class="highlight">POST /api/users</span> — создать нового пользователя.
        </li>
        <li>
            <span class="highlight">PUT /api/users/{id}</span> — обновить данные пользователя.
        </li>
        <li>
            <span class="highlight">DELETE /api/users/{id}</span> — удалить пользователя.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5b7dce5e-6f89-43b3-a5e4-d5e45b510a4e', 'Как вы обрабатываете исключения в Spring приложении?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Обработка исключений в Spring-приложении</title>
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
    <h1>Обработка исключений в Spring-приложении</h1>
    <p>
        Обработка исключений — это важная часть разработки Spring-приложений, которая позволяет корректно управлять ошибками и предоставлять пользователю понятные сообщения. Spring предоставляет несколько механизмов для обработки исключений, включая аннотации, глобальные обработчики и кастомные исключения.
    </p>

    <h2>Основные подходы к обработке исключений</h2>
    <ul>
        <li>
            <span class="highlight">Локальная обработка исключений:</span> Использование <code>@ExceptionHandler</code> в контроллерах для обработки исключений в пределах одного контроллера.
        </li>
        <li>
            <span class="highlight">Глобальная обработка исключений:</span> Использование <code>@ControllerAdvice</code> для централизованной обработки исключений во всём приложении.
        </li>
        <li>
            <span class="highlight">Кастомные исключения:</span> Создание собственных исключений для более точного управления ошибками.
        </li>
        <li>
            <span class="highlight">ResponseStatusException:</span> Использование встроенного класса <code>ResponseStatusException</code> для быстрой обработки ошибок с указанием HTTP-статуса.
        </li>
    </ul>

    <h2>Локальная обработка исключений</h2>
    <p>
        Для обработки исключений в пределах одного контроллера используется аннотация <code>@ExceptionHandler</code>. Пример:
    </p>
    <pre><code>
@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/{id}")
    public User getUserById(@PathVariable Long id) {
        return userService.getUserById(id);
    }

    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity&lt;String&gt; handleResourceNotFoundException(ResourceNotFoundException ex) {
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(ex.getMessage());
    }
}
    </code></pre>
    <p>
        В этом примере исключение <code>ResourceNotFoundException</code> обрабатывается в контроллере и возвращается HTTP-статус 404 с сообщением об ошибке.
    </p>

    <h2>Глобальная обработка исключений</h2>
    <p>
        Для централизованной обработки исключений используется аннотация <code>@ControllerAdvice</code>. Пример:
    </p>
    <pre><code>
@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity&lt;String&gt; handleResourceNotFoundException(ResourceNotFoundException ex) {
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(ex.getMessage());
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity&lt;String&gt; handleGeneralException(Exception ex) {
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred");
    }
}
    </code></pre>
    <p>
        Этот обработчик будет перехватывать исключения <code>ResourceNotFoundException</code> и любые другие исключения во всём приложении.
    </p>

    <h2>Создание кастомных исключений</h2>
    <p>
        Кастомные исключения позволяют более точно управлять ошибками. Пример создания кастомного исключения:
    </p>
    <pre><code>
public class ResourceNotFoundException extends RuntimeException {
    public ResourceNotFoundException(String message) {
        super(message);
    }
}
    </code></pre>
    <p>
        Это исключение можно использовать в сервисах и контроллерах для обработки ситуаций, когда ресурс не найден.
    </p>

    <h2>Использование ResponseStatusException</h2>
    <p>
        <code>ResponseStatusException</code> — это удобный способ быстрой обработки ошибок с указанием HTTP-статуса. Пример:
    </p>
    <pre><code>
@GetMapping("/{id}")
public User getUserById(@PathVariable Long id) {
    return userService.getUserById(id)
                      .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found"));
}
    </code></pre>
    <p>
        В этом примере, если пользователь не найден, будет выброшено исключение с HTTP-статусом 404.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Глобальная обработка исключений с помощью <code>@ControllerAdvice</code> предпочтительна для централизованного управления ошибками, так как она позволяет избежать дублирования кода.
        </p>
    </div>

    <h2>Пример обработки исключений с возвратом JSON</h2>
    <p>
        Для возврата ошибок в формате JSON можно использовать DTO (Data Transfer Object). Пример:
    </p>
    <pre><code>
@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity&lt;ErrorResponse&gt; handleResourceNotFoundException(ResourceNotFoundException ex) {
        ErrorResponse errorResponse = new ErrorResponse(HttpStatus.NOT_FOUND.value(), ex.getMessage());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorResponse);
    }
}

public class ErrorResponse {
    private int status;
    private String message;

    // Конструкторы, геттеры и сеттеры
}
    </code></pre>
    <p>
        В этом примере исключение обрабатывается и возвращается в формате JSON с указанием статуса и сообщения об ошибке.
    </p>

    <h2>Заключение</h2>
    <p>
        Обработка исключений в Spring-приложении — это важный аспект разработки, который позволяет корректно управлять ошибками и предоставлять пользователю понятные сообщения. Использование локальных и глобальных обработчиков, кастомных исключений и <code>ResponseStatusException</code> делает код более структурированным и поддерживаемым. Это особенно важно для создания надёжных и удобных в использовании приложений.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e5fa67b9-a051-47a4-9ea9-1a812718396e', 'Как управлять конфигурацией в Spring Boot?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Управление конфигурацией в Spring Boot</title>
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
    <h1>Управление конфигурацией в Spring Boot</h1>
    <p>
        Spring Boot предоставляет гибкие механизмы для управления конфигурацией приложения. Это позволяет настраивать поведение приложения в зависимости от окружения (например, разработка, тестирование, production) без изменения кода.
    </p>

    <h2>Основные способы управления конфигурацией</h2>
    <ul>
        <li>
            <span class="highlight">Файлы свойств:</span> Spring Boot поддерживает конфигурацию через файлы <code>application.properties</code> или <code>application.yml</code>. Эти файлы могут находиться в classpath или в определённых директориях.
        </li>
        <li>
            <span class="highlight">Профили:</span> Spring Boot позволяет использовать профили для настройки приложения под разные окружения. Например, можно создать отдельные конфигурации для разработки (<code>application-dev.properties</code>) и production (<code>application-prod.properties</code>).
        </li>
        <li>
            <span class="highlight">Внешние источники:</span> Конфигурация может быть загружена из внешних источников, таких как переменные окружения, аргументы командной строки или удалённые хранилища (например, Spring Cloud Config).
        </li>
    </ul>

    <h2>Пример использования файлов свойств</h2>
    <p>
        Рассмотрим пример настройки приложения с помощью файла <code>application.properties</code>:
    </p>
    <pre><code>
# Настройка порта сервера
server.port=8080

# Настройка базы данных
spring.datasource.url=jdbc:mysql://localhost:3306/mydb
spring.datasource.username=root
spring.datasource.password=secret

# Включение логирования SQL-запросов
spring.jpa.show-sql=true
    </code></pre>

    <h2>Пример использования профилей</h2>
    <p>
        Для использования профилей создайте отдельные файлы конфигурации, например:
    </p>
    <ul>
        <li>
            <code>application-dev.properties</code> — для разработки:
            <pre><code>
server.port=8081
spring.datasource.url=jdbc:h2:mem:devdb
            </code></pre>
        </li>
        <li>
            <code>application-prod.properties</code> — для production:
            <pre><code>
server.port=8080
spring.datasource.url=jdbc:mysql://prod-server:3306/proddb
            </code></pre>
        </li>
    </ul>
    <p>
        Чтобы активировать профиль, укажите его в аргументах командной строки или в переменной окружения:
    </p>
    <pre><code>
# Активация профиля через аргумент командной строки
java -jar myapp.jar --spring.profiles.active=prod

# Активация профиля через переменную окружения
export SPRING_PROFILES_ACTIVE=dev
    </code></pre>

    <h2>Использование внешних источников конфигурации</h2>
    <p>
        Spring Boot позволяет загружать конфигурацию из различных внешних источников:
    </p>
    <ul>
        <li>
            <span class="highlight">Переменные окружения:</span> Spring Boot автоматически подхватывает значения из переменных окружения. Например, <code>SPRING_DATASOURCE_URL</code> заменит <code>spring.datasource.url</code>.
        </li>
        <li>
            <span class="highlight">Аргументы командной строки:</span> Конфигурацию можно передать через аргументы командной строки, например: <code>--server.port=9090</code>.
        </li>
        <li>
            <span class="highlight">Spring Cloud Config:</span> Для централизованного управления конфигурацией в распределённых системах можно использовать Spring Cloud Config.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring Boot использует иерархию для загрузки конфигурации. Например, аргументы командной строки имеют приоритет над переменными окружения, которые, в свою очередь, имеют приоритет над файлами свойств.
        </p>
    </div>

    <h2>Пример использования аннотации @ConfigurationProperties</h2>
    <p>
        Для работы с конфигурацией в коде можно использовать аннотацию <code>@ConfigurationProperties</code>. Например:
    </p>
    <pre><code>
@Configuration
@ConfigurationProperties(prefix = "app")
public class AppConfig {
    private String name;
    private String description;

    // Геттеры и сеттеры
}

# В application.properties
app.name=MyApp
app.description=This is a Spring Boot application
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Spring Boot предоставляет мощные и гибкие инструменты для управления конфигурацией, что позволяет легко адаптировать приложение под различные окружения и требования. Использование файлов свойств, профилей и внешних источников делает процесс настройки простым и эффективным.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('13933197-a9d6-406f-a947-1826029f2747', 'Как оптимизировать производительность приложения на Spring?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оптимизация производительности приложения на Spring</title>
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
    <h1>Оптимизация производительности приложения на Spring</h1>
    <p>
        Оптимизация производительности приложения на Spring — это важный этап разработки, который позволяет улучшить скорость работы, снизить нагрузку на сервер и повысить отзывчивость системы. Рассмотрим основные подходы и инструменты для оптимизации.
    </p>

    <h2>Основные направления оптимизации</h2>
    <ul>
        <li>
            <span class="highlight">Оптимизация базы данных:</span> Улучшение запросов, индексация, кэширование и использование пулов соединений.
        </li>
        <li>
            <span class="highlight">Кэширование:</span> Использование кэша для снижения нагрузки на базу данных и ускорения доступа к часто используемым данным.
        </li>
        <li>
            <span class="highlight">Асинхронная обработка:</span> Использование асинхронных методов для выполнения длительных операций без блокировки основного потока.
        </li>
        <li>
            <span class="highlight">Оптимизация контекста Spring:</span> Уменьшение времени запуска приложения за счёт ленивой загрузки и исключения ненужных компонентов.
        </li>
        <li>
            <span class="highlight">Мониторинг и профилирование:</span> Использование инструментов для анализа производительности и выявления узких мест.
        </li>
    </ul>

    <h2>Оптимизация базы данных</h2>
    <p>
        Для оптимизации работы с базой данных можно использовать следующие подходы:
    </p>
    <ul>
        <li>
            <span class="highlight">Индексация:</span> Создание индексов для ускорения поиска по часто используемым полям.
        </li>
        <li>
            <span class="highlight">Оптимизация запросов:</span> Анализ и оптимизация SQL-запросов, использование EXPLAIN для выявления узких мест.
        </li>
        <li>
            <span class="highlight">Пул соединений:</span> Настройка пула соединений (например, HikariCP) для эффективного управления подключениями к базе данных.
        </li>
    </ul>
    <pre><code>
# Пример настройки HikariCP в application.properties
spring.datasource.hikari.maximum-pool-size=10
spring.datasource.hikari.minimum-idle=2
spring.datasource.hikari.idle-timeout=30000
spring.datasource.hikari.max-lifetime=1800000
    </code></pre>

    <h2>Использование кэширования</h2>
    <p>
        Spring предоставляет встроенную поддержку кэширования через аннотацию <code>@Cacheable</code>. Пример использования:
    </p>
    <pre><code>
@Service
public class UserService {

    @Cacheable("users")
    public User getUserById(Long id) {
        // Логика получения пользователя из базы данных
    }
}
    </code></pre>
    <p>
        Для настройки кэша можно использовать различные реализации, такие как Ehcache, Redis или Caffeine.
    </p>

    <h2>Асинхронная обработка</h2>
    <p>
        Для выполнения длительных операций без блокировки основного потока можно использовать асинхронные методы. Пример:
    </p>
    <pre><code>
@Service
public class NotificationService {

    @Async
    public void sendNotification(String message) {
        // Логика отправки уведомления
    }
}
    </code></pre>
    <p>
        Для включения асинхронной обработки добавьте аннотацию <code>@EnableAsync</code> в конфигурационный класс:
    </p>
    <pre><code>
@Configuration
@EnableAsync
public class AsyncConfig {
}
    </code></pre>

    <h2>Оптимизация контекста Spring</h2>
    <p>
        Для уменьшения времени запуска приложения можно использовать ленивую загрузку бинов:
    </p>
    <pre><code>
@Lazy
@Service
public class HeavyService {
    // Логика сервиса
}
    </code></pre>
    <p>
        Также рекомендуется исключать ненужные автоконфигурации с помощью аннотации <code>@EnableAutoConfiguration(exclude = {...})</code>.
    </p>

    <h2>Мониторинг и профилирование</h2>
    <p>
        Для анализа производительности приложения можно использовать следующие инструменты:
    </p>
    <ul>
        <li>
            <span class="highlight">Spring Boot Actuator:</span> Предоставляет метрики и эндпоинты для мониторинга состояния приложения.
        </li>
        <li>
            <span class="highlight">Micrometer:</span> Интеграция с системами мониторинга, такими как Prometheus, Grafana и другие.
        </li>
        <li>
            <span class="highlight">Профилировщики:</span> Использование инструментов, таких как VisualVM, JProfiler или YourKit, для анализа производительности.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Оптимизация производительности — это итеративный процесс. Регулярно анализируйте производительность приложения и вносите улучшения на основе данных.
        </p>
    </div>

    <h2>Заключение</h2>
    <p>
        Оптимизация производительности приложения на Spring включает в себя множество аспектов, таких как работа с базой данных, кэширование, асинхронная обработка и мониторинг. Использование современных инструментов и подходов позволяет значительно улучшить скорость работы и отзывчивость системы, что особенно важно для высоконагруженных приложений.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8206c6ff-d9cb-40fc-a4fa-5c3dcaee70bb', 'Что такое Spring Batch и когда его следует использовать?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Batch</title>
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
    <h1>Spring Batch</h1>
    <p>
        <span class="highlight">Spring Batch</span> — это фреймворк для разработки пакетных (batch) приложений в экосистеме Spring. Он предназначен для обработки больших объёмов данных, выполнения периодических задач и автоматизации сложных процессов.
    </p>

    <h2>Основные возможности Spring Batch</h2>
    <ul>
        <li>
            <span class="highlight">Обработка больших объёмов данных:</span> Spring Batch позволяет эффективно обрабатывать данные, разбивая их на небольшие пакеты (chunks).
        </li>
        <li>
            <span class="highlight">Повторное выполнение задач:</span> Фреймворк поддерживает механизмы повторного выполнения задач в случае сбоев.
        </li>
        <li>
            <span class="highlight">Транзакционность:</span> Spring Batch обеспечивает транзакционность на уровне пакетов, что гарантирует целостность данных.
        </li>
        <li>
            <span class="highlight">Масштабируемость:</span> Поддержка распределённой обработки и интеграция с Spring Boot делают Spring Batch масштабируемым решением.
        </li>
        <li>
            <span class="highlight">Мониторинг и управление:</span> Spring Batch предоставляет инструменты для мониторинга выполнения задач и управления ими.
        </li>
    </ul>

    <h2>Когда следует использовать Spring Batch?</h2>
    <p>
        Spring Batch подходит для следующих сценариев:
    </p>
    <ul>
        <li>
            <span class="highlight">Обработка больших данных:</span> Импорт/экспорт данных, обработка логов, генерация отчётов.
        </li>
        <li>
            <span class="highlight">Периодические задачи:</span> Ежедневное обновление данных, ночные расчёты, синхронизация данных между системами.
        </li>
        <li>
            <span class="highlight">Сложные процессы:</span> Многоэтапные задачи, требующие транзакционности и обработки ошибок.
        </li>
        <li>
            <span class="highlight">Интеграция с другими системами:</span> Обработка данных из различных источников (базы данных, файлы, API).
        </li>
    </ul>

    <h2>Основные компоненты Spring Batch</h2>
    <ul>
        <li>
            <span class="highlight">Job:</span> Основная задача, которая состоит из одного или нескольких шагов (steps).
        </li>
        <li>
            <span class="highlight">Step:</span> Отдельный этап выполнения задачи. Каждый шаг может включать чтение, обработку и запись данных.
        </li>
        <li>
            <span class="highlight">ItemReader:</span> Компонент для чтения данных (например, из базы данных или файла).
        </li>
        <li>
            <span class="highlight">ItemProcessor:</span> Компонент для обработки данных.
        </li>
        <li>
            <span class="highlight">ItemWriter:</span> Компонент для записи данных (например, в базу данных или файл).
        </li>
        <li>
            <span class="highlight">JobRepository:</span> Хранилище для управления метаданными задач (статусы, параметры выполнения).
        </li>
    </ul>

    <h2>Пример использования Spring Batch</h2>
    <p>
        Рассмотрим пример простого пакетного задания для обработки данных из CSV-файла и записи их в базу данных:
    </p>
    <pre><code>
@Configuration
@EnableBatchProcessing
public class BatchConfig {

    @Autowired
    private JobBuilderFactory jobBuilderFactory;

    @Autowired
    private StepBuilderFactory stepBuilderFactory;

    @Bean
    public FlatFileItemReader&lt;User&gt; reader() {
        return new FlatFileItemReaderBuilder&lt;User&gt;()
                .name("userItemReader")
                .resource(new ClassPathResource("users.csv"))
                .delimited()
                .names(new String[]{"firstName", "lastName", "email"})
                .targetType(User.class)
                .build();
    }

    @Bean
    public UserItemProcessor processor() {
        return new UserItemProcessor();
    }

    @Bean
    public JdbcBatchItemWriter&lt;User&gt; writer(DataSource dataSource) {
        return new JdbcBatchItemWriterBuilder&lt;User&gt;()
                .itemSqlParameterSourceProvider(new BeanPropertyItemSqlParameterSourceProvider&lt;&gt;())
                .sql("INSERT INTO users (first_name, last_name, email) VALUES (:firstName, :lastName, :email)")
                .dataSource(dataSource)
                .build();
    }

    @Bean
    public Step step1(JdbcBatchItemWriter&lt;User&gt; writer) {
        return stepBuilderFactory.get("step1")
                .&lt;User, User&gt;chunk(10)
                .reader(reader())
                .processor(processor())
                .writer(writer)
                .build();
    }

    @Bean
    public Job importUserJob(Step step1) {
        return jobBuilderFactory.get("importUserJob")
                .incrementer(new RunIdIncrementer())
                .flow(step1)
                .end()
                .build();
    }
}
    </code></pre>

    <h2>Пример обработчика данных (ItemProcessor)</h2>
    <p>
        Обработчик данных может выполнять преобразования или валидацию:
    </p>
    <pre><code>
public class UserItemProcessor implements ItemProcessor&lt;User, User&gt; {

    @Override
    public User process(final User user) throws Exception {
        // Пример обработки: преобразование email в нижний регистр
        user.setEmail(user.getEmail().toLowerCase());
        return user;
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring Batch поддерживает обработку ошибок, повторное выполнение задач и управление транзакциями, что делает его надёжным инструментом для пакетной обработки данных.
        </p>
    </div>

    <h2>Заключение</h2>
    <p>
        Spring Batch — это мощный фреймворк для разработки пакетных приложений. Он идеально подходит для обработки больших объёмов данных, выполнения периодических задач и автоматизации сложных процессов. Использование Spring Batch позволяет создавать надёжные, масштабируемые и легко управляемые решения для пакетной обработки.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('054d50c8-ab1a-476e-a8fc-64cefcb75529', 'Как вы тестируете контроллеры в Spring MVC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Тестирование контроллеров в Spring MVC</title>
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
    <h1>Тестирование контроллеров в Spring MVC</h1>
    <p>
        Тестирование контроллеров в Spring MVC — это важная часть разработки, которая позволяет убедиться, что ваши веб-эндпоинты работают корректно. Spring предоставляет мощные инструменты для тестирования контроллеров, такие как <code>MockMvc</code> и аннотации <code>@WebMvcTest</code>.
    </p>

    <h2>Основные подходы к тестированию контроллеров</h2>
    <ul>
        <li>
            <span class="highlight">Модульное тестирование:</span> Тестирование отдельных методов контроллера с использованием моков для зависимостей.
        </li>
        <li>
            <span class="highlight">Интеграционное тестирование:</span> Тестирование контроллеров в контексте Spring, включая все зависимости и конфигурации.
        </li>
        <li>
            <span class="highlight">Использование MockMvc:</span> Spring предоставляет <code>MockMvc</code> для тестирования контроллеров без запуска сервера.
        </li>
    </ul>

    <h2>Пример тестирования с использованием MockMvc</h2>
    <p>
        Рассмотрим пример тестирования контроллера с использованием <code>MockMvc</code>:
    </p>
    <pre><code>
@WebMvcTest(UserController.class)
public class UserControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private UserService userService;

    @Test
    public void testGetUserById() throws Exception {
        User user = new User(1L, "John Doe", "john@example.com");
        when(userService.getUserById(1L)).thenReturn(user);

        mockMvc.perform(get("/users/{id}", 1L))
               .andExpect(status().isOk())
               .andExpect(jsonPath("$.name").value("John Doe"))
               .andExpect(jsonPath("$.email").value("john@example.com"));
    }
}
    </code></pre>

    <h2>Пример интеграционного тестирования</h2>
    <p>
        Для интеграционного тестирования можно использовать аннотацию <code>@SpringBootTest</code>, которая запускает полный контекст Spring:
    </p>
    <pre><code>
@SpringBootTest
@AutoConfigureMockMvc
public class UserControllerIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testGetUserById() throws Exception {
        mockMvc.perform(get("/users/{id}", 1L))
               .andExpect(status().isOk())
               .andExpect(jsonPath("$.name").value("John Doe"))
               .andExpect(jsonPath("$.email").value("john@example.com"));
    }
}
    </code></pre>

    <h2>Пример тестирования POST-запроса</h2>
    <p>
        Для тестирования POST-запросов можно использовать <code>MockMvc</code> для отправки JSON-данных:
    </p>
    <pre><code>
@Test
public void testCreateUser() throws Exception {
    User user = new User(null, "Jane Doe", "jane@example.com");
    when(userService.createUser(any(User.class))).thenReturn(user);

    mockMvc.perform(post("/users")
           .contentType(MediaType.APPLICATION_JSON)
           .content("{\\"name\\": \\"Jane Doe\\", \\"email\\": \\"jane@example.com\\"}"))
           .andExpect(status().isCreated())
           .andExpect(jsonPath("$.name").value("Jane Doe"))
           .andExpect(jsonPath("$.email").value("jane@example.com"));
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При тестировании контроллеров важно проверять не только успешные сценарии, но и обработку ошибок, такие как возврат статуса 404 при отсутствии ресурса.
        </p>
    </div>

    <h2>Пример тестирования обработки ошибок</h2>
    <p>
        Рассмотрим пример тестирования обработки ошибок:
    </p>
    <pre><code>
@Test
public void testGetUserByIdNotFound() throws Exception {
    when(userService.getUserById(1L)).thenThrow(new ResourceNotFoundException("User not found"));

    mockMvc.perform(get("/users/{id}", 1L))
           .andExpect(status().isNotFound())
           .andExpect(jsonPath("$.message").value("User not found"));
}
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Тестирование контроллеров в Spring MVC — это важный этап разработки, который помогает убедиться в корректности работы веб-эндпоинтов. Использование <code>MockMvc</code> и аннотаций, таких как <code>@WebMvcTest</code> и <code>@SpringBootTest</code>, делает процесс тестирования простым и эффективным. Это позволяет охватить как модульные, так и интеграционные тесты, обеспечивая высокое качество кода.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ed5c8d03-1569-447d-8400-324fd53c94aa', 'Что такое Spring Security и для чего он предназначен?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Security</title>
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
    <h1>Spring Security</h1>
    <p>
        <span class="highlight">Spring Security</span> — это мощный и гибкий фреймворк для обеспечения безопасности в приложениях на основе Spring. Он предоставляет инструменты для аутентификации, авторизации, защиты от атак и других аспектов безопасности.
    </p>

    <h2>Для чего предназначен Spring Security?</h2>
    <ul>
        <li>
            <span class="highlight">Аутентификация:</span> Spring Security позволяет проверять подлинность пользователей, например, через логин и пароль, OAuth, JWT и другие механизмы.
        </li>
        <li>
            <span class="highlight">Авторизация:</span> Фреймворк предоставляет возможность управлять доступом пользователей к определённым ресурсам на основе их ролей или прав.
        </li>
        <li>
            <span class="highlight">Защита от атак:</span> Spring Security включает встроенные механизмы для защиты от распространённых атак, таких как CSRF (межсайтовая подделка запроса), XSS (межсайтовый скриптинг) и SQL-инъекции.
        </li>
        <li>
            <span class="highlight">Интеграция с другими технологиями:</span> Spring Security легко интегрируется с другими технологиями, такими как OAuth2, LDAP, SAML и другими.
        </li>
    </ul>

    <h2>Основные компоненты Spring Security</h2>
    <ul>
        <li>
            <span class="highlight">SecurityContext:</span> Хранит информацию о текущем аутентифицированном пользователе.
        </li>
        <li>
            <span class="highlight">AuthenticationManager:</span> Отвечает за процесс аутентификации.
        </li>
        <li>
            <span class="highlight">UserDetailsService:</span> Загружает данные пользователя для аутентификации.
        </li>
        <li>
            <span class="highlight">FilterChain:</span> Цепочка фильтров, которые обрабатывают входящие запросы и применяют правила безопасности.
        </li>
    </ul>

    <h2>Пример настройки Spring Security</h2>
    <p>
        Рассмотрим пример базовой настройки Spring Security для защиты веб-приложения:
    </p>
    <pre><code>
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .antMatchers("/public/**").permitAll() // Доступ для всех
                .antMatchers("/admin/**").hasRole("ADMIN") // Доступ только для администраторов
                .anyRequest().authenticated() // Все остальные запросы требуют аутентификации
            .and()
            .formLogin() // Включение формы логина
                .loginPage("/login") // Страница логина
                .permitAll()
            .and()
            .logout() // Включение выхода из системы
                .permitAll();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
            .inMemoryAuthentication() // Хранение пользователей в памяти
                .withUser("user")
                .password("{noop}password") // Пароль без шифрования
                .roles("USER")
            .and()
                .withUser("admin")
                .password("{noop}admin")
                .roles("ADMIN");
    }
}
    </code></pre>

    <h2>Пример использования JWT с Spring Security</h2>
    <p>
        Spring Security также поддерживает аутентификацию через JSON Web Tokens (JWT). Пример настройки:
    </p>
    <pre><code>
@Configuration
@EnableWebSecurity
public class JwtSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .csrf().disable()
            .authorizeRequests()
                .antMatchers("/authenticate").permitAll()
                .anyRequest().authenticated()
            .and()
            .addFilterBefore(new JwtTokenFilter(), UsernamePasswordAuthenticationFilter.class);
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring Security предоставляет гибкость в настройке безопасности, но требует внимательного подхода к конфигурации, чтобы избежать уязвимостей.
        </p>
    </div>

    <h2>Заключение</h2>
    <p>
        Spring Security — это мощный инструмент для обеспечения безопасности в Spring-приложениях. Он поддерживает множество механизмов аутентификации и авторизации, а также предоставляет встроенные средства защиты от атак. Использование Spring Security позволяет создавать безопасные и надёжные приложения.
    </p>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cf2760e0-0520-4f5b-82c0-939027c3bbce', 'Как вы можете настроить аутентификацию с помощью Spring Security?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Настройка аутентификации с помощью Spring Security</title>
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
    <h1>Настройка аутентификации с помощью Spring Security</h1>
    <p>
        Spring Security предоставляет гибкие механизмы для настройки аутентификации в приложениях. Аутентификация — это процесс проверки подлинности пользователя, например, через логин и пароль, токены или другие методы.
    </p>

    <h2>Основные шаги для настройки аутентификации</h2>
    <ul>
        <li>
            <span class="highlight">Добавление зависимости Spring Security:</span> Для начала работы с Spring Security добавьте зависимость в ваш проект (Maven или Gradle).
        </li>
        <li>
            <span class="highlight">Настройка конфигурации безопасности:</span> Создайте класс конфигурации, который расширяет <code>WebSecurityConfigurerAdapter</code>, и переопределите методы для настройки аутентификации.
        </li>
        <li>
            <span class="highlight">Реализация UserDetailsService:</span> Создайте сервис, который загружает данные пользователя для аутентификации.
        </li>
        <li>
            <span class="highlight">Настройка формы входа и выхода:</span> Определите страницу входа, обработку успешной аутентификации и выхода из системы.
        </li>
    </ul>

    <h2>Пример настройки аутентификации через форму входа</h2>
    <p>
        Рассмотрим пример настройки аутентификации с использованием формы входа:
    </p>
    <pre><code>
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .antMatchers("/public/**").permitAll() // Доступ для всех
                .anyRequest().authenticated() // Все остальные запросы требуют аутентификации
            .and()
            .formLogin() // Включение формы логина
                .loginPage("/login") // Страница логина
                .defaultSuccessUrl("/home") // Перенаправление после успешного входа
                .permitAll()
            .and()
            .logout() // Включение выхода из системы
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login")
                .permitAll();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
            .inMemoryAuthentication() // Хранение пользователей в памяти
                .withUser("user")
                .password("{noop}password") // Пароль без шифрования
                .roles("USER")
            .and()
                .withUser("admin")
                .password("{noop}admin")
                .roles("ADMIN");
    }
}
    </code></pre>

    <h2>Пример настройки аутентификации через базу данных</h2>
    <p>
        Для аутентификации через базу данных необходимо реализовать интерфейс <code>UserDetailsService</code>:
    </p>
    <pre><code>
@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException("User not found"));
        return new org.springframework.security.core.userdetails.User(
                user.getUsername(),
                user.getPassword(),
                user.getRoles());
    }
}
    </code></pre>
    <p>
        Затем настройте <code>AuthenticationManagerBuilder</code> для использования этого сервиса:
    </p>
    <pre><code>
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private CustomUserDetailsService userDetailsService;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService)
            .passwordEncoder(passwordEncoder());
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
    </code></pre>

    <h2>Пример настройки JWT-аутентификации</h2>
    <p>
        Для аутентификации через JSON Web Tokens (JWT) необходимо создать фильтр, который будет проверять токен в каждом запросе:
    </p>
    <pre><code>
public class JwtTokenFilter extends OncePerRequestFilter {

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private CustomUserDetailsService userDetailsService;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        String token = jwtTokenUtil.resolveToken(request);
        if (token != null && jwtTokenUtil.validateToken(token)) {
            String username = jwtTokenUtil.getUsername(token);
            UserDetails userDetails = userDetailsService.loadUserByUsername(username);
            UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(
                    userDetails, null, userDetails.getAuthorities());
            SecurityContextHolder.getContext().setAuthentication(authentication);
        }
        filterChain.doFilter(request, response);
    }
}
    </code></pre>
    <p>
        Затем добавьте фильтр в конфигурацию Spring Security:
    </p>
    <pre><code>
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .csrf().disable()
            .authorizeRequests()
                .antMatchers("/authenticate").permitAll()
                .anyRequest().authenticated()
            .and()
            .addFilterBefore(new JwtTokenFilter(), UsernamePasswordAuthenticationFilter.class);
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При настройке аутентификации важно учитывать безопасность, например, использовать шифрование паролей и защиту от атак, таких как CSRF.
        </p>
    </div>

    <h2>Заключение</h2>
    <p>
        Spring Security предоставляет мощные инструменты для настройки аутентификации в приложениях. Вы можете использовать различные методы, такие как форма входа, база данных или JWT, в зависимости от требований вашего проекта. Правильная настройка аутентификации обеспечивает безопасность и надёжность вашего приложения.
    </p>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1a0a4ab7-55e8-4df3-83a0-b43e9b42d70d', 'Какова роль слоев в архитектуре Spring приложения?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Роль слоёв в архитектуре Spring-приложения</title>
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
    <h1>Роль слоёв в архитектуре Spring-приложения</h1>
    <p>
        Архитектура Spring-приложения обычно строится на основе многослойной модели, где каждый слой выполняет определённую роль. Такое разделение обеспечивает модульность, упрощает поддержку и тестирование приложения.
    </p>

    <h2>Основные слои в Spring-приложении</h2>
    <ul>
        <li>
            <span class="highlight">Презентационный слой (Presentation Layer):</span> Отвечает за взаимодействие с пользователем и отображение данных.
        </li>
        <li>
            <span class="highlight">Слой бизнес-логики (Service Layer):</span> Содержит основную логику приложения и управляет процессами.
        </li>
        <li>
            <span class="highlight">Слой доступа к данным (Data Access Layer):</span> Обеспечивает взаимодействие с базой данных или другими источниками данных.
        </li>
        <li>
            <span class="highlight">Слой интеграции (Integration Layer):</span> Отвечает за взаимодействие с внешними системами, такими как API, очереди сообщений и другие сервисы.
        </li>
    </ul>

    <h2>Презентационный слой (Presentation Layer)</h2>
    <p>
        Этот слой отвечает за взаимодействие с пользователем. В Spring-приложениях он обычно реализуется с помощью:
    </p>
    <ul>
        <li>
            <span class="highlight">Контроллеров (Controllers):</span> Обрабатывают HTTP-запросы и возвращают ответы. Используются аннотации, такие как <code>@RestController</code> и <code>@RequestMapping</code>.
        </li>
        <li>
            <span class="highlight">Шаблонов (Templates):</span> Для отображения данных в веб-интерфейсе (например, Thymeleaf, JSP).
        </li>
    </ul>
    <pre><code>
@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/{id}")
    public User getUserById(@PathVariable Long id) {
        return userService.getUserById(id);
    }
}
    </code></pre>

    <h2>Слой бизнес-логики (Service Layer)</h2>
    <p>
        Этот слой содержит основную логику приложения. Он отвечает за выполнение бизнес-правил, обработку данных и управление транзакциями. В Spring он реализуется с помощью сервисов:
    </p>
    <pre><code>
@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User getUserById(Long id) {
        return userRepository.findById(id)
                            .orElseThrow(() -> new ResourceNotFoundException("User not found"));
    }
}
    </code></pre>

    <h2>Слой доступа к данным (Data Access Layer)</h2>
    <p>
        Этот слой отвечает за взаимодействие с базой данных или другими источниками данных. В Spring он реализуется с помощью репозиториев:
    </p>
    <pre><code>
@Repository
public interface UserRepository extends JpaRepository&lt;User, Long&gt; {
    Optional&lt;User&gt; findByEmail(String email);
}
    </code></pre>

    <h2>Слой интеграции (Integration Layer)</h2>
    <p>
        Этот слой отвечает за взаимодействие с внешними системами, такими как REST API, очереди сообщений (RabbitMQ, Kafka) или другие сервисы. В Spring он может быть реализован с помощью:
    </p>
    <ul>
        <li>
            <span class="highlight">REST-клиентов:</span> Например, <code>RestTemplate</code> или <code>WebClient</code>.
        </li>
        <li>
            <span class="highlight">Интеграционных шаблонов:</span> Использование Spring Integration для работы с очередями и каналами.
        </li>
    </ul>
    <pre><code>
@Service
public class ExternalServiceClient {

    @Autowired
    private RestTemplate restTemplate;

    public String fetchDataFromExternalService() {
        return restTemplate.getForObject("https://api.example.com/data", String.class);
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Разделение на слои позволяет упростить разработку, тестирование и поддержку приложения. Каждый слой имеет чёткую ответственность, что делает код более читаемым и модульным.
        </p>
    </div>

    <h2>Пример взаимодействия слоёв</h2>
    <p>
        Рассмотрим пример взаимодействия слоёв в Spring-приложении:
    </p>
    <ol>
        <li>
            <span class="highlight">Презентационный слой:</span> Контроллер получает HTTP-запрос и вызывает метод сервиса.
        </li>
        <li>
            <span class="highlight">Слой бизнес-логики:</span> Сервис выполняет бизнес-логику и вызывает репозиторий для получения данных.
        </li>
        <li>
            <span class="highlight">Слой доступа к данным:</span> Репозиторий взаимодействует с базой данных и возвращает данные сервису.
        </li>
        <li>
            <span class="highlight">Презентационный слой:</span> Контроллер возвращает данные клиенту в формате JSON.
        </li>
    </ol>

    <h2>Заключение</h2>
    <p>
        Разделение на слои в архитектуре Spring-приложения — это ключевой принцип, который обеспечивает модульность, упрощает тестирование и поддержку кода. Каждый слой выполняет определённую роль, что делает приложение более структурированным и масштабируемым. Использование многослойной архитектуры позволяет эффективно управлять сложностью приложения и обеспечивает его гибкость.
    </p>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('774cbe44-a369-4a95-877c-ed2eb3a3825c', 'Что такое Spring Boot Actuator?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot Actuator</title>
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
    <h1>Spring Boot Actuator</h1>
    <p>
        <span class="highlight">Spring Boot Actuator</span> — это модуль, который предоставляет готовые инструменты для мониторинга и управления приложениями Spring Boot. Он позволяет собирать метрики, проверять состояние здоровья приложения, просматривать конфигурацию и многое другое.
    </p>

    <h2>Основные возможности Spring Boot Actuator</h2>
    <ul>
        <li>
            <span class="highlight">Мониторинг здоровья приложения:</span> Actuator предоставляет эндпоинт <code>/actuator/health</code>, который показывает текущее состояние здоровья приложения (например, UP или DOWN).
        </li>
        <li>
            <span class="highlight">Сбор метрик:</span> Actuator собирает метрики, такие как использование памяти, количество запросов, время отклика и другие, которые доступны через эндпоинт <code>/actuator/metrics</code>.
        </li>
        <li>
            <span class="highlight">Просмотр конфигурации:</span> Эндпоинт <code>/actuator/env</code> позволяет просмотреть текущие настройки окружения и конфигурации приложения.
        </li>
        <li>
            <span class="highlight">Управление приложением:</span> Actuator предоставляет эндпоинты для управления приложением, такие как завершение работы (<code>/actuator/shutdown</code>) или перезагрузка конфигурации.
        </li>
    </ul>

    <h2>Как подключить Spring Boot Actuator?</h2>
    <p>
        Для подключения Actuator в проект Spring Boot необходимо добавить зависимость в файл <code>pom.xml</code> (для Maven) или <code>build.gradle</code> (для Gradle):
    </p>
    <pre><code>
&lt;dependency&gt;
    &lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
    &lt;artifactId&gt;spring-boot-starter-actuator&lt;/artifactId&gt;
&lt;/dependency&gt;
    </code></pre>
    <p>
        После добавления зависимости Actuator автоматически активируется, и его эндпоинты становятся доступными.
    </p>

    <h2>Пример использования Actuator</h2>
    <p>
        После подключения Actuator вы можете использовать его эндпоинты для мониторинга и управления приложением. Например:
    </p>
    <ul>
        <li>
            <span class="highlight">Проверка здоровья:</span> Отправьте GET-запрос на <code>http://localhost:8080/actuator/health</code>, чтобы узнать состояние приложения.
        </li>
        <li>
            <span class="highlight">Просмотр метрик:</span> Отправьте GET-запрос на <code>http://localhost:8080/actuator/metrics</code>, чтобы получить список доступных метрик.
        </li>
        <li>
            <span class="highlight">Просмотр конфигурации:</span> Отправьте GET-запрос на <code>http://localhost:8080/actuator/env</code>, чтобы увидеть текущие настройки окружения.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> По умолчанию не все эндпоинты Actuator включены из соображений безопасности. Чтобы включить или отключить определённые эндпоинты, настройте параметры в файле <code>application.properties</code> или <code>application.yml</code>.
        </p>
    </div>

    <h2>Настройка Actuator</h2>
    <p>
        Вы можете настроить Actuator, указав, какие эндпоинты должны быть доступны, и настроить их поведение. Например:
    </p>
    <pre><code>
# Включение всех эндпоинтов Actuator
management.endpoints.web.exposure.include=*

# Отключение определённых эндпоинтов
management.endpoints.web.exposure.exclude=shutdown,env

# Настройка пути к эндпоинтам
management.endpoints.web.base-path=/manage
    </code></pre>

    <h2>Безопасность Actuator</h2>
    <p>
        Поскольку Actuator предоставляет доступ к важной информации о приложении, рекомендуется защитить его эндпоинты. Это можно сделать с помощью Spring Security, добавив зависимость <code>spring-boot-starter-security</code> и настроив правила доступа.
    </p>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('789a5fbf-3d25-4511-8ee2-1afec6880fdd', 'Как Spring Cloud помогает при создании микросервисов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Cloud и микросервисы</title>
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
    <h1>Как Spring Cloud помогает при создании микросервисов?</h1>
    <p>
        <span class="highlight">Spring Cloud</span> — это набор инструментов и библиотек, которые упрощают разработку и управление микросервисными архитектурами. Он предоставляет решения для распространённых задач, таких как конфигурация, обнаружение сервисов, балансировка нагрузки, распределённая трассировка и другие.
    </p>

    <h2>Основные возможности Spring Cloud</h2>
    <ul>
        <li>
            <span class="highlight">Конфигурация:</span> Spring Cloud Config позволяет централизованно управлять конфигурацией для всех микросервисов, что упрощает настройку и обновление.
        </li>
        <li>
            <span class="highlight">Обнаружение сервисов:</span> Spring Cloud Netflix Eureka предоставляет механизм для регистрации и обнаружения сервисов, что позволяет микросервисам находить друг друга.
        </li>
        <li>
            <span class="highlight">Балансировка нагрузки:</span> Spring Cloud LoadBalancer и Netflix Ribbon обеспечивают балансировку нагрузки между экземплярами сервисов.
        </li>
        <li>
            <span class="highlight">Распределённая трассировка:</span> Spring Cloud Sleuth и Zipkin помогают отслеживать запросы между микросервисами, что упрощает диагностику проблем.
        </li>
        <li>
            <span class="highlight">Обработка ошибок:</span> Spring Cloud Hystrix предоставляет механизмы для обработки ошибок и отказоустойчивости, такие как Circuit Breaker.
        </li>
        <li>
            <span class="highlight">API Gateway:</span> Spring Cloud Gateway позволяет создавать шлюзы для маршрутизации запросов к микросервисам.
        </li>
    </ul>

    <h2>Пример использования Spring Cloud Config</h2>
    <p>
        Spring Cloud Config позволяет хранить конфигурацию в удалённом репозитории (например, Git) и предоставляет её микросервисам через REST API. Пример настройки:
    </p>
    <pre><code>
# application.properties сервера конфигурации
spring.application.name=config-server
server.port=8888
spring.cloud.config.server.git.uri=https://github.com/myconfigrepo.git

# application.properties клиента
spring.application.name=my-service
spring.cloud.config.uri=http://localhost:8888
    </code></pre>

    <h2>Пример использования Eureka для обнаружения сервисов</h2>
    <p>
        Eureka Server регистрирует все микросервисы, а клиенты могут запрашивать информацию о доступных сервисах. Пример настройки:
    </p>
    <pre><code>
# application.properties Eureka Server
spring.application.name=eureka-server
server.port=8761
eureka.client.register-with-eureka=false
eureka.client.fetch-registry=false

# application.properties клиента
spring.application.name=my-service
eureka.client.service-url.defaultZone=http://localhost:8761/eureka/
    </code></pre>

    <h2>Пример использования Spring Cloud Gateway</h2>
    <p>
        Spring Cloud Gateway позволяет маршрутизировать запросы к микросервисам. Пример конфигурации:
    </p>
    <pre><code>
spring:
  cloud:
    gateway:
      routes:
        - id: user-service
          uri: http://localhost:8081
          predicates:
            - Path=/users/**
        - id: order-service
          uri: http://localhost:8082
          predicates:
            - Path=/orders/**
    </code></pre>

    <h2>Пример использования Spring Cloud Sleuth и Zipkin</h2>
    <p>
        Spring Cloud Sleuth добавляет уникальные идентификаторы к запросам, а Zipkin визуализирует трассировку. Пример настройки:
    </p>
    <pre><code>
# application.properties
spring.zipkin.baseUrl=http://localhost:9411
spring.sleuth.sampler.probability=1.0
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring Cloud предоставляет готовые решения для многих задач, связанных с микросервисами, что значительно ускоряет разработку и упрощает управление распределёнными системами.
        </p>
    </div>

    <h2>Заключение</h2>
    <p>
        Spring Cloud — это мощный инструмент для разработки и управления микросервисными архитектурами. Он предоставляет решения для конфигурации, обнаружения сервисов, балансировки нагрузки, трассировки и других задач, что делает его незаменимым при создании современных распределённых систем.
    </p>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8a25a150-a73b-4c5a-9ce9-f978afe03fb9', 'Какие недостатки у java?', e'<!DOCTYPE html>
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
    <h1>Недостатки Java</h1>

    <div class="disadvantages">
        <h2>Какие недостатки у Java?</h2>
        <ul>
            <li>
                <span class="note">Платное коммерческое использование</span> – с 2019 года использование Java в коммерческих целях стало платным.
            </li>
            <li>
                <span class="note">Низкая производительность</span> – из-за компиляции и абстракции с помощью виртуальной машины, а также приложения очистки памяти (из-за кроссплатформенности, GC, обратной совместимости, скорости развертывания).
            </li>
            <li>
                <span class="note">Не развитые инструменты по созданию GUI-приложений на чистой Java</span> – создание графических интерфейсов на Java требует дополнительных усилий и использования сторонних библиотек.
            </li>
            <li>
                <span class="note">Многословный код</span> – Java – это более легкая версия неприступного C++, которая вынуждает программистов прописывать свои действия словами из английского языка. Это делает язык более понятным для неспециалистов, но менее компактным.
            </li>
        </ul>
    </div>

    <div class="definition">
        <p>
            <strong>Java</strong> – это мощный и популярный язык программирования, но, как и любой другой инструмент, он имеет свои недостатки, которые важно учитывать при выборе технологии для разработки.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7429053e-7846-4666-83f9-770648ee34f9', 'Могут ли быть приватные конструкторы? Для чего они нужны?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Могут ли быть приватные конструкторы? Для чего они нужны?</title>
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
        <h1>Могут ли быть приватные конструкторы? Для чего они нужны?</h1>
        <p>
            Да, могут. <span class="highlight">Приватный конструктор</span> запрещает создание экземпляра класса вне методов
            самого класса.
        </p>
        <p>
            Приватный конструктор нужен для реализации паттернов, например, <span class="highlight">singleton</span>. Он запрещает
            вызывать конструктор другим классам извне.
        </p>
        <p>
            У абстрактного класса может быть приватный конструктор. Абстрактный класс позволяет
            описать некоторое состояние объекта, но при этом запрещает создание его экземпляров
            напрямую.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Приватные конструкторы используются для контроля над созданием объектов.
                Например, в паттерне <code>singleton</code> приватный конструктор гарантирует, что объект класса
                может быть создан только внутри самого класса, что обеспечивает единственность
                экземпляра.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4788eb00-cdf0-41e5-b5d5-5cb7cafa7a8d', 'Ромбовидное наследование', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ромбовидное наследование</title>
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
        <h1>Ромбовидное наследование</h1>
        <p>
            <span class="highlight">Ромбовидное наследование</span> (англ. diamond inheritance) — это ситуация в объектно-ориентированных
            языках программирования с поддержкой множественного наследования, когда два класса <code>B</code> и <code>C</code>
            наследуют от класса <code>A</code>, а класс <code>D</code> наследует от обоих классов <code>B</code> и <code>C</code>.
        </p>
        <p>
            При этой схеме наследования может возникнуть неоднозначность: если объект класса <code>D</code> вызывает метод,
            определенный в классе <code>A</code> (и этот метод не был переопределен в классе <code>D</code>), а классы <code>B</code> и <code>C</code>
            по-своему переопределили этот метод, то от какого класса его наследовать: <code>B</code> или <code>C</code>?
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> В языках, поддерживающих множественное наследование (например, C++),
                ромбовидное наследование может привести к проблемам, таким как неоднозначность вызова
                методов. В Java множественное наследование классов запрещено, но аналогичная проблема
                может возникнуть при использовании интерфейсов с методами по умолчанию (default methods).
            </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9c4b4ec9-55f7-4457-a381-cf89f0ee1b56', 'Можно ли объявить метод абстрактным и статическим одновременно?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Можно ли объявить метод абстрактным и статическим одновременно?</title>
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
        <h1>Можно ли объявить метод абстрактным и статическим одновременно?</h1>
        <p>
            Нет, нельзя объявить метод одновременно <span class="highlight">абстрактным</span> и <span class="highlight">статическим</span>. В таком случае
            компилятор выдаст ошибку: <code>"Illegal combination of modifiers: ‘abstract’ and ‘static’"</code>.
        </p>
        <p>
            Модификатор <code>abstract</code> указывает, что метод будет реализован в другом классе, а модификатор
            <code>static</code> означает, что метод доступен по имени класса и не требует создания экземпляра
            класса. Эти два модификатора противоречат друг другу, так как статический метод должен
            иметь реализацию, а абстрактный — нет.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Абстрактные методы предназначены для переопределения в подклассах, а статические
                методы принадлежат классу и не могут быть переопределены. Поэтому их совместное
                использование невозможно.
            </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('22aea3e7-8c1f-46c3-bff4-a2c87492b279', 'Что такое «анонимные классы»? Где они применяются?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое «анонимные классы»?</title>
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
        <h1>Что такое <span class="highlight">«анонимные классы»</span>?</h1>
        <p>
            <span class="highlight">Анонимные классы</span> — это вложенные локальные классы без имени, которые разрешено
            декларировать в любом месте обрамляющего класса, разрешающем размещение выражений.
            Создание экземпляра анонимного класса происходит одновременно с его объявлением. В
            зависимости от местоположения анонимный класс ведет себя как статический либо как
            нестатический вложенный класс — в нестатическом контексте появляется окружающий его
            экземпляр.
        </p>

        <h2>Ограничения анонимных классов:</h2>
        <ul>
            <li>
                <span class="highlight">Использование:</span> Разрешено только в одном месте программы — месте его создания.
            </li>
            <li>
                <span class="highlight">Ссылки:</span> Применение возможно только в том случае, если после порождения
                экземпляра нет необходимости на него ссылаться.
            </li>
            <li>
                <span class="highlight">Методы:</span> Реализует лишь методы своего интерфейса или суперкласса, т. е. не может
                объявлять каких-либо новых методов, так как для доступа к ним нет поименованного типа.
            </li>
        </ul>

        <h2>Применение анонимных классов:</h2>
        <ul>
            <li>
                <span class="highlight">Создание объекта функции (function object):</span> Например, реализация интерфейса
                <code>Comparator</code>.
            </li>
            <li>
                <span class="highlight">Создание объекта процесса (process object):</span> Например, экземпляры классов
                <code>Thread</code>, <code>Runnable</code> и подобных.
            </li>
            <li>
                <span class="highlight">В статическом методе генерации.</span>
            </li>
            <li>
                <span class="highlight">Инициализация открытого статического поля <code>final</code>:</span> Когда для каждого
                экземпляра в перечислении требуется отдельный подкласс.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Анонимные классы удобны для создания одноразовых объектов, которые
                используются только в одном месте программы. Они помогают сократить объем кода и
                улучшить его читаемость.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('04b4f7b1-9f4b-4995-b829-ad64bb6efdb1', 'Что такое StringJoiner?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое StringJoiner?</title>
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

</style></head>
<body>
        <h1>Что такое <code>StringJoiner</code>?</h1>
        <p>
            Класс <code>StringJoiner</code> используется, чтобы создать последовательность строк, разделенных
            разделителем, с возможностью присоединить к полученной строке префикс и суффикс.
        </p>
        <pre><code>
StringJoiner joiner = new StringJoiner(".", "prefix-", "-suffix");
for (String s : "Hello the brave world".split(" ")) {
    joiner.add(s);
}
System.out.println(joiner); // prefix-Hello.the.brave.world-suffix
        </code></pre>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> <code>StringJoiner</code> особенно полезен, когда нужно объединить несколько строк
                с разделителем, а также добавить префикс и суффикс к результату. Это упрощает код
                и делает его более читаемым.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cfc280a1-b678-40c5-b73f-97f747410369', 'Какими значениями инициируются переменные по умолчанию?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Какими значениями инициируются переменные по умолчанию?</title>
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
        <h1>Какими значениями инициируются переменные по умолчанию?</h1>
        <ul>
            <li>
                <span class="highlight">byte, short, int:</span> 0
            </li>
            <li>
                <span class="highlight">long:</span> 0L
            </li>
            <li>
                <span class="highlight">float:</span> 0.0f
            </li>
            <li>
                <span class="highlight">double:</span> 0.0d
            </li>
            <li>
                <span class="highlight">char:</span> \'\\u0000\' (символ конца строки)
            </li>
            <li>
                <span class="highlight">boolean:</span> false (зависит от реализации, можно установить true по умолчанию)
            </li>
            <li>
                <span class="highlight">Объекты:</span> null (это ссылка никуда не указывает, спецуказатель)
            </li>
            <li>
                <span class="highlight">Локальные переменные:</span> Локальные (в методе) переменные не имеют значений по умолчанию, их имеют поля класса.
            </li>
            <li>
                <span class="highlight">Не static-поле класса:</span> Инициализируется после того, как будет создан объект этого класса.
            </li>
            <li>
                <span class="highlight">Static-поле класса:</span> Инициализируется тогда, когда класс будет загружен JVM.
            </li>
            <li>
                <span class="highlight">Вес ссылки:</span> На 32 бит – 4 байта, на 64 бит – 8 байт (но вроде как есть 4 байта) (железо + JVM).
            </li>
            <li>
                <span class="highlight">Заголовок объекта:</span> 1 бит.
            </li>
        </ul>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Значения по умолчанию применяются только к полям класса. Локальные переменные
                должны быть явно инициализированы перед использованием, иначе компилятор выдаст ошибку.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('20af0e01-65cd-4013-a18a-76fd789d977f', 'Чем отличаются конструкторы по умолчанию, конструктор копирования и  конструктор с параметрами?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отличия конструкторов по умолчанию, конструктора копирования и конструктора с параметрами</title>
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
        <h1>Отличия конструкторов по умолчанию, конструктора копирования и конструктора с параметрами</h1>
        <ul>
            <li>
                <span class="highlight">Конструктор по умолчанию:</span> У конструктора по умолчанию отсутствуют какие-либо
                аргументы. Он автоматически создается компилятором, если в классе не определен ни
                один конструктор.
            </li>
            <li>
                <span class="highlight">Конструктор копирования:</span> Принимает в качестве аргумента уже существующий объект
                класса для последующего создания его клона. Используется для создания нового объекта,
                который является копией существующего.
            </li>
            <li>
                <span class="highlight">Конструктор с параметрами:</span> Имеет в своей сигнатуре аргументы, которые обычно
                используются для инициализации полей класса. Позволяет создавать объекты с
                определенными начальными значениями.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Конструкторы играют ключевую роль в инициализации объектов. Конструктор по
                умолчанию используется для создания объектов с начальными значениями по умолчанию,
                конструктор копирования — для создания копий объектов, а конструктор с параметрами —
                для инициализации объектов с заданными значениями.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('25cca81b-a789-4b82-920d-c97426d8aaaf', 'Что такое  класс, объект, интерфейс?', e'<!DOCTYPE html>
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
    <h1>Класс, объект, интерфейс</h1>
    <div class="content">
        <h2>Класс</h2>
        <p>
            <span class="highlight">Класс</span> – это способ описания сущности, определяющий состояние и поведение, зависящее
            от этого состояния, а также правила для взаимодействия с данной сущностью (контракт).
        </p>
        <p>
            С точки зрения программирования класс можно рассматривать как набор данных (полей,
            атрибутов, членов класса) и функций для работы с ними (методов).
        </p>
        <p>
            С точки зрения структуры программы класс является сложным типом данных.
        </p>

        <h2>Объект (экземпляр)</h2>
        <p>
            <span class="highlight">Объект</span> (экземпляр) – это отдельный представитель класса, имеющий конкретное состояние
            и поведение, полностью определяемое классом. Каждый объект имеет конкретные значения
            атрибутов и методы, работающие с этими значениями на основе правил, заданных в классе.
        </p>

        <h2>Интерфейс</h2>
        <p>
            <span class="highlight">Интерфейс</span> – это набор методов класса, доступных для использования. Интерфейсом
            класса будет являться набор всех его публичных методов в совокупности с набором
            публичных атрибутов. По сути, интерфейс специфицирует класс, четко определяя все
            возможные действия над ним.
        </p>

        <div class="note">
            <p>
                Класс, объект и интерфейс – это ключевые понятия объектно-ориентированного программирования. Класс описывает сущность, объект представляет конкретный экземпляр этой сущности, а интерфейс определяет, как можно взаимодействовать с объектом.
            </p>
        </div>
    </div>
</body>
</html>', 'OOP', 'EASY');