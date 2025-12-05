INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2ca71939-868f-4ecf-ac1a-ef5736c2a58c', 'Какова роль DNS в интернет-протоколах?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Роль DNS в интернет-протоколах</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Роль DNS в интернет-протоколах</h1>
    <p>
        DNS (Domain Name System) — это система, которая преобразует удобные для человека доменные имена (например,
        www.example.com) в IP-адреса (например, 192.0.2.1), которые используются компьютерами для идентификации
        устройств в сети. DNS играет ключевую роль в работе интернета, обеспечивая удобство и эффективность
        доступа к ресурсам.
    </p>

    <h2>Основные функции DNS</h2>
    <ul>
        <li>
            <span class="highlight">Преобразование доменных имён в IP-адреса:</span> DNS позволяет пользователям
            вводить доменные имена вместо сложных для запоминания IP-адресов.
        </li>
        <li>
            <span class="highlight">Обратное преобразование (Reverse DNS):</span> DNS также может преобразовывать
            IP-адреса обратно в доменные имена, что полезно для диагностики и безопасности.
        </li>
        <li>
            <span class="highlight">Распределённая база данных:</span> DNS использует иерархическую и распределённую
            систему серверов для хранения информации о доменах и IP-адресах.
        </li>
        <li>
            <span class="highlight">Кэширование запросов:</span> DNS-серверы кэшируют результаты запросов, что
            ускоряет последующие обращения к тем же доменам.
        </li>
    </ul>

    <h2>Как работает DNS?</h2>
    <ul>
        <li>
            <span class="highlight">Запрос от пользователя:</span> Когда пользователь вводит доменное имя в браузере,
            запрос отправляется на DNS-резолвер (обычно предоставляемый провайдером).
        </li>
        <li>
            <span class="highlight">Рекурсивный запрос:</span> Если резолвер не имеет информации о запрашиваемом
            домене, он выполняет рекурсивный запрос к корневым DNS-серверам.
        </li>
        <li>
            <span class="highlight">Иерархия DNS-серверов:</span>
            <ul>
                <li><strong>Корневые серверы:</strong> Указывают на серверы доменов верхнего уровня (TLD).</li>
                <li><strong>Серверы TLD:</strong> Указывают на авторитативные серверы для конкретного домена.</li>
                <li><strong>Авторитативные серверы:</strong> Возвращают IP-адрес, связанный с запрашиваемым доменным именем.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ответ пользователю:</span> DNS-резолвер возвращает IP-адрес браузеру, который
            использует его для установления соединения с сервером.
        </li>
    </ul>

    <h2>Пример работы DNS</h2>
    <ul>
        <li>
            <span class="highlight">Запрос:</span> Пользователь вводит <code>www.example.com</code> в браузере.
        </li>
        <li>
            <span class="highlight">Процесс:</span>
            <ul>
                <li>Браузер отправляет запрос к DNS-резолверу.</li>
                <li>Резолвер запрашивает корневой сервер, который указывает на сервер домена <code>.com</code>.</li>
                <li>Сервер <code>.com</code> указывает на авторитативный сервер для <code>example.com</code>.</li>
                <li>Авторитативный сервер возвращает IP-адрес для <code>www.example.com</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Результат:</span> Браузер получает IP-адрес и устанавливает соединение с сервером.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> DNS является неотъемлемой частью интернета, обеспечивая удобство
            доступа к ресурсам и эффективную маршрутизацию запросов. Без DNS пользователям пришлось бы запоминать
            и вводить числовые IP-адреса, что сделало бы использование интернета значительно менее удобным.
        </p>
    </div>
</body>
</html>', 'HTTP', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('bc532344-b83a-4dff-8bf3-a7a8f576e2cf', 'В чем отличие между поверхностным и глубоким клонированием?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отличие между поверхностным и глубоким клонированием</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Отличие между поверхностным и глубоким клонированием</h1>
    <p>
        Клонирование объектов в Java может быть поверхностным или глубоким. Эти два подхода отличаются тем, как они обрабатывают примитивные типы и ссылочные поля объекта.
    </p>

    <h2>Поверхностное клонирование</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span> Поверхностное клонирование создает новый объект и копирует значения всех полей исходного объекта. Если поле является примитивным типом, его значение копируется. Если поле является ссылкой на объект, копируется только ссылка, а не сам объект.
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Примитивные типы копируются полностью.</li>
                <li>Ссылочные типы копируются как ссылки, поэтому оригинал и копия ссылаются на один и тот же объект.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre>
                <code>
public class Person implements Cloneable {
    private String name;
    private Address address;

    @Override
    public Person clone() throws CloneNotSupportedException {
        return (Person) super.clone(); // Поверхностное клонирование
    }
}
                </code>
            </pre>
            В этом примере поле <code>address</code> будет скопировано как ссылка, и оригинал, и копия будут ссылаться на один и тот же объект <code>Address</code>.
        </li>
    </ul>

    <h2>Глубокое клонирование</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span> Глубокое клонирование создает новый объект и рекурсивно копирует все объекты, на которые ссылаются поля исходного объекта. Это означает, что создаются новые экземпляры всех вложенных объектов.
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Примитивные типы копируются полностью.</li>
                <li>Ссылочные типы также копируются, создавая новые объекты.</li>
                <li>Все вложенные объекты должны поддерживать клонирование.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre>
                <code>
public class Person implements Cloneable {
    private String name;
    private Address address;

    @Override
    public Person clone() throws CloneNotSupportedException {
        Person cloned = (Person) super.clone();
        cloned.address = this.address.clone(); // Глубокое клонирование
        return cloned;
    }
}
                </code>
            </pre>
            В этом примере поле <code>address</code> также клонируется, создавая новый объект <code>Address</code>.
        </li>
    </ul>

    <h2>Сравнение поверхностного и глубокого клонирования</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>Поверхностное клонирование</th>
                <th>Глубокое клонирование</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Примитивные типы</td>
                <td>Копируются полностью</td>
                <td>Копируются полностью</td>
            </tr>
            <tr>
                <td>Ссылочные типы</td>
                <td>Копируются только ссылки</td>
                <td>Создаются новые объекты</td>
            </tr>
            <tr>
                <td>Сложность реализации</td>
                <td>Простая</td>
                <td>Сложная, требует клонирования всех вложенных объектов</td>
            </tr>
            <tr>
                <td>Использование</td>
                <td>Подходит для объектов без вложенных ссылок</td>
                <td>Подходит для объектов с вложенными ссылками</td>
            </tr>
        </tbody>
    </table>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Глубокое клонирование требует, чтобы все вложенные объекты поддерживали клонирование. Если какой-либо объект не поддерживает клонирование, его необходимо копировать вручную.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <span class="highlight">Поверхностное клонирование:</span> Копирует примитивные типы и ссылки на объекты. Оригинал и копия разделяют одни и те же вложенные объекты.
        </li>
        <li>
            <span class="highlight">Глубокое клонирование:</span> Копирует примитивные типы и создает новые объекты для всех вложенных ссылок. Оригинал и копия полностью независимы.
        </li>
        <li>
            Выбор между поверхностным и глубоким клонированием зависит от структуры объекта и требований к его копированию.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fd0cdc9b-da32-45e4-ae28-c765c4dc1fca', 'Рефлексия', e'<!DOCTYPE html>
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
        Рефлексия (Reflection) — это механизм, позволяющий получать информацию о программе во время её выполнения (runtime). В Java рефлексия осуществляется с помощью Java Reflection API, состоящего из классов пакетов <code>java.lang</code> и <code>java.lang.reflect</code>.
    </p>

    <h2>Возможности Java Reflection API</h2>
    <ul>
        <li>
            <span class="highlight">Определение класса объекта:</span> Получение информации о классе объекта во время выполнения.
        </li>
        <li>
            <span class="highlight">Получение информации о классе:</span> Получение данных о модификаторах класса, полях, методах, конструкторах и суперклассах.
        </li>
        <li>
            <span class="highlight">Определение интерфейсов:</span> Получение списка интерфейсов, реализуемых классом.
        </li>
        <li>
            <span class="highlight">Создание экземпляра класса:</span> Создание нового объекта класса во время выполнения.
        </li>
        <li>
            <span class="highlight">Работа с полями:</span> Получение и установка значений полей объекта.
        </li>
        <li>
            <span class="highlight">Вызов методов:</span> Вызов методов объекта во время выполнения.
        </li>
        <li>
            <span class="highlight">Создание массивов:</span> Создание новых массивов во время выполнения.
        </li>
    </ul>

    <h2>Пример использования Reflection API</h2>
    <pre>
        <code>
import java.lang.reflect.*;

public class ReflectionExample {
    public static void main(String[] args) throws Exception {
        // Получение класса
        Class<?> clazz = Class.forName("java.util.ArrayList");

        // Создание экземпляра класса
        Object instance = clazz.getDeclaredConstructor().newInstance();

        // Получение метода add
        Method addMethod = clazz.getMethod("add", Object.class);

        // Вызов метода add
        addMethod.invoke(instance, "Hello, Reflection!");

        // Получение метода toString
        Method toStringMethod = clazz.getMethod("toString");

        // Вызов метода toString
        System.out.println(toStringMethod.invoke(instance));
    }
}
        </code>
    </pre>
    <p>
        В этом примере с помощью Reflection API создается экземпляр класса <code>ArrayList</code>, вызывается его метод <code>add</code>, а затем выводится результат метода <code>toString</code>.
    </p>

    <h2>Основные классы Reflection API</h2>
    <ul>
        <li>
            <span class="highlight">Class&lt;?&gt;:</span> Представляет класс или интерфейс. Используется для получения информации о классе.
        </li>
        <li>
            <span class="highlight">Field:</span> Представляет поле класса. Используется для получения и установки значений полей.
        </li>
        <li>
            <span class="highlight">Method:</span> Представляет метод класса. Используется для вызова методов.
        </li>
        <li>
            <span class="highlight">Constructor&lt;?&gt;:</span> Представляет конструктор класса. Используется для создания новых экземпляров класса.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Рефлексия может быть мощным инструментом, но её использование может привести к снижению производительности и нарушению инкапсуляции. Используйте её с осторожностью.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Рефлексия позволяет получать информацию о классе и манипулировать объектами во время выполнения.
        </li>
        <li>
            Основные возможности:
            <ul>
                <li>Определение класса и его структуры.</li>
                <li>Создание экземпляров класса.</li>
                <li>Получение и установка значений полей.</li>
                <li>Вызов методов.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
Class<?> clazz = Class.forName("java.util.ArrayList");
Object instance = clazz.getDeclaredConstructor().newInstance();
Method addMethod = clazz.getMethod("add", Object.class);
addMethod.invoke(instance, "Hello, Reflection!");
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('62c0fb04-ee10-4fcf-b57a-28cddfbff1c4', 'Класс Optional', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Класс Optional в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Класс Optional в Java</h1>
    <p>
        Класс <code>Optional</code> в Java представляет собой контейнер для объекта, который может содержать или не содержать значение <code>null</code>. Это удобный инструмент для предотвращения <code>NullPointerException</code>, так как он предоставляет методы для работы с потенциально отсутствующими значениями без необходимости явных проверок на <code>null</code>.
    </p>

    <h2>Основные возможности Optional</h2>
    <ul>
        <li>
            <span class="highlight">Создание Optional:</span> Можно создать <code>Optional</code> с помощью статических методов <code>Optional.of()</code>, <code>Optional.ofNullable()</code> и <code>Optional.empty()</code>.
        </li>
        <li>
            <span class="highlight">Проверка наличия значения:</span> Методы <code>isPresent()</code> и <code>isEmpty()</code> позволяют проверить, содержит ли <code>Optional</code> значение.
        </li>
        <li>
            <span class="highlight">Получение значения:</span> Метод <code>get()</code> возвращает значение, если оно присутствует, и выбрасывает исключение <code>NoSuchElementException</code>, если значение отсутствует.
        </li>
        <li>
            <span class="highlight">Действия при наличии значения:</span> Метод <code>ifPresent()</code> позволяет выполнить действие, если значение присутствует.
        </li>
        <li>
            <span class="highlight">Значение по умолчанию:</span> Метод <code>orElse()</code> возвращает значение, если оно присутствует, или значение по умолчанию, если значение отсутствует.
        </li>
        <li>
            <span class="highlight">Цепочка вызовов:</span> Методы <code>map()</code>, <code>flatMap()</code> и <code>filter()</code> позволяют строить цепочки вызовов для обработки значения.
        </li>
    </ul>

    <h2>Пример использования Optional</h2>
    <pre>
        <code>
import java.util.Optional;

public class OptionalExample {
    public static void main(String[] args) {
        // Создание Optional с значением
        Optional<String> optionalWithValue = Optional.of("Hello, Optional!");

        // Создание Optional с возможным null
        Optional<String> optionalNullable = Optional.ofNullable(null);

        // Проверка наличия значения
        if (optionalWithValue.isPresent()) {
            System.out.println("Значение присутствует: " + optionalWithValue.get());
        }

        // Действие при наличии значения
        optionalWithValue.ifPresent(value -> System.out.println("Значение: " + value));

        // Значение по умолчанию
        String valueOrDefault = optionalNullable.orElse("Значение по умолчанию");
        System.out.println("Значение или default: " + valueOrDefault);

        // Цепочка вызовов
        optionalWithValue.map(String::toUpperCase)
                         .ifPresent(value -> System.out.println("Значение в верхнем регистре: " + value));
    }
}
        </code>
    </pre>
    <p>
        В этом примере показано, как можно использовать <code>Optional</code> для работы с потенциально отсутствующими значениями, избегая проверок на <code>null</code>.
    </p>

    <h2>Преимущества использования Optional</h2>
    <ul>
        <li>
            <span class="highlight">Уменьшение количества проверок на null:</span> <code>Optional</code> позволяет избежать явных проверок на <code>null</code>, делая код более читаемым.
        </li>
        <li>
            <span class="highlight">Безопасность:</span> Использование <code>Optional</code> помогает предотвратить <code>NullPointerException</code>.
        </li>
        <li>
            <span class="highlight">Функциональный стиль:</span> <code>Optional</code> предоставляет методы для работы с значениями в функциональном стиле, такие как <code>map()</code>, <code>flatMap()</code> и <code>filter()</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Не используйте <code>Optional</code> для полей класса или параметров методов. Он предназначен для возвращаемых значений методов, чтобы явно указать на возможность отсутствия значения.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <code>Optional</code> — это контейнер для объекта, который может содержать или не содержать значение <code>null</code>.
        </li>
        <li>
            Основные методы:
            <ul>
                <li><code>of()</code>, <code>ofNullable()</code>, <code>empty()</code> — создание <code>Optional</code>.</li>
                <li><code>isPresent()</code>, <code>isEmpty()</code> — проверка наличия значения.</li>
                <li><code>ifPresent()</code> — выполнение действия при наличии значения.</li>
                <li><code>orElse()</code> — значение по умолчанию.</li>
                <li><code>map()</code>, <code>flatMap()</code>, <code>filter()</code> — цепочки вызовов.</li>
            </ul>
        </li>
        <li>
            Пример:
            <pre>
                <code>
Optional<String> optional = Optional.of("Hello");
optional.ifPresent(System.out::println);
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('acc382b8-2d1d-4521-9667-405a5ae9fce1', 'Какой способ клонирования предпочтительней?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Предпочтительный способ клонирования</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Предпочтительный способ клонирования</h1>
    <p>
        В Java существует несколько способов клонирования объектов, но наиболее безопасным и предпочтительным является использование специализированного конструктора копирования. Этот подход имеет ряд преимуществ перед другими методами клонирования.
    </p>

    <h2>Преимущества конструктора копирования</h2>
    <ul>
        <li>
            <span class="highlight">Отсутствие ошибок наследования:</span> При использовании конструктора копирования не нужно беспокоиться о том, что у наследников появятся новые поля, которые не будут склонированы через метод <code>clone()</code>. Конструктор копирования явно указывает, какие поля нужно копировать.
        </li>
        <li>
            <span class="highlight">Явное указание полей:</span> Поля для клонирования указываются явно, что делает процесс клонирования более прозрачным и контролируемым.
        </li>
        <li>
            <span class="highlight">Возможность клонировать final-поля:</span> В отличие от метода <code>clone()</code>, конструктор копирования позволяет клонировать даже <code>final</code>-поля, так как их значения устанавливаются при создании нового объекта.
        </li>
    </ul>

    <h2>Пример использования конструктора копирования</h2>
    <pre>
        <code>
public class Person {
    private String name;
    private final int age; // final-поле

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    // Конструктор копирования
    public Person(Person other) {
        this.name = other.name;
        this.age = other.age; // Клонирование final-поля
    }

    @Override
    public String toString() {
        return "Person{name=\'" + name + "\', age=" + age + "}";
    }
}
        </code>
    </pre>
    <p>
        В этом примере конструктор копирования создает новый объект <code>Person</code>, копируя значения всех полей, включая <code>final</code>-поле <code>age</code>.
    </p>

    <h2>Сравнение с другими способами клонирования</h2>
    <table>
        <thead>
            <tr>
                <th>Способ клонирования</th>
                <th>Преимущества</th>
                <th>Недостатки</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Метод <code>clone()</code></td>
                <td>Встроенная поддержка в Java</td>
                <td>Сложности с наследованием, проблемы с <code>final</code>-полями</td>
            </tr>
            <tr>
                <td>Сериализация</td>
                <td>Простота реализации</td>
                <td>Низкая производительность, требует реализации <code>Serializable</code></td>
            </tr>
            <tr>
                <td>Конструктор копирования</td>
                <td>Безопасность, поддержка <code>final</code>-полей, явное указание полей</td>
                <td>Требует ручного написания конструктора</td>
            </tr>
        </tbody>
    </table>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование конструктора копирования является наиболее безопасным и гибким способом клонирования объектов, особенно в сложных иерархиях классов.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Конструктор копирования — это предпочтительный способ клонирования объектов в Java.
        </li>
        <li>
            Преимущества:
            <ul>
                <li>Отсутствие ошибок наследования.</li>
                <li>Явное указание полей для клонирования.</li>
                <li>Возможность клонировать <code>final</code>-поля.</li>
            </ul>
        </li>
        <li>
            Пример:
            <pre>
                <code>
public Person(Person other) {
    this.name = other.name;
    this.age = other.age;
}
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a31e1d2d-f396-46f3-9dc0-7ff8158973fb', 'Что такое generics?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generics в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Generics в Java</h1>
    <p>
        Generics (обобщения) — это набор свойств языка Java, позволяющих определять и использовать обобщенные типы и методы. Обобщенные типы и методы отличаются от обычных тем, что они имеют типизированные параметры, что делает их более гибкими и безопасными.
    </p>

    <h2>Основные понятия Generics</h2>
    <ul>
        <li>
            <span class="highlight">Обобщенные типы:</span> Это классы или интерфейсы, которые имеют параметры типов. Например, <code>List&lt;E&gt;</code>, где <code>E</code> — это параметр типа, который может быть заменен на конкретный тип при создании объекта.
        </li>
        <li>
            <span class="highlight">Обобщенные методы:</span> Это методы, которые имеют параметры типов. Они позволяют писать методы, которые могут работать с разными типами данных.
        </li>
        <li>
            <span class="highlight">Пример использования:</span> В Java Collection Framework многие классы, такие как <code>ArrayList&lt;E&gt;</code>, <code>LinkedList&lt;E&gt;</code>, <code>HashMap&lt;K, V&gt;</code>, являются обобщенными.
        </li>
    </ul>

    <h2>Пример обобщенного класса</h2>
    <pre>
        <code>
public class Box<T> {
    private T item;

    public void setItem(T item) {
        this.item = item;
    }

    public T getItem() {
        return item;
    }
}
        </code>
    </pre>
    <p>
        В этом примере класс <code>Box</code> является обобщенным. Параметр <code>T</code> может быть заменен на любой тип при создании объекта:
    </p>
    <pre>
        <code>
Box<String> stringBox = new Box<>();
stringBox.setItem("Hello, Generics!");
System.out.println(stringBox.getItem());

Box<Integer> integerBox = new Box<>();
integerBox.setItem(123);
System.out.println(integerBox.getItem());
        </code>
    </pre>

    <h2>Пример обобщенного метода</h2>
    <pre>
        <code>
public <T> void printArray(T[] array) {
    for (T element : array) {
        System.out.println(element);
    }
}
        </code>
    </pre>
    <p>
        Этот метод может работать с массивами любого типа:
    </p>
    <pre>
        <code>
Integer[] intArray = {1, 2, 3};
String[] strArray = {"A", "B", "C"};

printArray(intArray);
printArray(strArray);
        </code>
    </pre>

    <h2>Преимущества Generics</h2>
    <ul>
        <li>
            <span class="highlight">Безопасность типов:</span> Generics позволяют избежать ошибок, связанных с неправильным приведением типов, так как тип данных проверяется на этапе компиляции.
        </li>
        <li>
            <span class="highlight">Уменьшение дублирования кода:</span> Обобщенные типы и методы позволяют писать универсальный код, который может работать с разными типами данных.
        </li>
        <li>
            <span class="highlight">Улучшение читаемости:</span> Использование Generics делает код более понятным и выразительным, так как типы данных явно указаны.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Generics в Java работают только с объектами. Примитивные типы данных (например, <code>int</code>, <code>char</code>) не могут быть использованы в качестве параметров типов. Для работы с примитивами используются их обертки (например, <code>Integer</code>, <code>Character</code>).
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Generics — это механизм, позволяющий создавать обобщенные типы и методы, которые могут работать с разными типами данных.
        </li>
        <li>
            Пример обобщенного класса:
            <pre>
                <code>
public class Box<T> {
    private T item;
    // методы
}
                </code>
            </pre>
        </li>
        <li>
            Пример обобщенного метода:
            <pre>
                <code>
public <T> void printArray(T[] array) {
    // логика
}
                </code>
            </pre>
        </li>
        <li>
            Преимущества: безопасность типов, уменьшение дублирования кода, улучшение читаемости.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4e88c95f-7c21-4922-8406-562274434e14', 'Расскажите про клонирование объектов', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Клонирование объектов в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Клонирование объектов в Java</h1>
    <p>
        Клонирование объектов в Java позволяет создавать копии объектов с таким же состоянием, как у оригинала. В отличие от оператора присваивания, который копирует только ссылку на объект, клонирование создает новый объект с идентичными значениями полей.
    </p>

    <h2>Основы клонирования</h2>
    <ul>
        <li>
            <span class="highlight">Метод clone():</span> Класс <code>Object</code> содержит метод <code>clone()</code>, который выполняет побитовое копирование объекта. Однако для использования этого метода необходимо переопределить его как <code>public</code> и вызвать <code>super.clone()</code>.
        </li>
        <li>
            <span class="highlight">Интерфейс Cloneable:</span> Чтобы объект можно было клонировать, его класс должен реализовать интерфейс <code>Cloneable</code>. Этот интерфейс является маркерным и не содержит методов. Если класс не реализует <code>Cloneable</code>, метод <code>clone()</code> выбрасывает исключение <code>CloneNotSupportedException</code>.
        </li>
        <li>
            <span class="highlight">Пример клонирования:</span>
            <pre>
                <code>
public class Person implements Cloneable {
    private String name;
    private int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    @Override
    public Person clone() throws CloneNotSupportedException {
        return (Person) super.clone();
    }
}
                </code>
            </pre>
        </li>
    </ul>

    <h2>Поверхностное и глубокое клонирование</h2>
    <ul>
        <li>
            <span class="highlight">Поверхностное клонирование:</span> По умолчанию метод <code>clone()</code> выполняет поверхностное клонирование, то есть копирует значения всех полей, включая ссылки на объекты. Если поле является ссылкой на изменяемый объект, оригинал и копия будут ссылаться на один и тот же объект.
        </li>
        <li>
            <span class="highlight">Глубокое клонирование:</span> Для глубокого клонирования необходимо вручную клонировать все изменяемые объекты, на которые ссылается класс. Это требует, чтобы типы полей также поддерживали клонирование.
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
                </code>
            </pre>
        </li>
    </ul>

    <h2>Альтернативные способы клонирования</h2>
    <ul>
        <li>
            <span class="highlight">Конструктор копирования:</span> Создайте конструктор, который принимает объект того же класса и инициализирует поля нового объекта значениями полей переданного объекта.
            <pre>
                <code>
public class Person {
    private String name;
    private int age;

    public Person(Person other) {
        this.name = other.name;
        this.age = other.age;
    }
}
                </code>
            </pre>
        </li>
        <li>
            <span class="highlight">Фабричный метод:</span> Используйте статический метод, который создает и возвращает новый объект с такими же значениями полей.
            <pre>
                <code>
public class Person {
    private String name;
    private int age;

    public static Person copy(Person original) {
        return new Person(original.name, original.age);
    }
}
                </code>
            </pre>
        </li>
        <li>
            <span class="highlight">Сериализация:</span> Используйте механизм сериализации для сохранения и восстановления объекта. Этот подход требует, чтобы класс реализовал интерфейс <code>Serializable</code>.
            <pre>
                <code>
public class Person implements Serializable {
    private String name;
    private int age;

    public Person deepCopy() throws IOException, ClassNotFoundException {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        ObjectOutputStream out = new ObjectOutputStream(bos);
        out.writeObject(this);

        ByteArrayInputStream bis = new ByteArrayInputStream(bos.toByteArray());
        ObjectInputStream in = new ObjectInputStream(bis);
        return (Person) in.readObject();
    }
}
                </code>
            </pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При использовании клонирования убедитесь, что все вложенные объекты также поддерживают клонирование. Это особенно важно для глубокого клонирования.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Клонирование позволяет создавать копии объектов с идентичным состоянием.
        </li>
        <li>
            Используйте метод <code>clone()</code> и интерфейс <code>Cloneable</code> для поверхностного клонирования.
        </li>
        <li>
            Для глубокого клонирования клонируйте вложенные объекты вручную.
        </li>
        <li>
            Альтернативные способы клонирования: конструктор копирования, фабричный метод и сериализация.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('219e85a9-f9de-4251-be81-a5b1f64b7830', 'Какие классы поддерживают чтение и запись потоков в сжатом формате?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Классы для работы с потоками в сжатом формате</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Классы для работы с потоками в сжатом формате</h1>
    <p>
        В Java существуют классы, которые поддерживают чтение и запись данных в сжатом формате. Эти классы позволяют сжимать и распаковывать данные в различных форматах, таких как Deflate, ZLIB, ZIP и GZIP.
    </p>

    <h2>Классы для сжатия данных</h2>
    <ul>
        <li>
            <span class="highlight">DeflaterOutputStream:</span> Базовый класс для сжатия данных в формате Deflate.
        </li>
        <li>
            <span class="highlight">Deflater:</span> Класс для сжатия данных в формате ZLIB.
        </li>
        <li>
            <span class="highlight">ZipOutputStream:</span> Потомок <code>DeflaterOutputStream</code>, предназначенный для сжатия данных в формате ZIP.
        </li>
        <li>
            <span class="highlight">GZIPOutputStream:</span> Потомок <code>DeflaterOutputStream</code>, предназначенный для сжатия данных в формате GZIP.
        </li>
    </ul>

    <h2>Классы для распаковки данных</h2>
    <ul>
        <li>
            <span class="highlight">InflaterInputStream:</span> Базовый класс для распаковки данных в формате Deflate.
        </li>
        <li>
            <span class="highlight">Inflater:</span> Класс для распаковки данных в формате ZLIB.
        </li>
        <li>
            <span class="highlight">ZipInputStream:</span> Потомок <code>InflaterInputStream</code>, предназначенный для распаковки данных в формате ZIP.
        </li>
        <li>
            <span class="highlight">GZIPInputStream:</span> Потомок <code>InflaterInputStream</code>, предназначенный для распаковки данных в формате GZIP.
        </li>
    </ul>

    <h2>Пример использования ZipOutputStream и ZipInputStream</h2>
    <pre>
        <code>
import java.io.*;
import java.util.zip.*;

public class ZipExample {
    public static void main(String[] args) throws IOException {
        // Сжатие данных в ZIP
        try (ZipOutputStream zos = new ZipOutputStream(new FileOutputStream("archive.zip"))) {
            ZipEntry entry = new ZipEntry("file.txt");
            zos.putNextEntry(entry);
            zos.write("Hello, ZIP!".getBytes());
            zos.closeEntry();
        }

        // Распаковка данных из ZIP
        try (ZipInputStream zis = new ZipInputStream(new FileInputStream("archive.zip"))) {
            ZipEntry entry = zis.getNextEntry();
            if (entry != null) {
                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = zis.read(buffer)) != -1) {
                    System.out.write(buffer, 0, bytesRead);
                }
                zis.closeEntry();
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере данные сжимаются в ZIP-архив с помощью <code>ZipOutputStream</code>, а затем распаковываются с помощью <code>ZipInputStream</code>.
    </p>

    <h2>Пример использования GZIPOutputStream и GZIPInputStream</h2>
    <pre>
        <code>
import java.io.*;
import java.util.zip.*;

public class GZIPExample {
    public static void main(String[] args) throws IOException {
        // Сжатие данных в GZIP
        try (GZIPOutputStream gzos = new GZIPOutputStream(new FileOutputStream("file.gz"))) {
            gzos.write("Hello, GZIP!".getBytes());
        }

        // Распаковка данных из GZIP
        try (GZIPInputStream gzis = new GZIPInputStream(new FileInputStream("file.gz"))) {
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = gzis.read(buffer)) != -1) {
                System.out.write(buffer, 0, bytesRead);
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере данные сжимаются в формате GZIP с помощью <code>GZIPOutputStream</code>, а затем распаковываются с помощью <code>GZIPInputStream</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При работе с классами для сжатия и распаковки данных важно закрывать потоки после использования, чтобы избежать утечек ресурсов.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Классы для сжатия данных: <code>DeflaterOutputStream</code>, <code>Deflater</code>, <code>ZipOutputStream</code>, <code>GZIPOutputStream</code>.
        </li>
        <li>
            Классы для распаковки данных: <code>InflaterInputStream</code>, <code>Inflater</code>, <code>ZipInputStream</code>, <code>GZIPInputStream</code>.
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
// Сжатие
ZipOutputStream zos = new ZipOutputStream(new FileOutputStream("archive.zip"));
// Распаковка
ZipInputStream zis = new ZipInputStream(new FileInputStream("archive.zip"));
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ca413223-4f7b-4063-bd95-9620b0b3ca76', 'Назовите основные классы потоков ввода/вывода?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Основные классы потоков ввода/вывода в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Основные классы потоков ввода/вывода в Java</h1>
    <p>
        В Java потоки ввода/вывода делятся на два основных вида: байтовые и символьные. Каждый из этих видов представлен своими базовыми классами, которые используются для работы с данными.
    </p>

    <h2>Байтовые потоки</h2>
    <ul>
        <li>
            <span class="highlight">InputStream:</span> Абстрактный класс, представляющий поток ввода байтов. Это базовый класс для всех классов, работающих с байтовыми потоками ввода.
        </li>
        <li>
            <span class="highlight">OutputStream:</span> Абстрактный класс, представляющий поток вывода байтов. Это базовый класс для всех классов, работающих с байтовыми потоками вывода.
        </li>
    </ul>

    <h2>Символьные потоки</h2>
    <ul>
        <li>
            <span class="highlight">Reader:</span> Абстрактный класс, представляющий поток ввода символов. Это базовый класс для всех классов, работающих с символьными потоками ввода.
        </li>
        <li>
            <span class="highlight">Writer:</span> Абстрактный класс, представляющий поток вывода символов. Это базовый класс для всех классов, работающих с символьными потоками вывода.
        </li>
    </ul>

    <h2>Пример использования байтовых потоков</h2>
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
            outputStream.write("Hello, Byte Stream!".getBytes());
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используются классы <code>InputStream</code> и <code>OutputStream</code> для чтения и записи байтовых данных.
    </p>

    <h2>Пример использования символьных потоков</h2>
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
            writer.write("Hello, Char Stream!");
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используются классы <code>Reader</code> и <code>Writer</code> для чтения и записи символьных данных.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Байтовые потоки работают с данными в виде байтов, а символьные потоки — с данными в виде символов. Выбор между ними зависит от типа данных, с которыми вы работаете.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Базовые классы байтовых потоков: <code>InputStream</code>, <code>OutputStream</code>.
        </li>
        <li>
            Базовые классы символьных потоков: <code>Reader</code>, <code>Writer</code>.
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
// Байтовые потоки
InputStream inputStream = new FileInputStream("input.txt");
OutputStream outputStream = new FileOutputStream("output.txt");

// Символьные потоки
Reader reader = new FileReader("input.txt");
Writer writer = new FileWriter("output.txt");
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('223d644b-e33a-489c-a61b-682c63ea7a4e', 'Что такое «каналы»?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Каналы (Channels) в Java NIO</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Каналы (Channels) в Java NIO</h1>
    <p>
        Каналы (Channels) в Java NIO представляют собой логические порталы, через которые осуществляется ввод и вывод данных. Они являются абстракциями объектов более низкого уровня файловой системы, таких как отображенные в памяти файлы и блокировки файлов. Каналы работают с буферами, которые выступают в роли источников или приемников данных.
    </p>

    <h2>Основные особенности каналов</h2>
    <ul>
        <li>
            <span class="highlight">Логические порталы:</span> Каналы не являются физическими объектами, а представляют собой абстракции для работы с данными.
        </li>
        <li>
            <span class="highlight">Работа с буферами:</span> Данные передаются через каналы с использованием буферов. При выводе данные помещаются в буфер, который затем передается в канал. При вводе данные из канала помещаются в заранее предоставленный буфер.
        </li>
        <li>
            <span class="highlight">Эффективность:</span> Каналы напоминают трубопроводы, которые эффективно транспортируют данные между буферами и сущностями по ту сторону каналов.
        </li>
        <li>
            <span class="highlight">Минимальные накладные расходы:</span> Каналы позволяют получить доступ к сервисам ввода/вывода операционной системы с минимальными накладными расходами.
        </li>
    </ul>

    <h2>Пример использования каналов</h2>
    <pre>
        <code>
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

public class ChannelExample {
    public static void main(String[] args) throws IOException {
        // Открываем файл для чтения и записи
        try (RandomAccessFile file = new RandomAccessFile("file.txt", "rw");
             FileChannel channel = file.getChannel()) {

            // Создаем буфер
            ByteBuffer buffer = ByteBuffer.allocate(1024);

            // Чтение данных из канала в буфер
            int bytesRead = channel.read(buffer);
            while (bytesRead != -1) {
                buffer.flip(); // Переключаем буфер в режим чтения
                while (buffer.hasRemaining()) {
                    System.out.print((char) buffer.get());
                }
                buffer.clear(); // Очищаем буфер для следующего чтения
                bytesRead = channel.read(buffer);
            }

            // Запись данных в канал из буфера
            buffer.clear();
            buffer.put("Hello, Channel!".getBytes());
            buffer.flip(); // Переключаем буфер в режим записи
            while (buffer.hasRemaining()) {
                channel.write(buffer);
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используется <code>FileChannel</code> для чтения и записи данных в файл. Данные передаются через буфер <code>ByteBuffer</code>.
    </p>

    <h2>Основные типы каналов</h2>
    <ul>
        <li>
            <span class="highlight">FileChannel:</span> Используется для работы с файлами.
        </li>
        <li>
            <span class="highlight">SocketChannel:</span> Используется для работы с сокетами TCP.
        </li>
        <li>
            <span class="highlight">ServerSocketChannel:</span> Используется для прослушивания входящих TCP-соединений.
        </li>
        <li>
            <span class="highlight">DatagramChannel:</span> Используется для работы с сокетами UDP.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Каналы в Java NIO предоставляют более гибкий и производительный способ работы с вводом/выводом по сравнению с традиционными потоками Java IO.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Каналы — это логические порталы для ввода/вывода данных, работающие с буферами.
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
FileChannel channel = file.getChannel();
ByteBuffer buffer = ByteBuffer.allocate(1024);
channel.read(buffer);
channel.write(buffer);
                </code>
            </pre>
        </li>
        <li>
            Основные типы каналов: <code>FileChannel</code>, <code>SocketChannel</code>, <code>ServerSocketChannel</code>, <code>DatagramChannel</code>.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('55a6c78a-9b83-4b73-9e25-021bdc2b9482', 'В чем заключается разница между IO и NIO?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java IO и Java NIO</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Java IO и Java NIO</h1>
    <p>
        Java IO (input-output) и Java NIO (new/non-blocking IO) — это два разных подхода к работе с вводом и выводом данных в Java. Они отличаются по своей архитектуре, принципам работы и производительности.
    </p>

    <h2>Java IO: Потокоориентированный ввод/вывод</h2>
    <ul>
        <li>
            <span class="highlight">Потокоориентированный подход:</span> Java IO работает с потоками данных (streams), которые представляют собой последовательность байтов или символов. Данные читаются или записываются по одному или несколько байт за раз.
        </li>
        <li>
            <span class="highlight">Отсутствие кеширования:</span> Данные не кешируются, поэтому невозможно произвольно перемещаться по потоку данных вперед или назад.
        </li>
        <li>
            <span class="highlight">Блокирующий режим:</span> Операции чтения и записи являются блокирующими. Это означает, что поток выполнения блокируется до тех пор, пока операция не завершится.
        </li>
    </ul>

    <h2>Java NIO: Буфер-ориентированный ввод/вывод</h2>
    <ul>
        <li>
            <span class="highlight">Буфер-ориентированный подход:</span> Java NIO работает с буферами (buffers), которые представляют собой области памяти, куда данные считываются перед обработкой. Это позволяет более гибко управлять данными.
        </li>
        <li>
            <span class="highlight">Неблокирующий режим:</span> Java NIO поддерживает неблокирующий режим, что позволяет потоку выполнения продолжать работу, даже если данные еще не доступны для чтения или записи.
        </li>
        <li>
            <span class="highlight">Селекторы:</span> Java NIO предоставляет механизм селекторов, которые позволяют одному потоку выполнения мониторить несколько каналов (channels) ввода/вывода. Это повышает производительность, особенно в приложениях с большим количеством соединений.
        </li>
    </ul>

    <h2>Сравнение Java IO и Java NIO</h2>
    <table>
        <thead>
            <tr>
                <th>Характеристика</th>
                <th>Java IO</th>
                <th>Java NIO</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Подход</td>
                <td>Потокоориентированный</td>
                <td>Буфер-ориентированный</td>
            </tr>
            <tr>
                <td>Блокирующий режим</td>
                <td>Да</td>
                <td>Нет (поддерживает неблокирующий режим)</td>
            </tr>
            <tr>
                <td>Кеширование данных</td>
                <td>Нет</td>
                <td>Да (используются буферы)</td>
            </tr>
            <tr>
                <td>Селекторы</td>
                <td>Нет</td>
                <td>Да</td>
            </tr>
            <tr>
                <td>Производительность</td>
                <td>Ниже</td>
                <td>Выше (особенно для многопоточных приложений)</td>
            </tr>
        </tbody>
    </table>

    <h2>Пример использования Java NIO</h2>
    <pre>
        <code>
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

public class NIOExample {
    public static void main(String[] args) throws Exception {
        try (FileChannel channel = FileChannel.open(Paths.get("file.txt"), StandardOpenOption.READ)) {
            ByteBuffer buffer = ByteBuffer.allocate(1024);
            while (channel.read(buffer) > 0) {
                buffer.flip(); // Переключаем буфер в режим чтения
                while (buffer.hasRemaining()) {
                    System.out.print((char) buffer.get());
                }
                buffer.clear(); // Очищаем буфер для следующего чтения
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используется Java NIO для чтения данных из файла в буфер и их обработки.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между Java IO и Java NIO зависит от требований приложения. Java IO подходит для простых задач, в то время как Java NIO лучше использовать для высокопроизводительных приложений с большим количеством соединений.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Java IO — потокоориентированный, блокирующий подход к вводу/выводу.
        </li>
        <li>
            Java NIO — буфер-ориентированный, неблокирующий подход с поддержкой селекторов.
        </li>
        <li>
            Пример Java NIO:
            <pre>
                <code>
ByteBuffer buffer = ByteBuffer.allocate(1024);
while (channel.read(buffer) > 0) {
    buffer.flip();
    while (buffer.hasRemaining()) {
        System.out.print((char) buffer.get());
    }
    buffer.clear();
}
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5b57f381-6677-44ec-87da-a10139b82a2a', 'Какие подклассы класса InputStream вы знаете, для чего они предназначены?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Подклассы класса InputStream</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Подклассы класса InputStream</h1>
    <p>
        Класс <code>InputStream</code> является абстрактным базовым классом для всех потоков ввода байтов. В Java существует множество подклассов <code>InputStream</code>, каждый из которых предназначен для выполнения специфических задач.
    </p>

    <h2>Основные подклассы InputStream</h2>
    <ul>
        <li>
            <span class="highlight">BufferedInputStream:</span> Буферизованный входной поток, который улучшает производительность за счет использования внутреннего буфера.
        </li>
        <li>
            <span class="highlight">ByteArrayInputStream:</span> Позволяет использовать массив байтов в качестве источника данных для входного потока.
        </li>
        <li>
            <span class="highlight">DataInputStream:</span> Входной поток, который включает методы для чтения стандартных типов данных Java, таких как <code>int</code>, <code>double</code>, <code>boolean</code> и т.д.
        </li>
        <li>
            <span class="highlight">FileInputStream:</span> Входной поток для чтения данных из файла.
        </li>
        <li>
            <span class="highlight">FilterInputStream:</span> Абстрактный класс, предоставляющий интерфейс для классов-надстроек, которые добавляют к существующим потокам полезные свойства.
        </li>
        <li>
            <span class="highlight">ObjectInputStream:</span> Входной поток для чтения объектов, сериализованных с помощью <code>ObjectOutputStream</code>.
        </li>
        <li>
            <span class="highlight">StringBufferInputStream:</span> Превращает строку (<code>String</code>) во входной поток данных <code>InputStream</code> (устаревший, не рекомендуется к использованию).
        </li>
        <li>
            <span class="highlight">PipedInputStream:</span> Реализует понятие входного канала, который может быть соединен с <code>PipedOutputStream</code> для передачи данных между потоками.
        </li>
        <li>
            <span class="highlight">PushbackInputStream:</span> Разновидность буферизации, которая позволяет "заглянуть" во входной поток и вернуть байт обратно в поток.
        </li>
        <li>
            <span class="highlight">SequenceInputStream:</span> Используется для слияния двух или более потоков <code>InputStream</code> в единый поток.
        </li>
    </ul>

    <h2>Пример использования подклассов InputStream</h2>
    <pre>
        <code>
import java.io.*;

public class InputStreamExample {
    public static void main(String[] args) throws IOException {
        // Использование FileInputStream
        try (InputStream fileInputStream = new FileInputStream("file.txt")) {
            int data;
            while ((data = fileInputStream.read()) != -1) {
                System.out.print((char) data);
            }
        }

        // Использование BufferedInputStream
        try (InputStream bufferedInputStream = new BufferedInputStream(new FileInputStream("file.txt"))) {
            int data;
            while ((data = bufferedInputStream.read()) != -1) {
                System.out.print((char) data);
            }
        }

        // Использование ByteArrayInputStream
        byte[] byteArray = "Hello, ByteArrayInputStream!".getBytes();
        try (InputStream byteArrayInputStream = new ByteArrayInputStream(byteArray)) {
            int data;
            while ((data = byteArrayInputStream.read()) != -1) {
                System.out.print((char) data);
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере показано использование различных подклассов <code>InputStream</code> для чтения данных из файла и массива байтов.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор подкласса <code>InputStream</code> зависит от конкретной задачи. Например, <code>BufferedInputStream</code> улучшает производительность, а <code>DataInputStream</code> позволяет читать стандартные типы данных.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Основные подклассы <code>InputStream</code>:
            <ul>
                <li><code>BufferedInputStream</code> — буферизованный поток.</li>
                <li><code>ByteArrayInputStream</code> — поток из массива байтов.</li>
                <li><code>DataInputStream</code> — поток для чтения стандартных типов данных.</li>
                <li><code>FileInputStream</code> — поток для чтения из файла.</li>
                <li><code>ObjectInputStream</code> — поток для чтения объектов.</li>
                <li><code>PipedInputStream</code> — входной канал.</li>
                <li><code>PushbackInputStream</code> — поток с возможностью возврата байта.</li>
                <li><code>SequenceInputStream</code> — объединение нескольких потоков.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
InputStream fileInputStream = new FileInputStream("file.txt");
InputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('639e0f42-9b1c-4d5a-aadf-206340fdbe27', 'Чем stub отличается от mock?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Чем stub отличается от mock</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Чем stub отличается от mock</h1>
    <p>
        Stub и mock — это два типа тестовых заглушек, которые используются в модульном тестировании для изоляции тестируемого
        кода от зависимостей. Хотя они могут показаться похожими, их цели и способы использования различаются.
    </p>

    <h2>Что такое stub?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> Stub — это объект, который заменяет реальный компонент и возвращает
            заранее определённые ответы на вызовы методов.
        </li>
        <li>
            <span class="highlight">Цель:</span> Stub используется для имитации поведения зависимостей, чтобы тестируемый код
            мог работать в изолированной среде.
        </li>
        <li>
            <span class="highlight">Пример:</span> Если тестируемый метод вызывает внешний API, stub может вернуть
            фиксированный ответ, чтобы избежать реального вызова API.
        </li>
        <li>
            <span class="highlight">Характеристики:</span>
            <ul>
                <li>Не проверяет, как используется заглушка.</li>
                <li>Возвращает предопределённые данные.</li>
                <li>Используется для упрощения тестирования.</li>
            </ul>
        </li>
    </ul>

    <h2>Что такое mock?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> Mock — это объект, который имитирует поведение реального компонента
            и проверяет, как тестируемый код взаимодействует с ним.
        </li>
        <li>
            <span class="highlight">Цель:</span> Mock используется для проверки того, что тестируемый код вызывает методы
            зависимостей с правильными параметрами и в правильной последовательности.
        </li>
        <li>
            <span class="highlight">Пример:</span> Если тестируемый метод должен вызвать метод <code>save()</code> на объекте,
            mock проверит, что этот метод был вызван с ожидаемыми аргументами.
        </li>
        <li>
            <span class="highlight">Характеристики:</span>
            <ul>
                <li>Проверяет взаимодействие с заглушкой.</li>
                <li>Может имитировать сложное поведение.</li>
                <li>Используется для проверки корректности вызовов.</li>
            </ul>
        </li>
    </ul>

    <h2>Основные различия между stub и mock</h2>
    <ul>
        <li>
            <span class="highlight">Цель использования:</span>
            <ul>
                <li><strong>Stub:</strong> Возвращает фиксированные данные для упрощения тестирования.</li>
                <li><strong>Mock:</strong> Проверяет, как тестируемый код взаимодействует с зависимостью.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Проверка взаимодействия:</span>
            <ul>
                <li><strong>Stub:</strong> Не проверяет вызовы методов.</li>
                <li><strong>Mock:</strong> Проверяет, что методы вызываются с правильными параметрами.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Сложность:</span>
            <ul>
                <li><strong>Stub:</strong> Прост в использовании, так как возвращает предопределённые данные.</li>
                <li><strong>Mock:</strong> Может быть сложнее в настройке, так как требует описания ожидаемых вызовов.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования stub и mock</h2>
    <ul>
        <li>
            <span class="highlight">Stub:</span>
            <pre><code>// Stub возвращает фиксированный ответ
const userServiceStub = {
    getUser: () => ({ id: 1, name: "John" })
};</code></pre>
        </li>
        <li>
            <span class="highlight">Mock:</span>
            <pre><code>// Mock проверяет вызов метода
const userServiceMock = {
    saveUser: jest.fn() // Mock-функция
};

// Тест проверяет, что метод saveUser был вызван
expect(userServiceMock.saveUser).toHaveBeenCalledWith({ id: 1, name: "John" });</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Stub и mock служат разным целям в тестировании. Stub упрощает тестирование,
            возвращая фиксированные данные, а mock проверяет корректность взаимодействия с зависимостями. Выбор между ними
            зависит от задач тестирования.
        </p>
    </div>
</body>
</html>', 'TEST', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('48bc404f-1fc8-4a74-aa77-2949ed0fa4e5', 'Как работает ThreadLocal в Java? Какие проблемы могут возникнуть при его использовании?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ThreadLocal в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>ThreadLocal в Java</h1>
    <p>
        <code>ThreadLocal</code> — это класс в Java, который позволяет создавать переменные, доступные только для одного потока.
        Каждый поток имеет свою собственную копию переменной, что делает <code>ThreadLocal</code> полезным для хранения
        данных, специфичных для потока, таких как пользовательские сессии или транзакции.
    </p>

    <h2>Как работает ThreadLocal?</h2>
    <ul>
        <li>
            <span class="highlight">Хранение данных:</span> <code>ThreadLocal</code> хранит данные в виде ключ-значение,
            где ключом является сам объект <code>ThreadLocal</code>, а значением — данные, специфичные для потока.
        </li>
        <li>
            <span class="highlight">Доступ к данным:</span> Каждый поток может получить доступ только к своим данным,
            используя методы <code>get()</code> и <code>set()</code>.
        </li>
        <li>
            <span class="highlight">Пример использования:</span>
            <pre><code>ThreadLocal&lt;Integer&gt; threadLocal = new ThreadLocal&lt;&gt;();
threadLocal.set(42); // Установка значения для текущего потока
int value = threadLocal.get(); // Получение значения для текущего потока</code></pre>
        </li>
    </ul>

    <h2>Преимущества ThreadLocal</h2>
    <ul>
        <li>
            <span class="highlight">Изоляция данных:</span> Данные, хранящиеся в <code>ThreadLocal</code>, изолированы
            для каждого потока, что предотвращает проблемы с многопоточностью.
        </li>
        <li>
            <span class="highlight">Удобство:</span> <code>ThreadLocal</code> упрощает хранение данных, специфичных
            для потока, без необходимости передавать их через параметры методов.
        </li>
    </ul>

    <h2>Проблемы при использовании ThreadLocal</h2>
    <ul>
        <li>
            <span class="highlight">Утечка памяти:</span> Если <code>ThreadLocal</code> не очищается после использования,
            это может привести к утечке памяти, особенно в пулах потоков (например, в веб-серверах).
        </li>
        <li>
            <span class="highlight">Сложность отладки:</span> Поскольку данные хранятся в каждом потоке отдельно,
            отладка может быть сложной, особенно если данные изменяются в нескольких местах.
        </li>
        <li>
            <span class="highlight">Проблемы с наследованием:</span> По умолчанию данные <code>ThreadLocal</code>
            не передаются дочерним потокам. Для этого нужно использовать <code>InheritableThreadLocal</code>.
        </li>
        <li>
            <span class="highlight">Неправильное использование:</span> Если <code>ThreadLocal</code> используется для
            хранения данных, которые должны быть общими для всех потоков, это может привести к ошибкам.
        </li>
    </ul>

    <h2>Пример утечки памяти</h2>
    <ul>
        <li>
            <span class="highlight">Проблема:</span> Если поток из пула потоков использует <code>ThreadLocal</code>
            и не очищает его, данные остаются в памяти даже после завершения задачи.
        </li>
        <li>
            <span class="highlight">Решение:</span> Всегда очищайте <code>ThreadLocal</code> после использования:
            <pre><code>threadLocal.remove(); // Очистка данных</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>ThreadLocal</code> — это мощный инструмент для хранения данных,
            специфичных для потока, но его неправильное использование может привести к утечкам памяти и другим проблемам.
            Всегда очищайте <code>ThreadLocal</code> после использования и используйте его только тогда, когда это действительно необходимо.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ad6f52f8-06ed-4940-85af-51cefa026869', 'Какие подклассы класса Writer вы знаете, для чего они предназначены?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Подклассы класса Writer</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Подклассы класса Writer</h1>
    <p>
        Класс <code>Writer</code> является абстрактным базовым классом для всех потоков вывода символов. В Java существует множество подклассов <code>Writer</code>, каждый из которых предназначен для выполнения специфических задач.
    </p>

    <h2>Основные подклассы Writer</h2>
    <ul>
        <li>
            <span class="highlight">BufferedWriter:</span> Буферизованный выходной символьный поток, который улучшает производительность за счет использования внутреннего буфера.
        </li>
        <li>
            <span class="highlight">CharArrayWriter:</span> Выходной поток, который записывает данные в символьный массив.
        </li>
        <li>
            <span class="highlight">FileWriter:</span> Выходной поток, предназначенный для записи данных в файл.
        </li>
        <li>
            <span class="highlight">FilterWriter:</span> Абстрактный класс, предоставляющий интерфейс для классов-надстроек, которые добавляют к существующим потокам полезные свойства.
        </li>
        <li>
            <span class="highlight">OutputStreamWriter:</span> Выходной поток, который транслирует символы в байты, используя указанную кодировку.
        </li>
        <li>
            <span class="highlight">PipedWriter:</span> Выходной канал, который может быть соединен с <code>PipedReader</code> для передачи данных между потоками.
        </li>
        <li>
            <span class="highlight">PrintWriter:</span> Выходной поток, который включает методы <code>print()</code> и <code>println()</code> для удобного форматированного вывода.
        </li>
        <li>
            <span class="highlight">StringWriter:</span> Выходной поток, который записывает данные в строку.
        </li>
    </ul>

    <h2>Пример использования подклассов Writer</h2>
    <pre>
        <code>
import java.io.*;

public class WriterExample {
    public static void main(String[] args) throws IOException {
        // Использование FileWriter
        try (Writer fileWriter = new FileWriter("file.txt")) {
            fileWriter.write("Hello, FileWriter!");
        }

        // Использование BufferedWriter
        try (Writer bufferedWriter = new BufferedWriter(new FileWriter("file.txt"))) {
            bufferedWriter.write("Hello, BufferedWriter!");
        }

        // Использование StringWriter
        try (StringWriter stringWriter = new StringWriter()) {
            stringWriter.write("Hello, StringWriter!");
            String result = stringWriter.toString();
            System.out.println(result);
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере показано использование различных подклассов <code>Writer</code> для записи данных в файл и строку.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор подкласса <code>Writer</code> зависит от конкретной задачи. Например, <code>BufferedWriter</code> улучшает производительность, а <code>PrintWriter</code> предоставляет удобные методы для форматированного вывода.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Основные подклассы <code>Writer</code>:
            <ul>
                <li><code>BufferedWriter</code> — буферизированный поток.</li>
                <li><code>CharArrayWriter</code> — поток для записи в символьный массив.</li>
                <li><code>FileWriter</code> — поток для записи в файл.</li>
                <li><code>OutputStreamWriter</code> — поток для трансляции символов в байты.</li>
                <li><code>PipedWriter</code> — выходной канал.</li>
                <li><code>PrintWriter</code> — поток с методами <code>print()</code> и <code>println()</code>.</li>
                <li><code>StringWriter</code> — поток для записи в строку.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
Writer fileWriter = new FileWriter("file.txt");
Writer bufferedWriter = new BufferedWriter(fileWriter);
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('184261a5-8a38-45e7-b7f9-77c65f7a394a', 'Расскажите про метод main', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Метод main</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Метод <code>main</code></h1>
        <p>
            Метод <code>main</code> является, как правило, точкой входа в программу и вызывается JVM.
            Как только заканчивается выполнение метода <code>main()</code>, так сразу же завершается работа
            самой программы.
        </p>
        <ul>
            <li>
                <span class="highlight">static:</span> Ключевое слово <code>static</code> позволяет JVM загрузить метод
                <code>main</code> во время компиляции.
            </li>
            <li>
                <span class="highlight">public static void и сигнатура:</span> Обязательное декларирование метода <code>main</code>.
            </li>
            <li>
                <span class="highlight">Множественность:</span> Мэйнов может быть много, а может не быть вообще.
            </li>
            <li>
                <span class="highlight">Перегрузка:</span> Метод <code>main</code> может быть перегружен.
            </li>
        </ul>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Метод <code>main</code> — это стандартная точка входа в Java-приложение.
                Его сигнатура должна строго соответствовать <code>public static void main(String[] args)</code>.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('db02c6b6-7736-4152-9266-7e56318c9677', 'Какой класс позволяет читать данные из входного байтового потока в  формате примитивных типов данных?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Класс DataInputStream в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Класс DataInputStream в Java</h1>
    <p>
        Класс <code>DataInputStream</code> позволяет читать данные из входного байтового потока в формате примитивных типов данных, таких как <code>int</code>, <code>double</code>, <code>boolean</code> и других. Он предоставляет методы для чтения каждого примитивного типа данных.
    </p>

    <h2>Основные методы DataInputStream</h2>
    <ul>
        <li>
            <span class="highlight">boolean readBoolean():</span> Считывает из потока булевое однобайтовое значение.
        </li>
        <li>
            <span class="highlight">byte readByte():</span> Считывает из потока 1 байт.
        </li>
        <li>
            <span class="highlight">char readChar():</span> Считывает из потока значение типа <code>char</code>.
        </li>
        <li>
            <span class="highlight">double readDouble():</span> Считывает из потока 8-байтовое значение типа <code>double</code>.
        </li>
        <li>
            <span class="highlight">float readFloat():</span> Считывает из потока 4-байтовое значение типа <code>float</code>.
        </li>
        <li>
            <span class="highlight">int readInt():</span> Считывает из потока целочисленное значение типа <code>int</code>.
        </li>
        <li>
            <span class="highlight">long readLong():</span> Считывает из потока значение типа <code>long</code>.
        </li>
        <li>
            <span class="highlight">short readShort():</span> Считывает из потока значение типа <code>short</code>.
        </li>
        <li>
            <span class="highlight">String readUTF():</span> Считывает из потока строку в кодировке UTF-8.
        </li>
    </ul>

    <h2>Пример использования DataInputStream</h2>
    <pre>
        <code>
import java.io.*;

public class DataInputStreamExample {
    public static void main(String[] args) throws IOException {
        // Создаем массив байтов с данными
        byte[] byteArray = {
            1,                              // boolean (true)
            0x7F,                           // byte (127)
            0x00, 0x41,                     // char (\'A\')
            0x40, 0x49, 0x0F, (byte) 0xDB,  // double (3.14159)
            0x40, 0x49, 0x0F, (byte) 0xDB,  // float (3.14159)
            0x00, 0x00, 0x00, 0x7B,         // int (123)
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x2C, // long (300)
            0x00, 0x7B,                     // short (123)
        };

        // Создаем DataInputStream для чтения данных
        try (InputStream inputStream = new ByteArrayInputStream(byteArray);
             DataInputStream dataInputStream = new DataInputStream(inputStream)) {

            // Чтение данных
            boolean boolValue = dataInputStream.readBoolean();
            byte byteValue = dataInputStream.readByte();
            char charValue = dataInputStream.readChar();
            double doubleValue = dataInputStream.readDouble();
            float floatValue = dataInputStream.readFloat();
            int intValue = dataInputStream.readInt();
            long longValue = dataInputStream.readLong();
            short shortValue = dataInputStream.readShort();

            // Вывод данных
            System.out.println("Boolean: " + boolValue);
            System.out.println("Byte: " + byteValue);
            System.out.println("Char: " + charValue);
            System.out.println("Double: " + doubleValue);
            System.out.println("Float: " + floatValue);
            System.out.println("Int: " + intValue);
            System.out.println("Long: " + longValue);
            System.out.println("Short: " + shortValue);
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используется <code>DataInputStream</code> для чтения данных различных примитивных типов из массива байтов.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>DataInputStream</code> работает в паре с <code>DataOutputStream</code>, который записывает данные в формате примитивных типов. Это позволяет сохранять и восстанавливать данные в одинаковом формате.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <code>DataInputStream</code> позволяет читать данные из входного байтового потока в формате примитивных типов.
        </li>
        <li>
            Основные методы:
            <ul>
                <li><code>readBoolean()</code>, <code>readByte()</code>, <code>readChar()</code>, <code>readDouble()</code>, <code>readFloat()</code>, <code>readInt()</code>, <code>readLong()</code>, <code>readShort()</code>, <code>readUTF()</code>.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
DataInputStream dataInputStream = new DataInputStream(inputStream);
int intValue = dataInputStream.readInt();
double doubleValue = dataInputStream.readDouble();
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('226237c7-204e-4922-908b-69b26bd94571', 'Какие методы класса File вы знаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Методы класса File</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Методы класса File</h1>
    <p>
        Класс <code>File</code> в Java предоставляет множество методов для работы с файлами и каталогами. Эти методы позволяют создавать, удалять, переименовывать файлы и каталоги, а также получать информацию о них.
    </p>

    <h2>Основные методы класса File</h2>
    <ul>
        <li>
            <span class="highlight">boolean createNewFile():</span> Пытается создать новый файл. Возвращает <code>true</code>, если файл был успешно создан, и <code>false</code>, если файл уже существует.
        </li>
        <li>
            <span class="highlight">boolean delete():</span> Пытается удалить файл или каталог. Возвращает <code>true</code>, если удаление прошло успешно.
        </li>
        <li>
            <span class="highlight">boolean mkdir():</span> Пытается создать новый каталог. Возвращает <code>true</code>, если каталог был успешно создан.
        </li>
        <li>
            <span class="highlight">boolean renameTo(File dest):</span> Пытается переименовать файл или каталог. Возвращает <code>true</code>, если переименование прошло успешно.
        </li>
        <li>
            <span class="highlight">boolean exists():</span> Проверяет, существует ли файл или каталог. Возвращает <code>true</code>, если файл или каталог существует.
        </li>
        <li>
            <span class="highlight">String getAbsolutePath():</span> Возвращает абсолютный путь для пути, переданного в конструктор объекта.
        </li>
        <li>
            <span class="highlight">String getName():</span> Возвращает краткое имя файла или каталога.
        </li>
        <li>
            <span class="highlight">String getParent():</span> Возвращает имя родительского каталога.
        </li>
        <li>
            <span class="highlight">boolean isDirectory():</span> Возвращает <code>true</code>, если по указанному пути находится каталог.
        </li>
        <li>
            <span class="highlight">boolean isFile():</span> Возвращает <code>true</code>, если по указанному пути находится файл.
        </li>
        <li>
            <span class="highlight">boolean isHidden():</span> Возвращает <code>true</code>, если файл или каталог является скрытым.
        </li>
        <li>
            <span class="highlight">long length():</span> Возвращает размер файла в байтах.
        </li>
        <li>
            <span class="highlight">long lastModified():</span> Возвращает время последнего изменения файла или каталога в миллисекундах с 1 января 1970 года.
        </li>
        <li>
            <span class="highlight">String[] list():</span> Возвращает массив строк, содержащий имена файлов и подкаталогов в указанном каталоге.
        </li>
        <li>
            <span class="highlight">File[] listFiles():</span> Возвращает массив объектов <code>File</code>, представляющих файлы и подкаталоги в указанном каталоге.
        </li>
    </ul>

    <h2>Пример использования методов класса File</h2>
    <pre>
        <code>
import java.io.File;

public class FileMethodsExample {
    public static void main(String[] args) {
        // Создание объекта File для файла
        File file = new File("example.txt");

        // Проверка существования файла
        if (file.exists()) {
            System.out.println("Файл существует: " + file.getName());
        } else {
            System.out.println("Файл не существует.");
        }

        // Получение информации о файле
        System.out.println("Абсолютный путь: " + file.getAbsolutePath());
        System.out.println("Родительский каталог: " + file.getParent());
        System.out.println("Это файл? " + file.isFile());
        System.out.println("Это каталог? " + file.isDirectory());
        System.out.println("Размер файла: " + file.length() + " байт");
        System.out.println("Последнее изменение: " + file.lastModified());

        // Список файлов в каталоге
        File dir = new File(".");
        String[] files = dir.list();
        if (files != null) {
            System.out.println("Файлы в текущем каталоге:");
            for (String fileName : files) {
                System.out.println(fileName);
            }
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере демонстрируется использование различных методов класса <code>File</code> для работы с файлами и каталогами.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Класс <code>File</code> не предназначен для чтения или записи данных в файл. Для этого используются классы <code>InputStream</code>, <code>OutputStream</code>, <code>Reader</code> и <code>Writer</code>.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Класс <code>File</code> предоставляет методы для работы с файлами и каталогами.
        </li>
        <li>
            Основные методы:
            <ul>
                <li><code>createNewFile()</code>, <code>delete()</code>, <code>mkdir()</code>, <code>renameTo()</code> — операции с файлами и каталогами.</li>
                <li><code>exists()</code>, <code>getAbsolutePath()</code>, <code>getName()</code>, <code>getParent()</code> — получение информации.</li>
                <li><code>isDirectory()</code>, <code>isFile()</code>, <code>isHidden()</code> — проверка свойств.</li>
                <li><code>length()</code>, <code>lastModified()</code> — получение размера и времени изменения.</li>
                <li><code>list()</code>, <code>listFiles()</code> — получение списка файлов и каталогов.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
File file = new File("example.txt");
if (file.exists()) {
    System.out.println("Файл существует: " + file.getName());
}
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7e1676e3-167c-40d0-a3b8-80b13ddc7f00', 'Что такое StampedLock и чем он отличается от ReentrantLock?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StampedLock и ReentrantLock</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>StampedLock и ReentrantLock</h1>
    <p>
        <code>StampedLock</code> и <code>ReentrantLock</code> — это два механизма синхронизации в Java, которые
        предоставляют различные способы управления доступом к ресурсам в многопоточной среде. Они имеют разные
        характеристики и подходят для разных сценариев использования.
    </p>

    <h2>Что такое ReentrantLock?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> <code>ReentrantLock</code> — это реализация интерфейса
            <code>Lock</code>, которая предоставляет возможность повторного входа (reentrancy). Это означает, что
            поток может захватывать блокировку несколько раз.
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Поддерживает честную (fair) и нечестную (unfair) блокировку.</li>
                <li>Позволяет проверять, захвачена ли блокировка, и пытаться захватить её с таймаутом.</li>
                <li>Подходит для сценариев, где требуется точный контроль над блокировками.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример использования:</span>
            <pre><code>ReentrantLock lock = new ReentrantLock();
lock.lock();
try {
    // Критическая секция
} finally {
    lock.unlock();
}</code></pre>
        </li>
    </ul>

    <h2>Что такое StampedLock?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> <code>StampedLock</code> — это более современный механизм
            блокировки, который предоставляет три режима работы: оптимистичная блокировка, пессимистичная блокировка
            на чтение и пессимистичная блокировка на запись.
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Оптимистичная блокировка позволяет читать данные без блокировки, если нет конфликтов.</li>
                <li>Пессимистичная блокировка на чтение и запись обеспечивает эксклюзивный доступ.</li>
                <li>Подходит для сценариев с высокой конкуренцией за чтение и редкими операциями записи.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример использования:</span>
            <pre><code>StampedLock lock = new StampedLock();
long stamp = lock.tryOptimisticRead();
// Чтение данных
if (!lock.validate(stamp)) {
    stamp = lock.readLock();
    try {
        // Чтение данных
    } finally {
        lock.unlockRead(stamp);
    }
}</code></pre>
        </li>
    </ul>

    <h2>Основные различия между StampedLock и ReentrantLock</h2>
    <ul>
        <li>
            <span class="highlight">Режимы блокировки:</span>
            <ul>
                <li><strong>ReentrantLock:</strong> Поддерживает только эксклюзивную блокировку.</li>
                <li><strong>StampedLock:</strong> Поддерживает оптимистичную блокировку, блокировку на чтение и запись.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Производительность:</span>
            <ul>
                <li><strong>ReentrantLock:</strong> Может быть менее производительным в сценариях с высокой конкуренцией за чтение.</li>
                <li><strong>StampedLock:</strong> Оптимизирован для сценариев с частым чтением и редкой записью.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Повторный вход:</span>
            <ul>
                <li><strong>ReentrantLock:</strong> Поддерживает повторный вход (reentrancy).</li>
                <li><strong>StampedLock:</strong> Не поддерживает повторный вход.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Честность:</span>
            <ul>
                <li><strong>ReentrantLock:</strong> Поддерживает честную и нечестную блокировку.</li>
                <li><strong>StampedLock:</strong> Не поддерживает честную блокировку.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>StampedLock</code> и <code>ReentrantLock</code> имеют разные
            характеристики и подходят для разных сценариев. <code>StampedLock</code> лучше использовать в случаях,
            где преобладают операции чтения, а <code>ReentrantLock</code> — когда требуется точный контроль над
            блокировками и поддержка повторного входа.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('83904820-f4e1-4cf9-8870-96c311c94c7f', 'Как работает ForkJoinPool? В каких сценариях его стоит использовать?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ForkJoinPool в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>ForkJoinPool в Java</h1>
    <p>
        <code>ForkJoinPool</code> — это специализированный пул потоков, предназначенный для выполнения задач, которые
        могут быть разбиты на более мелкие подзадачи (fork) и затем объединены (join). Он особенно эффективен для
        рекурсивных и параллельных задач, таких как сортировка, поиск или обработка деревьев.
    </p>

    <h2>Как работает ForkJoinPool?</h2>
    <ul>
        <li>
            <span class="highlight">Разделение задач:</span> Задачи разбиваются на более мелкие подзадачи с помощью
            метода <code>fork()</code>. Каждая подзадача может быть выполнена в отдельном потоке.
        </li>
        <li>
            <span class="highlight">Выполнение задач:</span> Подзадачи выполняются параллельно в пуле потоков.
            <code>ForkJoinPool</code> использует work-stealing алгоритм, который позволяет потокам "воровать" задачи
            у других потоков, если они завершили свои задачи.
        </li>
        <li>
            <span class="highlight">Объединение результатов:</span> После выполнения подзадач их результаты объединяются
            с помощью метода <code>join()</code>.
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>class MyTask extends RecursiveTask&lt;Integer&gt; {
    protected Integer compute() {
        if (задача достаточно мала) {
            return выполнитьЗадачу();
        } else {
            MyTask subtask1 = new MyTask();
            MyTask subtask2 = new MyTask();
            subtask1.fork();
            subtask2.fork();
            return subtask1.join() + subtask2.join();
        }
    }
}</code></pre>
        </li>
    </ul>

    <h2>Преимущества ForkJoinPool</h2>
    <ul>
        <li>
            <span class="highlight">Эффективность:</span> <code>ForkJoinPool</code> оптимизирован для задач, которые
            могут быть разбиты на подзадачи, что позволяет эффективно использовать ресурсы процессора.
        </li>
        <li>
            <span class="highlight">Work-stealing алгоритм:</span> Потоки могут "воровать" задачи у других потоков,
            что уменьшает простои и повышает производительность.
        </li>
        <li>
            <span class="highlight">Рекурсивные задачи:</span> Идеально подходит для рекурсивных задач, таких как
            сортировка слиянием или обход деревьев.
        </li>
    </ul>

    <h2>Сценарии использования ForkJoinPool</h2>
    <ul>
        <li>
            <span class="highlight">Рекурсивные задачи:</span> Задачи, которые могут быть разбиты на более мелкие
            подзадачи, такие как сортировка, поиск или обработка деревьев.
        </li>
        <li>
            <span class="highlight">Параллельная обработка данных:</span> Обработка больших объёмов данных, которые
            можно разделить на независимые части.
        </li>
        <li>
            <span class="highlight">Вычислительно интенсивные задачи:</span> Задачи, требующие значительных
            вычислительных ресурсов, такие как численные расчёты или моделирование.
        </li>
    </ul>

    <h2>Пример использования ForkJoinPool</h2>
    <ul>
        <li>
            <span class="highlight">Сортировка слиянием:</span>
            <pre><code>class MergeSortTask extends RecursiveAction {
    private final int[] array;
    private final int low;
    private final int high;

    MergeSortTask(int[] array, int low, int high) {
        this.array = array;
        this.low = low;
        this.high = high;
    }

    @Override
    protected void compute() {
        if (high - low <= THRESHOLD) {
            Arrays.sort(array, low, high);
        } else {
            int mid = (low + high) >>> 1;
            invokeAll(new MergeSortTask(array, low, mid),
                     new MergeSortTask(array, mid, high));
            merge(array, low, mid, high);
        }
    }
}</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>ForkJoinPool</code> — это мощный инструмент для выполнения
            рекурсивных и параллельных задач. Он особенно эффективен в сценариях, где задачи могут быть разбиты на
            подзадачи и выполнены параллельно. Однако для простых задач или задач с низкой степенью параллелизма
            использование <code>ForkJoinPool</code> может быть избыточным.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f0891404-7f75-4c98-8de4-7d0a266d54d7', 'Что такое "false sharing" и как его избежать в многопоточных приложениях?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>False Sharing в многопоточных приложениях</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>False Sharing в многопоточных приложениях</h1>
    <p>
        <strong>False Sharing</strong> (ложное разделение) — это проблема производительности в многопоточных приложениях,
        которая возникает, когда несколько потоков изменяют переменные, расположенные близко друг к другу в памяти.
        Это приводит к избыточному обновлению кэш-линий и снижению производительности.
    </p>

    <h2>Как возникает False Sharing?</h2>
    <ul>
        <li>
            <span class="highlight">Кэш-линии:</span> Современные процессоры работают с данными в блоках, называемых
            кэш-линиями (обычно 64 байта). Если два потока изменяют переменные, которые находятся в одной кэш-линии,
            это вызывает инвалидацию кэша и необходимость синхронизации между ядрами процессора.
        </li>
        <li>
            <span class="highlight">Пример:</span> Если два потока изменяют разные переменные, но эти переменные
            находятся в одной кэш-линии, процессор вынужден синхронизировать кэш-линию между ядрами, даже если
            переменные логически независимы.
        </li>
    </ul>

    <h2>Как избежать False Sharing?</h2>
    <ul>
        <li>
            <span class="highlight">Выравнивание данных:</span> Размещайте переменные, к которым часто обращаются
            разные потоки, в разных кэш-линиях. Это можно сделать, добавив заполнение (padding) вокруг переменных.
        </li>
        <li>
            <span class="highlight">Пример с padding:</span>
            <pre><code>class PaddedVariable {
    public volatile long value;
    public long p1, p2, p3, p4, p5, p6; // Заполнение для выравнивания
}</code></pre>
        </li>
        <li>
            <span class="highlight">Использование локальных переменных:</span> Минимизируйте использование общих
            переменных, к которым обращаются несколько потоков. Вместо этого используйте локальные переменные
            или копии данных.
        </li>
        <li>
            <span class="highlight">Thread-local storage:</span> Используйте <code>ThreadLocal</code> для хранения
            данных, специфичных для каждого потока.
        </li>
        <li>
            <span class="highlight">Атомарные переменные:</span> Используйте атомарные переменные из пакета
            <code>java.util.concurrent.atomic</code>, которые оптимизированы для многопоточного доступа.
        </li>
    </ul>

    <h2>Пример проблемы False Sharing</h2>
    <ul>
        <li>
            <span class="highlight">Код с проблемой:</span>
            <pre><code>class SharedData {
    public volatile long x;
    public volatile long y;
}

// Потоки изменяют x и y одновременно
Thread thread1 = new Thread(() -> {
    for (int i = 0; i < 1_000_000; i++) {
        sharedData.x++;
    }
});

Thread thread2 = new Thread(() -> {
    for (int i = 0; i < 1_000_000; i++) {
        sharedData.y++;
    }
});</code></pre>
        </li>
        <li>
            <span class="highlight">Решение:</span> Добавьте заполнение между переменными:
            <pre><code>class SharedData {
    public volatile long x;
    public long p1, p2, p3, p4, p5, p6; // Заполнение
    public volatile long y;
}</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> False Sharing может значительно снизить производительность
            многопоточных приложений. Чтобы избежать этой проблемы, используйте выравнивание данных, минимизируйте
            использование общих переменных и применяйте специализированные структуры данных, такие как атомарные
            переменные или <code>ThreadLocal</code>.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e5844a49-f49f-410d-bc7b-c95c5ed8e904', 'Какой класс предназначен для работы с элементами файловой системы?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Класс File в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Класс File в Java</h1>
    <p>
        Класс <code>File</code> в Java предназначен для работы с элементами файловой системы. Он позволяет создавать, удалять, переименовывать файлы и каталоги, а также получать информацию о них, такую как размер, права доступа, время и дата создания, путь к родительскому каталогу и многое другое.
    </p>

    <h2>Основные возможности класса File</h2>
    <ul>
        <li>
            <span class="highlight">Создание файлов и каталогов:</span> Методы <code>createNewFile()</code> и <code>mkdir()</code> позволяют создавать новые файлы и каталоги.
        </li>
        <li>
            <span class="highlight">Удаление файлов и каталогов:</span> Метод <code>delete()</code> удаляет файл или пустой каталог.
        </li>
        <li>
            <span class="highlight">Переименование файлов и каталогов:</span> Метод <code>renameTo()</code> позволяет переименовать файл или каталог.
        </li>
        <li>
            <span class="highlight">Получение информации:</span> Методы <code>length()</code>, <code>lastModified()</code>, <code>getParent()</code>, <code>isFile()</code>, <code>isDirectory()</code> и другие позволяют получить информацию о файле или каталоге.
        </li>
        <li>
            <span class="highlight">Работа с путями:</span> Методы <code>getAbsolutePath()</code>, <code>getCanonicalPath()</code>, <code>getPath()</code> позволяют работать с путями к файлам и каталогам.
        </li>
    </ul>

    <h2>Пример использования класса File</h2>
    <pre>
        <code>
import java.io.File;
import java.io.IOException;

public class FileExample {
    public static void main(String[] args) {
        // Создание объекта File для файла
        File file = new File("example.txt");

        // Проверка существования файла
        if (!file.exists()) {
            try {
                // Создание нового файла
                if (file.createNewFile()) {
                    System.out.println("Файл создан: " + file.getName());
                }
            } catch (IOException e) {
                System.out.println("Ошибка при создании файла: " + e.getMessage());
            }
        }

        // Получение информации о файле
        System.out.println("Имя файла: " + file.getName());
        System.out.println("Абсолютный путь: " + file.getAbsolutePath());
        System.out.println("Размер файла: " + file.length() + " байт");
        System.out.println("Последнее изменение: " + file.lastModified());
        System.out.println("Это файл? " + file.isFile());
        System.out.println("Это каталог? " + file.isDirectory());

        // Удаление файла
        if (file.delete()) {
            System.out.println("Файл удален: " + file.getName());
        } else {
            System.out.println("Не удалось удалить файл: " + file.getName());
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере создается объект <code>File</code> для файла <code>example.txt</code>. Проверяется его существование, создается новый файл, если он не существует, и выводится информация о файле. В конце файл удаляется.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Класс <code>File</code> не предназначен для чтения или записи данных в файл. Для этого используются классы <code>InputStream</code>, <code>OutputStream</code>, <code>Reader</code> и <code>Writer</code>.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Класс <code>File</code> используется для работы с файлами и каталогами в файловой системе.
        </li>
        <li>
            Основные методы:
            <ul>
                <li><code>createNewFile()</code>, <code>mkdir()</code> — создание файлов и каталогов.</li>
                <li><code>delete()</code> — удаление файлов и каталогов.</li>
                <li><code>renameTo()</code> — переименование файлов и каталогов.</li>
                <li><code>length()</code>, <code>lastModified()</code>, <code>getParent()</code> — получение информации.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
File file = new File("example.txt");
if (file.createNewFile()) {
    System.out.println("Файл создан: " + file.getName());
}
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1fee1c1c-8f6c-42ed-9116-999afc1f65a0', 'Что вы знаете о RandomAccessFile?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Класс RandomAccessFile</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Класс RandomAccessFile</h1>
    <p>
        Класс <code>RandomAccessFile</code> в Java предоставляет возможность чтения и записи данных в произвольном месте файла. В отличие от потоков <code>InputStream</code> и <code>OutputStream</code>, <code>RandomAccessFile</code> позволяет перемещаться по файлу вперед и назад, что делает его полезным для работы с файлами, где требуется произвольный доступ к данным.
    </p>

    <h2>Основные особенности RandomAccessFile</h2>
    <ul>
        <li>
            <span class="highlight">Произвольный доступ:</span> <code>RandomAccessFile</code> позволяет читать и записывать данные в любом месте файла, используя указатель позиции.
        </li>
        <li>
            <span class="highlight">Режимы доступа:</span> Конструкторы <code>RandomAccessFile</code> требуют указания режима доступа к файлу:
            <ul>
                <li><code>"r"</code> — только чтение.</li>
                <li><code>"rw"</code> — чтение и запись.</li>
                <li><code>"rws"</code> — чтение и запись с синхронной записью изменений на диск.</li>
                <li><code>"rwd"</code> — чтение и запись с синхронной записью только данных на диск.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Специфические методы:</span>
            <ul>
                <li><code>getFilePointer()</code> — возвращает текущую позицию указателя в файле.</li>
                <li><code>seek(long pos)</code> — перемещает указатель на указанную позицию.</li>
                <li><code>length()</code> — возвращает размер файла.</li>
                <li><code>setLength(long newLength)</code> — устанавливает новый размер файла.</li>
                <li><code>skipBytes(int n)</code> — пропускает указанное количество байт.</li>
                <li><code>getChannel()</code> — возвращает файловый канал, связанный с файлом.</li>
                <li>Методы для чтения: <code>read()</code>, <code>readInt()</code>, <code>readLine()</code>, <code>readUTF()</code> и т.д.</li>
                <li>Методы для записи: <code>write()</code>, <code>writeBoolean()</code>, <code>writeByte()</code>, <code>writeUTF()</code> и т.д.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования RandomAccessFile</h2>
    <pre>
        <code>
import java.io.IOException;
import java.io.RandomAccessFile;

public class RandomAccessFileExample {
    public static void main(String[] args) {
        try (RandomAccessFile file = new RandomAccessFile("example.txt", "rw")) {
            // Запись данных в файл
            file.writeUTF("Hello, RandomAccessFile!");
            file.writeInt(123);

            // Перемещение указателя в начало файла
            file.seek(0);

            // Чтение данных из файла
            String str = file.readUTF();
            int number = file.readInt();

            System.out.println("Прочитанная строка: " + str);
            System.out.println("Прочитанное число: " + number);

            // Получение текущей позиции указателя
            System.out.println("Текущая позиция указателя: " + file.getFilePointer());

            // Получение размера файла
            System.out.println("Размер файла: " + file.length() + " байт");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере создается объект <code>RandomAccessFile</code> для файла <code>example.txt</code> в режиме чтения и записи (<code>"rw"</code>). В файл записываются строка и число, затем указатель перемещается в начало файла, и данные считываются обратно. Также демонстрируется использование методов <code>getFilePointer()</code> и <code>length()</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>RandomAccessFile</code> позволяет работать с файлами как с байтовыми потоками, так и с текстовыми данными, что делает его универсальным инструментом для работы с файлами.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <code>RandomAccessFile</code> предоставляет произвольный доступ к файлам для чтения и записи.
        </li>
        <li>
            Основные методы:
            <ul>
                <li><code>seek()</code> — перемещение указателя.</li>
                <li><code>getFilePointer()</code> — получение текущей позиции.</li>
                <li><code>length()</code> — получение размера файла.</li>
                <li><code>read()</code>, <code>write()</code> — чтение и запись данных.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
RandomAccessFile file = new RandomAccessFile("example.txt", "rw");
file.writeUTF("Hello");
file.seek(0);
String str = file.readUTF();
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0c904043-ade2-4711-81e1-765c6466f67c', 'Как реализован ConcurrentHashMap? Почему он эффективен для многопоточных сценариев?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConcurrentHashMap в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>ConcurrentHashMap в Java</h1>
    <p>
        <code>ConcurrentHashMap</code> — это потокобезопасная реализация интерфейса <code>Map</code>, которая
        обеспечивает высокую производительность в многопоточных сценариях. В отличие от <code>Hashtable</code>
        или <code>Collections.synchronizedMap</code>, <code>ConcurrentHashMap</code> использует более сложные
        механизмы для минимизации блокировок и повышения параллелизма.
    </p>

    <h2>Как реализован ConcurrentHashMap?</h2>
    <ul>
        <li>
            <span class="highlight">Сегментирование:</span> Внутри <code>ConcurrentHashMap</code> данные
            разделены на несколько сегментов (buckets), каждый из которых управляется отдельной блокировкой.
            Это позволяет нескольким потокам работать с разными сегментами одновременно.
        </li>
        <li>
            <span class="highlight">Блокировки на уровне сегментов:</span> Вместо одной глобальной блокировки
            (как в <code>Hashtable</code>), <code>ConcurrentHashMap</code> использует блокировки на уровне
            сегментов, что уменьшает конкуренцию между потоками.
        </li>
        <li>
            <span class="highlight">CAS-операции:</span> Для некоторых операций (например, вставки или удаления)
            используются атомарные операции (Compare-And-Swap), которые не требуют блокировок.
        </li>
        <li>
            <span class="highlight">Мелкогранулярные блокировки:</span> В современных версиях Java
            <code>ConcurrentHashMap</code> использует мелкогранулярные блокировки на уровне отдельных узлов
            (нод), что ещё больше увеличивает параллелизм.
        </li>
    </ul>

    <h2>Почему ConcurrentHashMap эффективен?</h2>
    <ul>
        <li>
            <span class="highlight">Высокий уровень параллелизма:</span> Благодаря сегментированию и
            мелкогранулярным блокировкам, несколько потоков могут одновременно читать и изменять данные
            в разных частях карты.
        </li>
        <li>
            <span class="highlight">Минимизация блокировок:</span> Использование CAS-операций и блокировок
            на уровне сегментов или нод уменьшает количество ситуаций, когда потоки блокируют друг друга.
        </li>
        <li>
            <span class="highlight">Масштабируемость:</span> <code>ConcurrentHashMap</code> хорошо
            масштабируется на системах с большим количеством ядер, так как конкуренция за ресурсы
            сведена к минимуму.
        </li>
        <li>
            <span class="highlight">Потокобезопасность:</span> Все операции в <code>ConcurrentHashMap</code>
            являются потокобезопасными, что делает его удобным для использования в многопоточных приложениях.
        </li>
    </ul>

    <h2>Пример использования ConcurrentHashMap</h2>
    <ul>
        <li>
            <span class="highlight">Создание и использование:</span>
            <pre><code>ConcurrentHashMap&lt;String, Integer&gt; map = new ConcurrentHashMap&lt;&gt;();
map.put("key1", 1);
map.put("key2", 2);

// Потокобезопасное обновление
map.compute("key1", (k, v) -> v + 1);</code></pre>
        </li>
        <li>
            <span class="highlight">Параллельные операции:</span>
            <pre><code>map.forEach(2, (k, v) -> System.out.println(k + ": " + v));</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>ConcurrentHashMap</code> — это мощный инструмент для
            работы с данными в многопоточных приложениях. Его эффективность достигается за счёт сегментирования,
            мелкогранулярных блокировок и использования атомарных операций. Однако для простых сценариев с
            низкой конкуренцией использование <code>ConcurrentHashMap</code> может быть избыточным.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0d941379-391e-4843-81b6-8d8a1dfa3f89', 'Как работает механизм загрузки классов в JVM? Что такое ClassLoader и какие типы ClassLoader вы знаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Механизм загрузки классов в JVM</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Механизм загрузки классов в JVM</h1>
    <p>
        Механизм загрузки классов в JVM отвечает за загрузку, связывание и инициализацию классов во время выполнения
        программы. Этот процесс управляется с помощью <code>ClassLoader</code>, который загружает классы в память
        и делает их доступными для JVM.
    </p>

    <h2>Что такое ClassLoader?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> <code>ClassLoader</code> — это компонент JVM, который
            загружает классы из различных источников (например, файловой системы, сети или архива JAR) в память.
        </li>
        <li>
            <span class="highlight">Иерархия:</span> <code>ClassLoader</code> работает в иерархической модели,
            где каждый загрузчик классов делегирует загрузку своему родителю, если класс не может быть найден.
        </li>
        <li>
            <span class="highlight">Основные задачи:</span>
            <ul>
                <li>Загрузка байт-кода класса.</li>
                <li>Проверка корректности байт-кода.</li>
                <li>Создание объекта <code>Class</code> в памяти.</li>
            </ul>
        </li>
    </ul>

    <h2>Типы ClassLoader</h2>
    <ul>
        <li>
            <span class="highlight">Bootstrap ClassLoader:</span>
            <ul>
                <li>Загружает основные классы Java (например, <code>java.lang.*</code>).</li>
                <li>Реализован на нативном коде и является частью JVM.</li>
                <li>Не имеет родительского загрузчика.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Extension ClassLoader:</span>
            <ul>
                <li>Загружает классы из каталога расширений (<code>jre/lib/ext</code>).</li>
                <li>Родительский загрузчик — <code>Bootstrap ClassLoader</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">System (Application) ClassLoader:</span>
            <ul>
                <li>Загружает классы из classpath (указанного в переменной окружения <code>CLASSPATH</code>).</li>
                <li>Родительский загрузчик — <code>Extension ClassLoader</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пользовательские ClassLoader:</span>
            <ul>
                <li>Разработчики могут создавать свои загрузчики классов, наследуя <code>ClassLoader</code>.</li>
                <li>Используются для загрузки классов из нестандартных источников (например, из сети или базы данных).</li>
            </ul>
        </li>
    </ul>

    <h2>Процесс загрузки классов</h2>
    <ul>
        <li>
            <span class="highlight">Загрузка (Loading):</span> <code>ClassLoader</code> загружает байт-код класса
            и создаёт объект <code>Class</code>.
        </li>
        <li>
            <span class="highlight">Связывание (Linking):</span> Включает три этапа:
            <ul>
                <li><strong>Проверка (Verification):</strong> Проверка корректности байт-кода.</li>
                <li><strong>Подготовка (Preparation):</strong> Выделение памяти для статических переменных и их
                инициализация значениями по умолчанию.</li>
                <li><strong>Разрешение (Resolution):</strong> Замена символических ссылок на прямые.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Инициализация (Initialization):</span> Выполнение статических блоков
            инициализации и инициализация статических переменных.
        </li>
    </ul>

    <h2>Пример работы ClassLoader</h2>
    <ul>
        <li>
            <span class="highlight">Загрузка класса:</span>
            <pre><code>ClassLoader classLoader = MyClass.class.getClassLoader();
Class<?> loadedClass = classLoader.loadClass("com.example.MyClass");</code></pre>
        </li>
        <li>
            <span class="highlight">Создание пользовательского ClassLoader:</span>
            <pre><code>class MyClassLoader extends ClassLoader {
    @Override
    protected Class<?> findClass(String name) throws ClassNotFoundException {
        // Загрузка класса из нестандартного источника
        byte[] classData = loadClassData(name);
        return defineClass(name, classData, 0, classData.length);
    }
}</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Механизм загрузки классов в JVM обеспечивает гибкость и
            безопасность при выполнении программ. Понимание работы <code>ClassLoader</code> и его типов помогает
            в разработке сложных приложений, таких как плагины, модульные системы или загрузка классов из
            нестандартных источников.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('82f7109a-3e55-4995-a416-0b906b49ab7a', 'Что такое «символьная ссылка»?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Символьная ссылка</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Символьная ссылка</h1>
    <p>
        Символьная ссылка (или символическая ссылка, симлинк) — это специальный файл в файловой системе, который содержит путь к другому файлу или каталогу. При обращении к символьной ссылке система автоматически перенаправляет запрос к файлу или каталогу, на который она указывает.
    </p>

    <h2>Основные особенности символьных ссылок</h2>
    <ul>
        <li>
            <span class="highlight">Содержимое:</span> Символьная ссылка содержит путь к целевому файлу или каталогу, а не сами данные.
        </li>
        <li>
            <span class="highlight">Цель ссылки:</span> Целью символьной ссылки может быть любой объект: файл, каталог, другая ссылка или даже несуществующий файл.
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Позволяют иметь несколько имен для одного файла или каталога.</li>
                <li>Могут ссылаться на файлы и каталоги за пределами одной файловой системы (в отличие от жестких ссылок).</li>
                <li>Упрощают организацию структуры файлов.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример создания и использования символьной ссылки</h2>
    <pre>
        <code>
import java.nio.file.*;

public class SymbolicLinkExample {
    public static void main(String[] args) {
        try {
            // Создание символьной ссылки
            Path target = Paths.get("target.txt");
            Path link = Paths.get("link.txt");
            Files.createSymbolicLink(link, target);

            // Проверка, является ли файл символьной ссылкой
            if (Files.isSymbolicLink(link)) {
                System.out.println(link + " является символьной ссылкой.");
                // Получение цели ссылки
                Path targetPath = Files.readSymbolicLink(link);
                System.out.println("Цель ссылки: " + targetPath);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере создается символьная ссылка <code>link.txt</code>, которая указывает на файл <code>target.txt</code>. Затем программа проверяет, является ли файл символьной ссылкой, и выводит цель ссылки.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Символьные ссылки могут быть полезны для организации структуры файлов, но их использование требует осторожности, так как они могут указывать на несуществующие объекты или создавать циклы.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Символьная ссылка — это файл, содержащий путь к другому файлу или каталогу.
        </li>
        <li>
            Преимущества:
            <ul>
                <li>Множество имен для одного файла.</li>
                <li>Возможность ссылаться на объекты за пределами одной файловой системы.</li>
            </ul>
        </li>
        <li>
            Пример создания символьной ссылки:
            <pre>
                <code>
Path target = Paths.get("target.txt");
Path link = Paths.get("link.txt");
Files.createSymbolicLink(link, target);
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4bad4b0a-4286-4273-88ac-eeff429ab7e2', 'Что такое Metaspace и чем он отличается от PermGen?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Metaspace и PermGen</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Metaspace и PermGen</h1>
    <p>
        <strong>Metaspace</strong> и <strong>PermGen</strong> — это области памяти в JVM, используемые для хранения
        метаданных классов. Начиная с Java 8, <code>PermGen</code> была заменена на <code>Metaspace</code>, что
        привело к значительным изменениям в управлении памятью для метаданных.
    </p>

    <h2>Что такое PermGen?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> <code>PermGen</code> (Permanent Generation) — это область
            памяти в JVM, которая использовалась для хранения метаданных классов, статических переменных и строк
            из пула строк (<code>String.intern()</code>).
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Имеет фиксированный размер, который задаётся параметром <code>-XX:MaxPermSize</code>.</li>
                <li>При переполнении <code>PermGen</code> возникала ошибка <code>OutOfMemoryError: PermGen space</code>.</li>
                <li>Неэффективное управление памятью, так как <code>PermGen</code> не могла динамически расширяться.</li>
            </ul>
        </li>
    </ul>

    <h2>Что такое Metaspace?</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> <code>Metaspace</code> — это новая область памяти,
            которая заменила <code>PermGen</code> в Java 8. Она используется для хранения метаданных классов.
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Динамически расширяется в зависимости от потребностей приложения.</li>
                <li>Использует память из native-кучи (вне кучи JVM), что позволяет избежать ограничений по размеру.</li>
                <li>Управляется операционной системой, что делает её более гибкой и эффективной.</li>
                <li>При переполнении возникает ошибка <code>OutOfMemoryError: Metaspace</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Основные различия между Metaspace и PermGen</h2>
    <ul>
        <li>
            <span class="highlight">Расположение памяти:</span>
            <ul>
                <li><strong>PermGen:</strong> Находится в куче JVM.</li>
                <li><strong>Metaspace:</strong> Находится в native-памяти (вне кучи JVM).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Управление памятью:</span>
            <ul>
                <li><strong>PermGen:</strong> Имеет фиксированный размер, который нужно задавать вручную.</li>
                <li><strong>Metaspace:</strong> Динамически расширяется и сжимается в зависимости от потребностей.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ошибки памяти:</span>
            <ul>
                <li><strong>PermGen:</strong> <code>OutOfMemoryError: PermGen space</code>.</li>
                <li><strong>Metaspace:</strong> <code>OutOfMemoryError: Metaspace</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Производительность:</span>
            <ul>
                <li><strong>PermGen:</strong> Менее эффективна из-за фиксированного размера и ручного управления.</li>
                <li><strong>Metaspace:</strong> Более эффективна благодаря динамическому управлению памятью.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример настройки Metaspace</h2>
    <ul>
        <li>
            <span class="highlight">Установка максимального размера Metaspace:</span>
            <pre><code>-XX:MaxMetaspaceSize=256m</code></pre>
        </li>
        <li>
            <span class="highlight">Установка начального размера Metaspace:</span>
            <pre><code>-XX:MetaspaceSize=64m</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Замена <code>PermGen</code> на <code>Metaspace</code> в Java 8
            значительно улучшила управление памятью для метаданных классов. <code>Metaspace</code> более гибкая
            и эффективная, что позволяет избежать многих проблем, связанных с переполнением памяти. Однако
            важно следить за использованием памяти и настраивать параметры <code>Metaspace</code> в зависимости
            от требований приложения.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6e11f286-de4f-4c81-9087-74819c3aca99', 'Как работает JIT-компиляция в JVM? Какие преимущества она дает?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JIT-компиляция в JVM</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>JIT-компиляция в JVM</h1>
    <p>
        JIT-компиляция (Just-In-Time компиляция) — это механизм, используемый в JVM для повышения производительности
        программ на Java. В отличие от интерпретации байт-кода, JIT-компиляция преобразует часто выполняемые
        участки кода (например, методы или циклы) в машинный код, который выполняется напрямую процессором.
    </p>

    <h2>Как работает JIT-компиляция?</h2>
    <ul>
        <li>
            <span class="highlight">Интерпретация байт-кода:</span> Изначально JVM интерпретирует байт-код Java
            построчно, что позволяет быстро запускать программу, но может быть медленным для часто выполняемых
            участков кода.
        </li>
        <li>
            <span class="highlight">Профилирование:</span> JVM отслеживает, какие методы или участки кода
            выполняются чаще всего (hot spots).
        </li>
        <li>
            <span class="highlight">JIT-компиляция:</span> Часто выполняемые участки кода компилируются в
            машинный код, который выполняется напрямую процессором. Это значительно ускоряет выполнение программы.
        </li>
        <li>
            <span class="highlight">Оптимизации:</span> JIT-компилятор применяет различные оптимизации, такие
            как встраивание методов (inlining), удаление мёртвого кода (dead code elimination) и размотка циклов
            (loop unrolling).
        </li>
    </ul>

    <h2>Преимущества JIT-компиляции</h2>
    <ul>
        <li>
            <span class="highlight">Высокая производительность:</span> Машинный код, сгенерированный JIT-компилятором,
            выполняется быстрее, чем интерпретируемый байт-код.
        </li>
        <li>
            <span class="highlight">Адаптивность:</span> JIT-компилятор может оптимизировать код на основе
            реального поведения программы во время выполнения.
        </li>
        <li>
            <span class="highlight">Снижение накладных расходов:</span> Только часто выполняемые участки кода
            компилируются, что уменьшает общие накладные расходы на компиляцию.
        </li>
        <li>
            <span class="highlight">Поддержка платформ:</span> JIT-компиляция позволяет Java-программам
            эффективно работать на различных платформах без необходимости перекомпиляции.
        </li>
    </ul>

    <h2>Пример работы JIT-компиляции</h2>
    <ul>
        <li>
            <span class="highlight">Интерпретация:</span> При первом запуске метода JVM интерпретирует его байт-код.
        </li>
        <li>
            <span class="highlight">Профилирование:</span> JVM отслеживает, что метод вызывается часто.
        </li>
        <li>
            <span class="highlight">Компиляция:</span> Метод компилируется в машинный код и выполняется напрямую.
        </li>
        <li>
            <span class="highlight">Оптимизация:</span> JIT-компилятор применяет оптимизации, такие как встраивание
            методов или размотка циклов.
        </li>
    </ul>

    <h2>Типы JIT-компиляторов в JVM</h2>
    <ul>
        <li>
            <span class="highlight">C1 (Client Compiler):</span> Быстрый компилятор с базовыми оптимизациями,
            предназначенный для приложений с низкой задержкой (например, клиентских приложений).
        </li>
        <li>
            <span class="highlight">C2 (Server Compiler):</span> Более медленный, но более агрессивный компилятор
            с продвинутыми оптимизациями, предназначенный для серверных приложений.
        </li>
        <li>
            <span class="highlight">Tiered Compilation:</span> Комбинирует C1 и C2, чтобы достичь баланса между
            скоростью компиляции и качеством оптимизаций.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> JIT-компиляция — это ключевой механизм, который делает Java
            высокопроизводительным языком. Она позволяет программам выполняться быстрее за счёт преобразования
            часто используемого байт-кода в машинный код и применения оптимизаций. Однако для достижения
            максимальной производительности важно учитывать настройки JVM и профилирование приложения.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('20fb4544-ea58-40c5-8c36-3bcc80210e74', 'Что такое "stop-the-world" паузы в контексте сборки мусора? Как их минимизировать?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stop-the-World паузы и сборка мусора</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Stop-the-World паузы и сборка мусора</h1>
    <p>
        <strong>Stop-the-World (STW)</strong> паузы — это периоды, когда выполнение программы полностью
        приостанавливается для выполнения определённых операций, таких как сборка мусора (Garbage Collection, GC).
        Эти паузы могут негативно влиять на производительность приложений, особенно в системах реального времени
        или с высокими требованиями к отзывчивости.
    </p>

    <h2>Что вызывает Stop-the-World паузы?</h2>
    <ul>
        <li>
            <span class="highlight">Сборка мусора:</span> Во время некоторых фаз сборки мусора (например,
            маркировка или сжатие) JVM должна приостановить выполнение всех потоков, чтобы обеспечить
            согласованность данных.
        </li>
        <li>
            <span class="highlight">Другие операции:</span> STW паузы также могут возникать при выполнении
            других операций, таких как обновление метаданных классов или изменение структуры памяти.
        </li>
    </ul>

    <h2>Как минимизировать Stop-the-World паузы?</h2>
    <ul>
        <li>
            <span class="highlight">Использование современных сборщиков мусора:</span>
            <ul>
                <li><strong>G1 (Garbage-First):</strong> Предназначен для уменьшения длительности STW пауз
                за счёт разделения кучи на регионы и параллельной обработки.</li>
                <li><strong>ZGC (Z Garbage Collector):</strong> Обеспечивает очень короткие STW паузы,
                обычно не превышающие нескольких миллисекунд.</li>
                <li><strong>Shenandoah:</strong> Также минимизирует STW паузы за счёт выполнения большей
                части работы параллельно с приложением.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Настройка параметров JVM:</span>
            <ul>
                <li><strong>Увеличение размера кучи:</strong> Большая куча уменьшает частоту сборки мусора,
                но может увеличить длительность пауз.</li>
                <li><strong>Использование параметров GC:</strong> Например, <code>-XX:MaxGCPauseMillis</code>
                позволяет задать максимальную длительность STW пауз.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Оптимизация приложения:</span>
            <ul>
                <li><strong>Уменьшение количества создаваемых объектов:</strong> Меньше объектов — меньше
                работы для сборщика мусора.</li>
                <li><strong>Использование пулов объектов:</strong> Повторное использование объектов
                уменьшает нагрузку на GC.</li>
                <li><strong>Избегание утечек памяти:</strong> Убедитесь, что объекты своевременно удаляются
                из памяти.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример настройки G1 для минимизации STW пауз</h2>
    <ul>
        <li>
            <span class="highlight">Установка максимальной длительности пауз:</span>
            <pre><code>-XX:MaxGCPauseMillis=200</code></pre>
        </li>
        <li>
            <span class="highlight">Увеличение размера кучи:</span>
            <pre><code>-Xmx4g -Xms4g</code></pre>
        </li>
        <li>
            <span class="highlight">Активация G1:</span>
            <pre><code>-XX:+UseG1GC</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Stop-the-World паузы — это неизбежная часть работы сборщика
            мусора, но их можно минимизировать с помощью современных сборщиков мусора, правильной настройки
            JVM и оптимизации приложения. Выбор подходящего сборщика мусора и параметров JVM зависит от
            требований приложения, таких как допустимая длительность пауз и доступные ресурсы.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('00276808-95f9-4d7c-9bc1-a12b364cb223', 'Как работает механизм escape analysis в JVM? Как он помогает оптимизировать код?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Escape Analysis в JVM</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Escape Analysis в JVM</h1>
    <p>
        <strong>Escape Analysis</strong> (анализ побега) — это оптимизация, выполняемая JVM для определения,
        может ли объект "убежать" за пределы текущего метода или потока. Этот анализ позволяет JVM применять
        различные оптимизации, такие как скаляризация объектов и устранение блокировок, что повышает
        производительность программы.
    </p>

    <h2>Как работает Escape Analysis?</h2>
    <ul>
        <li>
            <span class="highlight">Определение "побега":</span> JVM анализирует, может ли объект быть доступен
            за пределами текущего метода или потока. Если объект не "убегает", JVM может применить оптимизации.
        </li>
        <li>
            <span class="highlight">Типы "побега":</span>
            <ul>
                <li><strong>No Escape:</strong> Объект не покидает текущий метод.</li>
                <li><strong>Method Escape:</strong> Объект передаётся в другой метод, но не сохраняется в поле
                или глобальной переменной.</li>
                <li><strong>Thread Escape:</strong> Объект доступен из других потоков.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Оптимизации:</span> В зависимости от результата анализа JVM может:
            <ul>
                <li><strong>Скаляризовать объект:</strong> Заменить объект на набор примитивных переменных,
                что уменьшает нагрузку на сборщик мусора.</li>
                <li><strong>Устранить блокировки:</strong> Если объект не "убегает" из текущего потока,
                JVM может удалить ненужные синхронизации.</li>
                <li><strong>Разместить объект на стеке:</strong> Вместо выделения памяти в куче объект
                может быть размещён на стеке, что ускоряет доступ и уменьшает нагрузку на GC.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример работы Escape Analysis</h2>
    <ul>
        <li>
            <span class="highlight">Исходный код:</span>
            <pre><code>public void example() {
    Point p = new Point(1, 2);
    System.out.println(p.x + p.y);
}</code></pre>
        </li>
        <li>
            <span class="highlight">Анализ:</span> JVM определяет, что объект <code>p</code> не "убегает"
            за пределы метода <code>example</code>.
        </li>
        <li>
            <span class="highlight">Оптимизация:</span> JVM может скаляризовать объект <code>p</code> и
            заменить его на две примитивные переменные <code>x</code> и <code>y</code>.
        </li>
    </ul>

    <h2>Преимущества Escape Analysis</h2>
    <ul>
        <li>
            <span class="highlight">Уменьшение нагрузки на сборщик мусора:</span> Скаляризация объектов
            и размещение их на стеке уменьшает количество объектов в куче, что снижает частоту сборки мусора.
        </li>
        <li>
            <span class="highlight">Ускорение доступа к данным:</span> Размещение объектов на стеке
            позволяет быстрее получать доступ к данным, так как стек работает быстрее, чем куча.
        </li>
        <li>
            <span class="highlight">Устранение ненужных блокировок:</span> Если объект не "убегает"
            из текущего потока, JVM может удалить синхронизацию, что повышает производительность.
        </li>
    </ul>

    <h2>Ограничения Escape Analysis</h2>
    <ul>
        <li>
            <span class="highlight">Сложность анализа:</span> Escape Analysis требует значительных
            вычислительных ресурсов, поэтому он применяется только для "горячих" участков кода.
        </li>
        <li>
            <span class="highlight">Не все объекты могут быть оптимизированы:</span> Если объект
            "убегает" за пределы метода или потока, оптимизации не применяются.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Escape Analysis — это мощный инструмент оптимизации
            в JVM, который позволяет уменьшить нагрузку на сборщик мусора и ускорить выполнение программы.
            Однако его эффективность зависит от структуры кода и поведения программы во время выполнения.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a8fcf9b9-3975-43fa-a1fe-24ed5270098d', 'Как реализуется выполнение транзакции в JPA и Hibernate?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Транзакции в JPA и Hibernate</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Транзакции в JPA и Hibernate</h1>
    <p>
        Управление транзакциями - критически важный аспект работы с базами данных в Java-приложениях. JPA (Java Persistence API) и его самая популярная реализация Hibernate предоставляют несколько способов работы с транзакциями.
    </p>

    <h2>Основные подходы к управлению транзакциями</h2>
    <ul>
        <li>
            <span class="highlight">JTA (Java Transaction API):</span>
            <ul>
                <li>Для распределенных транзакций в Java EE/ Jakarta EE</li>
                <li>Управляется контейнером (например, WildFly, TomEE)</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Resource-local транзакции:</span>
            <ul>
                <li>Для работы с одной базой данных</li>
                <li>Управляется самим приложением</li>
            </ul>
        </li>
    </ul>

    <h2>Пример реализации транзакции в JPA</h2>
    <pre><code>
import javax.persistence.*;
import javax.transaction.Transactional;

public class JpaTransactionExample {

    @PersistenceContext
    private EntityManager entityManager;

    @Transactional
    public void transferMoney(Long fromAccountId, Long toAccountId, BigDecimal amount) {
        Account fromAccount = entityManager.find(Account.class, fromAccountId);
        Account toAccount = entityManager.find(Account.class, toAccountId);

        fromAccount.setBalance(fromAccount.getBalance().subtract(amount));
        toAccount.setBalance(toAccount.getBalance().add(amount));

        entityManager.merge(fromAccount);
        entityManager.merge(toAccount);
    }
}
    </code></pre>

    <h2>Пример реализации транзакции в Hibernate</h2>
    <pre><code>
import org.hibernate.Session;
import org.hibernate.Transaction;

public class HibernateTransactionExample {

    public void saveCustomer(Customer customer) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            session.save(customer);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw e;
        } finally {
            session.close();
        }
    }
}
    </code></pre>

    <h2>Ключевые аннотации для управления транзакциями</h2>
    <ul>
        <li>
            <span class="highlight">@Transactional:</span>
            <ul>
                <li>Определяет границы транзакции</li>
                <li>Может настраивать уровень изоляции, propagation и timeout</li>
            </ul>
        </li>
        <li>
            <span class="highlight">@PersistenceContext:</span>
            <ul>
                <li>Внедряет EntityManager</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Все операции с базой данных должны выполняться в рамках транзакции. Без явного объявления транзакции изменения не будут сохранены в базе данных.
        </p>
    </div>

    <h2>Настройка параметров транзакции</h2>
    <pre><code>
@Transactional(
    isolation = Isolation.READ_COMMITTED,
    propagation = Propagation.REQUIRED,
    timeout = 30,
    rollbackFor = {SQLException.class},
    noRollbackFor = {OptimisticLockException.class}
)
public void complexOperation() {
    // бизнес-логика
}
    </code></pre>

    <h2>Рекомендации по работе с транзакциями</h2>
    <ul>
        <li>
            <span class="highlight">Держите транзакции короткими:</span> Долгие транзакции блокируют ресурсы.
        </li>
        <li>
            <span class="highlight">Обрабатывайте исключения:</span> Всегда предусматривайте откат транзакции при ошибках.
        </li>
        <li>
            <span class="highlight">Используйте правильный уровень изоляции:</span> Выбирайте баланс между согласованностью данных и производительностью.
        </li>
        <li>
            <span class="highlight">Избегайте транзакций в циклах:</span> Это может привести к серьезным проблемам с производительностью.
        </li>
    </ul>

    <h2>Распространенные проблемы и решения</h2>
    <table>
        <tr>
            <th>Проблема</th>
            <th>Решение</th>
        </tr>
        <tr>
            <td>LazyInitializationException</td>
            <td>Используйте FETCH JOIN или открывайте сессию в представлении</td>
        </tr>
        <tr>
            <td>Долгие транзакции</td>
            <td>Разбивайте на несколько мелких транзакций</td>
        </tr>
        <tr>
            <td>Блокировки</td>
            <td>Используйте optimistic locking или уменьшайте уровень изоляции</td>
        </tr>
    </table>
</body>
</html>', 'ORM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8a2d5ae1-9db0-4379-b04b-12a5294a2a78', 'Как Spring создает прокси-объекты для управления транзакциями? В чем разница между JDK Dynamic Proxy и CGLIB?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Прокси-объекты в Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Прокси-объекты в Spring</h1>
    <p>
        Spring использует прокси-объекты для управления транзакциями, аспектами и другими cross-cutting concerns.
        Прокси-объекты позволяют Spring добавлять дополнительную логику (например, управление транзакциями)
        вокруг вызовов методов целевого объекта. Spring поддерживает два типа прокси: <strong>JDK Dynamic Proxy</strong>
        и <strong>CGLIB</strong>.
    </p>

    <h2>Как Spring создаёт прокси-объекты?</h2>
    <ul>
        <li>
            <span class="highlight">Определение необходимости прокси:</span> Spring анализирует конфигурацию
            и аннотации (например, <code>@Transactional</code>), чтобы определить, нужно ли создавать прокси
            для управления транзакциями.
        </li>
        <li>
            <span class="highlight">Создание прокси:</span> В зависимости от конфигурации и типа целевого
            объекта Spring создаёт прокси с использованием JDK Dynamic Proxy или CGLIB.
        </li>
        <li>
            <span class="highlight">Добавление логики:</span> Прокси-объект перехватывает вызовы методов
            и добавляет дополнительную логику, такую как открытие и закрытие транзакций.
        </li>
    </ul>

    <h2>JDK Dynamic Proxy</h2>
    <ul>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Создаётся на основе интерфейсов.</li>
                <li>Использует стандартный механизм Java для создания прокси.</li>
                <li>Подходит только для классов, реализующих интерфейсы.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>public interface UserService {
    void saveUser(User user);
}

public class UserServiceImpl implements UserService {
    @Transactional
    public void saveUser(User user) {
        // Логика сохранения пользователя
    }
}</code></pre>
            Spring создаст прокси для <code>UserService</code>, используя JDK Dynamic Proxy.
        </li>
    </ul>

    <h2>CGLIB</h2>
    <ul>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Создаётся на основе классов (не требует интерфейсов).</li>
                <li>Использует библиотеку CGLIB для создания прокси путём наследования от целевого класса.</li>
                <li>Подходит для классов без интерфейсов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>public class UserService {
    @Transactional
    public void saveUser(User user) {
        // Логика сохранения пользователя
    }
}</code></pre>
            Spring создаст прокси для <code>UserService</code>, используя CGLIB.
        </li>
    </ul>

    <h2>Различия между JDK Dynamic Proxy и CGLIB</h2>
    <ul>
        <li>
            <span class="highlight">Основа создания:</span>
            <ul>
                <li><strong>JDK Dynamic Proxy:</strong> Требует интерфейсы.</li>
                <li><strong>CGLIB:</strong> Работает с классами напрямую.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Производительность:</span>
            <ul>
                <li><strong>JDK Dynamic Proxy:</strong> Обычно быстрее при создании прокси.</li>
                <li><strong>CGLIB:</strong> Может быть медленнее при создании, но быстрее при выполнении.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ограничения:</span>
            <ul>
                <li><strong>JDK Dynamic Proxy:</strong> Не работает с классами без интерфейсов.</li>
                <li><strong>CGLIB:</strong> Не может проксировать final-классы или методы.</li>
            </ul>
        </li>
    </ul>

    <h2>Как Spring выбирает тип прокси?</h2>
    <ul>
        <li>
            <span class="highlight">По умолчанию:</span> Spring использует JDK Dynamic Proxy, если целевой
            класс реализует интерфейсы, и CGLIB, если интерфейсов нет.
        </li>
        <li>
            <span class="highlight">Настройка:</span> Можно явно указать использование CGLIB с помощью
            аннотации <code>@EnableAspectJAutoProxy(proxyTargetClass = true)</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring использует прокси-объекты для добавления
            дополнительной логики, такой как управление транзакциями. Выбор между JDK Dynamic Proxy и CGLIB
            зависит от структуры вашего кода и требований к производительности. Понимание различий между
            этими подходами помогает в настройке и оптимизации приложений на Spring.
        </p>
    </div>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c96d47a2-3e41-4469-bb6f-05965234738c', 'Как работает @Transactional в Spring? Что происходит, если метод с @Transactional вызывает другой метод с @Transactional?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@Transactional в Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>@Transactional в Spring</h1>
    <p>
        Аннотация <code>@Transactional</code> в Spring используется для управления транзакциями в приложениях.
        Она позволяет указать, что метод должен выполняться в контексте транзакции, и автоматически управляет
        её жизненным циклом (открытие, фиксация, откат).
    </p>

    <h2>Как работает @Transactional?</h2>
    <ul>
        <li>
            <span class="highlight">Создание прокси:</span> Spring создаёт прокси-объект для класса, содержащего
            метод с аннотацией <code>@Transactional</code>.
        </li>
        <li>
            <span class="highlight">Открытие транзакции:</span> Перед выполнением метода прокси открывает
            транзакцию (если она ещё не открыта).
        </li>
        <li>
            <span class="highlight">Выполнение метода:</span> Метод выполняется в контексте транзакции.
        </li>
        <li>
            <span class="highlight">Фиксация или откат:</span> После выполнения метода прокси фиксирует
            транзакцию, если метод завершился успешно, или откатывает её, если возникло исключение.
        </li>
    </ul>

    <h2>Что происходит, если метод с @Transactional вызывает другой метод с @Transactional?</h2>
    <ul>
        <li>
            <span class="highlight">Поведение по умолчанию (Propagation.REQUIRED):</span>
            <ul>
                <li>Если метод с <code>@Transactional</code> вызывает другой метод с <code>@Transactional</code>,
                оба метода выполняются в одной транзакции.</li>
                <li>Если внутренний метод выбрасывает исключение, транзакция будет откачена, даже если внешний
                метод перехватывает исключение.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Другие варианты распространения (Propagation):</span>
            <ul>
                <li><strong>REQUIRES_NEW:</strong> Создаёт новую транзакцию для внутреннего метода, независимо
                от текущей транзакции.</li>
                <li><strong>NESTED:</strong> Создаёт вложенную транзакцию внутри текущей. Если внешняя транзакция
                откатывается, вложенная также откатывается.</li>
                <li><strong>SUPPORTS:</strong> Выполняет метод в текущей транзакции, если она существует, или
                без транзакции, если её нет.</li>
                <li><strong>NOT_SUPPORTED:</strong> Выполняет метод без транзакции, приостанавливая текущую
                транзакцию, если она существует.</li>
                <li><strong>MANDATORY:</strong> Требует наличия активной транзакции. Если транзакции нет,
                выбрасывается исключение.</li>
                <li><strong>NEVER:</strong> Запрещает выполнение метода в контексте транзакции. Если транзакция
                активна, выбрасывается исключение.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования @Transactional</h2>
    <ul>
        <li>
            <span class="highlight">Метод с @Transactional:</span>
            <pre><code>@Transactional
public void outerMethod() {
    // Логика внешнего метода
    innerMethod();
}

@Transactional
public void innerMethod() {
    // Логика внутреннего метода
}</code></pre>
        </li>
        <li>
            <span class="highlight">Поведение:</span> Если <code>innerMethod</code> выбрасывает исключение,
            транзакция будет откачена, даже если <code>outerMethod</code> перехватывает исключение.
        </li>
    </ul>

    <h2>Пример с Propagation.REQUIRES_NEW</h2>
    <ul>
        <li>
            <span class="highlight">Метод с @Transactional(propagation = Propagation.REQUIRES_NEW):</span>
            <pre><code>@Transactional
public void outerMethod() {
    // Логика внешнего метода
    innerMethod();
}

@Transactional(propagation = Propagation.REQUIRES_NEW)
public void innerMethod() {
    // Логика внутреннего метода
}</code></pre>
        </li>
        <li>
            <span class="highlight">Поведение:</span> <code>innerMethod</code> выполняется в новой транзакции,
            независимо от транзакции <code>outerMethod</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@Transactional</code> в Spring предоставляет
            мощный механизм для управления транзакциями. Понимание различных вариантов распространения
            (Propagation) и их влияния на поведение транзакций помогает в разработке надёжных и эффективных
            приложений.
        </p>
    </div>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8425bc0a-295c-419c-b82b-6d77382f6591', 'Как Spring Boot автоматически настраивает бины? Как работает аннотация @Conditional?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Автоматическая настройка бинов в Spring Boot</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Автоматическая настройка бинов в Spring Boot</h1>
    <p>
        Spring Boot использует механизм автоматической настройки (auto-configuration) для упрощения конфигурации
        приложений. Этот механизм автоматически создаёт и настраивает бины на основе зависимостей, добавленных
        в проект, и условий, определённых с помощью аннотации <code>@Conditional</code>.
    </p>

    <h2>Как Spring Boot автоматически настраивает бины?</h2>
    <ul>
        <li>
            <span class="highlight">Автоконфигурация:</span> Spring Boot анализирует классы в classpath и
            автоматически настраивает бины, если соответствующие зависимости присутствуют в проекте.
        </li>
        <li>
            <span class="highlight">Файлы <code>spring.factories</code>:</span> Автоконфигурации определяются
            в файлах <code>spring.factories</code>, которые находятся в библиотеках Spring Boot. Эти файлы
            содержат список классов автоконфигурации.
        </li>
        <li>
            <span class="highlight">Условная настройка:</span> Автоконфигурации используют аннотацию
            <code>@Conditional</code> для определения условий, при которых бины должны создаваться.
        </li>
    </ul>

    <h2>Как работает аннотация @Conditional?</h2>
    <ul>
        <li>
            <span class="highlight">Определение условий:</span> Аннотация <code>@Conditional</code> позволяет
            указать условия, при которых бин должен быть создан. Эти условия реализуются через классы,
            реализующие интерфейс <code>Condition</code>.
        </li>
        <li>
            <span class="highlight">Пример использования:</span>
            <pre><code>@Configuration
@Conditional(MyCondition.class)
public class MyConfiguration {
    @Bean
    public MyBean myBean() {
        return new MyBean();
    }
}</code></pre>
            Здесь бин <code>myBean</code> будет создан только в том случае, если условие, определённое в
            <code>MyCondition</code>, выполняется.
        </li>
        <li>
            <span class="highlight">Встроенные условия:</span> Spring Boot предоставляет множество встроенных
            аннотаций на основе <code>@Conditional</code>, таких как:
            <ul>
                <li><code>@ConditionalOnClass</code>: Бин создаётся, если указанный класс присутствует в classpath.</li>
                <li><code>@ConditionalOnMissingBean</code>: Бин создаётся, если бин определённого типа отсутствует в контексте.</li>
                <li><code>@ConditionalOnProperty</code>: Бин создаётся, если определённое свойство установлено в <code>application.properties</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример автоматической настройки</h2>
    <ul>
        <li>
            <span class="highlight">Автоконфигурация для DataSource:</span>
            <pre><code>@Configuration
@ConditionalOnClass(DataSource.class)
@ConditionalOnProperty(name = "spring.datasource.url")
public class DataSourceAutoConfiguration {
    @Bean
    public DataSource dataSource() {
        return new HikariDataSource();
    }
}</code></pre>
            Здесь бин <code>DataSource</code> будет создан только в том случае, если класс <code>DataSource</code>
            присутствует в classpath и свойство <code>spring.datasource.url</code> задано в конфигурации.
        </li>
    </ul>

    <h2>Преимущества автоматической настройки</h2>
    <ul>
        <li>
            <span class="highlight">Упрощение конфигурации:</span> Spring Boot автоматически настраивает бины
            на основе зависимостей, что уменьшает количество ручной конфигурации.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Использование <code>@Conditional</code> позволяет
            настраивать бины только при определённых условиях, что делает приложения более адаптивными.
        </li>
        <li>
            <span class="highlight">Совместимость:</span> Автоконфигурации Spring Boot работают с различными
            библиотеками и фреймворками, что упрощает интеграцию.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Механизм автоматической настройки Spring Boot и аннотация
            <code>@Conditional</code> позволяют создавать гибкие и легко настраиваемые приложения. Понимание
            этих механизмов помогает в разработке и поддержке Spring Boot-приложений.
        </p>
    </div>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8ac2b54b-a2a6-4681-9b3c-b6df46754fe3', 'Что такое Spring AOP? Как реализованы аспекты в Spring?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring AOP и аспекты</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Spring AOP и аспекты</h1>
    <p>
        <strong>Spring AOP</strong> (Aspect-Oriented Programming) — это модуль Spring, который позволяет
        добавлять дополнительную логику (аспекты) к методам или классам без изменения их исходного кода.
        Аспекты используются для реализации cross-cutting concerns, таких как логирование, управление
        транзакциями, безопасность и кэширование.
    </p>

    <h2>Основные концепции Spring AOP</h2>
    <ul>
        <li>
            <span class="highlight">Аспект (Aspect):</span> Модуль, который инкапсулирует cross-cutting
            функциональность. Например, аспект для логирования.
        </li>
        <li>
            <span class="highlight">Совет (Advice):</span> Действие, выполняемое аспектом в определённой
            точке соединения (join point). Например, логирование перед выполнением метода.
        </li>
        <li>
            <span class="highlight">Точка соединения (Join Point):</span> Точка в выполнении программы,
            где может быть применён аспект. Например, вызов метода или обработка исключения.
        </li>
        <li>
            <span class="highlight">Срез (Pointcut):</span> Выражение, которое определяет, где именно
            должен быть применён совет. Например, все методы в определённом пакете.
        </li>
        <li>
            <span class="highlight">Внедрение (Weaving):</span> Процесс связывания аспектов с целевыми
            объектами. В Spring это происходит во время выполнения (runtime weaving).
        </li>
    </ul>

    <h2>Как реализованы аспекты в Spring?</h2>
    <ul>
        <li>
            <span class="highlight">Использование прокси:</span> Spring AOP создаёт прокси-объекты для
            целевых классов, чтобы перехватывать вызовы методов и применять аспекты.
        </li>
        <li>
            <span class="highlight">Типы советов:</span>
            <ul>
                <li><strong>Before:</strong> Выполняется перед вызовом метода.</li>
                <li><strong>After:</strong> Выполняется после вызова метода, независимо от результата.</li>
                <li><strong>AfterReturning:</strong> Выполняется после успешного завершения метода.</li>
                <li><strong>AfterThrowing:</strong> Выполняется, если метод выбрасывает исключение.</li>
                <li><strong>Around:</strong> Оборачивает вызов метода, позволяя выполнить код до и после
                метода, а также контролировать его выполнение.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример аспекта:</span>
            <pre><code>@Aspect
@Component
public class LoggingAspect {
    @Before("execution(* com.example.service.*.*(..))")
    public void logBefore(JoinPoint joinPoint) {
        System.out.println("Вызов метода: " + joinPoint.getSignature().getName());
    }
}</code></pre>
            Этот аспект логирует вызовы всех методов в пакете <code>com.example.service</code>.
        </li>
    </ul>

    <h2>Пример использования Spring AOP</h2>
    <ul>
        <li>
            <span class="highlight">Настройка Spring AOP:</span>
            <pre><code>@Configuration
@EnableAspectJAutoProxy
public class AppConfig {
}</code></pre>
        </li>
        <li>
            <span class="highlight">Создание аспекта:</span>
            <pre><code>@Aspect
@Component
public class TransactionAspect {
    @Around("@annotation(org.springframework.transaction.annotation.Transactional)")
    public Object manageTransaction(ProceedingJoinPoint joinPoint) throws Throwable {
        System.out.println("Открытие транзакции");
        Object result = joinPoint.proceed();
        System.out.println("Фиксация транзакции");
        return result;
    }
}</code></pre>
            Этот аспект управляет транзакциями для методов, аннотированных <code>@Transactional</code>.
        </li>
    </ul>

    <h2>Преимущества Spring AOP</h2>
    <ul>
        <li>
            <span class="highlight">Разделение ответственности:</span> Аспекты позволяют вынести cross-cutting
            функциональность в отдельные модули, что упрощает поддержку кода.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Аспекты можно легко добавлять или удалять, не изменяя
            основной код приложения.
        </li>
        <li>
            <span class="highlight">Повторное использование:</span> Аспекты можно использовать в разных
            частях приложения или в разных проектах.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring AOP — это мощный инструмент для реализации
            cross-cutting concerns в приложениях. Он позволяет добавлять дополнительную логику, такую как
            логирование, управление транзакциями и безопасность, без изменения основного кода. Понимание
            работы аспектов и их применения помогает в разработке модульных и поддерживаемых приложений.
        </p>
    </div>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2cf10440-814d-488c-8b16-71929a0219c9', 'Какие проверяемые исключения знаешь?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Проверяемые исключения в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Проверяемые исключения в Java</h1>
    <p>
        Проверяемые исключения (checked exceptions) - это исключения, которые компилятор Java требует обрабатывать явно. Они наследуются от класса <code>Exception</code>, но не от <code>RuntimeException</code>.
    </p>

    <h2>Основные проверяемые исключения</h2>
    <ul>
        <li>
            <span class="highlight">IOException:</span>
            <ul>
                <li>Базовое исключение для ошибок ввода-вывода</li>
                <li>Примеры использования: работа с файлами, сетевыми соединениями</li>
            </ul>
        </li>
        <li>
            <span class="highlight">SQLException:</span>
            <ul>
                <li>Возникает при ошибках работы с базами данных</li>
                <li>Используется в JDBC</li>
            </ul>
        </li>
        <li>
            <span class="highlight">ClassNotFoundException:</span>
            <ul>
                <li>Возникает при попытке загрузить несуществующий класс</li>
                <li>Часто встречается при использовании reflection</li>
            </ul>
        </li>
        <li>
            <span class="highlight">FileNotFoundException:</span>
            <ul>
                <li>Подкласс IOException</li>
                <li>Возникает при попытке открыть несуществующий файл</li>
            </ul>
        </li>
        <li>
            <span class="highlight">ParseException:</span>
            <ul>
                <li>Возникает при ошибках разбора данных (например, дат)</li>
                <li>Используется в java.text</li>
            </ul>
        </li>
    </ul>

    <h2>Пример обработки проверяемых исключений</h2>
    <pre><code>
import java.io.*;

public class CheckedExceptionExample {
    public static void main(String[] args) {
        try {
            FileReader fileReader = new FileReader("example.txt");
            BufferedReader reader = new BufferedReader(fileReader);
            String line = reader.readLine();
            System.out.println(line);
            reader.close();
        } catch (FileNotFoundException e) {
            System.err.println("Файл не найден: " + e.getMessage());
        } catch (IOException e) {
            System.err.println("Ошибка ввода-вывода: " + e.getMessage());
        }
    }
}
    </code></pre>

    <h2>Сравнение проверяемых и непроверяемых исключений</h2>
    <table>
        <tr>
            <th>Характеристика</th>
            <th>Проверяемые</th>
            <th>Непроверяемые</th>
        </tr>
        <tr>
            <td>Наследование</td>
            <td>От Exception</td>
            <td>От RuntimeException</td>
        </tr>
        <tr>
            <td>Обработка</td>
            <td>Обязательна</td>
            <td>Не обязательна</td>
        </tr>
        <tr>
            <td>Когда возникают</td>
            <td>Внешние ошибки (файлы, сеть, БД)</td>
            <td>Ошибки программиста (NPE, IndexOutOfBounds)</td>
        </tr>
    </table>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Проверяемые исключения следует использовать для ситуаций, от которых программа может восстановиться, а непроверяемые - для ошибок программиста.
        </p>
    </div>

    <h2>Лучшие практики работы с проверяемыми исключениями</h2>
    <ul>
        <li>
            <span class="highlight">Не игнорируйте исключения:</span> Пустой catch-блок - плохая практика
        </li>
        <li>
            <span class="highlight">Логируйте исключения:</span> Всегда записывайте информацию об ошибке в лог
        </li>
        <li>
            <span class="highlight">Преобразуйте в непроверяемые при необходимости:</span> В некоторых случаях можно обернуть в RuntimeException
        </li>
        <li>
            <span class="highlight">Предоставляйте полезную информацию:</span> Добавляйте контекст в сообщение об ошибке
        </li>
    </ul>

    <h2>Пример преобразования проверяемого исключения</h2>
    <pre><code>
public class ExceptionConversionExample {
    public String readFile(String path) {
        try {
            return Files.readString(Path.of(path));
        } catch (IOException e) {
            throw new RuntimeException("Ошибка чтения файла: " + path, e);
        }
    }
}
    </code></pre>

    <h2>Дополнительные проверяемые исключения</h2>
    <ul>
        <li>InterruptedException - прерывание потока</li>
        <li>CloneNotSupportedException - попытка клонирования объекта без Cloneable</li>
        <li>TimeoutException - истечение таймаута операции</li>
        <li>NoSuchMethodException - метод не найден через reflection</li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('455e7bb1-e5dd-4682-b452-8d48b7140805', 'Как Spring Boot обрабатывает исключения? Как можно глобально обрабатывать исключения в REST API?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Обработка исключений в Spring Boot</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Обработка исключений в Spring Boot</h1>
    <p>
        Spring Boot предоставляет мощные механизмы для обработки исключений в приложениях, особенно в REST API.
        Эти механизмы позволяют централизованно управлять ошибками и возвращать клиентам понятные и структурированные
        ответы.
    </p>

    <h2>Как Spring Boot обрабатывает исключения?</h2>
    <ul>
        <li>
            <span class="highlight">Локальная обработка:</span> Исключения могут быть обработаны внутри
            контроллера с помощью блока <code>try-catch</code> или аннотации <code>@ExceptionHandler</code>.
        </li>
        <li>
            <span class="highlight">Глобальная обработка:</span> Spring Boot позволяет глобально обрабатывать
            исключения с помощью аннотации <code>@ControllerAdvice</code> и классов, реализующих
            <code>ErrorController</code>.
        </li>
        <li>
            <span class="highlight">Стандартные обработчики:</span> Spring Boot автоматически обрабатывает
            некоторые исключения, такие как <code>404 Not Found</code> или <code>500 Internal Server Error</code>,
            возвращая стандартные JSON-ответы.
        </li>
    </ul>

    <h2>Глобальная обработка исключений в REST API</h2>
    <ul>
        <li>
            <span class="highlight">Использование @ControllerAdvice:</span> Этот подход позволяет централизованно
            обрабатывать исключения для всех контроллеров.
            <pre><code>@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity&lt;ErrorResponse&gt; handleResourceNotFound(ResourceNotFoundException ex) {
        ErrorResponse errorResponse = new ErrorResponse("404", ex.getMessage());
        return new ResponseEntity&lt;&gt;(errorResponse, HttpStatus.NOT_FOUND);
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity&lt;ErrorResponse&gt; handleGlobalException(Exception ex) {
        ErrorResponse errorResponse = new ErrorResponse("500", "Internal Server Error");
        return new ResponseEntity&lt;&gt;(errorResponse, HttpStatus.INTERNAL_SERVER_ERROR);
    }
}</code></pre>
            Здесь <code>ResourceNotFoundException</code> обрабатывается отдельно, а все остальные исключения
            обрабатываются глобально.
        </li>
        <li>
            <span class="highlight">Кастомный ErrorController:</span> Можно реализовать собственный
            <code>ErrorController</code> для обработки всех ошибок.
            <pre><code>@RestController
public class CustomErrorController implements ErrorController {
    @RequestMapping("/error")
    public ResponseEntity&lt;ErrorResponse&gt; handleError(HttpServletRequest request) {
        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
        Exception exception = (Exception) request.getAttribute("javax.servlet.error.exception");
        ErrorResponse errorResponse = new ErrorResponse(statusCode.toString(), exception.getMessage());
        return new ResponseEntity&lt;&gt;(errorResponse, HttpStatus.valueOf(statusCode));
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }
}</code></pre>
            Этот контроллер перехватывает все ошибки и возвращает кастомный JSON-ответ.
        </li>
    </ul>

    <h2>Пример структуры ErrorResponse</h2>
    <ul>
        <li>
            <span class="highlight">Класс ErrorResponse:</span>
            <pre><code>public class ErrorResponse {
    private String code;
    private String message;

    public ErrorResponse(String code, String message) {
        this.code = code;
        this.message = message;
    }

    // Геттеры и сеттеры
}</code></pre>
            Этот класс используется для возврата структурированных ошибок клиенту.
        </li>
    </ul>

    <h2>Преимущества глобальной обработки исключений</h2>
    <ul>
        <li>
            <span class="highlight">Централизация:</span> Все исключения обрабатываются в одном месте, что
            упрощает поддержку и изменение логики обработки ошибок.
        </li>
        <li>
            <span class="highlight">Согласованность:</span> Клиенты получают единообразные ответы на ошибки,
            что улучшает взаимодействие с API.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Можно легко добавлять новые обработчики для специфических
            исключений или изменять существующие.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Глобальная обработка исключений в Spring Boot позволяет
            создавать надёжные и удобные REST API. Использование <code>@ControllerAdvice</code> и кастомных
            обработчиков помогает централизованно управлять ошибками и возвращать клиентам понятные и
            структурированные ответы.
        </p>
    </div>
</body>
</html>', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b01aee31-ad4d-4be4-bd77-7731558a47e1', 'Как реализовать кэш с использованием LinkedHashMap? Как обеспечить удаление самых старых элементов при достижении лимита?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Кэш на основе LinkedHashMap</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Кэш на основе LinkedHashMap</h1>
    <p>
        <code>LinkedHashMap</code> — это класс в Java, который расширяет <code>HashMap</code> и поддерживает
        порядок элементов. Это делает его удобным для реализации кэша с удалением самых старых элементов при
        достижении лимита (LRU-кэш).
    </p>

    <h2>Как реализовать LRU-кэш с использованием LinkedHashMap?</h2>
    <ul>
        <li>
            <span class="highlight">Использование LinkedHashMap:</span> <code>LinkedHashMap</code> поддерживает
            порядок вставки или доступа к элементам. Это позволяет легко удалять самые старые элементы.
        </li>
        <li>
            <span class="highlight">Переопределение метода removeEldestEntry:</span> Для реализации LRU-кэша
            нужно переопределить метод <code>removeEldestEntry</code>, который определяет, нужно ли удалять
            самый старый элемент при добавлении нового.
        </li>
        <li>
            <span class="highlight">Пример реализации:</span>
            <pre><code>public class LRUCache&lt;K, V&gt; extends LinkedHashMap&lt;K, V&gt; {
    private final int capacity;

    public LRUCache(int capacity) {
        super(capacity, 0.75f, true);
        this.capacity = capacity;
    }

    @Override
    protected boolean removeEldestEntry(Map.Entry&lt;K, V&gt; eldest) {
        return size() > capacity;
    }
}</code></pre>
            В этом примере кэш удаляет самый старый элемент, когда его размер превышает заданную ёмкость.
        </li>
    </ul>

    <h2>Как работает LRU-кэш?</h2>
    <ul>
        <li>
            <span class="highlight">Порядок доступа:</span> При использовании конструктора
            <code>LinkedHashMap(capacity, loadFactor, true)</code> порядок элементов поддерживается
            на основе последнего доступа (LRU — Least Recently Used).
        </li>
        <li>
            <span class="highlight">Удаление старых элементов:</span> Метод <code>removeEldestEntry</code>
            автоматически вызывается при добавлении нового элемента. Если он возвращает <code>true</code>,
            самый старый элемент удаляется.
        </li>
    </ul>

    <h2>Пример использования LRU-кэша</h2>
    <ul>
        <li>
            <span class="highlight">Создание и использование кэша:</span>
            <pre><code>LRUCache&lt;String, Integer&gt; cache = new LRUCache&lt;&gt;(3);
cache.put("one", 1);
cache.put("two", 2);
cache.put("three", 3);

// Доступ к элементу "one" обновляет его порядок
cache.get("one");

// Добавление нового элемента вытесняет самый старый ("two")
cache.put("four", 4);

System.out.println(cache); // {one=1, three=3, four=4}</code></pre>
        </li>
    </ul>

    <h2>Преимущества использования LinkedHashMap для кэша</h2>
    <ul>
        <li>
            <span class="highlight">Простота реализации:</span> <code>LinkedHashMap</code> предоставляет
            встроенную поддержку порядка элементов, что упрощает реализацию LRU-кэша.
        </li>
        <li>
            <span class="highlight">Эффективность:</span> Операции вставки, удаления и доступа выполняются
            за время O(1).
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Можно легко изменить логику удаления старых элементов,
            переопределив метод <code>removeEldestEntry</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Реализация LRU-кэша на основе <code>LinkedHashMap</code>
            — это простой и эффективный способ управления кэшем с ограниченной ёмкостью. Этот подход подходит
            для сценариев, где важно удалять самые старые или редко используемые элементы при достижении
            лимита.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9cd87c42-bd82-4362-886b-659f6d73ef9b', 'Как работает алгоритм быстрой сортировки (QuickSort)? Какие его недостатки и как их можно устранить?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Алгоритм быстрой сортировки (QuickSort)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Алгоритм быстрой сортировки (QuickSort)</h1>
    <p>
        <strong>QuickSort</strong> — это эффективный алгоритм сортировки, который использует стратегию
        "разделяй и властвуй". Он работает за время O(n log n) в среднем случае и широко используется
        благодаря своей производительности.
    </p>

    <h2>Как работает QuickSort?</h2>
    <ul>
        <li>
            <span class="highlight">Выбор опорного элемента (pivot):</span> Алгоритм выбирает элемент
            из массива, который будет использоваться для разделения массива на две части.
        </li>
        <li>
            <span class="highlight">Разделение (partition):</span> Массив разделяется на две части:
            элементы меньше опорного и элементы больше опорного.
        </li>
        <li>
            <span class="highlight">Рекурсия:</span> Алгоритм рекурсивно применяется к каждой из двух
            частей массива.
        </li>
        <li>
            <span class="highlight">Базовый случай:</span> Рекурсия завершается, когда массив
            содержит один элемент или пуст.
        </li>
    </ul>

    <h2>Пример реализации QuickSort на Java</h2>
    <ul>
        <li>
            <span class="highlight">Код:</span>
            <pre><code>public class QuickSort {
    public static void quickSort(int[] arr, int low, int high) {
        if (low < high) {
            int pivotIndex = partition(arr, low, high);
            quickSort(arr, low, pivotIndex - 1);
            quickSort(arr, pivotIndex + 1, high);
        }
    }

    private static int partition(int[] arr, int low, int high) {
        int pivot = arr[high];
        int i = low - 1;

        for (int j = low; j < high; j++) {
            if (arr[j] < pivot) {
                i++;
                swap(arr, i, j);
            }
        }
        swap(arr, i + 1, high);
        return i + 1;
    }

    private static void swap(int[] arr, int i, int j) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">Пример использования:</span>
            <pre><code>int[] arr = {10, 7, 8, 9, 1, 5};
QuickSort.quickSort(arr, 0, arr.length - 1);
System.out.println(Arrays.toString(arr)); // [1, 5, 7, 8, 9, 10]</code></pre>
        </li>
    </ul>

    <h2>Недостатки QuickSort и их устранение</h2>
    <ul>
        <li>
            <span class="highlight">Худший случай O(n^2):</span> Если опорный элемент выбирается неудачно
            (например, минимальный или максимальный элемент), время работы может ухудшиться до O(n^2).
            <ul>
                <li><strong>Решение:</strong> Использование медианы трёх (выбор опорного элемента как
                медианы первого, среднего и последнего элементов).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Рекурсия:</span> Глубокая рекурсия может привести к переполнению стека.
            <ul>
                <li><strong>Решение:</strong> Использование итеративной версии QuickSort или ограничение
                глубины рекурсии с переходом на сортировку вставками для небольших массивов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Неустойчивость:</span> QuickSort не сохраняет порядок равных элементов.
            <ul>
                <li><strong>Решение:</strong> Использование устойчивых алгоритмов (например, MergeSort)
                для задач, где важен порядок равных элементов.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример улучшенного выбора опорного элемента</h2>
    <ul>
        <li>
            <span class="highlight">Медиана трёх:</span>
            <pre><code>private static int choosePivot(int[] arr, int low, int high) {
    int mid = low + (high - low) / 2;
    if (arr[low] > arr[mid]) swap(arr, low, mid);
    if (arr[low] > arr[high]) swap(arr, low, high);
    if (arr[mid] > arr[high]) swap(arr, mid, high);
    return mid;
}</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> QuickSort — это мощный алгоритм сортировки, который
            работает эффективно в большинстве случаев. Однако важно учитывать его недостатки и применять
            улучшения, такие как выбор медианы трёх или переход на сортировку вставками для небольших
            массивов, чтобы избежать худших сценариев.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ada90e41-79de-453e-93b9-bb50241f315a', 'Как вычисляется номер бакета в HashMap из хэшкода объекта?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вычисление номера бакета в HashMap</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Вычисление номера бакета в HashMap</h1>
    <p>
        В Java <code>HashMap</code> использует хеш-таблицу для хранения элементов. Ключевым моментом является вычисление номера бакета (корзины), куда будет помещена пара ключ-значение. Этот процесс состоит из нескольких этапов преобразования хеш-кода ключа.
    </p>

    <h2>Процесс вычисления номера бакета</h2>
    <ol>
        <li>
            <span class="highlight">Получение хеш-кода ключа:</span>
            <ul>
                <li>Вызывается метод <code>hashCode()</code> объекта-ключа</li>
                <li>Если ключ null, хеш-код принимается равным 0</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Дополнительное хеширование:</span>
            <ul>
                <li>Хеш-код обрабатывается внутренним методом <code>hash()</code></li>
                <li>Это помогает избежать коллизий при плохих хеш-функциях</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Вычисление индекса бакета:</span>
            <ul>
                <li>Обработанный хеш сопоставляется с индексом массива бакетов</li>
                <li>Используется операция побитового И вместо деления по модулю</li>
            </ul>
        </li>
    </ol>

    <h2>Формула вычисления индекса</h2>
    <pre><code>
// В Java 8+ (упрощенная версия)
index = (n - 1) & hash
где:
n - текущий размер таблицы (всегда степень двойки)
hash = (h = key.hashCode()) ^ (h >>> 16)
    </code></pre>

    <h2>Пример вычисления</h2>
    <pre><code>
public class BucketCalculationExample {
    public static void main(String[] args) {
        String key = "example";
        int capacity = 16; // размер HashMap

        // 1. Получаем хеш-код ключа
        int hashCode = key.hashCode(); // например, 123456789

        // 2. Применяем дополнительное хеширование
        int hash = hashCode ^ (hashCode >>> 16); // перемешиваем биты

        // 3. Вычисляем индекс бакета
        int index = (capacity - 1) & hash;

        System.out.println("Индекс бакета: " + index);
    }
}
    </code></pre>

    <h2>Почему используется (n-1) & hash вместо hash % n?</h2>
    <ul>
        <li>
            <span class="highlight">Производительность:</span>
            <ul>
                <li>Побитовая операция И выполняется быстрее, чем деление по модулю</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ограничение размера:</span>
            <ul>
                <li>HashMap гарантирует, что размер таблицы всегда будет степенью двойки</li>
                <li>Это позволяет использовать (n-1) & hash вместо hash % n</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Качественная реализация метода <code>hashCode()</code> критически важна для эффективной работы HashMap. Плохие хеш-функции могут привести к большому количеству коллизий и ухудшению производительности.
        </p>
    </div>

    <h2>Оптимизации в разных версиях Java</h2>
    <table>
        <tr>
            <th>Версия Java</th>
            <th>Изменения в вычислении бакета</th>
        </tr>
        <tr>
            <td>Java 7</td>
            <td>Использовалось дополнительное хеширование через randomHashSeed</td>
        </tr>
        <tr>
            <td>Java 8</td>
            <td>Упрощено хеширование, добавлены деревья для длинных цепочек</td>
        </tr>
        <tr>
            <td>Java 11</td>
            <td>Дальнейшие оптимизации при resize таблицы</td>
        </tr>
    </table>

    <h2>Рекомендации по реализации hashCode()</h2>
    <ul>
        <li>
            <span class="highlight">Равномерное распределение:</span> Хеш-код должен равномерно распределять ключи по бакетам
        </li>
        <li>
            <span class="highlight">Консистентность:</span> Для одинаковых объектов должен возвращаться одинаковый хеш-код
        </li>
        <li>
            <span class="highlight">Производительность:</span> Метод hashCode() должен работать быстро
        </li>
        <li>
            <span class="highlight">Используйте стандартные утилиты:</span> Objects.hash() или Arrays.hashCode()
        </li>
    </ul>

    <h2>Пример плохого и хорошего hashCode()</h2>
    <pre><code>
// Плохая реализация - все объекты попадут в один бакет
@Override
public int hashCode() {
    return 42; // константа
}

// Хорошая реализация - использует поля объекта
@Override
public int hashCode() {
    return Objects.hash(field1, field2, field3);
}
    </code></pre>

    <h2>Как HashMap обрабатывает коллизии?</h2>
    <ul>
        <li>
            <span class="highlight">Java 7 и ранее:</span>
            <ul>
                <li>Используются связанные списки (цепочки)</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Java 8+:</span>
            <ul>
                <li>При длине цепочки > 8 преобразуется в сбалансированное дерево</li>
                <li>При уменьшении размера цепочки < 6 возвращается к списку</li>
            </ul>
        </li>
    </ul>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b9b2e98a-1e79-497b-a470-61bb2c05e3bf', 'Чем  LinkedList отличается от ArrayDeque?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сравнение LinkedList и ArrayDeque</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Сравнение LinkedList и ArrayDeque</h1>
    <p>
        <code>LinkedList</code> и <code>ArrayDeque</code> - это две реализации интерфейса <code>Deque</code> в Java, но с принципиально разной внутренней организацией и характеристиками производительности.
    </p>

    <h2>Основные различия</h2>
    <table>
        <tr>
            <th>Характеристика</th>
            <th>LinkedList</th>
            <th>ArrayDeque</th>
        </tr>
        <tr>
            <td>Внутренняя структура</td>
            <td>Двусвязный список</td>
            <td>Кольцевой массив</td>
        </tr>
        <tr>
            <td>Память</td>
            <td>Больше накладных расходов (хранение ссылок)</td>
            <td>Меньше накладных расходов</td>
        </tr>
        <tr>
            <td>Производительность</td>
            <td>O(1) для вставки/удаления, но с большей константой</td>
            <td>O(1) с меньшей константой</td>
        </tr>
        <tr>
            <td>Итерация</td>
            <td>Медленнее (переход по ссылкам)</td>
            <td>Быстрее (последовательный доступ)</td>
        </tr>
        <tr>
            <td>Null-элементы</td>
            <td>Разрешены</td>
            <td>Запрещены</td>
        </tr>
    </table>

    <h2>Когда использовать LinkedList</h2>
    <ul>
        <li>
            <span class="highlight">Частые вставки/удаления в середине списка:</span>
            <ul>
                <li>LinkedList выполняет эти операции за O(1), если известна позиция</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Необходимость хранить null-значения:</span>
            <ul>
                <li>ArrayDeque не поддерживает null</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Работа как списка и очереди одновременно:</span>
            <ul>
                <li>Реализует одновременно List и Deque</li>
            </ul>
        </li>
    </ul>

    <h2>Когда использовать ArrayDeque</h2>
    <ul>
        <li>
            <span class="highlight">Очереди/стеки:</span>
            <ul>
                <li>Более эффективен для операций add/remove с двух сторон</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Высокая производительность:</span>
            <ul>
                <li>Меньшие накладные расходы и лучшее использование кэша CPU</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Частые итерации:</span>
            <ul>
                <li>Быстрый последовательный доступ к элементам</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования LinkedList</h2>
    <pre><code>
import java.util.LinkedList;

public class LinkedListExample {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>();

        // Добавление элементов
        list.add("A");
        list.addFirst("B");
        list.addLast("C");

        // Удаление из середины
        list.remove(1);

        System.out.println(list); // [B, C]
    }
}
    </code></pre>

    <h2>Пример использования ArrayDeque</h2>
    <pre><code>
import java.util.ArrayDeque;

public class ArrayDequeExample {
    public static void main(String[] args) {
        ArrayDeque<String> deque = new ArrayDeque<>();

        // Добавление элементов
        deque.add("A");
        deque.addFirst("B");
        deque.addLast("C");

        // Удаление
        deque.removeFirst();

        System.out.println(deque); // [A, C]
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> В большинстве случаев, когда нужна очередь или стек, ArrayDeque предпочтительнее LinkedList из-за лучшей производительности.
        </p>
    </div>

    <h2>Сравнение производительности</h2>
    <table>
        <tr>
            <th>Операция</th>
            <th>LinkedList</th>
            <th>ArrayDeque</th>
        </tr>
        <tr>
            <td>addFirst()</td>
            <td>O(1)</td>
            <td>O(1)*</td>
        </tr>
        <tr>
            <td>addLast()</td>
            <td>O(1)</td>
            <td>O(1)*</td>
        </tr>
        <tr>
            <td>removeFirst()</td>
            <td>O(1)</td>
            <td>O(1)</td>
        </tr>
        <tr>
            <td>removeLast()</td>
            <td>O(1)</td>
            <td>O(1)</td>
        </tr>
        <tr>
            <td>get(index)</td>
            <td>O(n)</td>
            <td>Не поддерживается</td>
        </tr>
    </table>
    <p>* - амортизированная сложность (возможен resize массива)</p>

    <h2>Рекомендации по выбору</h2>
    <ul>
        <li>
            <span class="highlight">Используйте ArrayDeque:</span> Для стеков (вместо Stack), очередей (вместо LinkedList)
        </li>
        <li>
            <span class="highlight">Используйте LinkedList:</span> При частых вставках/удалениях в середине или необходимости List функциональности
        </li>
        <li>
            <span class="highlight">Тестируйте производительность:</span> В критических по производительности местах
        </li>
    </ul>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c7ca13aa-8b72-4deb-98e5-7c03fe163274', 'Что такое Stream?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stream в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Stream в Java</h1>
    <p>
        Интерфейс <code>java.util.Stream</code> представляет собой последовательность элементов, над которой
        можно выполнять различные операции. Стримы (streams) предоставляют удобный и мощный
        способ обработки данных, особенно при работе с коллекциями.
    </p>

    <h2>Особенности Stream</h2>
    <ul>
        <li>
            <span class="highlight">Промежуточные и конечные операции:</span> Операции над стримами делятся на
            промежуточные (intermediate) и конечные (terminal). Промежуточные операции возвращают
            тот же стрим, позволяя строить цепочки операций, а конечные операции возвращают
            результат определённого типа или завершают обработку.
        </li>
        <li>
            <span class="highlight">Ленивое выполнение:</span> Промежуточные операции выполняются лениво, то есть
            обработка данных начинается только после вызова конечной операции.
        </li>
        <li>
            <span class="highlight">Источники стримов:</span> Стримы создаются на основе источников, таких как
            коллекции (например, <code>List</code>, <code>Set</code>), массивы или генераторы. Однако ассоциативные
            массивы (например, <code>HashMap</code>) не поддерживаются напрямую.
        </li>
        <li>
            <span class="highlight">Параллельное выполнение:</span> Операции над стримами могут выполняться как
            последовательно, так и параллельно.
        </li>
        <li>
            <span class="highlight">Одноразовость:</span> Стримы нельзя использовать повторно. После вызова
            конечной операции стрим закрывается.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Создание и использование стрима:
        </p>
        <pre><code>import java.util.List;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        List<String> names = Arrays.asList("Иван", "Анна", "Петр", "Мария");
        names.stream() // создание стрима
             .filter(name -> name.startsWith("А")) // промежуточная операция
             .forEach(System.out::println); // конечная операция
    }
}</code></pre>
    </div>

    <h2>Типы стримов</h2>
    <p>
        Помимо универсальных объектных стримов (<code>Stream&lt;T&gt;</code>), существуют специализированные
        стримы для работы с примитивными типами данных:
    </p>
    <ul>
        <li>
            <span class="highlight">IntStream:</span> Для работы с типом <code>int</code>.
        </li>
        <li>
            <span class="highlight">LongStream:</span> Для работы с типом <code>long</code>.
        </li>
        <li>
            <span class="highlight">DoubleStream:</span> Для работы с типом <code>double</code>.
        </li>
    </ul>
    <p>
        Эти стримы поддерживают дополнительные операции, такие как <code>sum()</code>, <code>average()</code> и <code>mapToObj()</code>.
    </p>

    <h2>Пример использования IntStream</h2>
    <p>
        Пример работы с <code>IntStream</code>:
    </p>
    <pre><code>import java.util.stream.IntStream;

public class Main {
    public static void main(String[] args) {
        int sum = IntStream.range(1, 10) // создание стрима
                           .filter(n -> n % 2 == 0) // промежуточная операция
                           .sum(); // конечная операция
        System.out.println(sum); // 20
    }
}</code></pre>

    <h2>Преимущества Stream</h2>
    <ul>
        <li>
            <span class="highlight">Удобство:</span> Стримы предоставляют удобный API для обработки данных.
        </li>
        <li>
            <span class="highlight">Читаемость:</span> Код становится более выразительным и понятным.
        </li>
        <li>
            <span class="highlight">Параллелизм:</span> Стримы легко распараллеливаются, что позволяет
            ускорить обработку больших объёмов данных.
        </li>
    </ul>

    <h2>Итог</h2>
    <p>
        Стримы в Java — это мощный инструмент для обработки последовательностей данных.
        Они поддерживают как последовательные, так и параллельные операции, а также
        предоставляют удобный API для работы с коллекциями и примитивными типами данных.
        Использование стримов делает код более компактным и читаемым.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0ffab2ee-3368-46fd-8444-a804f12f3ad4', 'Что такое «ссылка на метод»?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ссылки на методы</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Ссылки на методы</h1>
    <p>
        <span class="highlight">Ссылка на метод</span> (method reference) — это механизм в Java, который позволяет передавать
        существующий метод в качестве аргумента, если этот метод уже выполняет необходимую
        задачу. Ссылки на методы делают код более компактным и читаемым, особенно при
        использовании функциональных интерфейсов.
    </p>

    <h2>Типы ссылок на методы</h2>
    <p>
        В Java существует несколько способов создания ссылок на методы:
    </p>
    <ul>
        <li>
            <span class="highlight">Ссылка на статический метод:</span> Используется синтаксис <code>имя_класса::имя_статического_метода</code>.
        </li>
        <li>
            <span class="highlight">Ссылка на метод экземпляра:</span> Используется синтаксис <code>объект_класса::имя_метода</code>.
        </li>
        <li>
            <span class="highlight">Ссылка на конструктор:</span> Используется синтаксис <code>название_класса::new</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Использование ссылки на метод <code>length</code> класса <code>String</code>:
        </p>
        <pre><code>private interface Measurable {
    public int length(String string);
}

public static void main(String[] args) {
    Measurable a = String::length; // ссылка на метод length
    System.out.println(a.length("abc")); // 3
}</code></pre>
    </div>

    <h2>Преимущества ссылок на методы</h2>
    <ul>
        <li>
            <span class="highlight">Компактность:</span> Ссылки на методы позволяют избежать написания лямбда-выражений,
            если метод уже существует.
        </li>
        <li>
            <span class="highlight">Читаемость:</span> Код становится более понятным и выразительным.
        </li>
        <li>
            <span class="highlight">Эффективность:</span> Ссылки на методы потенциально более эффективны, чем лямбда-выражения,
            так как предоставляют компилятору больше информации о типах.
        </li>
    </ul>

    <h2>Примеры использования</h2>

    <h3>Ссылка на статический метод</h3>
    <p>
        Пример использования ссылки на статический метод:
    </p>
    <pre><code>import java.util.function.Function;

public class Main {
    public static void main(String[] args) {
        Function<Integer, String> converter = String::valueOf; // ссылка на статический метод
        System.out.println(converter.apply(123)); // "123"
    }
}</code></pre>

    <h3>Ссылка на метод экземпляра</h3>
    <p>
        Пример использования ссылки на метод экземпляра:
    </p>
    <pre><code>import java.util.List;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        List<String> names = Arrays.asList("Иван", "Анна", "Петр");
        names.forEach(System.out::println); // ссылка на метод println
    }
}</code></pre>

    <h3>Ссылка на конструктор</h3>
    <p>
        Пример использования ссылки на конструктор:
    </p>
    <pre><code>import java.util.function.Supplier;

public class Main {
    public static void main(String[] args) {
        Supplier<String> supplier = String::new; // ссылка на конструктор
        String emptyString = supplier.get();
        System.out.println(emptyString.isEmpty()); // true
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Ссылки на методы — это мощный инструмент в Java, который позволяет передавать
        существующие методы в качестве аргументов. Они делают код более компактным,
        читаемым и эффективным. При возможности выбора между лямбда-выражением и
        ссылкой на метод следует отдавать предпочтение ссылке на метод.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('78f6b2ac-29f9-4d59-93ee-a2dde9735b6c', 'Как реализовать алгоритм поиска кратчайшего пути (например, Dijkstra) на графе?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Алгоритм Дейкстры для поиска кратчайшего пути</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Алгоритм Дейкстры для поиска кратчайшего пути</h1>
    <p>
        <strong>Алгоритм Дейкстры</strong> — это алгоритм поиска кратчайшего пути от одной вершины до всех
        остальных в графе с неотрицательными весами рёбер. Он работает за время O(V^2) для наивной реализации
        и O(E + V log V) при использовании приоритетной очереди.
    </p>

    <h2>Как работает алгоритм Дейкстры?</h2>
    <ul>
        <li>
            <span class="highlight">Инициализация:</span> Устанавливаем расстояние до начальной вершины
            равным 0, а до всех остальных — бесконечность.
        </li>
        <li>
            <span class="highlight">Основной цикл:</span> На каждом шаге выбираем вершину с наименьшим
            расстоянием, обновляем расстояния до её соседей и помечаем её как посещённую.
        </li>
        <li>
            <span class="highlight">Завершение:</span> Алгоритм завершается, когда все вершины посещены
            или когда расстояние до целевой вершины найдено.
        </li>
    </ul>

    <h2>Пример реализации алгоритма Дейкстры на Java</h2>
    <ul>
        <li>
            <span class="highlight">Код:</span>
            <pre><code>import java.util.*;

class Graph {
    private int V;
    private List&lt;List&lt;Node&gt;&gt; adj;

    public Graph(int V) {
        this.V = V;
        adj = new ArrayList&lt;&gt;(V);
        for (int i = 0; i < V; i++) {
            adj.add(new ArrayList&lt;&gt;());
        }
    }

    public void addEdge(int source, int destination, int weight) {
        adj.get(source).add(new Node(destination, weight));
    }

    public void dijkstra(int start) {
        int[] dist = new int[V];
        Arrays.fill(dist, Integer.MAX_VALUE);
        dist[start] = 0;

        PriorityQueue&lt;Node&gt; pq = new PriorityQueue&lt;&gt;(Comparator.comparingInt(node -> node.weight));
        pq.add(new Node(start, 0));

        while (!pq.isEmpty()) {
            Node current = pq.poll();
            for (Node neighbor : adj.get(current.vertex)) {
                int newDist = dist[current.vertex] + neighbor.weight;
                if (newDist < dist[neighbor.vertex]) {
                    dist[neighbor.vertex] = newDist;
                    pq.add(new Node(neighbor.vertex, newDist));
                }
            }
        }

        System.out.println("Кратчайшие расстояния от вершины " + start + ":");
        for (int i = 0; i < V; i++) {
            System.out.println(i + ": " + dist[i]);
        }
    }

    class Node {
        int vertex;
        int weight;

        Node(int vertex, int weight) {
            this.vertex = vertex;
            this.weight = weight;
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Graph graph = new Graph(6);
        graph.addEdge(0, 1, 4);
        graph.addEdge(0, 2, 3);
        graph.addEdge(1, 2, 1);
        graph.addEdge(1, 3, 2);
        graph.addEdge(2, 3, 4);
        graph.addEdge(3, 4, 2);
        graph.addEdge(4, 5, 6);
        graph.dijkstra(0);
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">Пример вывода:</span>
            <pre><code>Кратчайшие расстояния от вершины 0:
0: 0
1: 4
2: 3
3: 6
4: 8
5: 14</code></pre>
        </li>
    </ul>

    <h2>Преимущества алгоритма Дейкстры</h2>
    <ul>
        <li>
            <span class="highlight">Эффективность:</span> Алгоритм работает за время O(E + V log V) при
            использовании приоритетной очереди.
        </li>
        <li>
            <span class="highlight">Гарантированный результат:</span> Находит кратчайшие пути в графах
            с неотрицательными весами рёбер.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Может быть адаптирован для различных задач, таких
            как поиск кратчайшего пути до одной вершины или до всех вершин.
        </li>
    </ul>

    <h2>Ограничения алгоритма Дейкстры</h2>
    <ul>
        <li>
            <span class="highlight">Не работает с отрицательными весами:</span> Для графов с отрицательными
            весами рёбер следует использовать алгоритм Беллмана-Форда.
        </li>
        <li>
            <span class="highlight">Сложность реализации:</span> Требуется использование приоритетной очереди
            для достижения оптимальной производительности.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Алгоритм Дейкстры — это мощный инструмент для поиска
            кратчайших путей в графах с неотрицательными весами. Его эффективность и простота реализации
            делают его популярным выбором для решения задач, связанных с поиском путей.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('953e2666-5008-4362-b857-ca67fe5c61db', 'Чем метод execute отличается от submit(ExecutorService)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Методы execute и submit в ExecutorService</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Методы execute и submit в ExecutorService</h1>
    <p>
        Интерфейс <code>ExecutorService</code> в Java предоставляет два основных метода для выполнения задач:
        <code>execute</code> и <code>submit</code>. Эти методы имеют разные цели и возвращаемые значения, что
        делает их полезными в различных сценариях.
    </p>

    <h2>Метод execute</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> Метод <code>execute</code> принимает задачу
            типа <code>Runnable</code> и выполняет её асинхронно.
        </li>
        <li>
            <span class="highlight">Возвращаемое значение:</span> Метод не возвращает результат выполнения
            задачи (<code>void</code>).
        </li>
        <li>
            <span class="highlight">Использование:</span> Подходит для задач, которые не требуют возврата
            результата или обработки исключений.
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>ExecutorService executor = Executors.newSingleThreadExecutor();
executor.execute(() -> System.out.println("Задача выполнена"));</code></pre>
        </li>
    </ul>

    <h2>Метод submit</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> Метод <code>submit</code> принимает задачу
            типа <code>Runnable</code> или <code>Callable</code> и возвращает объект <code>Future</code>,
            который представляет результат выполнения задачи.
        </li>
        <li>
            <span class="highlight">Возвращаемое значение:</span> Метод возвращает <code>Future</code>,
            который можно использовать для получения результата задачи или проверки её статуса.
        </li>
        <li>
            <span class="highlight">Использование:</span> Подходит для задач, которые требуют возврата
            результата или обработки исключений.
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>ExecutorService executor = Executors.newSingleThreadExecutor();
Future&lt;Integer&gt; future = executor.submit(() -> {
    return 42;
});
System.out.println(future.get()); // 42</code></pre>
        </li>
    </ul>

    <h2>Основные различия между execute и submit</h2>
    <ul>
        <li>
            <span class="highlight">Возвращаемое значение:</span>
            <ul>
                <li><strong>execute:</strong> Не возвращает результат (<code>void</code>).</li>
                <li><strong>submit:</strong> Возвращает <code>Future</code>, который можно использовать
                для получения результата.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Тип задачи:</span>
            <ul>
                <li><strong>execute:</strong> Принимает только <code>Runnable</code>.</li>
                <li><strong>submit:</strong> Принимает как <code>Runnable</code>, так и <code>Callable</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Обработка исключений:</span>
            <ul>
                <li><strong>execute:</strong> Исключения в задаче могут привести к завершению потока.</li>
                <li><strong>submit:</strong> Исключения могут быть обработаны через <code>Future</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования submit для обработки исключений</h2>
    <ul>
        <li>
            <span class="highlight">Код:</span>
            <pre><code>ExecutorService executor = Executors.newSingleThreadExecutor();
Future&lt;Integer&gt; future = executor.submit(() -> {
    throw new RuntimeException("Ошибка в задаче");
});

try {
    future.get();
} catch (ExecutionException e) {
    System.out.println("Исключение в задаче: " + e.getCause().getMessage());
}</code></pre>
        </li>
        <li>
            <span class="highlight">Вывод:</span>
            <pre><code>Исключение в задаче: Ошибка в задаче</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Методы <code>execute</code> и <code>submit</code>
            предоставляют разные возможности для выполнения задач в <code>ExecutorService</code>.
            <code>execute</code> подходит для простых задач без возврата результата, а <code>submit</code>
            — для задач, требующих возврата результата или обработки исключений.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d867358c-1451-40d7-a735-3ae6c35454b6', 'Какие промежуточные методы работы со стримами вы знаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Промежуточные методы работы со стримами</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Промежуточные методы работы со стримами</h1>
    <p>
        Промежуточные методы (intermediate operations) в стримах (streams) используются для
        обработки данных на этапе конвейера. Они возвращают новый стрим, что позволяет
        объединять несколько операций в цепочку. Промежуточные методы выполняются
        лениво, то есть обработка данных начинается только при вызове конечной операции.
    </p>

    <h2>Основные промежуточные методы</h2>
    <ul>
        <li>
            <span class="highlight">filter():</span> Отфильтровывает элементы, возвращая только те, что соответствуют условию.
            <pre><code>Stream<String> filtered = stream.filter(s -> s.length() > 3);</code></pre>
        </li>
        <li>
            <span class="highlight">skip():</span> Пропускает указанное количество элементов в начале стрима.
            <pre><code>Stream<String> skipped = stream.skip(2);</code></pre>
        </li>
        <li>
            <span class="highlight">distinct():</span> Возвращает стрим без дубликатов (использует метод <code>equals()</code>).
            <pre><code>Stream<String> unique = stream.distinct();</code></pre>
        </li>
        <li>
            <span class="highlight">map():</span> Преобразует каждый элемент стрима с помощью заданной функции.
            <pre><code>Stream<Integer> lengths = stream.map(String::length);</code></pre>
        </li>
        <li>
            <span class="highlight">peek():</span> Возвращает тот же стрим, применяя к каждому элементу функцию (часто используется для отладки).
            <pre><code>Stream<String> peeked = stream.peek(System.out::println);</code></pre>
        </li>
        <li>
            <span class="highlight">limit():</span> Ограничивает стрим указанным количеством первых элементов.
            <pre><code>Stream<String> limited = stream.limit(3);</code></pre>
        </li>
        <li>
            <span class="highlight">sorted():</span> Сортирует элементы стрима (в натуральном порядке или с использованием компаратора).
            <pre><code>Stream<String> sorted = stream.sorted();</code></pre>
        </li>
        <li>
            <span class="highlight">mapToInt(), mapToDouble(), mapToLong():</span> Преобразуют элементы стрима в числовые примитивы.
            <pre><code>IntStream intStream = stream.mapToInt(String::length);</code></pre>
        </li>
        <li>
            <span class="highlight">flatMap(), flatMapToInt(), flatMapToDouble(), flatMapToLong():</span> Преобразуют каждый элемент в несколько элементов, объединяя результаты в один стрим.
            <pre><code>Stream<String> flatMapped = stream.flatMap(s -> Arrays.stream(s.split("")));</code></pre>
        </li>
    </ul>

    <h2>Дополнительные методы для числовых стримов</h2>
    <p>
        Для числовых стримов (<code>IntStream</code>, <code>DoubleStream</code>, <code>LongStream</code>) доступен метод:
    </p>
    <ul>
        <li>
            <span class="highlight">mapToObj():</span> Преобразует числовой стрим обратно в объектный.
            <pre><code>Stream<String> objectStream = intStream.mapToObj(Integer::toString);</code></pre>
        </li>
    </ul>

    <h2>Примеры использования</h2>

    <h3>Пример с filter() и map()</h3>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<Integer> lengths = Stream.of("Иван", "Анна", "Петр")
                                      .filter(s -> s.startsWith("А")) // фильтрация
                                      .map(String::length) // преобразование в длины строк
                                      .collect(Collectors.toList());
        System.out.println(lengths); // [4]
    }
}</code></pre>

    <h3>Пример с flatMap()</h3>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<String> letters = Stream.of("Иван", "Анна")
                                     .flatMap(s -> Arrays.stream(s.split(""))) // разбиение строк на буквы
                                     .collect(Collectors.toList());
        System.out.println(letters); // [И, в, а, н, А, н, н, а]
    }
}</code></pre>

    <h3>Пример с sorted()</h3>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<String> sortedNames = Stream.of("Иван", "Анна", "Петр")
                                         .sorted() // сортировка в натуральном порядке
                                         .collect(Collectors.toList());
        System.out.println(sortedNames); // [Анна, Иван, Петр]
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Промежуточные методы в стримах позволяют выполнять различные операции над
        данными, такие как фильтрация, преобразование, сортировка и ограничение. Они
        возвращают новый стрим, что позволяет строить цепочки операций. Для числовых
        стримов доступны дополнительные методы, такие как <code>mapToObj()</code>, которые
        упрощают работу с числовыми данными.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('50cd2ecc-05b8-4f8d-a4aa-2671dd78a4ae', 'Для чего в стримах предназначен метод sorted()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Метод sorted() в стримах</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Метод sorted() в стримах</h1>
    <p>
        Метод <code>sorted()</code> является одной из промежуточных операций в стримах (streams) и используется
        для сортировки элементов. Он возвращает новый стрим, содержащий элементы исходного
        стрима, отсортированные либо в натуральном порядке, либо с использованием заданного
        компаратора (<code>Comparator</code>).
    </p>

    <h2>Как работает метод sorted()?</h2>
    <p>
        Метод <code>sorted()</code> может быть использован в двух вариантах:
    </p>
    <ul>
        <li>
            <span class="highlight">Без параметров:</span> Сортировка элементов в натуральном порядке (например, для чисел
            — по возрастанию, для строк — в лексикографическом порядке).
        </li>
        <li>
            <span class="highlight">С компаратором:</span> Сортировка элементов с использованием заданного компаратора.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Сортировка строк в натуральном порядке:
        </p>
        <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<String> sortedNames = Stream.of("Иван", "Анна", "Петр", "Мария")
                                         .sorted() // сортировка в натуральном порядке
                                         .collect(Collectors.toList());
        System.out.println(sortedNames); // [Анна, Иван, Мария, Петр]
    }
}</code></pre>
    </div>

    <h2>Особенности метода sorted()</h2>
    <ul>
        <li>
            <span class="highlight">Промежуточная операция:</span> <code>sorted()</code> не выполняет никаких действий, пока не будет
            вызвана конечная операция (например, <code>collect()</code>, <code>forEach()</code>).
        </li>
        <li>
            <span class="highlight">Ленивое выполнение:</span> Сортировка происходит только при вызове конечной операции.
        </li>
        <li>
            <span class="highlight">Возвращает новый стрим:</span> Исходный стрим остаётся неизменным.
        </li>
    </ul>

    <h2>Пример с использованием компаратора</h2>
    <p>
        Пример сортировки строк по длине с использованием компаратора:
    </p>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<String> sortedNames = Stream.of("Иван", "Анна", "Петр", "Мария")
                                         .sorted((s1, s2) -> s1.length() - s2.length()) // сортировка по длине
                                         .collect(Collectors.toList());
        System.out.println(sortedNames); // [Анна, Иван, Петр, Мария]
    }
}</code></pre>

    <h2>Пример с числовыми данными</h2>
    <p>
        Пример сортировки чисел в порядке убывания:
    </p>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<Integer> sortedNumbers = Stream.of(5, 3, 9, 1, 7)
                                            .sorted((n1, n2) -> n2 - n1) // сортировка по убыванию
                                            .collect(Collectors.toList());
        System.out.println(sortedNumbers); // [9, 7, 5, 3, 1]
    }
}</code></pre>

    <h2>Пример с параллельным стримом</h2>
    <p>
        Метод <code>sorted()</code> также работает с параллельными стримами:
    </p>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<String> sortedNames = Stream.of("Иван", "Анна", "Петр", "Мария")
                                         .parallel() // параллельный стрим
                                         .sorted() // сортировка в натуральном порядке
                                         .collect(Collectors.toList());
        System.out.println(sortedNames); // [Анна, Иван, Мария, Петр]
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Метод <code>sorted()</code> используется для сортировки элементов стрима. Он может сортировать
        элементы в натуральном порядке или с использованием заданного компаратора. Этот метод
        возвращает новый стрим, оставляя исходный стрим неизменным. Он полезен для упорядочивания
        данных перед дальнейшей обработкой.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c3e56b06-6075-4d6e-94ac-ab8d740cadf2', 'Для чего нужен метод collect() в стримах?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Метод collect() в стримах</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Метод collect() в стримах</h1>
    <p>
        Метод <code>collect()</code> является одной из <span class="highlight">конечных операций</span> в стримах (streams) и используется
        для преобразования элементов стрима в коллекцию или другую структуру данных. Этот метод
        принимает на вход объект типа <code>Collector</code>, который определяет, как элементы стрима будут
        накапливаться и преобразовываться.
    </p>

    <h2>Как работает метод collect()?</h2>
    <p>
        Метод <code>collect()</code> принимает <code>Collector</code>, который состоит из четырёх этапов:
    </p>
    <ul>
        <li>
            <span class="highlight">supplier:</span> Инициализация аккумулятора (например, создание нового списка).
        </li>
        <li>
            <span class="highlight">accumulator:</span> Обработка каждого элемента стрима и добавление его в аккумулятор.
        </li>
        <li>
            <span class="highlight">combiner:</span> Соединение двух аккумуляторов при параллельном выполнении (используется
            в многопоточной обработке).
        </li>
        <li>
            <span class="highlight">finisher:</span> Необязательный этап, который выполняет финальную обработку аккумулятора
            перед возвратом результата.
        </li>
    </ul>

    <h2>Встроенные коллекторы</h2>
    <p>
        В Java 8 класс <code>Collectors</code> предоставляет множество готовых коллекторов для различных задач:
    </p>
    <ul>
        <li>
            <span class="highlight">toList(), toCollection(), toSet():</span> Преобразуют стрим в список, коллекцию или множество.
            <pre><code>List<String> list = stream.collect(Collectors.toList());</code></pre>
        </li>
        <li>
            <span class="highlight">toConcurrentMap(), toMap():</span> Преобразуют стрим в <code>Map</code>.
            <pre><code>Map<String, Integer> map = stream.collect(Collectors.toMap(s -> s, String::length));</code></pre>
        </li>
        <li>
            <span class="highlight">averagingInt(), averagingDouble(), averagingLong():</span> Возвращают среднее значение.
            <pre><code>Double average = stream.collect(Collectors.averagingInt(String::length));</code></pre>
        </li>
        <li>
            <span class="highlight">summingInt(), summingDouble(), summingLong():</span> Возвращают сумму.
            <pre><code>Integer sum = stream.collect(Collectors.summingInt(String::length));</code></pre>
        </li>
        <li>
            <span class="highlight">summarizingInt(), summarizingDouble(), summarizingLong():</span> Возвращают
            <code>SummaryStatistics</code> с различными агрегатными значениями (среднее, сумма, минимум, максимум и т. д.).
            <pre><code>IntSummaryStatistics stats = stream.collect(Collectors.summarizingInt(String::length));</code></pre>
        </li>
        <li>
            <span class="highlight">partitioningBy():</span> Разделяет коллекцию на две части по условию и возвращает
            <code>Map&lt;Boolean, List&gt;</code>.
            <pre><code>Map<Boolean, List<String>> partitioned = stream.collect(Collectors.partitioningBy(s -> s.length() > 3));</code></pre>
        </li>
        <li>
            <span class="highlight">groupingBy():</span> Разделяет коллекцию на несколько частей и возвращает <code>Map&lt;N, List&lt;T&gt;&gt;</code>.
            <pre><code>Map<Integer, List<String>> grouped = stream.collect(Collectors.groupingBy(String::length));</code></pre>
        </li>
        <li>
            <span class="highlight">mapping():</span> Используется для дополнительных преобразований значений в сложных коллекторах.
            <pre><code>List<Integer> lengths = stream.collect(Collectors.mapping(String::length, Collectors.toList()));</code></pre>
        </li>
    </ul>

    <h2>Создание собственного коллектора</h2>
    <p>
        Если встроенные коллекторы не подходят, можно создать собственный коллектор с помощью
        метода <code>Collector.of()</code>:
    </p>
    <pre><code>Collector<String, List<String>, List<String>> toList = Collector.of(
    ArrayList::new, // supplier
    List::add, // accumulator
    (l1, l2) -> { l1.addAll(l2); return l1; } // combiner
);</code></pre>

    <h2>Пример использования collect()</h2>
    <p>
        Пример преобразования стрима строк в список:
    </p>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Stream<String> stream = Stream.of("Иван", "Анна", "Петр");
        List<String> list = stream.collect(Collectors.toList());
        System.out.println(list); // [Иван, Анна, Петр]
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Метод <code>collect()</code> является мощным инструментом для преобразования стримов в коллекции
        или другие структуры данных. Он поддерживает как встроенные коллекторы, так и возможность
        создания собственных, что делает его гибким и удобным для решения различных задач.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('11a006c1-9ed7-48fe-90cc-806eec9e7a4e', 'Какова цель метода filter() в стримах?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Метод filter() в стримах</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Метод filter() в стримах</h1>
    <p>
        Метод <code>filter()</code> является одной из промежуточных операций в стримах (streams) и используется
        для фильтрации элементов. Он принимает на вход <span class="highlight">предикат</span> (условие) и возвращает
        новый стрим, содержащий только те элементы, которые соответствуют этому условию.
    </p>

    <h2>Как работает метод filter()?</h2>
    <p>
        Метод <code>filter()</code> принимает предикат (функцию, возвращающую <code>boolean</code>) и применяет его к каждому
        элементу стрима. Если предикат возвращает <code>true</code>, элемент включается в результирующий стрим.
        Если <code>false</code>, элемент пропускается.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Фильтрация строк, начинающихся с определённой буквы:
        </p>
        <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<String> filteredNames = Stream.of("Иван", "Анна", "Петр", "Мария")
                                           .filter(name -> name.startsWith("А")) // фильтрация
                                           .collect(Collectors.toList());
        System.out.println(filteredNames); // [Анна]
    }
}</code></pre>
    </div>

    <h2>Особенности метода filter()</h2>
    <ul>
        <li>
            <span class="highlight">Промежуточная операция:</span> <code>filter()</code> не выполняет никаких действий, пока не будет
            вызвана конечная операция (например, <code>collect()</code>, <code>forEach()</code>).
        </li>
        <li>
            <span class="highlight">Ленивое выполнение:</span> Фильтрация происходит только при вызове конечной операции.
        </li>
        <li>
            <span class="highlight">Возвращает новый стрим:</span> Исходный стрим остаётся неизменным.
        </li>
    </ul>

    <h2>Пример с числовыми данными</h2>
    <p>
        Пример фильтрации чисел, больших определённого значения:
    </p>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<Integer> numbers = Stream.of(1, 2, 3, 4, 5, 6)
                                      .filter(n -> n > 3) // фильтрация чисел больше 3
                                      .collect(Collectors.toList());
        System.out.println(numbers); // [4, 5, 6]
    }
}</code></pre>

    <h2>Пример с параллельным стримом</h2>
    <p>
        Метод <code>filter()</code> также работает с параллельными стримами:
    </p>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<String> filteredNames = Stream.of("Иван", "Анна", "Петр", "Мария")
                                           .parallel() // параллельный стрим
                                           .filter(name -> name.length() > 4) // фильтрация по длине
                                           .collect(Collectors.toList());
        System.out.println(filteredNames); // [Иван, Петр, Мария]
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Метод <code>filter()</code> используется для фильтрации элементов стрима на основе заданного условия.
        Он является промежуточной операцией и возвращает новый стрим, содержащий только те элементы,
        которые соответствуют предикату. Этот метод полезен для выборки данных из стрима и часто
        используется в комбинации с другими операциями, такими как <code>map()</code>, <code>collect()</code> и <code>forEach()</code>.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fecb5929-8c61-40f1-b0b9-b562f4501dda', 'Расскажите о параллельной обработке в Java 8', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Параллельная обработка в Java 8</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Параллельная обработка в Java 8</h1>
    <p>
        В Java 8 появилась возможность выполнять операции над данными в параллельных стримах,
        что позволяет задействовать несколько ядер процессора для ускорения обработки.
        Параллельные стримы используют общий пул потоков <code>ForkJoinPool</code>, доступный через
        статический метод <code>ForkJoinPool.commonPool()</code>.
    </p>

    <h2>Последовательные и параллельные стримы</h2>
    <ul>
        <li>
            <span class="highlight">Последовательные стримы:</span> Операции выполняются в одном потоке.
        </li>
        <li>
            <span class="highlight">Параллельные стримы:</span> Операции выполняются в нескольких потоках, что
            позволяет ускорить обработку данных на многоядерных процессорах.
        </li>
    </ul>

    <h2>Создание параллельных стримов</h2>
    <p>
        Параллельные стримы можно создать двумя способами:
    </p>
    <ul>
        <li>
            <span class="highlight">Из коллекции:</span> Используя метод <code>parallelStream()</code>.
            <pre><code>List<String> list = Arrays.asList("a", "b", "c");
list.parallelStream().forEach(System.out::println);</code></pre>
        </li>
        <li>
            <span class="highlight">Из последовательного стрима:</span> Используя метод <code>parallel()</code>.
            <pre><code>Stream.of("a", "b", "c").parallel().forEach(System.out::println);</code></pre>
        </li>
    </ul>

    <h2>Методы parallel() и sequential()</h2>
    <p>
        Методы <code>parallel()</code> и <code>sequential()</code> позволяют управлять режимом выполнения операций:
    </p>
    <ul>
        <li>
            <span class="highlight">parallel():</span> Преобразует стрим в параллельный.
        </li>
        <li>
            <span class="highlight">sequential():</span> Преобразует стрим в последовательный.
        </li>
    </ul>
    <p>
        Пример:
    </p>
    <pre><code>collection.stream()
          .peek(...) // операция последовательна
          .parallel()
          .map(...) // операция может выполняться параллельно
          .sequential()
          .reduce(...) // операция снова последовательна</code></pre>

    <h2>Порядок элементов в параллельных стримах</h2>
    <p>
        По умолчанию параллельные стримы сохраняют порядок элементов. Однако метод
        <code>forEach()</code> может выводить элементы в произвольном порядке. Для сохранения порядка
        следует использовать метод <code>forEachOrdered()</code>.
    </p>
    <pre><code>list.parallelStream().forEachOrdered(System.out::println);</code></pre>

    <h2>Критерии производительности</h2>
    <p>
        На производительность параллельных стримов влияют следующие факторы:
    </p>
    <ul>
        <li>
            <span class="highlight">Размер данных:</span> Чем больше данных, тем выше накладные расходы на их
            разделение и объединение.
        </li>
        <li>
            <span class="highlight">Количество ядер процессора:</span> Чем больше ядер, тем выше потенциальное
            ускорение.
        </li>
        <li>
            <span class="highlight">Структура данных:</span> Данные из <code>ArrayList</code> обрабатываются быстрее, чем
            из <code>LinkedList</code>, так как <code>ArrayList</code> проще разделить на части.
        </li>
        <li>
            <span class="highlight">Тип данных:</span> Операции над примитивными типами выполняются быстрее, чем
            над объектами.
        </li>
    </ul>

    <h2>Рекомендации по использованию</h2>
    <ul>
        <li>
            <span class="highlight">Короткие операции:</span> Параллельные стримы лучше использовать для операций,
            которые выполняются за миллисекунды. Долгие операции (например, сетевые запросы) могут
            заблокировать потоки в пуле, что негативно скажется на производительности.
        </li>
        <li>
            <span class="highlight">Отключение порядка:</span> Если порядок элементов не важен, можно отключить его
            сохранение с помощью метода <code>unordered()</code>, что может повысить производительность.
            <pre><code>collection.parallelStream()
          .sorted()
          .unordered()
          .collect(Collectors.toList());</code></pre>
        </li>
    </ul>

    <h2>Итог</h2>
    <p>
        Параллельные стримы в Java 8 позволяют ускорить обработку данных за счёт использования
        нескольких ядер процессора. Однако их использование требует учёта таких факторов, как
        размер данных, количество ядер и структура данных. Для достижения максимальной
        производительности важно правильно выбирать операции и учитывать особенности
        параллельной обработки.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9ef13326-e951-4420-9149-5a06cb86be29', ' Какие конечные методы работы со стримами вы знаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Конечные методы работы со стримами</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Конечные методы работы со стримами</h1>
    <p>
        Конечные методы (terminal operations) в стримах (streams) используются для завершения
        обработки данных и получения результата. Они выполняют финальные действия над
        элементами стрима и возвращают результат, который может быть коллекцией, числом,
        булевым значением или другим объектом.
    </p>

    <h2>Основные конечные методы</h2>
    <ul>
        <li>
            <span class="highlight">findFirst():</span> Возвращает первый элемент стрима.
            <pre><code>Optional<String> first = stream.findFirst();</code></pre>
        </li>
        <li>
            <span class="highlight">findAny():</span> Возвращает любой подходящий элемент стрима (полезно в параллельных стримах).
            <pre><code>Optional<String> any = stream.findAny();</code></pre>
        </li>
        <li>
            <span class="highlight">collect():</span> Преобразует элементы стрима в коллекцию или другую структуру данных.
            <pre><code>List<String> list = stream.collect(Collectors.toList());</code></pre>
        </li>
        <li>
            <span class="highlight">count():</span> Возвращает количество элементов в стриме.
            <pre><code>long count = stream.count();</code></pre>
        </li>
        <li>
            <span class="highlight">anyMatch():</span> Возвращает <code>true</code>, если хотя бы один элемент удовлетворяет условию.
            <pre><code>boolean hasMatch = stream.anyMatch(s -> s.startsWith("A"));</code></pre>
        </li>
        <li>
            <span class="highlight">noneMatch():</span> Возвращает <code>true</code>, если ни один элемент не удовлетворяет условию.
            <pre><code>boolean noMatch = stream.noneMatch(s -> s.startsWith("Z"));</code></pre>
        </li>
        <li>
            <span class="highlight">allMatch():</span> Возвращает <code>true</code>, если все элементы удовлетворяют условию.
            <pre><code>boolean allMatch = stream.allMatch(s -> s.length() > 3);</code></pre>
        </li>
        <li>
            <span class="highlight">min():</span> Возвращает минимальный элемент с использованием компаратора.
            <pre><code>Optional<String> min = stream.min(Comparator.naturalOrder());</code></pre>
        </li>
        <li>
            <span class="highlight">max():</span> Возвращает максимальный элемент с использованием компаратора.
            <pre><code>Optional<String> max = stream.max(Comparator.naturalOrder());</code></pre>
        </li>
        <li>
            <span class="highlight">forEach():</span> Применяет функцию к каждому элементу стрима (порядок не гарантируется в параллельных стримах).
            <pre><code>stream.forEach(System.out::println);</code></pre>
        </li>
        <li>
            <span class="highlight">forEachOrdered():</span> Применяет функцию к каждому элементу с сохранением порядка.
            <pre><code>stream.forEachOrdered(System.out::println);</code></pre>
        </li>
        <li>
            <span class="highlight">toArray():</span> Возвращает массив элементов стрима.
            <pre><code>String[] array = stream.toArray(String[]::new);</code></pre>
        </li>
        <li>
            <span class="highlight">reduce():</span> Выполняет агрегатные функции и возвращает один результат (например, сумму или конкатенацию).
            <pre><code>Optional<String> result = stream.reduce((s1, s2) -> s1 + s2);</code></pre>
        </li>
    </ul>

    <h2>Конечные методы для числовых стримов</h2>
    <p>
        Для числовых стримов (<code>IntStream</code>, <code>DoubleStream</code>, <code>LongStream</code>) доступны дополнительные методы:
    </p>
    <ul>
        <li>
            <span class="highlight">sum():</span> Возвращает сумму всех элементов.
            <pre><code>int sum = intStream.sum();</code></pre>
        </li>
        <li>
            <span class="highlight">average():</span> Возвращает среднее арифметическое всех элементов.
            <pre><code>OptionalDouble average = intStream.average();</code></pre>
        </li>
    </ul>

    <h2>Примеры использования</h2>

    <h3>Пример с findFirst() и findAny()</h3>
    <pre><code>import java.util.Optional;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Stream<String> stream = Stream.of("Иван", "Анна", "Петр");
        Optional<String> first = stream.findFirst();
        System.out.println(first.get()); // Иван
    }
}</code></pre>

    <h3>Пример с collect()</h3>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<String> list = Stream.of("Иван", "Анна", "Петр")
                                  .collect(Collectors.toList());
        System.out.println(list); // [Иван, Анна, Петр]
    }
}</code></pre>

    <h3>Пример с reduce()</h3>
    <pre><code>import java.util.Optional;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Optional<String> result = Stream.of("Иван", "Анна", "Петр")
                                        .reduce((s1, s2) -> s1 + ", " + s2);
        System.out.println(result.get()); // Иван, Анна, Петр
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Конечные методы в стримах позволяют завершить обработку данных и получить результат.
        Они включают в себя операции для поиска элементов, агрегации данных, преобразования
        в коллекции и другие структуры. Для числовых стримов доступны дополнительные методы,
        такие как <code>sum()</code> и <code>average()</code>, которые упрощают работу с числовыми данными.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5b663bb4-595d-40b5-9257-5e7ae9906fa1', 'Как вывести на экран 10 случайных чисел в порядке возрастания?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вывод 10 случайных чисел в порядке возрастания</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Вывод 10 случайных чисел в порядке возрастания</h1>
    <p>
        В Java можно легко вывести на экран 10 случайных чисел в порядке возрастания, используя
        стримы и методы <code>ints()</code>, <code>limit()</code>, <code>sorted()</code> и <code>forEach()</code>.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код генерирует 10 случайных чисел, сортирует их по возрастанию и выводит
        на экран:
    </p>
    <pre><code>import java.util.Random;

public class Main {
    public static void main(String[] args) {
        (new Random())
            .ints() // создание стрима случайных чисел
            .limit(10) // ограничение стрима 10 числами
            .sorted() // сортировка чисел по возрастанию
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
            <span class="highlight">sorted():</span> Сортирует числа в порядке возрастания.
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
    <pre><code>-123456789
-98765432
-45678912
12345678
45678912
98765432
123456789
456789123
987654321
1234567890</code></pre>

    <h2>Итог</h2>
    <p>
        Использование стримов и методов <code>sorted()</code> и <code>forEach()</code> позволяет легко выводить
        случайные числа в порядке возрастания. Этот подход демонстрирует удобство и мощь
        работы со стримами в Java для обработки данных.
    </p>
</body>
</html>', 'STREAM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cb7c9c04-374c-48a5-a2dc-bd436e91cc75', 'Как найти максимальное число в наборе?*(STREAM)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Поиск максимального числа в наборе</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Поиск максимального числа в наборе</h1>
    <p>
        В Java можно легко найти максимальное число в наборе, используя стримы и метод
        <code>max()</code>. Этот метод возвращает максимальный элемент стрима, если он существует.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код находит максимальное число в наборе:
    </p>
    <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        int maxNumber = Stream.of(5, 3, 4, 55, 2) // создание стрима из чисел
                              .mapToInt(a -> a) // преобразование в IntStream
                              .max() // поиск максимального числа
                              .getAsInt(); // получение результата
        System.out.println(maxNumber); // вывод максимального числа
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
            <span class="highlight">max():</span> Возвращает <code>OptionalInt</code>, содержащий максимальное число.
        </li>
        <li>
            <span class="highlight">getAsInt():</span> Извлекает значение из <code>OptionalInt</code>.
        </li>
        <li>
            <span class="highlight">System.out.println(maxNumber):</span> Выводит максимальное число на экран.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>55</code></pre>

    <h2>Итог</h2>
    <p>
        Использование стримов и метода <code>max()</code> позволяет легко находить максимальное
        число в наборе. Этот подход демонстрирует удобство и эффективность работы со
        стримами в Java для обработки данных.
    </p>
</body>
</html>', 'STREAM', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('207c841b-e757-4027-8741-cb90294eb983', 'Как работает алгоритм сжатия данных (например, Huffman Coding)? Как его можно реализовать на Java?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Алгоритм сжатия данных (Huffman Coding)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Алгоритм сжатия данных (Huffman Coding)</h1>
    <p>
        <strong>Алгоритм Хаффмана</strong> — это алгоритм сжатия данных, который использует переменную длину
        кода для символов в зависимости от их частоты встречаемости. Часто встречающиеся символы кодируются
        более короткими кодами, а редко встречающиеся — более длинными. Это позволяет эффективно сжимать данные.
    </p>

    <h2>Как работает алгоритм Хаффмана?</h2>
    <ul>
        <li>
            <span class="highlight">Анализ частот:</span> Алгоритм анализирует частоту встречаемости каждого
            символа в данных.
        </li>
        <li>
            <span class="highlight">Построение дерева Хаффмана:</span> На основе частот символов строится
            бинарное дерево, где листья представляют символы, а внутренние узлы — суммы частот своих потомков.
        </li>
        <li>
            <span class="highlight">Генерация кодов:</span> Для каждого символа генерируется уникальный
            двоичный код на основе пути от корня дерева до соответствующего листа.
        </li>
        <li>
            <span class="highlight">Кодирование данных:</span> Исходные данные заменяются на соответствующие
            коды Хаффмана.
        </li>
    </ul>

    <h2>Пример реализации алгоритма Хаффмана на Java</h2>
    <ul>
        <li>
            <span class="highlight">Код:</span>
            <pre><code>import java.util.*;

class HuffmanNode implements Comparable&lt;HuffmanNode&gt; {
    char character;
    int frequency;
    HuffmanNode left, right;

    HuffmanNode(char character, int frequency) {
        this.character = character;
        this.frequency = frequency;
    }

    HuffmanNode(int frequency, HuffmanNode left, HuffmanNode right) {
        this.frequency = frequency;
        this.left = left;
        this.right = right;
    }

    @Override
    public int compareTo(HuffmanNode other) {
        return this.frequency - other.frequency;
    }
}

public class HuffmanCoding {
    public static void main(String[] args) {
        String text = "hello world";
        Map&lt;Character, Integer&gt; frequencyMap = buildFrequencyMap(text);
        HuffmanNode root = buildHuffmanTree(frequencyMap);
        Map&lt;Character, String&gt; huffmanCodes = generateCodes(root);
        String encodedText = encodeText(text, huffmanCodes);

        System.out.println("Закодированный текст: " + encodedText);
    }

    private static Map&lt;Character, Integer&gt; buildFrequencyMap(String text) {
        Map&lt;Character, Integer&gt; frequencyMap = new HashMap&lt;&gt;();
        for (char c : text.toCharArray()) {
            frequencyMap.put(c, frequencyMap.getOrDefault(c, 0) + 1);
        }
        return frequencyMap;
    }

    private static HuffmanNode buildHuffmanTree(Map&lt;Character, Integer&gt; frequencyMap) {
        PriorityQueue&lt;HuffmanNode&gt; pq = new PriorityQueue&lt;&gt;();
        for (Map.Entry&lt;Character, Integer&gt; entry : frequencyMap.entrySet()) {
            pq.add(new HuffmanNode(entry.getKey(), entry.getValue()));
        }

        while (pq.size() > 1) {
            HuffmanNode left = pq.poll();
            HuffmanNode right = pq.poll();
            HuffmanNode parent = new HuffmanNode(left.frequency + right.frequency, left, right);
            pq.add(parent);
        }

        return pq.poll();
    }

    private static Map&lt;Character, String&gt; generateCodes(HuffmanNode root) {
        Map&lt;Character, String&gt; huffmanCodes = new HashMap&lt;&gt;();
        generateCodesRecursive(root, "", huffmanCodes);
        return huffmanCodes;
    }

    private static void generateCodesRecursive(HuffmanNode node, String code, Map&lt;Character, String&gt; huffmanCodes) {
        if (node == null) return;
        if (node.left == null && node.right == null) {
            huffmanCodes.put(node.character, code);
        }
        generateCodesRecursive(node.left, code + "0", huffmanCodes);
        generateCodesRecursive(node.right, code + "1", huffmanCodes);
    }

    private static String encodeText(String text, Map&lt;Character, String&gt; huffmanCodes) {
        StringBuilder encodedText = new StringBuilder();
        for (char c : text.toCharArray()) {
            encodedText.append(huffmanCodes.get(c));
        }
        return encodedText.toString();
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">Пример вывода:</span>
            <pre><code>Закодированный текст: 101010001011111111011011000111111110101010</code></pre>
        </li>
    </ul>

    <h2>Преимущества алгоритма Хаффмана</h2>
    <ul>
        <li>
            <span class="highlight">Эффективность:</span> Алгоритм обеспечивает оптимальное сжатие для
            данных с неравномерным распределением частот символов.
        </li>
        <li>
            <span class="highlight">Простота реализации:</span> Алгоритм легко реализуется с использованием
            приоритетной очереди и рекурсии.
        </li>
        <li>
            <span class="highlight">Универсальность:</span> Может использоваться для сжатия различных
            типов данных, таких как тексты, изображения и аудио.
        </li>
    </ul>

    <h2>Ограничения алгоритма Хаффмана</h2>
    <ul>
        <li>
            <span class="highlight">Неэффективность для равномерных данных:</span> Если все символы
            встречаются с одинаковой частотой, сжатие будет минимальным.
        </li>
        <li>
            <span class="highlight">Необходимость передачи кодов:</span> Для декодирования данных
            необходимо передавать таблицу кодов Хаффмана, что увеличивает объём данных.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Алгоритм Хаффмана — это мощный инструмент для сжатия
            данных, который обеспечивает оптимальное кодирование символов на основе их частот. Его
            простота и эффективность делают его популярным выбором для задач сжатия данных.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('54271a52-d5dd-4103-b4d7-5b15145761ea', 'Как реализовать структуру данных "Trie" (префиксное дерево)? В каких сценариях она полезна?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Структура данных Trie (префиксное дерево)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Структура данных Trie (префиксное дерево)</h1>
    <p>
        <strong>Trie</strong> (префиксное дерево) — это древовидная структура данных, которая используется
        для эффективного хранения и поиска строк. Она особенно полезна для задач, связанных с поиском
        по префиксам, таких как автодополнение или проверка орфографии.
    </p>

    <h2>Как работает Trie?</h2>
    <ul>
        <li>
            <span class="highlight">Узлы:</span> Каждый узел в Trie представляет собой символ строки.
            Узлы связаны между собой, образуя пути, которые соответствуют строкам.
        </li>
        <li>
            <span class="highlight">Корень:</span> Корневой узел представляет пустую строку.
        </li>
        <li>
            <span class="highlight">Листья:</span> Листья обозначают конец строки.
        </li>
        <li>
            <span class="highlight">Поиск:</span> Поиск строки осуществляется путём обхода дерева
            от корня до листа.
        </li>
    </ul>

    <h2>Пример реализации Trie на Java</h2>
    <ul>
        <li>
            <span class="highlight">Код:</span>
            <pre><code>class TrieNode {
    Map&lt;Character, TrieNode&gt; children = new HashMap&lt;&gt;();
    boolean isEndOfWord;
}

public class Trie {
    private TrieNode root = new TrieNode();

    public void insert(String word) {
        TrieNode current = root;
        for (char c : word.toCharArray()) {
            current = current.children.computeIfAbsent(c, k -> new TrieNode());
        }
        current.isEndOfWord = true;
    }

    public boolean search(String word) {
        TrieNode current = root;
        for (char c : word.toCharArray()) {
            current = current.children.get(c);
            if (current == null) return false;
        }
        return current.isEndOfWord;
    }

    public boolean startsWith(String prefix) {
        TrieNode current = root;
        for (char c : prefix.toCharArray()) {
            current = current.children.get(c);
            if (current == null) return false;
        }
        return true;
    }
}

public class Main {
    public static void main(String[] args) {
        Trie trie = new Trie();
        trie.insert("apple");
        trie.insert("app");
        System.out.println(trie.search("apple")); // true
        System.out.println(trie.search("app"));   // true
        System.out.println(trie.search("ap"));    // false
        System.out.println(trie.startsWith("ap")); // true
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">Пример вывода:</span>
            <pre><code>true
true
false
true</code></pre>
        </li>
    </ul>

    <h2>Сценарии использования Trie</h2>
    <ul>
        <li>
            <span class="highlight">Автодополнение:</span> Trie позволяет быстро находить все строки,
            начинающиеся с определённого префикса, что полезно для реализации автодополнения в поисковых
            системах или текстовых редакторах.
        </li>
        <li>
            <span class="highlight">Проверка орфографии:</span> Trie может использоваться для проверки
            наличия слова в словаре.
        </li>
        <li>
            <span class="highlight">Хранение и поиск строк:</span> Trie эффективен для хранения и поиска
            большого количества строк, особенно если они имеют общие префиксы.
        </li>
    </ul>

    <h2>Преимущества Trie</h2>
    <ul>
        <li>
            <span class="highlight">Эффективность поиска:</span> Поиск строки в Trie выполняется за время
            O(m), где m — длина строки.
        </li>
        <li>
            <span class="highlight">Экономия памяти:</span> Trie эффективно использует память, так как
            общие префиксы строк хранятся только один раз.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Trie поддерживает операции вставки, поиска и поиска
            по префиксу.
        </li>
    </ul>

    <h2>Ограничения Trie</h2>
    <ul>
        <li>
            <span class="highlight">Использование памяти:</span> Trie может потреблять много памяти,
            особенно если строки имеют мало общих префиксов.
        </li>
        <li>
            <span class="highlight">Сложность реализации:</span> Реализация Trie требует больше усилий
            по сравнению с другими структурами данных, такими как хэш-таблицы.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Trie — это мощная структура данных для работы со
            строками, особенно в задачах, связанных с поиском по префиксам. Её эффективность и гибкость
            делают её популярным выбором для реализации автодополнения, проверки орфографии и других
            задач, связанных с обработкой текста.
        </p>
    </div>
</body>
</html>', 'ALGORITHMS', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f06031e5-c21e-4456-a77e-e32be0723fb4', 'Как работает механизм репликации в PostgreSQL? Какие режимы репликации поддерживаются?', e'<!DOCTYPE html><html lang="ru"> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <title>Механизм репликации в PostgreSQL</title> <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style> </head> <body> <h1>Механизм репликации в PostgreSQL</h1> <p> Репликация в PostgreSQL — это процесс копирования данных с одного сервера (основного) на другой (реплику) для обеспечения отказоустойчивости, балансировки нагрузки и повышения доступности данных. </p>
<h2>Как работает механизм репликации?</h2>
<ul>
    <li>
        <span class="highlight">Физическая репликация:</span> В этом режиме данные копируются на уровне файлов.
        Основной сервер записывает изменения в WAL (Write-Ahead Log), которые затем передаются на реплику
        и применяются к её данным. Это обеспечивает точную копию данных основного сервера.
    </li>
    <li>
        <span class="highlight">Логическая репликация:</span> В этом режиме изменения данных передаются на уровне
        SQL-операций. Реплика получает логические изменения (например, INSERT, UPDATE, DELETE) и применяет
        их к своим данным. Это позволяет реплицировать только определённые таблицы или части данных.
    </li>
</ul>

<div class="note">
    <p>
        <span class="highlight">Важно:</span> Физическая репликация обеспечивает полную синхронизацию данных,
        тогда как логическая репликация позволяет гибко управлять тем, какие данные и как реплицировать.
    </p>
</div>

<h2>Режимы репликации в PostgreSQL</h2>
<ul>
    <li>
        <span class="highlight">Синхронная репликация:</span> Основной сервер ждёт подтверждения от реплики, что
        изменения успешно применены, прежде чем завершить транзакцию. Это обеспечивает максимальную
        надёжность, но может замедлить выполнение операций.
    </li>
    <li>
        <span class="highlight">Асинхронная репликация:</span> Основной сервер не ждёт подтверждения от реплики.
        Это повышает производительность, но может привести к потере данных в случае сбоя.
    </li>
    <li>
        <span class="highlight">Каскадная репликация:</span> Реплика может сама выступать в роли основного сервера
        для других реплик. Это позволяет создавать сложные иерархии репликации.
    </li>
</ul>

<div class="note">
    <p>
        <span class="highlight">Примечание:</span> Выбор режима репликации зависит от требований к производительности
        и надёжности системы. Синхронная репликация подходит для критически важных данных, а асинхронная — для
        сценариев, где допустима небольшая задержка в синхронизации.
    </p>
</div>
</body> </html>', 'DATA_BASE', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('18918d4e-0c4d-4671-ae9e-ab83c28f4765', 'Расскажи подробно про кластерные индексы', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Кластерные индексы в базах данных</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Кластерные индексы в базах данных</h1>
    <p>
        Кластерный индекс — это особый тип индекса в реляционных базах данных, который определяет физический порядок хранения данных в таблице. В отличие от обычных индексов, которые хранят отдельную структуру, кластерный индекс непосредственно организует данные в таблице согласно своему ключу.
    </p>

    <h2>Основные характеристики кластерных индексов</h2>
    <ul>
        <li>
            <span class="highlight">Физическое упорядочивание данных:</span>
            <ul>
                <li>Данные в таблице физически сортируются по ключу кластерного индекса</li>
                <li>Таблица может иметь только один кластерный индекс</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Скорость доступа:</span>
            <ul>
                <li>Обеспечивает быстрый доступ к диапазонам данных</li>
                <li>Особенно эффективен для операций чтения</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Первичный ключ:</span>
            <ul>
                <li>В большинстве СУБД первичный ключ по умолчанию создает кластерный индекс</li>
            </ul>
        </li>
    </ul>

    <h2>Как работает кластерный индекс</h2>
    <ol>
        <li>Данные физически упорядочиваются на диске по ключу индекса</li>
        <li>Листовые узлы индекса содержат сами данные, а не указатели на них</li>
        <li>При вставке новых данных СУБД находит правильное место для сохранения физического порядка</li>
    </ol>

    <h2>Преимущества кластерных индексов</h2>
    <table>
        <tr>
            <th>Преимущество</th>
            <th>Описание</th>
        </tr>
        <tr>
            <td>Быстрый доступ</td>
            <td>Данные физически расположены в порядке индекса</td>
        </tr>
        <tr>
            <td>Эффективность диапазонных запросов</td>
            <td>Записи с близкими значениями ключа расположены рядом</td>
        </tr>
        <tr>
            <td>Снижение операций ввода-вывода</td>
            <td>Меньше обращений к диску для последовательного чтения</td>
        </tr>
    </table>

    <h2>Недостатки кластерных индексов</h2>
    <table>
        <tr>
            <th>Недостаток</th>
            <th>Описание</th>
        </tr>
        <tr>
            <td>Медленные вставки</td>
            <td>При вставке может потребоваться перестановка данных</td>
        </tr>
        <tr>
            <td>Фрагментация</td>
            <td>Частые обновления приводят к фрагментации данных</td>
        </tr>
        <tr>
            <td>Один на таблицу</td>
            <td>Можно создать только один кластерный индекс</td>
        </tr>
    </table>

    <h2>Пример создания кластерного индекса</h2>
    <h3>В SQL Server:</h3>
    <pre><code>
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY CLUSTERED,
    LastName NVARCHAR(50),
    FirstName NVARCHAR(50),
    DepartmentID INT
);
    </code></pre>

    <h3>В MySQL (InnoDB):</h3>
    <pre><code>
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    DepartmentID INT,
    INDEX (DepartmentID)
) ENGINE=InnoDB;
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> В MySQL InnoDB все таблицы всегда имеют кластерный индекс. Если явно не указан первичный ключ, InnoDB создаст скрытый кластерный индекс.
        </p>
    </div>

    <h2>Когда использовать кластерный индекс</h2>
    <ul>
        <li>
            <span class="highlight">Частые запросы по диапазону значений:</span>
            <ul>
                <li>Например, BETWEEN, >, <, ORDER BY</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Столбцы с высокой селективностью:</span>
            <ul>
                <li>Уникальные или почти уникальные столбцы</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Частые JOIN операции:</span>
            <ul>
                <li>По столбцам, участвующим в соединениях</li>
            </ul>
        </li>
    </ul>

    <h2>Рекомендации по выбору ключа</h2>
    <ul>
        <li>
            <span class="highlight">Используйте монотонно возрастающие ключи:</span>
            <ul>
                <li>IDENTITY, автоинкремент, последовательности</li>
                <li>Уменьшают фрагментацию при вставках</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Избегайте часто изменяемых столбцов:</span>
            <ul>
                <li>Изменение ключа требует физического перемещения строки</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минимизируйте размер ключа:</span>
            <ul>
                <li>Большие ключи увеличивают размер некластерных индексов</li>
            </ul>
        </li>
    </ul>

    <h2>Сравнение с некластерными индексами</h2>
    <table>
        <tr>
            <th>Характеристика</th>
            <th>Кластерный индекс</th>
            <th>Некластерный индекс</th>
        </tr>
        <tr>
            <td>Количество</td>
            <td>1 на таблицу</td>
            <td>Много на таблицу</td>
        </tr>
        <tr>
            <td>Скорость чтения</td>
            <td>Быстрее для диапазонов</td>
            <td>Быстрее для точечных запросов</td>
        </tr>
        <tr>
            <td>Скорость вставки</td>
            <td>Медленнее</td>
            <td>Быстрее</td>
        </tr>
        <tr>
            <td>Хранение данных</td>
            <td>Сами данные</td>
            <td>Указатели на данные</td>
        </tr>
    </table>
</body>
</html>', 'DATA_BASE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b95806be-4f4e-436d-b544-541348e5b64a', 'Как бы вы спроектировали распределенную систему для обработки большого количества событий в реальном времени?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Проектирование распределённой системы для обработки событий</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Проектирование распределённой системы для обработки событий</h1>
    <p>
        Проектирование распределённой системы для обработки большого количества событий в реальном времени
        требует учёта множества факторов, таких как масштабируемость, отказоустойчивость и производительность.
        Вот основные шаги и компоненты, которые следует рассмотреть.
    </p>

    <h2>Основные компоненты системы</h2>
    <ul>
        <li>
            <span class="highlight">Источники событий:</span> Это могут быть устройства IoT, веб-приложения,
            мобильные приложения или другие системы, генерирующие события.
        </li>
        <li>
            <span class="highlight">Шлюз приёма событий:</span> Компонент, который принимает события от
            источников и направляет их в систему обработки.
        </li>
        <li>
            <span class="highlight">Очередь сообщений:</span> Используется для буферизации событий перед
            их обработкой. Примеры: Apache Kafka, RabbitMQ, Amazon Kinesis.
        </li>
        <li>
            <span class="highlight">Система обработки событий:</span> Компонент, который обрабатывает
            события в реальном времени. Это могут быть микросервисы или распределённые вычислительные
            системы, такие как Apache Flink, Apache Storm или Apache Spark Streaming.
        </li>
        <li>
            <span class="highlight">Хранилище данных:</span> Для сохранения результатов обработки
            событий. Это может быть NoSQL-база данных (например, Cassandra, MongoDB) или распределённая
            файловая система (например, HDFS).
        </li>
        <li>
            <span class="highlight">Мониторинг и управление:</span> Системы для мониторинга производительности
            и управления инфраструктурой, такие как Prometheus, Grafana или ELK Stack.
        </li>
    </ul>

    <h2>Шаги проектирования</h2>
    <ul>
        <li>
            <span class="highlight">Определение требований:</span> Уточните объём данных, задержки,
            требования к отказоустойчивости и масштабируемости.
        </li>
        <li>
            <span class="highlight">Выбор технологий:</span> Выберите подходящие технологии для каждого
            компонента системы на основе требований.
        </li>
        <li>
            <span class="highlight">Проектирование архитектуры:</span> Разработайте архитектуру системы,
            учитывая взаимодействие между компонентами и способы масштабирования.
        </li>
        <li>
            <span class="highlight">Реализация и тестирование:</span> Реализуйте систему и проведите
            тестирование на производительность, отказоустойчивость и масштабируемость.
        </li>
        <li>
            <span class="highlight">Мониторинг и оптимизация:</span> Настройте мониторинг и оптимизируйте
            систему на основе данных, полученных в процессе эксплуатации.
        </li>
    </ul>

    <h2>Пример архитектуры</h2>
    <ul>
        <li>
            <span class="highlight">Источники событий:</span> Устройства IoT отправляют данные через
            HTTP или MQTT.
        </li>
        <li>
            <span class="highlight">Шлюз приёма событий:</span> Nginx или Apache Kafka для приёма и
            буферизации событий.
        </li>
        <li>
            <span class="highlight">Очередь сообщений:</span> Apache Kafka для хранения и передачи
            событий между компонентами.
        </li>
        <li>
            <span class="highlight">Система обработки:</span> Apache Flink для обработки событий в
            реальном времени.
        </li>
        <li>
            <span class="highlight">Хранилище данных:</span> Cassandra для хранения результатов
            обработки.
        </li>
        <li>
            <span class="highlight">Мониторинг:</span> Prometheus и Grafana для мониторинга
            производительности системы.
        </li>
    </ul>

    <h2>Преимущества распределённой системы</h2>
    <ul>
        <li>
            <span class="highlight">Масштабируемость:</span> Система может масштабироваться
            горизонтально для обработки растущего объёма данных.
        </li>
        <li>
            <span class="highlight">Отказоустойчивость:</span> Распределённая архитектура
            обеспечивает высокую доступность и устойчивость к сбоям.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Обработка событий в реальном
            времени позволяет быстро реагировать на изменения.
        </li>
    </ul>

    <h2>Ограничения и вызовы</h2>
    <ul>
        <li>
            <span class="highlight">Сложность управления:</span> Распределённые системы требуют
            сложной настройки и управления.
        </li>
        <li>
            <span class="highlight">Задержки:</span> Обеспечение низкой задержки при обработке
            событий может быть сложной задачей.
        </li>
        <li>
            <span class="highlight">Согласованность данных:</span> В распределённых системах
            сложно обеспечить строгую согласованность данных.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Проектирование распределённой системы для обработки
            событий в реальном времени требует тщательного анализа требований и выбора подходящих
            технологий. Учёт таких факторов, как масштабируемость, отказоустойчивость и производительность,
            поможет создать надёжную и эффективную систему.
        </p>
    </div>
</body>
</html>', 'SYSTEM_DESIGN', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('94e6fa31-cf79-4695-888c-821d9b074792', 'Расскажи про некластерные индексы', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Некластерные индексы</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Некластерные индексы</h1>
    <p>
        <span class="highlight">Некластерные индексы</span> — это структуры данных в базах данных, которые ускоряют поиск данных,
        но не изменяют физический порядок хранения строк в таблице. Они работают как указатели на данные.
    </p>

    <h2>Для чего нужны некластерные индексы?</h2>
    <ul>
        <li>
            <span class="highlight">Ускорение поиска:</span> Позволяют быстро находить данные по индексированным столбцам без
            полного сканирования таблицы.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> В отличие от кластерных индексов, таблица может иметь несколько
            некластерных индексов.
        </li>
        <li>
            <span class="highlight">Оптимизация JOIN-запросов:</span> Улучшают производительность операций соединения таблиц.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Некластерные индексы требуют дополнительного места для хранения и могут
            замедлять операции вставки/обновления данных, так как индексы нужно поддерживать в актуальном состоянии.
        </p>
    </div>

    <h2>Примеры использования некластерных индексов</h2>
    <ul>
        <li>
            Индексация столбцов, часто используемых в условиях WHERE.
        </li>
        <li>
            Создание индексов для внешних ключей для ускорения JOIN-операций.
        </li>
        <li>
            Индексация столбцов, участвующих в ORDER BY или GROUP BY.
        </li>
    </ul>
</body>
</html>', 'DATA_BASE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4d47764c-8c53-4600-92e8-00f0b7defca0', 'Что такое ZonedDateTime?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZonedDateTime в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>ZonedDateTime в Java</h1>
    <p>
        <span class="highlight">ZonedDateTime</span> — это класс в Java, который представляет дату и время с учётом временной
        зоны. Он является частью пакета <code>java.time</code>, появившегося в Java 8, и предоставляет
        наиболее полную информацию о временном контексте в календарной системе ISO-8601.
    </p>

    <h2>Особенности ZonedDateTime</h2>
    <ul>
        <li>
            <span class="highlight">Полная информация о времени:</span> <code>ZonedDateTime</code> включает дату, время и
            временную зону.
        </li>
        <li>
            <span class="highlight">Учёт временной зоны:</span> Все операции с временными сдвигами учитывают временную зону.
        </li>
        <li>
            <span class="highlight">Неизменяемость:</span> Объекты <code>ZonedDateTime</code> являются неизменяемыми, что
            делает их потокобезопасными.
        </li>
        <li>
            <span class="highlight">Совместимость с ISO-8601:</span> Поддерживает стандарт ISO-8601 для работы с датой и
            временем.
        </li>
    </ul>

    <h2>Примеры использования</h2>

    <h3>Создание ZonedDateTime</h3>
    <pre><code>import java.time.ZonedDateTime;
import java.time.ZoneId;

public class Main {
    public static void main(String[] args) {
        ZonedDateTime now = ZonedDateTime.now(); // текущая дата и время с учётом временной зоны
        System.out.println(now); // 2023-10-05T14:30:45.123456789+03:00[Europe/Moscow]

        ZonedDateTime specificDateTime = ZonedDateTime.of(2023, 10, 5, 14, 30, 0, 0, ZoneId.of("Europe/Paris"));
        System.out.println(specificDateTime); // 2023-10-05T14:30+02:00[Europe/Paris]
    }
}</code></pre>

    <h3>Методы ZonedDateTime</h3>
    <p>
        <code>ZonedDateTime</code> предоставляет множество методов для работы с датой, временем и
        временной зоной:
    </p>
    <ul>
        <li>
            <span class="highlight">withZoneSameInstant():</span> Возвращает объект <code>ZonedDateTime</code> с той же датой и
            временем, но в другой временной зоне.
            <pre><code>ZonedDateTime newZone = now.withZoneSameInstant(ZoneId.of("America/New_York"));</code></pre>
        </li>
        <li>
            <span class="highlight">plusHours(), minusDays():</span> Добавляет или вычитает часы, дни и другие единицы времени.
            <pre><code>ZonedDateTime futureDateTime = now.plusHours(3).minusDays(1);</code></pre>
        </li>
        <li>
            <span class="highlight">isBefore(), isAfter():</span> Проверяет, является ли одна дата и время раньше или позже другой.
            <pre><code>boolean isAfter = now.isAfter(specificDateTime);</code></pre>
        </li>
    </ul>

    <h3>Пример с методами</h3>
    <pre><code>import java.time.ZonedDateTime;
import java.time.ZoneId;

public class Main {
    public static void main(String[] args) {
        ZonedDateTime now = ZonedDateTime.now();
        ZonedDateTime futureDateTime = now.plusHours(3).withZoneSameInstant(ZoneId.of("America/New_York"));

        System.out.println("Текущее время: " + now);
        System.out.println("Время через 3 часа в Нью-Йорке: " + futureDateTime);

        if (futureDateTime.isAfter(now)) {
            System.out.println("Будущее время позже текущего.");
        }
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        <code>ZonedDateTime</code> — это мощный класс для работы с датой, временем и временной зоной
        в Java. Он предоставляет полную информацию о временном контексте и учитывает
        временные зоны при выполнении операций. Благодаря своей неизменяемости и
        поддержке стандарта ISO-8601, он идеально подходит для работы с датами и временем
        в глобальных приложениях.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a1cd4d79-c4c2-4b73-8f9f-17f966415e49', 'Как бы вы реализовали Rate Limiter для REST API, чтобы ограничить количество запросов от одного клиента?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Реализация Rate Limiter для REST API</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Реализация Rate Limiter для REST API</h1>
    <p>
        <strong>Rate Limiter</strong> — это механизм, который ограничивает количество запросов от одного
        клиента за определённый промежуток времени. Это помогает защитить API от злоупотреблений и
        перегрузки.
    </p>

    <h2>Основные подходы к реализации Rate Limiter</h2>
    <ul>
        <li>
            <span class="highlight">Счётчик запросов:</span> Используется для отслеживания количества
            запросов от каждого клиента.
        </li>
        <li>
            <span class="highlight">Временное окно:</span> Запросы учитываются в рамках определённого
            временного окна (например, 1 минута).
        </li>
        <li>
            <span class="highlight">Хранение состояния:</span> Состояние счётчиков может храниться в
            памяти, базе данных или распределённом кэше (например, Redis).
        </li>
    </ul>

    <h2>Пример реализации Rate Limiter на Java</h2>
    <ul>
        <li>
            <span class="highlight">Использование токенов (Token Bucket Algorithm):</span>
            <pre><code>import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class RateLimiter {
    private final int limit;
    private final long interval;
    private final ConcurrentHashMap&lt;String, AtomicInteger&gt; counters = new ConcurrentHashMap&lt;&gt;();
    private final ConcurrentHashMap&lt;String, Long&gt; timestamps = new ConcurrentHashMap&lt;&gt;();

    public RateLimiter(int limit, long interval) {
        this.limit = limit;
        this.interval = interval;
    }

    public boolean allowRequest(String clientId) {
        long now = System.currentTimeMillis();
        timestamps.putIfAbsent(clientId, now);
        counters.putIfAbsent(clientId, new AtomicInteger(0));

        if (now - timestamps.get(clientId) > interval) {
            counters.get(clientId).set(0);
            timestamps.put(clientId, now);
        }

        return counters.get(clientId).incrementAndGet() <= limit;
    }
}

public class Main {
    public static void main(String[] args) {
        RateLimiter rateLimiter = new RateLimiter(5, 60_000); // 5 запросов в минуту
        String clientId = "client1";

        for (int i = 0; i < 10; i++) {
            if (rateLimiter.allowRequest(clientId)) {
                System.out.println("Запрос разрешён: " + i);
            } else {
                System.out.println("Запрос отклонён: " + i);
            }
        }
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">Пример вывода:</span>
            <pre><code>Запрос разрешён: 0
Запрос разрешён: 1
Запрос разрешён: 2
Запрос разрешён: 3
Запрос разрешён: 4
Запрос отклонён: 5
Запрос отклонён: 6
Запрос отклонён: 7
Запрос отклонён: 8
Запрос отклонён: 9</code></pre>
        </li>
    </ul>

    <h2>Использование Redis для распределённого Rate Limiter</h2>
    <ul>
        <li>
            <span class="highlight">Преимущества:</span> Redis позволяет хранить состояние счётчиков
            в распределённой системе, что делает Rate Limiter масштабируемым.
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>import redis.clients.jedis.Jedis;

public class RedisRateLimiter {
    private final Jedis jedis;
    private final int limit;
    private final long interval;

    public RedisRateLimiter(Jedis jedis, int limit, long interval) {
        this.jedis = jedis;
        this.limit = limit;
        this.interval = interval;
    }

    public boolean allowRequest(String clientId) {
        String key = "rate_limit:" + clientId;
        long now = System.currentTimeMillis();
        long windowStart = now - interval;

        jedis.zremrangeByScore(key, 0, windowStart);
        long count = jedis.zcard(key);

        if (count < limit) {
            jedis.zadd(key, now, String.valueOf(now));
            return true;
        }
        return false;
    }
}</code></pre>
        </li>
    </ul>

    <h2>Преимущества Rate Limiter</h2>
    <ul>
        <li>
            <span class="highlight">Защита от злоупотреблений:</span> Ограничивает количество запросов
            от одного клиента, предотвращая перегрузку API.
        </li>
        <li>
            <span class="highlight">Масштабируемость:</span> Использование Redis позволяет масштабировать
            Rate Limiter для распределённых систем.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Можно настраивать лимиты и временные окна в зависимости
            от требований.
        </li>
    </ul>

    <h2>Ограничения Rate Limiter</h2>
    <ul>
        <li>
            <span class="highlight">Сложность реализации:</span> Реализация Rate Limiter требует учёта
            различных факторов, таких как распределённое хранение состояния и обработка временных окон.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Неправильная реализация может привести к
            снижению производительности API.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Rate Limiter — это важный механизм для защиты REST API
            от злоупотреблений и перегрузки. Выбор подходящего алгоритма и технологии для хранения состояния
            поможет создать эффективный и масштабируемый Rate Limiter.
        </p>
    </div>
</body>
</html>', 'SYSTEM_DESIGN', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('02529b4d-151e-44eb-b76c-f73f17695f0c', 'Как бы вы спроектировали систему для хранения и поиска большого количества текстовых данных (например, поисковой движок)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Проектирование системы для хранения и поиска текстовых данных</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Проектирование системы для хранения и поиска текстовых данных</h1>
    <p>
        Проектирование системы для хранения и поиска большого количества текстовых данных, такой как
        поисковой движок, требует учёта множества факторов, включая масштабируемость, производительность
        и точность поиска. Вот основные шаги и компоненты, которые следует рассмотреть.
    </p>

    <h2>Основные компоненты системы</h2>
    <ul>
        <li>
            <span class="highlight">Источники данных:</span> Это могут быть веб-страницы, документы,
            базы данных или другие источники текстовой информации.
        </li>
        <li>
            <span class="highlight">Краулер (Crawler):</span> Компонент, который собирает данные из
            источников и передаёт их в систему для обработки.
        </li>
        <li>
            <span class="highlight">Индексатор (Indexer):</span> Компонент, который обрабатывает
            текстовые данные и создаёт индексы для быстрого поиска.
        </li>
        <li>
            <span class="highlight">Хранилище данных:</span> Для хранения индексов и исходных данных.
            Это может быть распределённая файловая система (например, HDFS) или NoSQL-база данных
            (например, Elasticsearch).
        </li>
        <li>
            <span class="highlight">Поисковый движок:</span> Компонент, который выполняет поиск по
            индексам и возвращает результаты. Примеры: Elasticsearch, Apache Solr.
        </li>
        <li>
            <span class="highlight">Пользовательский интерфейс:</span> Веб-интерфейс или API для
            взаимодействия с поисковой системой.
        </li>
    </ul>

    <h2>Шаги проектирования</h2>
    <ul>
        <li>
            <span class="highlight">Определение требований:</span> Уточните объём данных, требования
            к производительности, точности поиска и масштабируемости.
        </li>
        <li>
            <span class="highlight">Выбор технологий:</span> Выберите подходящие технологии для каждого
            компонента системы на основе требований.
        </li>
        <li>
            <span class="highlight">Проектирование архитектуры:</span> Разработайте архитектуру системы,
            учитывая взаимодействие между компонентами и способы масштабирования.
        </li>
        <li>
            <span class="highlight">Реализация и тестирование:</span> Реализуйте систему и проведите
            тестирование на производительность, точность поиска и масштабируемость.
        </li>
        <li>
            <span class="highlight">Мониторинг и оптимизация:</span> Настройте мониторинг и оптимизируйте
            систему на основе данных, полученных в процессе эксплуатации.
        </li>
    </ul>

    <h2>Пример архитектуры</h2>
    <ul>
        <li>
            <span class="highlight">Источники данных:</span> Веб-страницы, документы, базы данных.
        </li>
        <li>
            <span class="highlight">Краулер:</span> Apache Nutch или Scrapy для сбора данных.
        </li>
        <li>
            <span class="highlight">Индексатор:</span> Apache Lucene для создания индексов.
        </li>
        <li>
            <span class="highlight">Хранилище данных:</span> Elasticsearch для хранения индексов и
            выполнения поиска.
        </li>
        <li>
            <span class="highlight">Поисковый движок:</span> Elasticsearch или Apache Solr.
        </li>
        <li>
            <span class="highlight">Пользовательский интерфейс:</span> Веб-приложение с использованием
            Angular или React.
        </li>
    </ul>

    <h2>Преимущества системы</h2>
    <ul>
        <li>
            <span class="highlight">Масштабируемость:</span> Система может масштабироваться
            горизонтально для обработки растущего объёма данных.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Использование индексов позволяет
            быстро выполнять поиск по большим объёмам данных.
        </li>
        <li>
            <span class="highlight">Точность поиска:</span> Поддержка полнотекстового поиска,
            фильтров и ранжирования результатов.
        </li>
    </ul>

    <h2>Ограничения и вызовы</h2>
    <ul>
        <li>
            <span class="highlight">Сложность управления:</span> Распределённые системы требуют
            сложной настройки и управления.
        </li>
        <li>
            <span class="highlight">Обновление индексов:</span> Поддержание актуальности индексов
            при изменении данных может быть сложной задачей.
        </li>
        <li>
            <span class="highlight">Точность поиска:</span> Обеспечение высокой точности поиска
            требует тщательной настройки алгоритмов индексации и поиска.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Проектирование системы для хранения и поиска
            текстовых данных требует тщательного анализа требований и выбора подходящих технологий.
            Учёт таких факторов, как масштабируемость, производительность и точность поиска, поможет
            создать надёжную и эффективную систему.
        </p>
    </div>
</body>
</html>', 'SYSTEM_DESIGN', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('38492363-a19a-4a1d-8fa1-1bbc5f61d714', 'Как получить текущее время по местному времени с точностью до  миллисекунд, используя Date Time API?', e'<!DOCTYPE html>
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
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('adae2681-8ceb-4f1b-b7b8-392924c97dfe', 'Как бы вы реализовали механизм репликации данных между несколькими узлами в распределенной системе?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Механизм репликации данных в распределённой системе</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Механизм репликации данных в распределённой системе</h1>
    <p>
        Репликация данных — это процесс копирования данных между несколькими узлами в распределённой
        системе для обеспечения отказоустойчивости, доступности и масштабируемости. Реализация механизма
        репликации требует учёта таких факторов, как согласованность данных, производительность и
        отказоустойчивость.
    </p>

    <h2>Основные подходы к репликации данных</h2>
    <ul>
        <li>
            <span class="highlight">Синхронная репликация:</span> Данные копируются на все узлы
            одновременно, что обеспечивает строгую согласованность, но может снизить производительность.
        </li>
        <li>
            <span class="highlight">Асинхронная репликация:</span> Данные копируются на другие узлы
            с задержкой, что повышает производительность, но может привести к временной несогласованности.
        </li>
        <li>
            <span class="highlight">Кворумная репликация:</span> Данные записываются на большинство
            узлов, что обеспечивает баланс между согласованностью и производительностью.
        </li>
    </ul>

    <h2>Пример реализации репликации на Java</h2>
    <ul>
        <li>
            <span class="highlight">Синхронная репликация:</span>
            <pre><code>class Node {
    private String data;
    private List&lt;Node&gt; replicas;

    public Node(String data, List&lt;Node&gt; replicas) {
        this.data = data;
        this.replicas = replicas;
    }

    public void updateData(String newData) {
        this.data = newData;
        for (Node replica : replicas) {
            replica.setData(newData);
        }
    }

    public void setData(String data) {
        this.data = data;
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">Асинхронная репликация:</span>
            <pre><code>class Node {
    private String data;
    private List&lt;Node&gt; replicas;
    private ExecutorService executor = Executors.newCachedThreadPool();

    public Node(String data, List&lt;Node&gt; replicas) {
        this.data = data;
        this.replicas = replicas;
    }

    public void updateData(String newData) {
        this.data = newData;
        for (Node replica : replicas) {
            executor.submit(() -> replica.setData(newData));
        }
    }

    public void setData(String data) {
        this.data = data;
    }
}</code></pre>
        </li>
    </ul>

    <h2>Использование распределённых систем для репликации</h2>
    <ul>
        <li>
            <span class="highlight">Apache ZooKeeper:</span> Используется для координации и управления
            репликацией в распределённых системах.
        </li>
        <li>
            <span class="highlight">Apache Kafka:</span> Подходит для асинхронной репликации данных
            между узлами.
        </li>
        <li>
            <span class="highlight">Cassandra:</span> Реализует распределённую репликацию данных с
            поддержкой кворумов.
        </li>
    </ul>

    <h2>Преимущества репликации данных</h2>
    <ul>
        <li>
            <span class="highlight">Отказоустойчивость:</span> Репликация данных обеспечивает
            доступность данных даже при сбое одного или нескольких узлов.
        </li>
        <li>
            <span class="highlight">Масштабируемость:</span> Распределённая репликация позволяет
            масштабировать систему для обработки растущего объёма данных.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Репликация данных на несколько узлов
            позволяет распределять нагрузку и повышать производительность.
        </li>
    </ul>

    <h2>Ограничения и вызовы</h2>
    <ul>
        <li>
            <span class="highlight">Согласованность данных:</span> Обеспечение согласованности данных
            между узлами может быть сложной задачей.
        </li>
        <li>
            <span class="highlight">Задержки:</span> Асинхронная репликация может привести к временной
            несогласованности данных.
        </li>
        <li>
            <span class="highlight">Сложность управления:</span> Репликация данных требует сложной
            настройки и управления, особенно в распределённых системах.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Реализация механизма репликации данных в распределённой
            системе требует тщательного анализа требований и выбора подходящих технологий. Учёт таких
            факторов, как согласованность данных, производительность и отказоустойчивость, поможет создать
            надёжную и эффективную систему.
        </p>
    </div>
</body>
</html>', 'SYSTEM_DESIGN', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('36b95ae8-f88e-4960-884d-0ac2b6e793af', 'Для чего нужны функциональные интерфейсы Function<T,R>,  DoubleFunction<R>, IntFunction<R> и LongFunction<R>?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональные интерфейсы Function, DoubleFunction, IntFunction и LongFunction</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональные интерфейсы Function, DoubleFunction, IntFunction и LongFunction</h1>
    <p>
        В Java 8 функциональные интерфейсы <code>Function&lt;T, R&gt;</code>, <code>DoubleFunction&lt;R&gt;</code>,
        <code>IntFunction&lt;R&gt;</code> и <code>LongFunction&lt;R&gt;</code> используются для реализации функций, которые
        принимают входные данные и возвращают результат. Эти интерфейсы предоставляют
        удобный способ работы с преобразованиями данных.
    </p>

    <h2>Function&lt;T, R&gt;</h2>
    <p>
        Интерфейс <code>Function&lt;T, R&gt;</code> представляет функцию, которая принимает на вход объект
        типа <code>T</code> и возвращает объект типа <code>R</code>. Он также предоставляет методы по умолчанию
        для построения цепочек вызовов.
    </p>
    <pre><code>import java.util.function.Function;

public class Main {
    public static void main(String[] args) {
        Function<String, Integer> toInteger = Integer::valueOf; // преобразование строки в число
        Function<String, String> backToString = toInteger.andThen(String::valueOf); // цепочка вызовов

        String result = backToString.apply("123"); // преобразование строки в число и обратно
        System.out.println(result); // "123"
    }
}</code></pre>

    <h3>Методы по умолчанию</h3>
    <ul>
        <li>
            <span class="highlight">andThen():</span> Применяет текущую функцию, а затем другую функцию к результату.
        </li>
        <li>
            <span class="highlight">compose():</span> Применяет другую функцию, а затем текущую функцию к результату.
        </li>
    </ul>

    <h2>DoubleFunction&lt;R&gt;</h2>
    <p>
        Интерфейс <code>DoubleFunction&lt;R&gt;</code> представляет функцию, которая принимает на вход значение
        типа <code>double</code> и возвращает объект типа <code>R</code>.
    </p>
    <pre><code>import java.util.function.DoubleFunction;

public class Main {
    public static void main(String[] args) {
        DoubleFunction<String> toString = d -> "Значение: " + d; // преобразование double в строку
        String result = toString.apply(3.14);
        System.out.println(result); // Значение: 3.14
    }
}</code></pre>

    <h2>IntFunction&lt;R&gt;</h2>
    <p>
        Интерфейс <code>IntFunction&lt;R&gt;</code> представляет функцию, которая принимает на вход значение
        типа <code>int</code> и возвращает объект типа <code>R</code>.
    </p>
    <pre><code>import java.util.function.IntFunction;

public class Main {
    public static void main(String[] args) {
        IntFunction<String> toString = i -> "Значение: " + i; // преобразование int в строку
        String result = toString.apply(42);
        System.out.println(result); // Значение: 42
    }
}</code></pre>

    <h2>LongFunction&lt;R&gt;</h2>
    <p>
        Интерфейс <code>LongFunction&lt;R&gt;</code> представляет функцию, которая принимает на вход значение
        типа <code>long</code> и возвращает объект типа <code>R</code>.
    </p>
    <pre><code>import java.util.function.LongFunction;

public class Main {
    public static void main(String[] args) {
        LongFunction<String> toString = l -> "Значение: " + l; // преобразование long в строку
        String result = toString.apply(123456789L);
        System.out.println(result); // Значение: 123456789
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональные интерфейсы <code>Function&lt;T, R&gt;</code>, <code>DoubleFunction&lt;R&gt;</code>,
        <code>IntFunction&lt;R&gt;</code> и <code>LongFunction&lt;R&gt;</code> предоставляют удобный способ работы с
        функциями, которые принимают входные данные и возвращают результат. Они
        поддерживают лямбда-выражения и могут использоваться для построения цепочек
        вызовов, что делает их мощными инструментами для обработки данных в Java.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c8326e14-3e6c-4d6b-a2d0-0f69bee8f0e1', 'Как бы вы спроектировали систему для обработки платежей с гарантией идемпотентности?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Проектирование системы для обработки платежей с гарантией идемпотентности</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Проектирование системы для обработки платежей с гарантией идемпотентности</h1>
    <p>
        Проектирование системы для обработки платежей с гарантией идемпотентности требует учёта таких
        факторов, как безопасность, надёжность и возможность повторного выполнения операций без
        дублирования. Вот основные шаги и компоненты, которые следует рассмотреть.
    </p>

    <h2>Основные компоненты системы</h2>
    <ul>
        <li>
            <span class="highlight">Платежный шлюз:</span> Компонент, который взаимодействует с
            внешними платежными системами (например, банками, платёжными процессингами).
        </li>
        <li>
            <span class="highlight">База данных:</span> Для хранения информации о платежах,
            включая их статус и уникальные идентификаторы.
        </li>
        <li>
            <span class="highlight">Сервис обработки платежей:</span> Компонент, который выполняет
            логику обработки платежей и обеспечивает идемпотентность.
        </li>
        <li>
            <span class="highlight">Очередь сообщений:</span> Для асинхронной обработки платежей
            и гарантии доставки сообщений. Примеры: Apache Kafka, RabbitMQ.
        </li>
        <li>
            <span class="highlight">Мониторинг и логирование:</span> Для отслеживания состояния
            платежей и диагностики проблем.
        </li>
    </ul>

    <h2>Шаги проектирования</h2>
    <ul>
        <li>
            <span class="highlight">Определение требований:</span> Уточните требования к безопасности,
            надёжности и идемпотентности.
        </li>
        <li>
            <span class="highlight">Выбор технологий:</span> Выберите подходящие технологии для каждого
            компонента системы на основе требований.
        </li>
        <li>
            <span class="highlight">Проектирование архитектуры:</span> Разработайте архитектуру системы,
            учитывая взаимодействие между компонентами и способы обеспечения идемпотентности.
        </li>
        <li>
            <span class="highlight">Реализация и тестирование:</span> Реализуйте систему и проведите
            тестирование на безопасность, надёжность и идемпотентность.
        </li>
        <li>
            <span class="highlight">Мониторинг и оптимизация:</span> Настройте мониторинг и оптимизируйте
            систему на основе данных, полученных в процессе эксплуатации.
        </li>
    </ul>

    <h2>Пример реализации идемпотентности</h2>
    <ul>
        <li>
            <span class="highlight">Использование уникальных идентификаторов:</span> Каждый платеж
            должен иметь уникальный идентификатор (ID), который используется для проверки, был ли
            платеж уже обработан.
            <pre><code>class PaymentService {
    private Set&lt;String&gt; processedPayments = new HashSet&lt;&gt;();

    public void processPayment(String paymentId, BigDecimal amount) {
        if (processedPayments.contains(paymentId)) {
            return; // Платёж уже обработан
        }
        // Логика обработки платежа
        processedPayments.add(paymentId);
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">Использование транзакций:</span> Обеспечьте атомарность операций
            с использованием транзакций в базе данных.
            <pre><code>@Transactional
public void processPayment(String paymentId, BigDecimal amount) {
    Payment payment = paymentRepository.findById(paymentId);
    if (payment != null && payment.getStatus() == PaymentStatus.COMPLETED) {
        return; // Платёж уже обработан
    }
    // Логика обработки платежа
    paymentRepository.save(new Payment(paymentId, amount, PaymentStatus.COMPLETED));
}</code></pre>
        </li>
    </ul>

    <h2>Преимущества системы с идемпотентностью</h2>
    <ul>
        <li>
            <span class="highlight">Надёжность:</span> Гарантия того, что повторные запросы не приведут
            к дублированию платежей.
        </li>
        <li>
            <span class="highlight">Безопасность:</span> Уменьшение риска ошибок и мошенничества за счёт
            контроля уникальности платежей.
        </li>
        <li>
            <span class="highlight">Упрощение обработки ошибок:</span> Возможность безопасно повторять
            запросы в случае сбоев.
        </li>
    </ul>

    <h2>Ограничения и вызовы</h2>
    <ul>
        <li>
            <span class="highlight">Сложность реализации:</span> Обеспечение идемпотентности требует
            тщательной проработки логики обработки платежей.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Проверка уникальности платежей может
            увеличить нагрузку на систему.
        </li>
        <li>
            <span class="highlight">Управление состоянием:</span> Необходимо учитывать состояние
            платежей и обеспечивать их согласованность.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Проектирование системы для обработки платежей с
            гарантией идемпотентности требует тщательного анализа требований и выбора подходящих
            технологий. Учёт таких факторов, как безопасность, надёжность и идемпотентность, поможет
            создать надёжную и эффективную систему.
        </p>
    </div>
</body>
</html>', 'SYSTEM_DESIGN', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('01161391-f261-43f9-ac61-17eabd91e03f', 'Для чего нужны функциональные интерфейсы ToDoubleBiFunction<T, U>,  ToIntBiFunction<T, U> и ToLongBiFunction<T, U>?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональные интерфейсы ToDoubleBiFunction, ToIntBiFunction и ToLongBiFunction</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональные интерфейсы ToDoubleBiFunction, ToIntBiFunction и ToLongBiFunction</h1>
    <p>
        В Java 8 функциональные интерфейсы <code>ToDoubleBiFunction&lt;T, U&gt;</code>,
        <code>ToIntBiFunction&lt;T, U&gt;</code> и <code>ToLongBiFunction&lt;T, U&gt;</code> используются для
        реализации операций, которые принимают два аргумента типов <code>T</code> и <code>U</code> и возвращают
        результат в виде числового значения (<code>double</code>, <code>int</code> или <code>long</code>). Эти
        интерфейсы полезны для задач, связанных с вычислениями или преобразованием данных.
    </p>

    <h2>Примеры использования</h2>

    <h3>ToDoubleBiFunction&lt;T, U&gt;</h3>
    <p>
        Интерфейс <code>ToDoubleBiFunction&lt;T, U&gt;</code> принимает два аргумента и возвращает результат
        типа <code>double</code>.
    </p>
    <pre><code>import java.util.function.ToDoubleBiFunction;

public class Main {
    public static void main(String[] args) {
        ToDoubleBiFunction<Integer, Integer> average = (a, b) -> (a + b) / 2.0; // вычисление среднего значения
        System.out.println(average.applyAsDouble(5, 10)); // 7.5
    }
}</code></pre>

    <h3>ToIntBiFunction&lt;T, U&gt;</h3>
    <p>
        Интерфейс <code>ToIntBiFunction&lt;T, U&gt;</code> принимает два аргумента и возвращает результат
        типа <code>int</code>.
    </p>
    <pre><code>import java.util.function.ToIntBiFunction;

public class Main {
    public static void main(String[] args) {
        ToIntBiFunction<Integer, Integer> sum = (a, b) -> a + b; // вычисление суммы
        System.out.println(sum.applyAsInt(5, 10)); // 15
    }
}</code></pre>

    <h3>ToLongBiFunction&lt;T, U&gt;</h3>
    <p>
        Интерфейс <code>ToLongBiFunction&lt;T, U&gt;</code> принимает два аргумента и возвращает результат
        типа <code>long</code>.
    </p>
    <pre><code>import java.util.function.ToLongBiFunction;

public class Main {
    public static void main(String[] args) {
        ToLongBiFunction<Integer, Integer> product = (a, b) -> (long) a * b; // вычисление произведения
        System.out.println(product.applyAsLong(5, 10)); // 50
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональные интерфейсы <code>ToDoubleBiFunction&lt;T, U&gt;</code>,
        <code>ToIntBiFunction&lt;T, U&gt;</code> и <code>ToLongBiFunction&lt;T, U&gt;</code> предоставляют удобный
        способ выполнения операций над двумя аргументами и возврата числового результата.
        Они полезны для задач, связанных с вычислениями, преобразованием данных или
        агрегацией значений.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cbd3108a-3773-44a3-8970-9d89f1a5ae45', 'Расскажи про методы pool() и peek() в интерфейсе Queue', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Методы poll() и peek() в интерфейсе Queue</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Методы poll() и peek() в интерфейсе Queue</h1>
    <p>
        Интерфейс <code>Queue</code> в Java предоставляет методы для работы с очередями, такими как
        <code>poll()</code> и <code>peek()</code>. Эти методы используются для извлечения элементов
        из очереди, но имеют разные особенности поведения.
    </p>

    <h2>Метод poll()</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> Метод <code>poll()</code> извлекает и
            удаляет элемент из головы очереди. Если очередь пуста, метод возвращает <code>null</code>.
        </li>
        <li>
            <span class="highlight">Пример использования:</span>
            <pre><code>Queue&lt;String&gt; queue = new LinkedList&lt;&gt;();
queue.add("A");
queue.add("B");
String element = queue.poll();
System.out.println(element); // A
System.out.println(queue);   // [B]</code></pre>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Удаляет элемент из очереди.</li>
                <li>Возвращает <code>null</code>, если очередь пуста.</li>
            </ul>
        </li>
    </ul>

    <h2>Метод peek()</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> Метод <code>peek()</code> извлекает, но
            не удаляет элемент из головы очереди. Если очередь пуста, метод возвращает <code>null</code>.
        </li>
        <li>
            <span class="highlight">Пример использования:</span>
            <pre><code>Queue&lt;String&gt; queue = new LinkedList&lt;&gt;();
queue.add("A");
queue.add("B");
String element = queue.peek();
System.out.println(element); // A
System.out.println(queue);   // [A, B]</code></pre>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Не удаляет элемент из очереди.</li>
                <li>Возвращает <code>null</code>, если очередь пуста.</li>
            </ul>
        </li>
    </ul>

    <h2>Сравнение poll() и peek()</h2>
    <ul>
        <li>
            <span class="highlight">Удаление элемента:</span>
            <ul>
                <li><strong>poll():</strong> Удаляет элемент из очереди.</li>
                <li><strong>peek():</strong> Не удаляет элемент из очереди.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Возвращаемое значение:</span>
            <ul>
                <li><strong>poll():</strong> Возвращает элемент или <code>null</code>, если очередь пуста.</li>
                <li><strong>peek():</strong> Возвращает элемент или <code>null</code>, если очередь пуста.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование:</span>
            <ul>
                <li><strong>poll():</strong> Используется, когда нужно извлечь и удалить элемент.</li>
                <li><strong>peek():</strong> Используется, когда нужно только посмотреть на элемент
                без его удаления.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования в многопоточном контексте</h2>
    <ul>
        <li>
            <span class="highlight">Код:</span>
            <pre><code>Queue&lt;String&gt; queue = new ConcurrentLinkedQueue&lt;&gt;();
queue.add("A");
queue.add("B");

// Поток 1
new Thread(() -> {
    String element = queue.poll();
    System.out.println("Поток 1 извлёк: " + element);
}).start();

// Поток 2
new Thread(() -> {
    String element = queue.peek();
    System.out.println("Поток 2 посмотрел: " + element);
}).start();</code></pre>
        </li>
        <li>
            <span class="highlight">Пример вывода:</span>
            <pre><code>Поток 1 извлёк: A
Поток 2 посмотрел: B</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Методы <code>poll()</code> и <code>peek()</code>
            предоставляют разные возможности для работы с очередями. <code>poll()</code> удаляет
            элемент из очереди, а <code>peek()</code> только просматривает его. Выбор метода зависит
            от конкретной задачи и требований к обработке элементов.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('75ed7201-c329-4107-95f5-f04f10cc5515', 'Как работает индексация в базах данных? Какие типы индексов вы знаете и в каких случаях их использовать?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Индексация в базах данных</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Индексация в базах данных</h1>
    <p>
        Индексация в базах данных — это механизм, который ускоряет поиск данных за счёт создания
        дополнительных структур, позволяющих быстро находить строки в таблице. Индексы аналогичны
        указателям в книгах, которые помогают быстро найти нужную информацию.
    </p>

    <h2>Как работает индексация?</h2>
    <ul>
        <li>
            <span class="highlight">Создание индекса:</span> Индекс создаётся на одном или нескольких
            столбцах таблицы. Он хранит значения этих столбцов и ссылки на соответствующие строки.
        </li>
        <li>
            <span class="highlight">Поиск по индексу:</span> При выполнении запроса с условием на
            индексированном столбце база данных использует индекс для быстрого поиска строк, вместо
            того чтобы сканировать всю таблицу.
        </li>
        <li>
            <span class="highlight">Обновление индекса:</span> При изменении данных в таблице
            (вставка, обновление, удаление) индекс также обновляется, что может замедлить операции
            записи.
        </li>
    </ul>

    <h2>Типы индексов</h2>
    <ul>
        <li>
            <span class="highlight">B-дерево (B-Tree):</span> Наиболее распространённый тип индекса,
            который поддерживает операции поиска, вставки, удаления и обновления за время O(log n).
            Подходит для большинства сценариев, включая поиск по диапазону.
        </li>
        <li>
            <span class="highlight">Хэш-индекс:</span> Использует хэш-функцию для быстрого поиска
            точных совпадений. Подходит для поиска по равенству, но не поддерживает поиск по диапазону.
        </li>
        <li>
            <span class="highlight">Полнотекстовый индекс:</span> Используется для поиска по текстовым
            данным, поддерживает сложные запросы, такие как поиск по ключевым словам.
        </li>
        <li>
            <span class="highlight">Составной индекс:</span> Индекс, созданный на нескольких столбцах.
            Подходит для запросов, которые используют несколько столбцов в условии.
        </li>
        <li>
            <span class="highlight">Пространственный индекс:</span> Используется для работы с
            геопространственными данными, такими как координаты.
        </li>
    </ul>

    <h2>Пример создания индекса</h2>
    <ul>
        <li>
            <span class="highlight">Создание индекса B-дерево:</span>
            <pre><code>CREATE INDEX idx_name ON users (last_name);</code></pre>
        </li>
        <li>
            <span class="highlight">Создание составного индекса:</span>
            <pre><code>CREATE INDEX idx_name ON users (last_name, first_name);</code></pre>
        </li>
        <li>
            <span class="highlight">Создание полнотекстового индекса:</span>
            <pre><code>CREATE FULLTEXT INDEX idx_content ON articles (content);</code></pre>
        </li>
    </ul>

    <h2>Когда использовать индексы?</h2>
    <ul>
        <li>
            <span class="highlight">Частые запросы на поиск:</span> Если определённые столбцы часто
            используются в условиях <code>WHERE</code>, создание индекса ускорит поиск.
        </li>
        <li>
            <span class="highlight">Уникальные значения:</span> Индексы полезны для столбцов с
            уникальными значениями, таких как первичные ключи.
        </li>
        <li>
            <span class="highlight">Соединения таблиц:</span> Индексы на столбцах, используемых в
            условиях <code>JOIN</code>, ускорят выполнение запросов.
        </li>
        <li>
            <span class="highlight">Сортировка и группировка:</span> Индексы на столбцах, используемых
            в <code>ORDER BY</code> и <code>GROUP BY</code>, улучшат производительность.
        </li>
    </ul>

    <h2>Ограничения индексов</h2>
    <ul>
        <li>
            <span class="highlight">Затраты на обновление:</span> Индексы замедляют операции вставки,
            обновления и удаления, так как индекс также должен быть обновлён.
        </li>
        <li>
            <span class="highlight">Использование памяти:</span> Индексы занимают дополнительное место
            на диске и в памяти.
        </li>
        <li>
            <span class="highlight">Не всегда полезны:</span> Для таблиц с небольшим количеством строк
            или для столбцов с низкой селективностью (много повторяющихся значений) индексы могут не
            дать значительного прироста производительности.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Индексы — это мощный инструмент для ускорения поиска
            данных в базах данных. Однако их использование требует тщательного анализа, так как
            неправильное применение индексов может привести к снижению производительности. Выбор
            подходящего типа индекса и столбцов для индексации поможет оптимизировать запросы и
            улучшить общую производительность системы.
        </p>
    </div>
</body>
</html>', 'DATA_BASE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b728ff58-4d08-4e82-a588-e005846e520d', 'Что такое "deadlock" в базах данных? Как его обнаружить и предотвратить?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deadlock в базах данных</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Deadlock в базах данных</h1>
    <p>
        <strong>Deadlock</strong> (взаимная блокировка) — это ситуация, при которой два или более
        транзакций блокируют друг друга, ожидая освобождения ресурсов, которые удерживаются другой
        транзакцией. Это приводит к тому, что ни одна из транзакций не может продолжить выполнение.
    </p>

    <h2>Как возникает Deadlock?</h2>
    <ul>
        <li>
            <span class="highlight">Транзакция 1:</span> Блокирует ресурс A и запрашивает ресурс B.
        </li>
        <li>
            <span class="highlight">Транзакция 2:</span> Блокирует ресурс B и запрашивает ресурс A.
        </li>
        <li>
            <span class="highlight">Результат:</span> Обе транзакции ожидают освобождения ресурсов,
            что приводит к взаимной блокировке.
        </li>
    </ul>

    <h2>Пример Deadlock</h2>
    <ul>
        <li>
            <span class="highlight">Транзакция 1:</span>
            <pre><code>BEGIN;
UPDATE accounts SET balance = balance - 100 WHERE id = 1;
UPDATE accounts SET balance = balance + 100 WHERE id = 2;
COMMIT;</code></pre>
        </li>
        <li>
            <span class="highlight">Транзакция 2:</span>
            <pre><code>BEGIN;
UPDATE accounts SET balance = balance - 200 WHERE id = 2;
UPDATE accounts SET balance = balance + 200 WHERE id = 1;
COMMIT;</code></pre>
        </li>
        <li>
            <span class="highlight">Результат:</span> Если транзакция 1 блокирует строку с id=1, а
            транзакция 2 блокирует строку с id=2, то обе транзакции будут ожидать освобождения
            ресурсов, что приведёт к deadlock.
        </li>
    </ul>

    <h2>Как обнаружить Deadlock?</h2>
    <ul>
        <li>
            <span class="highlight">Мониторинг:</span> Большинство СУБД предоставляют инструменты
            для мониторинга и обнаружения deadlock. Например, в PostgreSQL можно использовать
            запрос:
            <pre><code>SELECT * FROM pg_stat_activity WHERE waiting = true;</code></pre>
        </li>
        <li>
            <span class="highlight">Логирование:</span> Некоторые СУБД автоматически логируют
            deadlock, что позволяет анализировать их причины.
        </li>
    </ul>

    <h2>Как предотвратить Deadlock?</h2>
    <ul>
        <li>
            <span class="highlight">Упорядочивание блокировок:</span> Всегда блокируйте ресурсы в
            одном и том же порядке. Это предотвращает циклические зависимости.
        </li>
        <li>
            <span class="highlight">Минимизация времени блокировки:</span> Уменьшайте время, в течение
            которого транзакция удерживает блокировки.
        </li>
        <li>
            <span class="highlight">Использование таймаутов:</span> Установите таймаут для ожидания
            блокировки, чтобы транзакция могла завершиться с ошибкой, если ресурс недоступен.
        </li>
        <li>
            <span class="highlight">Использование изоляции уровня READ COMMITTED:</span> Этот уровень
            изоляции уменьшает вероятность deadlock, так как транзакции не блокируют строки, которые
            они только читают.
        </li>
        <li>
            <span class="highlight">Разделение транзакций:</span> Разделяйте большие транзакции на
            несколько меньших, чтобы уменьшить количество блокировок.
        </li>
    </ul>

    <h2>Пример предотвращения Deadlock</h2>
    <ul>
        <li>
            <span class="highlight">Упорядочивание блокировок:</span>
            <pre><code>-- Транзакция 1
BEGIN;
UPDATE accounts SET balance = balance - 100 WHERE id = 1;
UPDATE accounts SET balance = balance + 100 WHERE id = 2;
COMMIT;

-- Транзакция 2
BEGIN;
UPDATE accounts SET balance = balance - 200 WHERE id = 1;
UPDATE accounts SET balance = balance + 200 WHERE id = 2;
COMMIT;</code></pre>
            Обе транзакции блокируют строки в одном и том же порядке (id=1, затем id=2), что
            предотвращает deadlock.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Deadlock — это серьёзная проблема, которая может
            привести к остановке работы приложения. Понимание причин возникновения deadlock и
            применение методов их предотвращения поможет создать более надёжную и устойчивую систему.
        </p>
    </div>
</body>
</html>', 'DATA_BASE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2295a8f6-94eb-45ee-9fca-d1e6cb25b54d', 'Как определить повторяемую аннотацию?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Повторяемые аннотации в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Повторяемые аннотации в Java</h1>
    <p>
        В Java 8 появилась возможность создавать повторяемые аннотации. Для этого
        необходимо определить аннотацию-контейнер и пометить повторяемую аннотацию
        мета-аннотацией <code>@Repeatable</code>.
    </p>

    <h2>Шаги для создания повторяемой аннотации</h2>
    <ol>
        <li>
            <span class="highlight">Создать аннотацию-контейнер:</span> Эта аннотация будет хранить массив
            повторяемых аннотаций.
        </li>
        <li>
            <span class="highlight">Пометить повторяемую аннотацию мета-аннотацией <code>@Repeatable</code>:</span>
            Указать аннотацию-контейнер в качестве аргумента.
        </li>
    </ol>

    <h2>Пример создания повторяемой аннотации</h2>
    <p>
        Пример определения повторяемой аннотации <code>@Scheduler</code>:
    </p>
    <pre><code>import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

// Аннотация-контейнер
@interface Schedulers {
    Scheduler[] value(); // массив повторяемых аннотаций
}

// Повторяемая аннотация
@Repeatable(Schedulers.class) // указание контейнера
@Retention(RetentionPolicy.RUNTIME) // аннотация доступна во время выполнения
@interface Scheduler {
    String value(); // параметр аннотации
}</code></pre>

    <h2>Использование повторяемой аннотации</h2>
    <p>
        Пример использования повторяемой аннотации:
    </p>
    <pre><code>@Scheduler("daily")
@Scheduler("weekly")
public class Task {
    // Класс с повторяемыми аннотациями
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">Аннотация-контейнер:</span> Аннотация <code>@Schedulers</code> используется для
            хранения массива аннотаций <code>@Scheduler</code>.
        </li>
        <li>
            <span class="highlight">Мета-аннотация <code>@Repeatable</code>:</span> Указывает, что аннотация
            <code>@Scheduler</code> может быть использована несколько раз, и её экземпляры будут
            храниться в контейнере <code>@Schedulers</code>.
        </li>
    </ul>

    <h2>Итог</h2>
    <p>
        Повторяемые аннотации в Java позволяют применять одну и ту же аннотацию несколько
        раз к одному элементу. Для этого необходимо создать аннотацию-контейнер и
        пометить повторяемую аннотацию мета-аннотацией <code>@Repeatable</code>. Этот подход
        упрощает работу с аннотациями, которые могут быть использованы многократно.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5977f110-b1a8-4211-89e9-a59139ec3b7e', ' Для чего нужны функциональные интерфейсы ToDoubleFunction<T>,  ToIntFunction<T> и ToLongFunction<T>?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональные интерфейсы ToDoubleFunction, ToIntFunction и ToLongFunction</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональные интерфейсы ToDoubleFunction, ToIntFunction и ToLongFunction</h1>
    <p>
        В Java 8 функциональные интерфейсы <code>ToDoubleFunction&lt;T&gt;</code>,
        <code>ToIntFunction&lt;T&gt;</code> и <code>ToLongFunction&lt;T&gt;</code> используются для
        реализации операций, которые принимают один аргумент типа <code>T</code> и возвращают
        результат в виде числового значения (<code>double</code>, <code>int</code> или <code>long</code>). Эти
        интерфейсы полезны для задач, связанных с преобразованием данных или вычислениями.
    </p>

    <h2>Примеры использования</h2>

    <h3>ToDoubleFunction&lt;T&gt;</h3>
    <p>
        Интерфейс <code>ToDoubleFunction&lt;T&gt;</code> принимает аргумент и возвращает результат
        типа <code>double</code>.
    </p>
    <pre><code>import java.util.function.ToDoubleFunction;

public class Main {
    public static void main(String[] args) {
        ToDoubleFunction<String> lengthAsDouble = s -> (double) s.length(); // длина строки как double
        System.out.println(lengthAsDouble.applyAsDouble("Hello")); // 5.0
    }
}</code></pre>

    <h3>ToIntFunction&lt;T&gt;</h3>
    <p>
        Интерфейс <code>ToIntFunction&lt;T&gt;</code> принимает аргумент и возвращает результат
        типа <code>int</code>.
    </p>
    <pre><code>import java.util.function.ToIntFunction;

public class Main {
    public static void main(String[] args) {
        ToIntFunction<String> lengthAsInt = String::length; // длина строки как int
        System.out.println(lengthAsInt.applyAsInt("Hello")); // 5
    }
}</code></pre>

    <h3>ToLongFunction&lt;T&gt;</h3>
    <p>
        Интерфейс <code>ToLongFunction&lt;T&gt;</code> принимает аргумент и возвращает результат
        типа <code>long</code>.
    </p>
    <pre><code>import java.util.function.ToLongFunction;

public class Main {
    public static void main(String[] args) {
        ToLongFunction<String> lengthAsLong = s -> (long) s.length(); // длина строки как long
        System.out.println(lengthAsLong.applyAsLong("Hello")); // 5
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональные интерфейсы <code>ToDoubleFunction&lt;T&gt;</code>,
        <code>ToIntFunction&lt;T&gt;</code> и <code>ToLongFunction&lt;T&gt;</code> предоставляют удобный
        способ выполнения операций над одним аргументом и возврата числового результата.
        Они полезны для задач, связанных с преобразованием данных, вычислениями или
        агрегацией значений.
    </p>
</body>
</html>', 'JAVA_CORE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('910428f1-495f-4285-ba8e-d173d3d5171c', 'Как бы вы оптимизировали запрос, который выполняется медленно из-за большого количества JOIN?', e'<!DOCTYPE html><html lang="ru"> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <title>Оптимизация запросов с большим количеством JOIN</title> <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style> </head> <body> <h1>Оптимизация запросов с большим количеством JOIN</h1> <p> Запросы с большим количеством JOIN могут выполняться медленно из-за сложности операций соединения и большого объёма данных. Вот несколько способов оптимизации таких запросов: </p>
Copy
<div class="note">
    <p>
        <span class="highlight">1. Используйте индексы:</span> Убедитесь, что все столбцы, участвующие в JOIN,
        индексированы. Это значительно ускорит поиск и соединение данных.
    </p>
    <p>
        <span class="highlight">2. Уменьшите количество JOIN:</span> Проверьте, все ли JOIN действительно необходимы.
        Иногда данные можно получить через подзапросы или предварительную агрегацию.
    </p>
    <p>
        <span class="highlight">3. Оптимизируйте порядок JOIN:</span> Порядок соединения таблиц может влиять на
        производительность. Начинайте с таблиц с наименьшим количеством строк или используйте статистику
        запросов для определения оптимального порядка.
    </p>
    <p>
        <span class="highlight">4. Используйте временные таблицы:</span> Если данные для JOIN можно предварительно
        подготовить, создайте временные таблицы или материализованные представления.
    </p>
    <p>
        <span class="highlight">5. Применяйте фильтры:</span> Добавьте условия WHERE для уменьшения количества строк,
        участвующих в JOIN. Это снизит нагрузку на операцию соединения.
    </p>
    <p>
        <span class="highlight">6. Анализируйте план выполнения:</span> Используйте EXPLAIN или EXPLAIN ANALYZE для
        анализа плана выполнения запроса. Это поможет выявить узкие места и оптимизировать их.
    </p>
</div>
</body> </html>', 'DATA_BASE', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('11268da2-7d7a-46e4-8a65-0cb6fd6bcc5a', 'Что такое "sharding" и как его можно реализовать в распределенной базе данных?', '<!DOCTYPE html><html lang="ru"> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <title>Sharding в распределённых базах данных</title> <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style> </head> <body> <h1>Sharding в распределённых базах данных</h1> <div class="note"> <p> <span class="highlight">Sharding</span> — это метод горизонтального разделения данных в распределённых базах данных, при котором данные разбиваются на меньшие части (шарды) и распределяются между несколькими серверами. Каждый шард содержит подмножество данных, что позволяет улучшить производительность, масштабируемость и отказоустойчивость системы. Sharding можно реализовать несколькими способами: <span class="highlight">1. По диапазону значений</span> (например, данные разбиваются по диапазону дат или идентификаторов), <span class="highlight">2. По хэшу</span> (данные распределяются на основе хэш-функции от ключа), <span class="highlight">3. По списку</span> (каждому шарду назначается определённый набор значений). Для реализации sharding используются специализированные системы, такие как MongoDB, Cassandra или CockroachDB, либо собственные решения на основе middleware, которые управляют распределением данных и маршрутизацией запросов. Важно учитывать, что sharding добавляет сложность в управление данными, такие как балансировка нагрузки, обеспечение согласованности и обработка запросов, затрагивающих несколько шардов. </p> </div> </body> </html>', 'DATA_BASE', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('20e8c18a-45af-462a-9034-022927c61ddf', 'Как бы вы профилировали Java-приложение для поиска узких мест в производительности?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Профилирование Java-приложений</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Профилирование Java-приложений</h1>
    <p>
        Профилирование Java-приложений — это процесс анализа производительности программы с целью выявления узких мест, которые могут замедлять её работу. Это важный этап оптимизации, позволяющий улучшить отзывчивость и эффективность приложения.
    </p>

    <h2>Основные подходы к профилированию</h2>
    <ul>
        <li>
            <span class="highlight">Инструменты профилирования:</span> Используйте специализированные инструменты, такие как <code>VisualVM</code>, <code>JProfiler</code>, <code>YourKit</code> или <code>Java Mission Control (JMC)</code>. Эти инструменты позволяют анализировать использование памяти, CPU, потоков и других ресурсов.
        </li>
        <li>
            <span class="highlight">Профилирование CPU:</span> Определите методы, которые потребляют наибольшее количество процессорного времени. Это поможет найти места, где выполнение кода можно оптимизировать.
        </li>
        <li>
            <span class="highlight">Профилирование памяти:</span> Анализируйте использование памяти, чтобы обнаружить утечки или чрезмерное потребление. Инструменты могут показывать объекты, которые занимают много памяти или не освобождаются сборщиком мусора.
        </li>
        <li>
            <span class="highlight">Профилирование потоков:</span> Проверьте, как используются потоки в приложении. Это поможет выявить deadlock\'и, contention (состязание за ресурсы) и другие проблемы, связанные с многопоточностью.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Профилирование следует проводить на реальных данных и в условиях, максимально приближенных к production-среде. Это обеспечит точность результатов и поможет избежать ложных выводов.
        </p>
    </div>

    <h2>Примеры инструментов для профилирования</h2>
    <ul>
        <li>
            <code>VisualVM</code> — бесплатный инструмент, входящий в состав JDK, который предоставляет базовые возможности для анализа производительности.
        </li>
        <li>
            <code>JProfiler</code> — мощный коммерческий инструмент с расширенными функциями для анализа CPU, памяти и потоков.
        </li>
        <li>
            <code>Java Mission Control (JMC)</code> — инструмент от Oracle для мониторинга и анализа производительности Java-приложений.
        </li>
    </ul>

    <h2>Рекомендации по оптимизации</h2>
    <ul>
        <li>
            <span class="highlight">Оптимизация алгоритмов:</span> Убедитесь, что используемые алгоритмы эффективны и имеют оптимальную сложность.
        </li>
        <li>
            <span class="highlight">Сокращение нагрузки на память:</span> Уменьшите количество создаваемых объектов и используйте кэширование, если это возможно.
        </li>
        <li>
            <span class="highlight">Устранение узких мест в многопоточности:</span> Избегайте блокировок и состязания за ресурсы, используя более эффективные механизмы синхронизации.
        </li>
    </ul>
</body>
</html>', 'SYSTEM_DESIGN', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f9afca98-b706-4ec4-874b-5cd00c8dca7f', 'Что такое "memory leak" в Java? Как его можно обнаружить и устранить?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Утечки памяти в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Утечки памяти в Java</h1>
    <p>
        Утечка памяти (<span class="highlight">memory leak</span>) — это ситуация, когда объекты, которые больше не используются приложением, не удаляются сборщиком мусора (Garbage Collector, GC), что приводит к постепенному увеличению потребления памяти. В конечном итоге это может вызвать <code>OutOfMemoryError</code> и сбой приложения.
    </p>

    <h2>Причины утечек памяти</h2>
    <ul>
        <li>
            <span class="highlight">Неиспользуемые ссылки:</span> Объекты остаются в памяти, если на них сохраняются ссылки, которые не очищаются. Например, статические поля, кэши или коллекции, которые не очищаются.
        </li>
        <li>
            <span class="highlight">Неправильное использование коллекций:</span> Если объекты добавляются в коллекцию, но никогда не удаляются, это может привести к утечке.
        </li>
        <li>
            <span class="highlight">Слушатели событий (listeners):</span> Если объекты регистрируются как слушатели, но не удаляются после использования, они могут удерживаться в памяти.
        </li>
        <li>
            <span class="highlight">Внутренние классы:</span> Неправильное использование внутренних классов, особенно нестатических, может привести к утечкам, так как они хранят ссылку на внешний класс.
        </li>
    </ul>

    <h2>Как обнаружить утечки памяти?</h2>
    <ul>
        <li>
            <span class="highlight">Инструменты профилирования:</span> Используйте инструменты, такие как <code>VisualVM</code>, <code>JProfiler</code>, <code>Eclipse MAT</code> или <code>YourKit</code>, чтобы анализировать использование памяти и находить объекты, которые не удаляются сборщиком мусора.
        </li>
        <li>
            <span class="highlight">Анализ дампов памяти:</span> Создайте дамп памяти (<code>heap dump</code>) с помощью инструментов или JVM-параметров (например, <code>-XX:+HeapDumpOnOutOfMemoryError</code>), а затем проанализируйте его с помощью <code>Eclipse MAT</code> или аналогичных инструментов.
        </li>
        <li>
            <span class="highlight">Мониторинг потребления памяти:</span> Следите за потреблением памяти приложения с помощью мониторинга (например, через <code>JMX</code> или <code>Grafana</code>). Резкий рост потребления памяти может указывать на утечку.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Утечки памяти могут быть незаметны на ранних этапах, но со временем они приводят к серьёзным проблемам. Регулярный мониторинг и анализ памяти помогают выявить их до того, как они станут критическими.
        </p>
    </div>

    <h2>Как устранить утечки памяти?</h2>
    <ul>
        <li>
            <span class="highlight">Очистка ссылок:</span> Убедитесь, что ссылки на объекты, которые больше не нужны, удаляются. Например, очищайте коллекции или обнуляйте статические поля.
        </li>
        <li>
            <span class="highlight">Использование слабых ссылок:</span> В случаях, где это уместно, используйте <code>WeakReference</code> или <code>SoftReference</code>, чтобы позволить сборщику мусора удалять объекты, когда они больше не используются.
        </li>
        <li>
            <span class="highlight">Правильное использование слушателей:</span> Убедитесь, что слушатели событий удаляются, когда они больше не нужны.
        </li>
        <li>
            <span class="highlight">Ограничение размера кэшей:</span> Если вы используете кэши, установите ограничение на их размер и используйте алгоритмы вытеснения (например, LRU — Least Recently Used).
        </li>
    </ul>

    <h2>Примеры инструментов для анализа утечек памяти</h2>
    <ul>
        <li>
            <code>VisualVM</code> — бесплатный инструмент для мониторинга и анализа памяти.
        </li>
        <li>
            <code>Eclipse MAT (Memory Analyzer Tool)</code> — мощный инструмент для анализа дампов памяти.
        </li>
        <li>
            <code>JProfiler</code> — коммерческий инструмент с расширенными возможностями для поиска утечек памяти.
        </li>
    </ul>
</body>
</html>', 'SYSTEM_DESIGN', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('099f5177-896a-4d77-9987-f2f3f7a2946b', 'Как бы вы оптимизировали приложение, которое потребляет слишком много памяти?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оптимизация потребления памяти</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Оптимизация потребления памяти</h1>
    <p>
        Если ваше приложение потребляет слишком много памяти, это может привести к замедлению работы, частым паузам сборки мусора (<span class="highlight">GC pauses</span>) и даже к <code>OutOfMemoryError</code>. Оптимизация памяти — это процесс уменьшения объёма используемой памяти за счёт улучшения структуры данных, алгоритмов и устранения утечек памяти.
    </p>

    <h2>Основные шаги для оптимизации памяти</h2>
    <ul>
        <li>
            <span class="highlight">Анализ использования памяти:</span> Используйте инструменты профилирования, такие как <code>VisualVM</code>, <code>JProfiler</code> или <code>Eclipse MAT</code>, чтобы понять, какие объекты занимают больше всего памяти и где находятся узкие места.
        </li>
        <li>
            <span class="highlight">Устранение утечек памяти:</span> Проверьте, нет ли в приложении утечек памяти. Убедитесь, что объекты, которые больше не используются, удаляются сборщиком мусора. Очищайте коллекции, обнуляйте ссылки и используйте слабые ссылки (<code>WeakReference</code>), где это уместно.
        </li>
        <li>
            <span class="highlight">Оптимизация структур данных:</span> Используйте более эффективные структуры данных. Например, замените <code>ArrayList</code> на <code>LinkedList</code>, если часто добавляете или удаляете элементы, или используйте специализированные коллекции, такие как <code>HashMap</code> или <code>HashSet</code>, для быстрого доступа.
        </li>
        <li>
            <span class="highlight">Сокращение количества объектов:</span> Уменьшите количество создаваемых объектов. Например, используйте пулы объектов (<code>object pooling</code>) для часто используемых объектов или применяйте кэширование.
        </li>
        <li>
            <span class="highlight">Оптимизация строк:</span> Строки в Java могут занимать много памяти. Используйте <code>StringBuilder</code> или <code>StringBuffer</code> для конкатенации строк, а также избегайте создания лишних строковых объектов.
        </li>
        <li>
            <span class="highlight">Настройка сборщика мусора:</span> Выберите подходящий сборщик мусора (<code>Garbage Collector</code>) и настройте его параметры в зависимости от требований вашего приложения. Например, для приложений с низкой задержкой подойдёт <code>G1GC</code> или <code>ZGC</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Оптимизация памяти должна быть сбалансированной. Чрезмерная оптимизация может усложнить код и снизить его читаемость. Убедитесь, что изменения действительно улучшают производительность.
        </p>
    </div>

    <h2>Примеры инструментов для оптимизации памяти</h2>
    <ul>
        <li>
            <code>VisualVM</code> — бесплатный инструмент для мониторинга и анализа памяти.
        </li>
        <li>
            <code>Eclipse MAT (Memory Analyzer Tool)</code> — мощный инструмент для анализа дампов памяти.
        </li>
        <li>
            <code>JProfiler</code> — коммерческий инструмент с расширенными возможностями для анализа памяти.
        </li>
    </ul>

    <h2>Рекомендации по оптимизации</h2>
    <ul>
        <li>
            <span class="highlight">Используйте примитивные типы:</span> Если возможно, используйте примитивные типы (<code>int</code>, <code>long</code>, <code>double</code>) вместо их объектных аналогов (<code>Integer</code>, <code>Long</code>, <code>Double</code>), чтобы уменьшить накладные расходы.
        </li>
        <li>
            <span class="highlight">Ограничьте размер кэшей:</span> Если приложение использует кэши, установите ограничение на их размер и используйте алгоритмы вытеснения, такие как LRU (Least Recently Used).
        </li>
        <li>
            <span class="highlight">Минимизируйте использование статических данных:</span> Статические поля хранятся в памяти на протяжении всего времени работы приложения. Убедитесь, что они действительно необходимы.
        </li>
        <li>
            <span class="highlight">Оптимизируйте сериализацию:</span> Если приложение использует сериализацию, убедитесь, что сериализуемые объекты не содержат лишних данных. Используйте <code>transient</code> для полей, которые не нужно сериализовать.
        </li>
    </ul>
</body>
</html>', 'SYSTEM_DESIGN', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('eef296e5-d514-46b3-b8e1-d58c7046a592', 'Как работает механизм кэширования в Spring? Какие стратегии кэширования вы знаете?', e'<!DOCTYPE html>
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
        Кэширование — это механизм, который позволяет сохранять результаты выполнения методов для повторного использования, что уменьшает нагрузку на систему и ускоряет выполнение приложения. В Spring кэширование реализовано с помощью аннотаций и поддерживает различные стратегии и провайдеры кэширования.
    </p>

    <h2>Как работает кэширование в Spring?</h2>
    <ul>
        <li>
            <span class="highlight">Аннотации для кэширования:</span> Spring предоставляет несколько аннотаций для управления кэшированием:
            <ul>
                <li><code>@Cacheable</code> — указывает, что результат метода должен быть закэширован.</li>
                <li><code>@CachePut</code> — обновляет кэш новым результатом метода.</li>
                <li><code>@CacheEvict</code> — удаляет данные из кэша.</li>
                <li><code>@Caching</code> — позволяет комбинировать несколько аннотаций кэширования.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Провайдеры кэширования:</span> Spring поддерживает различные реализации кэширования, такие как <code>EhCache</code>, <code>Caffeine</code>, <code>Redis</code>, <code>Hazelcast</code> и другие. Выбор провайдера зависит от требований приложения.
                                                                                                    </li>
                                                                                                    <li>
                                                                                                    <span class="highlight">Ключи кэширования:</span> Ключи кэширования генерируются на основе параметров метода. Вы можете настроить ключи с помощью атрибута <code>key</code> в аннотациях.
                                                                                                    </li>
                                                                                                    <li>
                                                                                                    <span class="highlight">Условное кэширование:</span> Вы можете указать условия для кэширования с помощью атрибута <code>condition</code> или <code>unless</code> в аннотациях. Например, кэшировать только определённые результаты.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Кэширование следует использовать с осторожностью. Неправильное использование кэша может привести к устаревшим данным или увеличению потребления памяти.
        </p>
    </div>

    <h2>Стратегии кэширования</h2>
    <ul>
        <li>
            <span class="highlight">LRU (Least Recently Used):</span> Удаляет из кэша данные, которые дольше всего не использовались. Это одна из самых популярных стратегий.
        </li>
        <li>
            <span class="highlight">LFU (Least Frequently Used):</span> Удаляет данные, которые реже всего использовались.
        </li>
        <li>
            <span class="highlight">FIFO (First In, First Out):</span> Удаляет данные в порядке их добавления в кэш.
        </li>
        <li>
            <span class="highlight">TTL (Time To Live):</span> Устанавливает время жизни данных в кэше. После истечения этого времени данные удаляются.
        </li>
        <li>
            <span class="highlight">Write-Through и Write-Behind:</span>
            <ul>
                <li><code>Write-Through</code> — данные записываются в кэш и в хранилище одновременно.</li>
                <li><code>Write-Behind</code> — данные сначала записываются в кэш, а затем асинхронно в хранилище.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования кэширования в Spring</h2>
    <pre><code>
@Cacheable(value = "books", key = "#isbn")
public Book findBookByIsbn(String isbn) {
    // Логика поиска книги
    return book;
}

@CachePut(value = "books", key = "#book.isbn")
public Book updateBook(Book book) {
    // Логика обновления книги
    return book;
}

@CacheEvict(value = "books", key = "#isbn")
public void deleteBook(String isbn) {
    // Логика удаления книги
}
    </code></pre>

    <h2>Популярные провайдеры кэширования</h2>
    <ul>
        <li>
            <code>EhCache</code> — мощный и гибкий провайдер кэширования с поддержкой распределённого кэширования.
        </li>
        <li>
            <code>Caffeine</code> — высокопроизводительный кэш на основе Java 8, подходящий для локального кэширования.
        </li>
        <li>
            <code>Redis</code> — распределённый кэш, который часто используется для масштабируемых приложений.
        </li>
        <li>
            <code>Hazelcast</code> — распределённый кэш и хранилище данных в памяти.
        </li>
    </ul>
</body>
</html>
', 'SPRING', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('21c3b7b2-b141-4f7c-b851-79afb684c2a0', 'Как бы вы оптимизировали работу с базой данных в высоконагруженном приложении?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оптимизация работы с базой данных</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Оптимизация работы с базой данных</h1>
    <p>
        В высоконагруженных приложениях работа с базой данных часто становится узким местом. Оптимизация запросов, настройка базы данных и использование современных подходов к работе с данными позволяют значительно повысить производительность и отказоустойчивость системы.
    </p>

    <h2>Основные подходы к оптимизации</h2>
    <ul>
        <li>
            <span class="highlight">Оптимизация запросов:</span>
            <ul>
                <li>Используйте индексы для ускорения поиска по часто запрашиваемым полям.</li>
                <li>Избегайте <code>SELECT *</code> — выбирайте только необходимые столбцы.</li>
                <li>Минимизируйте количество JOIN\'ов, особенно на больших таблицах.</li>
                <li>Используйте пакетные операции (<code>batch processing</code>) для вставки или обновления большого количества данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Настройка базы данных:</span>
            <ul>
                <li>Настройте параметры базы данных, такие как размер пула соединений, кэширование запросов и буферы.</li>
                <li>Используйте репликацию для распределения нагрузки на чтение.</li>
                <li>Партиционируйте большие таблицы для ускорения запросов и упрощения управления данными.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Кэширование:</span>
            <ul>
                <li>Используйте кэширование результатов запросов с помощью таких инструментов, как <code>Redis</code>, <code>Memcached</code> или <code>EhCache</code>.</li>
                <li>Настройте TTL (Time To Live) для кэшированных данных, чтобы избежать устаревания.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Асинхронная обработка:</span>
            <ul>
                <li>Используйте асинхронные запросы к базе данных, чтобы не блокировать основной поток выполнения.</li>
                <li>Применяйте очереди задач (например, <code>RabbitMQ</code> или <code>Kafka</code>) для отложенной обработки данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Масштабирование:</span>
            <ul>
                <li>Используйте шардинг (горизонтальное разделение данных) для распределения нагрузки между несколькими серверами.</li>
                <li>Рассмотрите возможность использования NoSQL-решений (например, <code>MongoDB</code>, <code>Cassandra</code>) для работы с большими объёмами данных.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Оптимизация базы данных должна быть комплексной. Недостаточно просто добавить индексы или кэширование — важно анализировать нагрузку и тестировать изменения на реальных данных.
        </p>
    </div>

    <h2>Примеры инструментов для мониторинга и оптимизации</h2>
    <ul>
        <li>
            <code>EXPLAIN</code> — команда в SQL, которая показывает, как выполняется запрос, и помогает найти узкие места.
        </li>
        <li>
            <code>pg_stat_activity</code> (для PostgreSQL) — представление, которое показывает текущие активные запросы и их состояние.
        </li>
        <li>
            <code>Slow Query Log</code> (в MySQL) — журнал медленных запросов, который помогает выявить проблемные запросы.
        </li>
        <li>
            <code>Redis</code> — инструмент для кэширования данных и снижения нагрузки на базу данных.
        </li>
    </ul>

    <h2>Рекомендации по оптимизации</h2>
    <ul>
        <li>
            <span class="highlight">Используйте Connection Pooling:</span> Настройте пул соединений (например, <code>HikariCP</code>) для эффективного управления подключениями к базе данных.
        </li>
        <li>
            <span class="highlight">Минимизируйте блокировки:</span> Используйте транзакции с минимально возможным уровнем изоляции, чтобы избежать блокировок и deadlock\'ов.
        </li>
        <li>
            <span class="highlight">Оптимизируйте схему базы данных:</span> Убедитесь, что схема базы данных нормализована, но не переусердствуйте с нормализацией, чтобы избежать излишних JOIN\'ов.
        </li>
        <li>
            <span class="highlight">Регулярно анализируйте и обслуживайте базу данных:</span> Проводите реиндексацию, обновление статистики и очистку старых данных.
        </li>
    </ul>

    <h2>Пример оптимизации запроса</h2>
    <pre><code>
-- До оптимизации
SELECT * FROM orders WHERE customer_id = 123 AND status = \'SHIPPED\';

-- После оптимизации
CREATE INDEX idx_customer_status ON orders(customer_id, status);
SELECT order_id, order_date FROM orders WHERE customer_id = 123 AND status = \'SHIPPED\';
    </code></pre>
</body>
</html>', 'DATA_BASE', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f60db753-7101-45da-91be-11158c349db7', 'Назовите основные интерфейсы JCF и их реализации', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Основные интерфейсы JCF и их реализации</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Основные интерфейсы JCF и их реализации</h1>
    <p>
        На вершине иерархии в Java Collection Framework располагаются 2 интерфейса: <code>Collection</code> и
        <code>Map</code>. Эти интерфейсы разделяют все коллекции, входящие во фреймворк, на две части по
        типу хранения данных: простые последовательные наборы элементов и наборы пар «ключ-значение» соответственно.
    </p>

    <h2>Интерфейс <code>Collection</code></h2>
    <p>
        Интерфейс <code>Collection</code> расширяют следующие интерфейсы:
    </p>
    <ul>
        <li>
            <span class="highlight">List (список):</span> представляет собой коллекцию, в которой допустимы дублирующие
            значения. Элементы такой коллекции пронумерованы, начиная от нуля, к ним можно
            обратиться по индексу. Реализации:
            <ul>
                <li><code>ArrayList</code> – инкапсулирует в себе обычный массив, длина которого автоматически
                    увеличивается при добавлении новых элементов.</li>
                <li><code>LinkedList</code> (двунаправленный связный список) – состоит из узлов, каждый из
                    которых содержит как собственно данные, так и две ссылки на следующий и
                    предыдущий узел.</li>
                <li><code>Vector</code> – реализация динамического массива объектов, методы которой
                    синхронизированы.</li>
                <li><code>Stack</code> – реализация стека LIFO (last-in-first-out).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Set (сет):</span> описывает неупорядоченную коллекцию, не содержащую повторяющихся
            элементов. Реализации:
            <ul>
                <li><code>HashSet</code> – использует <code>HashMap</code> для хранения данных. В качестве ключа и
                    значения используется добавляемый элемент. Из-за особенностей реализации
                    порядок элементов не гарантируется при добавлении.</li>
                <li><code>LinkedHashSet</code> – гарантирует, что порядок элементов при обходе коллекции будет
                    идентичен порядку добавления элементов.</li>
                <li><code>TreeSet</code> – предоставляет возможность управлять порядком элементов в коллекции
                    при помощи объекта <code>Comparator</code> либо сохраняет элементы с использованием
                    «natural ordering».</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Queue (очередь):</span> предназначена для хранения элементов с предопределённым
            способом вставки и извлечения FIFO (first-in-first-out):
            <ul>
                <li><code>PriorityQueue</code> – предоставляет возможность управлять порядком элементов в
                    коллекции при помощи объекта <code>Comparator</code> либо сохраняет элементы с
                    использованием «natural ordering».</li>
                <li><code>ArrayDeque</code> – реализация интерфейса <code>Deque</code>, который расширяет интерфейс
                    <code>Queue</code> методами, позволяющими реализовать конструкцию вида LIFO (last-in-first-out).</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Интерфейс <code>Map</code> не является частью интерфейса <code>Collection</code>, но он также играет важную роль в Java Collection Framework. Он представляет коллекции, основанные на парах «ключ-значение».
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4d1d7844-01cc-4283-8c51-04785779b341', 'Как бы вы протестировали многопоточное приложение? Какие инструменты и подходы вы бы использовали?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Тестирование многопоточных приложений</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Тестирование многопоточных приложений</h1>
    <p>
        Тестирование многопоточных приложений — это сложная задача, так как такие приложения подвержены проблемам, связанным с параллельным выполнением, таким как race conditions, deadlocks, livelocks и другие. Для эффективного тестирования необходимо использовать специальные инструменты и подходы.
    </p>

    <h2>Основные подходы к тестированию многопоточных приложений</h2>
    <ul>
        <li>
            <span class="highlight">Модульное тестирование:</span>
            <ul>
                <li>Используйте фреймворки для модульного тестирования, такие как <code>JUnit</code> или <code>TestNG</code>.</li>
                <li>Тестируйте отдельные компоненты в изоляции, чтобы убедиться, что они работают корректно.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Интеграционное тестирование:</span>
            <ul>
                <li>Проверяйте взаимодействие между потоками и компонентами.</li>
                <li>Используйте инструменты для симуляции многопоточных сценариев, такие как <code>ConcurrentUnit</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Нагрузочное тестирование:</span>
            <ul>
                <li>Используйте инструменты, такие как <code>JMeter</code> или <code>Gatling</code>, чтобы проверить, как приложение ведёт себя под высокой нагрузкой.</li>
                <li>Симулируйте большое количество одновременных пользователей или потоков.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Тестирование на race conditions:</span>
            <ul>
                <li>Используйте инструменты, такие как <code>ThreadSanitizer</code> или <code>Java PathFinder</code>, для обнаружения гонок данных.</li>
                <li>Проводите тестирование в различных условиях, изменяя порядок выполнения потоков.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Тестирование на deadlocks и livelocks:</span>
            <ul>
                <li>Используйте инструменты для анализа блокировок, такие как <code>jstack</code> или <code>VisualVM</code>.</li>
                <li>Симулируйте сценарии, которые могут привести к взаимоблокировкам.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Многопоточные ошибки часто трудно воспроизвести, так как они зависят от времени и порядка выполнения потоков. Поэтому важно проводить тестирование в различных условиях и с разными настройками.
        </p>
    </div>

    <h2>Инструменты для тестирования многопоточных приложений</h2>
    <ul>
        <li>
            <code>JUnit</code> — популярный фреймворк для модульного тестирования.
        </li>
        <li>
            <code>TestNG</code> — расширенный фреймворк для тестирования, поддерживающий многопоточные тесты.
        </li>
        <li>
            <code>ConcurrentUnit</code> — библиотека для тестирования многопоточного кода.
        </li>
        <li>
            <code>JMeter</code> — инструмент для нагрузочного тестирования.
        </li>
        <li>
            <code>ThreadSanitizer</code> — инструмент для обнаружения гонок данных в многопоточных приложениях.
        </li>
        <li>
            <code>Java PathFinder</code> — инструмент для анализа многопоточных программ на Java.
        </li>
    </ul>

    <h2>Рекомендации по тестированию</h2>
    <ul>
        <li>
            <span class="highlight">Используйте детерминированные тесты:</span> По возможности создавайте тесты, которые не зависят от времени выполнения потоков.
        </li>
        <li>
            <span class="highlight">Тестируйте в различных условиях:</span> Проводите тесты на разных платформах и с разными настройками JVM.
        </li>
        <li>
            <span class="highlight">Анализируйте логи и дампы потоков:</span> Используйте логирование и инструменты, такие как <code>jstack</code>, для анализа состояния потоков.
        </li>
        <li>
            <span class="highlight">Проводите стресс-тестирование:</span> Создавайте сценарии с высокой нагрузкой, чтобы выявить скрытые проблемы.
        </li>
    </ul>

    <h2>Пример тестирования многопоточного кода</h2>
    <pre><code>
import org.junit.Test;
import java.util.concurrent.atomic.AtomicInteger;
import static org.junit.Assert.assertEquals;

public class CounterTest {
    @Test
    public void testCounter() throws InterruptedException {
        AtomicInteger counter = new AtomicInteger(0);
        Runnable task = () -> {
            for (int i = 0; i < 1000; i++) {
                counter.incrementAndGet();
            }
        };

        Thread thread1 = new Thread(task);
        Thread thread2 = new Thread(task);

        thread1.start();
        thread2.start();
        thread1.join();
        thread2.join();

        assertEquals(2000, counter.get());
    }
}
    </code></pre>
</body>
</html>', 'TEST', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2d306e0f-6f90-4d44-8d6b-f96facb9380b', 'Как бы вы написал интеграционные тесты для REST API с использованием Spring Boot?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Интеграционные тесты для REST API в Spring Boot</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Интеграционные тесты для REST API в Spring Boot</h1>
    <p>
        Интеграционные тесты для REST API позволяют проверить взаимодействие между различными компонентами приложения, включая контроллеры, сервисы и базу данных. В Spring Boot для этого используются такие инструменты, как <code>Spring Boot Test</code>, <code>MockMvc</code> и <code>TestRestTemplate</code>.
    </p>

    <h2>Основные подходы к написанию интеграционных тестов</h2>
    <ul>
        <li>
            <span class="highlight">Использование Spring Boot Test:</span>
            <ul>
                <li>Используйте аннотацию <code>@SpringBootTest</code> для запуска тестов в контексте Spring Boot.</li>
                <li>Настройте тестовый контекст с помощью аннотаций, таких как <code>@TestConfiguration</code> или <code>@MockBean</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Тестирование с помощью MockMvc:</span>
            <ul>
                <li>Используйте <code>MockMvc</code> для тестирования контроллеров без запуска сервера.</li>
                <li>Проверяйте HTTP-запросы и ответы, включая статусы, заголовки и тело ответа.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Тестирование с помощью TestRestTemplate:</span>
            <ul>
                <li>Используйте <code>TestRestTemplate</code> для выполнения реальных HTTP-запросов к запущенному серверу.</li>
                <li>Этот подход подходит для тестирования полного цикла запроса и ответа.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование тестовой базы данных:</span>
            <ul>
                <li>Настройте тестовую базу данных (например, H2) для изоляции тестов от production-данных.</li>
                <li>Используйте аннотацию <code>@DataJpaTest</code> для тестирования репозиториев.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Интеграционные тесты должны быть изолированными и не зависеть от внешних систем. Используйте моки и заглушки для внешних зависимостей.
        </p>
    </div>

    <h2>Пример интеграционного теста с использованием MockMvc</h2>
    <pre><code>
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

@SpringBootTest
@AutoConfigureMockMvc
public class UserControllerIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testGetUserById() throws Exception {
        mockMvc.perform(get("/users/1"))
               .andExpect(status().isOk())
               .andExpect(jsonPath("$.id").value(1))
               .andExpect(jsonPath("$.name").value("John Doe"));
    }
}
    </code></pre>

    <h2>Пример интеграционного теста с использованием TestRestTemplate</h2>
    <pre><code>
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.ResponseEntity;
import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class UserControllerIntegrationTest {

    @Autowired
    private TestRestTemplate restTemplate;

    @Test
    public void testGetUserById() {
        ResponseEntity&lt;User&gt; response = restTemplate.getForEntity("/users/1", User.class);
        assertEquals(200, response.getStatusCodeValue());
        assertEquals("John Doe", response.getBody().getName());
    }
}
    </code></pre>

    <h2>Рекомендации по написанию интеграционных тестов</h2>
    <ul>
        <li>
            <span class="highlight">Используйте аннотации для настройки тестов:</span> Например, <code>@SpringBootTest</code>, <code>@AutoConfigureMockMvc</code>, <code>@DataJpaTest</code>.
        </li>
        <li>
            <span class="highlight">Изолируйте тесты:</span> Используйте тестовую базу данных и моки для внешних зависимостей.
        </li>
        <li>
            <span class="highlight">Проверяйте все аспекты ответа:</span> Статус, заголовки, тело и время выполнения.
        </li>
        <li>
            <span class="highlight">Используйте AssertJ или Hamcrest:</span> Для более читаемых и мощных проверок.
        </li>
    </ul>

    <h2>Популярные инструменты для тестирования REST API</h2>
    <ul>
        <li>
            <code>MockMvc</code> — для тестирования контроллеров без запуска сервера.
        </li>
        <li>
            <code>TestRestTemplate</code> — для выполнения реальных HTTP-запросов.
        </li>
        <li>
            <code>RestAssured</code> — библиотека для удобного тестирования REST API.
        </li>
        <li>
            <code>H2 Database</code> — встроенная база данных для тестирования.
        </li>
    </ul>
</body>
</html>', 'TEST', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ce48be41-d4ac-4a91-93ee-c548c8b90c20', 'Что такое "mocking" и как его можно использовать в модульных тестах? Какие библиотеки для mocking вы знаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mocking в модульных тестах</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Mocking в модульных тестах</h1>
    <p>
        <span class="highlight">Mocking</span> — это техника, используемая в модульных тестах для создания объектов-заглушек, которые имитируют поведение реальных объектов. Это позволяет изолировать тестируемый код от внешних зависимостей, таких как базы данных, сетевые запросы или сложные сервисы.
    </p>

    <h2>Для чего используется mocking?</h2>
    <ul>
        <li>
            <span class="highlight">Изоляция тестов:</span> Mocking позволяет тестировать код независимо от внешних систем, что делает тесты более стабильными и быстрыми.
        </li>
        <li>
            <span class="highlight">Имитация поведения:</span> Вы можете настроить mock-объекты так, чтобы они возвращали определённые значения или выбрасывали исключения, что помогает проверить различные сценарии.
        </li>
        <li>
            <span class="highlight">Проверка взаимодействий:</span> Mocking позволяет убедиться, что тестируемый код корректно взаимодействует с зависимостями (например, вызывает определённые методы с правильными аргументами).
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Mocking следует использовать с осторожностью. Чрезмерное использование моков может привести к хрупким тестам, которые не отражают реальное поведение системы.
        </p>
    </div>

    <h2>Как использовать mocking в модульных тестах?</h2>
    <ul>
        <li>
            <span class="highlight">Создание mock-объектов:</span> Используйте библиотеки, такие как <code>Mockito</code>, чтобы создавать mock-объекты.
        </li>
        <li>
            <span class="highlight">Настройка поведения:</span> Определите, как mock-объект должен реагировать на вызовы методов. Например, какие значения возвращать или какие исключения выбрасывать.
        </li>
        <li>
            <span class="highlight">Проверка взаимодействий:</span> Убедитесь, что тестируемый код корректно взаимодействует с mock-объектами.
        </li>
    </ul>

    <h2>Пример использования Mockito</h2>
    <pre><code>
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

public class UserServiceTest {

    @Test
    public void testGetUserById() {
        // Создаём mock-объект
        UserRepository userRepository = Mockito.mock(UserRepository.class);

        // Настраиваем поведение
        when(userRepository.findById(1L)).thenReturn(new User(1L, "John Doe"));

        // Создаём тестируемый сервис с mock-зависимостью
        UserService userService = new UserService(userRepository);

        // Выполняем тест
        User user = userService.getUserById(1L);

        // Проверяем результат
        assertEquals("John Doe", user.getName());

        // Проверяем, что метод был вызван
        verify(userRepository, times(1)).findById(1L);
    }
}
    </code></pre>

    <h2>Популярные библиотеки для mocking</h2>
    <ul>
        <li>
            <code>Mockito</code> — самая популярная библиотека для создания моков в Java. Поддерживает гибкую настройку поведения и проверку взаимодействий.
        </li>
        <li>
            <code>EasyMock</code> — ещё одна библиотека для создания моков, похожая на Mockito, но с менее интуитивным API.
        </li>
        <li>
            <code>JMock</code> — библиотека, которая использует DSL (Domain Specific Language) для настройки моков.
        </li>
        <li>
            <code>PowerMock</code> — расширение для Mockito и EasyMock, которое позволяет мокировать статические методы, конструкторы и приватные методы.
        </li>
    </ul>

    <h2>Рекомендации по использованию mocking</h2>
    <ul>
        <li>
            <span class="highlight">Используйте моки для сложных зависимостей:</span> Например, для баз данных, сетевых запросов или внешних API.
        </li>
        <li>
            <span class="highlight">Не мокируйте всё подряд:</span> Простые объекты или логику лучше тестировать без моков.
        </li>
        <li>
            <span class="highlight">Проверяйте взаимодействия:</span> Убедитесь, что тестируемый код корректно вызывает методы зависимостей.
        </li>
        <li>
            <span class="highlight">Избегайте over-mocking:</span> Чрезмерное использование моков может сделать тесты хрупкими и сложными для понимания.
        </li>
    </ul>
</body>
</html>', 'TEST', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('41fe096a-ff87-4dbf-af4e-6d664e656ff3', 'Как бы вы протестировали производительность приложения? Какие инструменты вы бы использовали?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Тестирование производительности приложения</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Тестирование производительности приложения</h1>
    <p>
        Тестирование производительности — это процесс оценки скорости, стабильности и масштабируемости приложения под различной нагрузкой. Оно помогает выявить узкие места, утечки памяти, проблемы с синхронизацией и другие аспекты, которые могут повлиять на пользовательский опыт.
    </p>

    <h2>Основные виды тестирования производительности</h2>
    <ul>
        <li>
            <span class="highlight">Нагрузочное тестирование (Load Testing):</span>
            <ul>
                <li>Проверяет, как приложение ведёт себя под ожидаемой нагрузкой.</li>
                <li>Цель — убедиться, что приложение справляется с типичным количеством пользователей.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Стресс-тестирование (Stress Testing):</span>
            <ul>
                <li>Проверяет, как приложение работает под экстремальной нагрузкой, превышающей нормальные условия.</li>
                <li>Цель — выявить точки отказа и проверить восстановление после сбоев.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Тестирование стабильности (Soak Testing):</span>
            <ul>
                <li>Проверяет, как приложение работает в течение длительного времени под средней нагрузкой.</li>
                <li>Цель — выявить утечки памяти или проблемы с накоплением данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Тестирование масштабируемости (Scalability Testing):</span>
            <ul>
                <li>Проверяет, как приложение масштабируется при увеличении нагрузки или добавлении ресурсов.</li>
                <li>Цель — определить, можно ли увеличить производительность за счёт добавления серверов или других ресурсов.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Тестирование производительности должно проводиться в условиях, максимально приближенных к production-среде. Это включает использование реальных данных, сетевых задержек и конфигураций серверов.
        </p>
    </div>

    <h2>Инструменты для тестирования производительности</h2>
    <ul>
        <li>
            <code>JMeter</code> — мощный инструмент для нагрузочного тестирования с поддержкой HTTP, FTP, JDBC и других протоколов.
        </li>
        <li>
            <code>Gatling</code> — инструмент для нагрузочного тестирования, написанный на Scala, с поддержкой асинхронных запросов.
        </li>
        <li>
            <code>Apache Benchmark (ab)</code> — простой инструмент для тестирования производительности веб-серверов.
        </li>
        <li>
            <code>LoadRunner</code> — коммерческий инструмент для тестирования производительности с поддержкой сложных сценариев.
        </li>
        <li>
            <code>VisualVM</code> — инструмент для мониторинга производительности Java-приложений, включая использование CPU и памяти.
        </li>
        <li>
            <code>Prometheus + Grafana</code> — для мониторинга и визуализации метрик производительности в реальном времени.
        </li>
    </ul>

    <h2>Пример использования JMeter</h2>
    <pre><code>
1. Создайте тестовый план в JMeter.
2. Добавьте Thread Group для моделирования пользователей.
3. Настройте HTTP Request для отправки запросов к вашему API.
4. Добавьте слушатели (Listeners), такие как View Results Tree и Summary Report.
5. Запустите тест и проанализируйте результаты.
    </code></pre>

    <h2>Рекомендации по тестированию производительности</h2>
    <ul>
        <li>
            <span class="highlight">Определите цели тестирования:</span> Например, максимальное время ответа или количество поддерживаемых пользователей.
        </li>
        <li>
            <span class="highlight">Используйте реалистичные данные:</span> Тестовые данные должны быть максимально приближены к реальным.
        </li>
        <li>
            <span class="highlight">Мониторьте ключевые метрики:</span> Время ответа, использование CPU, памяти, количество ошибок и т.д.
        </li>
        <li>
            <span class="highlight">Проводите тесты регулярно:</span> Производительность должна проверяться на каждом этапе разработки.
        </li>
        <li>
            <span class="highlight">Анализируйте результаты:</span> Используйте инструменты для визуализации данных, такие как Grafana, чтобы легко интерпретировать результаты.
        </li>
    </ul>

    <h2>Пример метрик для анализа</h2>
    <ul>
        <li>
            <span class="highlight">Время ответа (Response Time):</span> Среднее время, за которое приложение обрабатывает запрос.
        </li>
        <li>
            <span class="highlight">Пропускная способность (Throughput):</span> Количество запросов, обрабатываемых за единицу времени.
        </li>
        <li>
            <span class="highlight">Использование CPU и памяти:</span> Показывает, насколько эффективно используются ресурсы сервера.
        </li>
        <li>
            <span class="highlight">Количество ошибок:</span> Процент запросов, завершившихся с ошибкой.
        </li>
    </ul>
</body>
</html>', 'TEST', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('979cf8f2-af5c-42e6-b117-19650220b8fd', 'Как бы вы написал тесты для проверки корректности работы механизма транзакций в Spring?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Тестирование механизма транзакций в Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Тестирование механизма транзакций в Spring</h1>
    <p>
        Механизм транзакций в Spring обеспечивает атомарность, согласованность, изолированность и долговечность (ACID) операций с базой данных. Тестирование транзакций позволяет убедиться, что они работают корректно, включая откат при ошибках и фиксацию при успешном выполнении.
    </p>

    <h2>Основные подходы к тестированию транзакций</h2>
    <ul>
        <li>
            <span class="highlight">Использование Spring Boot Test:</span>
            <ul>
                <li>Используйте аннотацию <code>@SpringBootTest</code> для запуска тестов в контексте Spring.</li>
                <li>Настройте тестовую базу данных (например, H2) для изоляции тестов от production-данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Тестирование отката транзакций:</span>
            <ul>
                <li>Проверьте, что транзакция откатывается при возникновении исключения.</li>
                <li>Используйте аннотацию <code>@Transactional</code> для управления транзакциями в тестах.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Тестирование фиксации транзакций:</span>
            <ul>
                <li>Убедитесь, что данные корректно сохраняются в базе данных при успешном выполнении транзакции.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование DataJpaTest:</span>
            <ul>
                <li>Используйте аннотацию <code>@DataJpaTest</code> для тестирования репозиториев и транзакций.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Тесты транзакций должны быть изолированными и не влиять на другие тесты. Используйте аннотацию <code>@Transactional</code> для автоматического отката изменений после каждого теста.
        </p>
    </div>

    <h2>Пример тестирования отката транзакции</h2>
    <pre><code>
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;
import static org.junit.jupiter.api.Assertions.assertThrows;

@SpringBootTest
@Transactional
public class TransactionalServiceTest {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private TransactionalService transactionalService;

    @Test
    public void testTransactionRollback() {
        // Проверяем, что транзакция откатывается при исключении
        assertThrows(RuntimeException.class, () -> {
            transactionalService.saveUserWithError(new User("John Doe"));
        });

        // Убеждаемся, что пользователь не сохранён
        assertEquals(0, userRepository.count());
    }
}
    </code></pre>

    <h2>Пример тестирования фиксации транзакции</h2>
    <pre><code>
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;
import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
@Transactional
public class TransactionalServiceTest {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private TransactionalService transactionalService;

    @Test
    public void testTransactionCommit() {
        // Сохраняем пользователя
        transactionalService.saveUser(new User("John Doe"));

        // Убеждаемся, что пользователь сохранён
        assertEquals(1, userRepository.count());
    }
}
    </code></pre>

    <h2>Рекомендации по тестированию транзакций</h2>
    <ul>
        <li>
            <span class="highlight">Используйте аннотацию @Transactional:</span> Она автоматически откатывает изменения после каждого теста, что делает тесты изолированными.
        </li>
        <li>
            <span class="highlight">Проверяйте откат и фиксацию:</span> Убедитесь, что транзакции корректно откатываются при ошибках и фиксируются при успешном выполнении.
        </li>
        <li>
            <span class="highlight">Используйте тестовую базу данных:</span> Например, H2, чтобы избежать влияния на production-данные.
        </li>
        <li>
            <span class="highlight">Проверяйте изоляцию транзакций:</span> Убедитесь, что транзакции не влияют друг на друга.
        </li>
    </ul>

    <h2>Популярные инструменты для тестирования транзакций</h2>
    <ul>
        <li>
            <code>Spring Boot Test</code> — для запуска тестов в контексте Spring.
        </li>
        <li>
            <code>H2 Database</code> — встроенная база данных для тестирования.
        </li>
        <li>
            <code>DataJpaTest</code> — для тестирования репозиториев и транзакций.
        </li>
        <li>
            <code>TestEntityManager</code> — для работы с базой данных в тестах.
        </li>
    </ul>
</body>
</html>', 'TEST', 'HARD');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('52339b97-7da6-49a0-bff1-355434e52bc2', 'Как бы вы реализовали паттерн "Наблюдатель" (Observer) в Java? В каких сценариях он полезен?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн "Наблюдатель" (Observer) в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерн "Наблюдатель" (Observer) в Java</h1>
    <p>
        Паттерн "Наблюдатель" (Observer) — это поведенческий паттерн проектирования, который позволяет объектам (наблюдателям) подписываться на события, происходящие в другом объекте (субъекте). При изменении состояния субъекта все наблюдатели автоматически уведомляются и обновляются.
    </p>

    <h2>Основные компоненты паттерна</h2>
    <ul>
        <li>
            <span class="highlight">Субъект (Subject):</span>
            <ul>
                <li>Содержит список наблюдателей и методы для их добавления, удаления и уведомления.</li>
                <li>При изменении состояния субъект уведомляет всех наблюдателей.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Наблюдатель (Observer):</span>
            <ul>
                <li>Интерфейс или абстрактный класс, который определяет метод обновления (<code>update</code>).</li>
                <li>Конкретные наблюдатели реализуют этот метод для реакции на изменения субъекта.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример реализации паттерна "Наблюдатель"</h2>
    <pre><code>
import java.util.ArrayList;
import java.util.List;

// Интерфейс наблюдателя
interface Observer {
    void update(String message);
}

// Конкретный наблюдатель
class ConcreteObserver implements Observer {
    private String name;

    public ConcreteObserver(String name) {
        this.name = name;
    }

    @Override
    public void update(String message) {
        System.out.println(name + " получил сообщение: " + message);
    }
}

// Субъект
class Subject {
    private List&lt;Observer&gt; observers = new ArrayList&lt;&gt;();
    private String state;

    public void addObserver(Observer observer) {
        observers.add(observer);
    }

    public void removeObserver(Observer observer) {
        observers.remove(observer);
    }

    public void setState(String state) {
        this.state = state;
        notifyObservers();
    }

    private void notifyObservers() {
        for (Observer observer : observers) {
            observer.update(state);
        }
    }
}

// Пример использования
public class ObserverPatternExample {
    public static void main(String[] args) {
        Subject subject = new Subject();

        Observer observer1 = new ConcreteObserver("Наблюдатель 1");
        Observer observer2 = new ConcreteObserver("Наблюдатель 2");

        subject.addObserver(observer1);
        subject.addObserver(observer2);

        subject.setState("Новое состояние");
    }
}
    </code></pre>

    <h2>Сценарии использования паттерна "Наблюдатель"</h2>
    <ul>
        <li>
            <span class="highlight">Уведомления о событиях:</span> Например, уведомление пользователей о новых сообщениях или изменениях в системе.
        </li>
        <li>
            <span class="highlight">Реактивное программирование:</span> В библиотеках, таких как <code>RxJava</code>, паттерн Observer используется для обработки потоков данных.
        </li>
        <li>
            <span class="highlight">Графические интерфейсы:</span> В GUI-фреймворках, таких как <code>Swing</code> или <code>JavaFX</code>, паттерн Observer используется для обработки событий (например, кликов мыши).
        </li>
        <li>
            <span class="highlight">Модель-Представление-Контроллер (MVC):</span> Наблюдатели могут использоваться для обновления представления при изменении модели.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн "Наблюдатель" помогает уменьшить связанность между объектами, но может привести к сложностям при отладке, если наблюдателей слишком много или их логика слишком сложна.
        </p>
    </div>

    <h2>Преимущества паттерна "Наблюдатель"</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет динамически добавлять и удалять наблюдателей.
        </li>
        <li>
            <span class="highlight">Низкая связанность:</span> Субъект и наблюдатели слабо связаны, что упрощает изменение и расширение кода.
        </li>
        <li>
            <span class="highlight">Реактивность:</span> Наблюдатели автоматически реагируют на изменения состояния субъекта.
        </li>
    </ul>

    <h2>Недостатки паттерна "Наблюдатель"</h2>
    <ul>
        <li>
            <span class="highlight">Сложность отладки:</span> При большом количестве наблюдателей может быть сложно отследить, кто и как реагирует на изменения.
        </li>
        <li>
            <span class="highlight">Неожиданные обновления:</span> Наблюдатели могут получать уведомления, даже если они не ожидают изменений.
        </li>
    </ul>
</body>
</html>', 'OTHER', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('df816352-a744-4b28-a68e-8ffba8d2027b', 'Как работает паттерн "Фабричный метод" (Factory Method)? В чем его отличие от "Абстрактной фабрики" (Abstract Factory)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн "Фабричный метод" и "Абстрактная фабрика"</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерн "Фабричный метод" (Factory Method) и "Абстрактная фабрика" (Abstract Factory)</h1>
    <p>
        Паттерны "Фабричный метод" и "Абстрактная фабрика" относятся к порождающим паттернам проектирования. Они используются для создания объектов, но решают разные задачи и имеют разные области применения.
    </p>

    <h2>Паттерн "Фабричный метод" (Factory Method)</h2>
    <p>
        <span class="highlight">Фабричный метод</span> — это паттерн, который определяет интерфейс для создания объекта, но оставляет подклассам решение о том, какой класс инстанцировать. Это позволяет делегировать создание объектов подклассам.
    </p>

    <h3>Основные компоненты</h3>
    <ul>
        <li>
            <span class="highlight">Продукт (Product):</span> Интерфейс или абстрактный класс, который определяет объекты, создаваемые фабричным методом.
        </li>
        <li>
            <span class="highlight">Конкретный продукт (Concrete Product):</span> Конкретные классы, реализующие интерфейс продукта.
        </li>
        <li>
            <span class="highlight">Создатель (Creator):</span> Абстрактный класс или интерфейс, который объявляет фабричный метод для создания продукта.
        </li>
        <li>
            <span class="highlight">Конкретный создатель (Concrete Creator):</span> Конкретные классы, которые реализуют фабричный метод и возвращают конкретные продукты.
        </li>
    </ul>

    <h3>Пример реализации</h3>
    <pre><code>
// Продукт
interface Product {
    void use();
}

// Конкретный продукт
class ConcreteProductA implements Product {
    @Override
    public void use() {
        System.out.println("Используется продукт A");
    }
}

class ConcreteProductB implements Product {
    @Override
    public void use() {
        System.out.println("Используется продукт B");
    }
}

// Создатель
abstract class Creator {
    public abstract Product createProduct();

    public void someOperation() {
        Product product = createProduct();
        product.use();
    }
}

// Конкретный создатель
class ConcreteCreatorA extends Creator {
    @Override
    public Product createProduct() {
        return new ConcreteProductA();
    }
}

class ConcreteCreatorB extends Creator {
    @Override
    public Product createProduct() {
        return new ConcreteProductB();
    }
}

// Пример использования
public class FactoryMethodExample {
    public static void main(String[] args) {
        Creator creator = new ConcreteCreatorA();
        creator.someOperation(); // Используется продукт A

        creator = new ConcreteCreatorB();
        creator.someOperation(); // Используется продукт B
    }
}
    </code></pre>

    <h2>Паттерн "Абстрактная фабрика" (Abstract Factory)</h2>
    <p>
        <span class="highlight">Абстрактная фабрика</span> — это паттерн, который предоставляет интерфейс для создания семейств связанных или зависимых объектов без указания их конкретных классов. Он позволяет создавать группы объектов, которые взаимодействуют между собой.
    </p>

    <h3>Основные компоненты</h3>
    <ul>
        <li>
            <span class="highlight">Абстрактная фабрика (Abstract Factory):</span> Интерфейс, который объявляет методы для создания каждого из продуктов.
        </li>
        <li>
            <span class="highlight">Конкретная фабрика (Concrete Factory):</span> Конкретные классы, реализующие методы абстрактной фабрики для создания конкретных продуктов.
        </li>
        <li>
            <span class="highlight">Продукт (Product):</span> Интерфейс или абстрактный класс, который определяет объекты, создаваемые фабрикой.
        </li>
        <li>
            <span class="highlight">Конкретный продукт (Concrete Product):</span> Конкретные классы, реализующие интерфейс продукта.
        </li>
    </ul>

    <h3>Пример реализации</h3>
    <pre><code>
// Продукт A
interface ProductA {
    void use();
}

class ConcreteProductA1 implements ProductA {
    @Override
    public void use() {
        System.out.println("Используется продукт A1");
    }
}

class ConcreteProductA2 implements ProductA {
    @Override
    public void use() {
        System.out.println("Используется продукт A2");
    }
}

// Продукт B
interface ProductB {
    void use();
}

class ConcreteProductB1 implements ProductB {
    @Override
    public void use() {
        System.out.println("Используется продукт B1");
    }
}

class ConcreteProductB2 implements ProductB {
    @Override
    public void use() {
        System.out.println("Используется продукт B2");
    }
}

// Абстрактная фабрика
interface AbstractFactory {
    ProductA createProductA();
    ProductB createProductB();
}

// Конкретная фабрика 1
class ConcreteFactory1 implements AbstractFactory {
    @Override
    public ProductA createProductA() {
        return new ConcreteProductA1();
    }

    @Override
    public ProductB createProductB() {
        return new ConcreteProductB1();
    }
}

// Конкретная фабрика 2
class ConcreteFactory2 implements AbstractFactory {
    @Override
    public ProductA createProductA() {
        return new ConcreteProductA2();
    }

    @Override
    public ProductB createProductB() {
        return new ConcreteProductB2();
    }
}

// Пример использования
public class AbstractFactoryExample {
    public static void main(String[] args) {
        AbstractFactory factory = new ConcreteFactory1();
        ProductA productA = factory.createProductA();
        ProductB productB = factory.createProductB();

        productA.use(); // Используется продукт A1
        productB.use(); // Используется продукт B1

        factory = new ConcreteFactory2();
        productA = factory.createProductA();
        productB = factory.createProductB();

        productA.use(); // Используется продукт A2
        productB.use(); // Используется продукт B2
    }
}
    </code></pre>

    <h2>Различия между "Фабричным методом" и "Абстрактной фабрикой"</h2>
    <ul>
        <li>
            <span class="highlight">Цель:</span>
            <ul>
                <li>Фабричный метод: Создание одного продукта.</li>
                <li>Абстрактная фабрика: Создание семейств связанных продуктов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Сложность:</span>
            <ul>
                <li>Фабричный метод: Проще в реализации, так как работает с одним продуктом.</li>
                <li>Абстрактная фабрика: Более сложный, так как создаёт группы продуктов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Гибкость:</span>
            <ul>
                <li>Фабричный метод: Легко расширяется добавлением новых продуктов.</li>
                <li>Абстрактная фабрика: Требует изменения интерфейса фабрики при добавлении новых продуктов.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между этими паттернами зависит от задачи. Если нужно создавать группы связанных объектов, используйте "Абстрактную фабрику". Если нужно создавать один объект с возможностью расширения, используйте "Фабричный метод".
        </p>
    </div>
</body>
</html>', 'OTHER', 'AVERAGE');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b7abc002-3089-48d0-94bd-9795f14446da', 'Оцените количество памяти для хранения одного примитива типа byte в  ArrayList?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Память для хранения byte в ArrayList</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Память для хранения byte в ArrayList</h1>
    <p>
        При хранении примитива типа <code>byte</code> в <code>ArrayList</code> необходимо учитывать как память для самого упакованного объекта, так и память для ссылки на этот объект в массиве.
    </p>

    <h2>Структура ArrayList</h2>
    <ul>
        <li>
            <span class="highlight">Основа:</span>
            <ul>
                <li><code>ArrayList</code> основан на массиве, который хранит ссылки на объекты.</li>
                <li>Для примитивных типов данных, таких как <code>byte</code>, происходит автоматическая упаковка в объект <code>Byte</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Расчёт памяти для 32-битной JVM</h2>
    <ul>
        <li>
            <span class="highlight">Ссылка в массиве:</span>
            <ul>
                <li>Каждая ссылка в массиве занимает 32 бита (4 байта).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Упакованный byte:</span>
            <ul>
                <li>Объект <code>Byte</code> занимает 16 байт (8 байт на заголовок, 1 байт на значение и 7 байт для выравнивания).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Итого:</span>
            <ul>
                <li>4 байта на ссылку + 16 байт на объект <code>Byte</code> = 20 байт.</li>
            </ul>
        </li>
    </ul>

    <h2>Расчёт памяти для 64-битной JVM</h2>
    <ul>
        <li>
            <span class="highlight">Ссылка в массиве:</span>
            <ul>
                <li>Каждая ссылка в массиве занимает 64 бита (8 байт).</li>
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
                <li>8 байт на ссылку + 24 байта на объект <code>Byte</code> = 32 байта.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Хранение примитива <code>byte</code> в <code>ArrayList</code> требует дополнительной памяти из-за упаковки примитива в объект <code>Byte</code>. Для 32-битной JVM это 20 байт, а для 64-битной – 32 байта.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'AVERAGE');

