INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cbd3da7b-ad3b-4f77-9bda-bea301f42ad3', 'Что такое SpringBoot? Какие у него преимущества? Как конфигурируется?  Подробно', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot: преимущества и конфигурация</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Что такое Spring Boot? Какие у него преимущества? Как конфигурируется?</h1>
    <p>
        <strong>Spring Boot</strong> — это модуль Spring Framework, который упрощает создание и настройку Spring-приложений. Он предоставляет инструменты для быстрой разработки приложений (RAD — Rapid Application Development) и автоматически настраивает приложение на основе зависимостей и конфигураций. Spring Boot позволяет разработчикам сосредоточиться на бизнес-логике, минимизируя boilerplate-код и ручную настройку.
    </p>

    <h2>Преимущества Spring Boot</h2>
    <p>
        Spring Boot предлагает множество преимуществ, которые делают его популярным среди разработчиков:
    </p>
    <ul>
        <li>
            <span class="highlight">Простота управления зависимостями:</span> Spring Boot предоставляет starter-пакеты (например, <code>spring-boot-starter-web</code>, <code>spring-boot-starter-data-jpa</code>), которые автоматически подключают необходимые зависимости для определённого типа приложения. Это избавляет от необходимости вручную искать и настраивать зависимости.
        </li>
        <li>
            <span class="highlight">Автоматическая конфигурация:</span> Spring Boot автоматически настраивает приложение на основе зависимостей в classpath. Например, если в проекте используется <code>spring-boot-starter-web</code>, Spring Boot автоматически настраивает бины, такие как <code>DispatcherServlet</code>, <code>ResourceHandlers</code> и другие.
        </li>
        <li>
            <span class="highlight">Встроенный сервер:</span> Spring Boot включает встроенные серверы, такие как Tomcat, Jetty или Undertow. Это позволяет запускать приложение как исполняемый JAR-файл без необходимости настройки внешнего сервера.
        </li>
        <li>
            <span class="highlight">Готовые функции:</span> Spring Boot предоставляет готовые решения для метрик, проверки работоспособности, безопасности и внешней конфигурации.
        </li>
        <li>
            <span class="highlight">Минимизация boilerplate-кода:</span> Spring Boot уменьшает количество шаблонного кода, XML-конфигураций и аннотаций, что ускоряет разработку.
        </li>
    </ul>

    <h2>Как конфигурируется Spring Boot?</h2>
    <p>
        Конфигурация Spring Boot осуществляется с помощью аннотаций, свойств и starter-пакетов. Рассмотрим основные шаги:
    </p>

    <h3>1. Основной класс приложения</h3>
    <p>
        Основной класс приложения помечается аннотацией <code>@SpringBootApplication</code>, которая включает в себя:
    </p>
    <ul>
        <li><code>@SpringBootConfiguration</code>: Указывает, что класс является конфигурационным.</li>
        <li><code>@ComponentScan</code>: Включает сканирование компонентов в указанном пакете.</li>
        <li><code>@EnableAutoConfiguration</code>: Включает автоматическую конфигурацию.</li>
    </ul>
    <pre><code>@SpringBootApplication
public class MyApplication {
    public static void main(String[] args) {
        SpringApplication.run(MyApplication.class, args);
    }
}</code></pre>

    <h3>2. Автоматическая конфигурация</h3>
    <p>
        Автоматическая конфигурация работает следующим образом:
    </p>
    <ol>
        <li>
            <span class="highlight">Импорт конфигураций:</span> Аннотация <code>@EnableAutoConfiguration</code> импортирует класс <code>EnableAutoConfigurationImportSelector</code>, который загружает конфигурации из <code>META-INF/spring.factories</code>.
        </li>
        <li>
            <span class="highlight">Условная регистрация бинов:</span> Каждая конфигурация регистрирует бины на основе условий, таких как наличие определённых классов в classpath (<code>@ConditionalOnClass</code>) или отсутствие определённых бинов (<code>@ConditionalOnMissingBean</code>).
        </li>
        <li>
            <span class="highlight">Запуск встроенного сервера:</span> Spring Boot создаёт контекст приложения и запускает встроенный сервер (например, Tomcat).
        </li>
    </ol>

    <h3>3. Настройка через application.properties</h3>
    <p>
        Spring Boot позволяет настраивать приложение через файл <code>application.properties</code> или <code>application.yml</code>. Например:
    </p>
    <pre><code>server.port=8081
spring.datasource.url=jdbc:mysql://localhost:3306/mydb
spring.datasource.username=root
spring.datasource.password=secret</code></pre>

    <h3>4. Использование starter-пакетов</h3>
    <p>
        Starter-пакеты упрощают управление зависимостями. Например, для создания веб-приложения достаточно добавить зависимость <code>spring-boot-starter-web</code>:
    </p>
    <pre><code>&lt;dependency&gt;
    &lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
    &lt;artifactId&gt;spring-boot-starter-web&lt;/artifactId&gt;
&lt;/dependency&gt;</code></pre>

    <h2>Как работает автоконфигурация в Spring Boot?</h2>
    <p>
        Автоконфигурация в Spring Boot работает следующим образом:
    </p>
    <ol>
        <li>
            <span class="highlight">Сканирование classpath:</span> Spring Boot анализирует зависимости в classpath и определяет, какие компоненты нужно настроить.
        </li>
        <li>
            <span class="highlight">Условная логика:</span> Конфигурации регистрируют бины только при выполнении определённых условий (например, наличие класса в classpath).
        </li>
        <li>
            <span class="highlight">Приоритет пользовательских бинов:</span> Если разработчик вручную зарегистрировал бин, автоконфигурация не будет его переопределять.
        </li>
    </ol>

    <h2>Преимущества Spring Boot</h2>
    <ul>
        <li>
            <span class="highlight">Ускорение разработки:</span> Минимизация ручной настройки и boilerplate-кода.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Поддержка различных конфигураций и интеграций.
        </li>
        <li>
            <span class="highlight">Простота развёртывания:</span> Встроенный сервер позволяет легко запускать приложение.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Сложность отладки:</span> Автоматическая конфигурация может затруднить понимание, какие именно бины были созданы.
        </li>
        <li>
            <span class="highlight">Ограниченная кастомизация:</span> В некоторых случаях может потребоваться отключение автоконфигурации для ручной настройки.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring Boot значительно упрощает разработку Spring-приложений, предоставляя готовые решения для большинства задач. Однако для сложных сценариев может потребоваться ручная настройка.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('eb909183-9808-424d-975f-bed0c4991997', 'Какие паттерны используются в Spring Framework?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерны в Spring Framework</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерны в Spring Framework</h1>
    <p>
        В Spring Framework активно используются различные паттерны проектирования для обеспечения гибкости, масштабируемости и удобства разработки. Вот основные из них:
    </p>

    <h2>Используемые паттерны</h2>
    <ul>
        <li>
            <span class="highlight">Singleton:</span> Используется в Bean scopes. Spring по умолчанию создаёт бины как синглтоны, что гарантирует единственный экземпляр объекта в контексте приложения.
        </li>
        <li>
            <span class="highlight">Factory:</span> Реализуется через Bean Factory classes. Spring использует фабричные методы для создания и управления бинами.
        </li>
        <li>
            <span class="highlight">Prototype:</span> Также используется в Bean scopes. Позволяет создавать новый экземпляр бина при каждом запросе.
        </li>
        <li>
            <span class="highlight">Adapter:</span> Применяется в Spring Web и Spring MVC для адаптации различных типов запросов и ответов.
        </li>
        <li>
            <span class="highlight">Proxy:</span> Используется в Spring Aspect Oriented Programming (AOP) для создания прокси-объектов, которые добавляют дополнительную логику (например, транзакции или безопасность).
        </li>
        <li>
            <span class="highlight">Template Method:</span> Реализован в классах, таких как <code>JdbcTemplate</code>, <code>HibernateTemplate</code> и других. Определяет общую структуру алгоритма, оставляя подклассам возможность переопределять отдельные шаги.
        </li>
        <li>
            <span class="highlight">Front Controller:</span> Используется в Spring MVC через <code>DispatcherServlet</code>, который централизованно обрабатывает все запросы и делегирует их соответствующим контроллерам.
        </li>
        <li>
            <span class="highlight">DAO (Data Access Object):</span> Spring предоставляет поддержку DAO для упрощения работы с базами данных и абстрагирования доступа к данным.
        </li>
        <li>
            <span class="highlight">Dependency Injection:</span> Основной принцип Spring, который позволяет внедрять зависимости в объекты, делая код более модульным и тестируемым.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование паттернов в Spring Framework делает его мощным инструментом для разработки enterprise-приложений, обеспечивая гибкость, удобство поддержки и масштабируемость.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('479bf7e4-08fa-41ff-9402-1c5a7afec719', 'Как Spring интегрируется с другими технологиями, например, с RabbitMQ или Kafka?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Интеграция Spring с RabbitMQ и Kafka</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Интеграция Spring с RabbitMQ и Kafka</h1>
    <p>
        Spring Framework предоставляет мощные инструменты для интеграции с популярными системами обмена сообщениями, такими как RabbitMQ и Kafka. Эти интеграции позволяют разработчикам легко внедрять асинхронную обработку сообщений в свои приложения.
    </p>

    <h2>Интеграция Spring с RabbitMQ</h2>
    <ul>
        <li>
            <span class="highlight">Spring AMQP:</span> Spring AMQP (Advanced Message Queuing Protocol) предоставляет поддержку для работы с RabbitMQ. Он включает в себя шаблоны для отправки и получения сообщений, а также аннотации для настройки слушателей сообщений.
        </li>
        <li>
            <span class="highlight">Конфигурация:</span> Для настройки RabbitMQ в Spring используется класс <code>RabbitTemplate</code>, который упрощает отправку сообщений. Также можно использовать аннотацию <code>@RabbitListener</code> для создания слушателей сообщений.
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
@Bean
public RabbitTemplate rabbitTemplate(ConnectionFactory connectionFactory) {
    return new RabbitTemplate(connectionFactory);
}

@RabbitListener(queues = "myQueue")
public void receiveMessage(String message) {
    System.out.println("Received message: " + message);
}
            </code></pre>
        </li>
    </ul>

    <h2>Интеграция Spring с Kafka</h2>
    <ul>
        <li>
            <span class="highlight">Spring Kafka:</span> Spring Kafka предоставляет поддержку для работы с Apache Kafka. Он включает в себя шаблоны для отправки и получения сообщений, а также аннотации для настройки слушателей сообщений.
        </li>
        <li>
            <span class="highlight">Конфигурация:</span> Для настройки Kafka в Spring используется класс <code>KafkaTemplate</code>, который упрощает отправку сообщений. Также можно использовать аннотацию <code>@KafkaListener</code> для создания слушателей сообщений.
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <pre><code>
@Bean
public KafkaTemplate<String, String> kafkaTemplate(ProducerFactory<String, String> producerFactory) {
    return new KafkaTemplate<>(producerFactory);
}

@KafkaListener(topics = "myTopic")
public void receiveMessage(String message) {
    System.out.println("Received message: " + message);
}
            </code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring предоставляет гибкие и мощные инструменты для интеграции с RabbitMQ и Kafka, что позволяет разработчикам легко внедрять асинхронную обработку сообщений в свои приложения. Это делает Spring идеальным выбором для создания масштабируемых и отказоустойчивых систем.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d48bb01a-6417-4f95-920a-1705e7bfa090', 'Расскажите про аннотации @Primary и @Qualifier', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотации @Primary и @Qualifier</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотации @Primary и @Qualifier</h1>
    <p>
        Аннотации <code>@Primary</code> и <code>@Qualifier</code> используются в Spring для управления внедрением зависимостей, когда существует несколько бинов одного типа. Они помогают указать, какой именно бин должен быть внедрён в определённый контекст.
    </p>

    <h2>Аннотация @Qualifier</h2>
    <p>
        Аннотация <code>@Qualifier</code> применяется, когда есть несколько кандидатов для автоматического связывания. Она позволяет указать имя конкретного бина, который следует внедрить. <code>@Qualifier</code> может быть использована:
    </p>
    <ul>
        <li>
            <span class="highlight">Для полей класса:</span>
            <pre><code>@Autowired
@Qualifier("main")
private GreetingService greetingService;</code></pre>
        </li>
        <li>
            <span class="highlight">Для аргументов конструктора или метода:</span>
            <pre><code>@Autowired
public void prepare(@Qualifier("main") GreetingService greetingService) {
    // Логика метода
}</code></pre>
        </li>
    </ul>
    <p>
        Чтобы <code>@Qualifier</code> работал, у одной из реализаций бина должна быть указана соответствующая аннотация:
    </p>
    <pre><code>@Component
@Qualifier("main")
public class GreetingServiceImpl implements GreetingService {
    // Логика бина
}</code></pre>

    <h2>Аннотация @Primary</h2>
    <p>
        Аннотация <code>@Primary</code> используется для указания бина по умолчанию, когда существует несколько бинов одного типа. В отличие от <code>@Qualifier</code>, она не позволяет задать имя бина, но определяет, какой бин будет выбран по умолчанию:
    </p>
    <pre><code>@Component
@Primary
public class GreetingServiceImpl implements GreetingService {
    // Логика бина
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если одновременно присутствуют аннотации <code>@Qualifier</code> и <code>@Primary</code>, то <code>@Qualifier</code> имеет приоритет. Это позволяет более точно управлять внедрением зависимостей.
        </p>
    </div>

    <h2>Сравнение @Qualifier и @Primary</h2>
    <ul>
        <li>
            <span class="highlight">Специфичность:</span> <code>@Qualifier</code> более специфичен, так как позволяет указать имя конкретного бина, в то время как <code>@Primary</code> задаёт бин по умолчанию.
        </li>
        <li>
            <span class="highlight">Приоритет:</span> Если используются обе аннотации, <code>@Qualifier</code> имеет приоритет над <code>@Primary</code>.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> <code>@Qualifier</code> может быть применён к полям, аргументам конструктора или метода, что делает его более гибким.
        </li>
    </ul>

    <h2>Пример использования</h2>
    <p>
        Рассмотрим пример, где используются обе аннотации:
    </p>
    <pre><code>@Component
@Primary
public class DefaultGreetingService implements GreetingService {
    // Логика бина по умолчанию
}

@Component
@Qualifier("special")
public class SpecialGreetingService implements GreetingService {
    // Логика специального бина
}

@Service
public class GreetingClient {

    @Autowired
    @Qualifier("special")
    private GreetingService specialGreetingService;

    @Autowired
    private GreetingService defaultGreetingService; // Будет использован бин с @Primary
}</code></pre>

    <h2>Преимущества</h2>
    <ul>
        <li>
            <span class="highlight">Точность:</span> <code>@Qualifier</code> позволяет точно указать, какой бин должен быть внедрён.
        </li>
        <li>
            <span class="highlight">Удобство:</span> <code>@Primary</code> упрощает конфигурацию, задавая бин по умолчанию.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Использование обеих аннотаций позволяет гибко управлять внедрением зависимостей в различных сценариях.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('14b28922-caca-45ff-b7e1-33b033f7d311', 'Что такое контекст приложения Spring (ApplicationContext)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Контекст приложения Spring (ApplicationContext)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Контекст приложения Spring (ApplicationContext)</h1>
    <p>
        <span class="highlight">ApplicationContext</span> — это центральный интерфейс в Spring Framework, который предоставляет конфигурацию и управление жизненным циклом бинов (beans) в приложении. Он является частью механизма инверсии управления (IoC) и внедрения зависимостей (DI), который делает Spring таким мощным инструментом для разработки enterprise-приложений.
    </p>

    <h2>Что такое ApplicationContext?</h2>
    <p>
        <span class="highlight">ApplicationContext</span> — это контейнер, который управляет созданием, настройкой и связыванием бинов. Он загружает конфигурацию приложения (например, XML-файлы, аннотации или Java-конфигурацию) и создаёт экземпляры бинов, внедряя зависимости между ними.
    </p>

    <h2>Основные функции ApplicationContext</h2>
    <p>
        <span class="highlight">1. Управление бинами:</span> ApplicationContext создаёт, настраивает и управляет жизненным циклом бинов.
    </p>
    <p>
        <span class="highlight">2. Внедрение зависимостей:</span> ApplicationContext автоматически внедряет зависимости между бинами, используя механизм DI.
    </p>
    <p>
        <span class="highlight">3. Загрузка конфигурации:</span> ApplicationContext загружает конфигурацию приложения из различных источников (XML, аннотации, Java-конфигурация).
    </p>
    <p>
        <span class="highlight">4. Поддержка событий:</span> ApplicationContext поддерживает публикацию и обработку событий, что позволяет реализовать механизмы, основанные на событиях.
    </p>
    <p>
        <span class="highlight">5. Интеграция с другими технологиями:</span> ApplicationContext предоставляет поддержку для интеграции с другими технологиями, такими как Spring MVC, Spring Security, Spring Data и другими.
    </p>

    <h2>Типы ApplicationContext</h2>
    <p>
        Spring предоставляет несколько реализаций ApplicationContext, которые подходят для разных сценариев:
        <ul>
            <li>
                <span class="highlight">1. AnnotationConfigApplicationContext:</span> Используется для загрузки конфигурации на основе аннотаций.
            </li>
            <li>
                <span class="highlight">2. ClassPathXmlApplicationContext:</span> Загружает конфигурацию из XML-файлов, расположенных в classpath.
            </li>
            <li>
                <span class="highlight">3. FileSystemXmlApplicationContext:</span> Загружает конфигурацию из XML-файлов, расположенных в файловой системе.
            </li>
            <li>
                <span class="highlight">4. WebApplicationContext:</span> Используется в веб-приложениях для загрузки конфигурации, связанной с веб-контекстом.
            </li>
        </ul>
    </p>

    <h3>Пример использования AnnotationConfigApplicationContext:</h3>
    <pre><code>
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class ApplicationContextExample {
    public static void main(String[] args) {
        // Создаём контекст на основе аннотаций
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);

        // Получаем бин из контекста
        UserService userService = context.getBean(UserService.class);

        // Используем бин
        userService.saveUser(new User("username", "password"));

        // Закрываем контекст
        context.close();
    }
}
    </code></pre>

    <h3>Пример использования ClassPathXmlApplicationContext:</h3>
    <pre><code>
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class XmlApplicationContextExample {
    public static void main(String[] args) {
        // Создаём контекст из XML-файла
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

        // Получаем бин из контекста
        UserService userService = context.getBean(UserService.class);

        // Используем бин
        userService.saveUser(new User("username", "password"));

        // Закрываем контекст
        context.close();
    }
}
    </code></pre>

    <h2>Жизненный цикл ApplicationContext</h2>
    <p>
        <span class="highlight">1. Инициализация:</span> ApplicationContext загружает конфигурацию и создаёт бины.
    </p>
    <p>
        <span class="highlight">2. Использование:</span> Приложение использует бины, полученные из контекста.
    </p>
    <p>
        <span class="highlight">3. Завершение:</span> При завершении работы приложения контекст закрывается, и бины уничтожаются.
    </p>

    <h2>Рекомендации по использованию ApplicationContext</h2>
    <p>
        <span class="highlight">1. Используйте аннотации для конфигурации:</span> Аннотации делают конфигурацию более читаемой и удобной для поддержки.
    </p>
    <p>
        <span class="highlight">2. Минимизируйте использование XML:</span> XML-конфигурация устарела и менее удобна по сравнению с аннотациями и Java-конфигурацией.
    </p>
    <p>
        <span class="highlight">3. Закрывайте контекст:</span> Всегда закрывайте контекст после завершения работы приложения, чтобы освободить ресурсы.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> ApplicationContext — это ключевой компонент Spring Framework, который управляет бинами и их зависимостями. Понимание его работы и правильное использование помогут вам создавать более качественные и поддерживаемые приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a91696ef-079a-481f-b390-d2ac746fb7e1', 'Объясните концепцию внедрения зависимостей (Dependency Injection)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Внедрение зависимостей (Dependency Injection)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Внедрение зависимостей (Dependency Injection)</h1>
    <p>
        <span class="highlight">Внедрение зависимостей (Dependency Injection, DI)</span> — это паттерн проектирования, который позволяет управлять зависимостями между объектами, передавая их извне, вместо того чтобы объекты создавали их самостоятельно. Этот подход делает код более модульным, тестируемым и гибким.
    </p>

    <h2>Основные принципы DI</h2>
    <p>
        <span class="highlight">1. Инверсия управления (IoC):</span> Управление созданием и связыванием объектов передаётся внешнему контейнеру (например, Spring Framework), а не самим объектам.
    </p>
    <p>
        <span class="highlight">2. Разделение ответственности:</span> Объекты не должны знать, как создавать свои зависимости. Вместо этого зависимости предоставляются извне.
    </p>
    <p>
        <span class="highlight">3. Лёгкость тестирования:</span> DI упрощает тестирование, так как зависимости могут быть легко заменены на mock-объекты.
    </p>

    <h2>Типы внедрения зависимостей</h2>
    <p>
        <span class="highlight">1. Внедрение через конструктор:</span> Зависимости передаются через конструктор класса. Это наиболее предпочтительный способ, так как он делает зависимости явными и неизменяемыми.
    </p>
    <p>
        <span class="highlight">2. Внедрение через сеттеры:</span> Зависимости передаются через методы-сеттеры. Этот способ менее предпочтителен, так как делает зависимости изменяемыми.
    </p>
    <p>
        <span class="highlight">3. Внедрение через поля:</span> Зависимости внедряются напрямую в поля класса с использованием аннотаций. Этот способ наименее предпочтителен, так как делает зависимости скрытыми и усложняет тестирование.
    </p>

    <h3>Пример внедрения через конструктор:</h3>
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

    <h3>Пример внедрения через сеттеры:</h3>
    <pre><code>
@Service
public class UserService {
    private UserRepository userRepository;

    @Autowired
    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void saveUser(User user) {
        userRepository.save(user);
    }
}
    </code></pre>

    <h3>Пример внедрения через поля:</h3>
    <pre><code>
@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public void saveUser(User user) {
        userRepository.save(user);
    }
}
    </code></pre>

    <h2>Преимущества DI</h2>
    <p>
        <span class="highlight">1. Модульность:</span> Код становится более модульным, так как зависимости могут быть легко заменены или изменены.
    </p>
    <p>
        <span class="highlight">2. Тестируемость:</span> DI упрощает тестирование, так как зависимости могут быть заменены на mock-объекты.
    </p>
    <p>
        <span class="highlight">3. Гибкость:</span> DI позволяет легко изменять поведение приложения, изменяя конфигурацию зависимостей.
    </p>
    <p>
        <span class="highlight">4. Упрощение кода:</span> Объекты не должны знать, как создавать свои зависимости, что упрощает их реализацию.
    </p>

    <h2>Реализация DI в Spring Framework</h2>
    <p>
        Spring Framework предоставляет мощный механизм для внедрения зависимостей. Он использует аннотации, такие как <code>@Autowired</code>, и конфигурационные файлы для управления зависимостями.
    </p>

    <h3>Пример конфигурации DI в Spring:</h3>
    <pre><code>
@Configuration
public class AppConfig {
    @Bean
    public UserRepository userRepository() {
        return new UserRepositoryImpl();
    }

    @Bean
    public UserService userService(UserRepository userRepository) {
        return new UserService(userRepository);
    }
}
    </code></pre>

    <h2>Рекомендации по использованию DI</h2>
    <p>
        <span class="highlight">1. Используйте внедрение через конструктор:</span> Это делает зависимости явными и неизменяемыми.
    </p>
    <p>
        <span class="highlight">2. Избегайте внедрения через поля:</span> Это делает зависимости скрытыми и усложняет тестирование.
    </p>
    <p>
        <span class="highlight">3. Минимизируйте количество зависимостей:</span> Чем меньше зависимостей у класса, тем проще его тестировать и поддерживать.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Внедрение зависимостей — это мощный паттерн, который делает код более модульным, тестируемым и гибким. Используйте его правильно, чтобы улучшить качество вашего приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('77ab0b90-a8cb-4e7f-b655-08d299e86f50', 'Чем spy отличается от mock?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spy vs Mock: В чём разница?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Spy vs Mock: В чём разница?</h1>
    <p>
        В тестировании программного обеспечения <span class="highlight">Mock</span> и <span class="highlight">Spy</span> — это два разных подхода к созданию тестовых объектов. Они используются для изоляции тестируемого кода от зависимостей, но имеют разные цели и поведение. Понимание их различий помогает выбрать правильный инструмент для конкретной задачи.
    </p>

    <h2>Что такое Mock?</h2>
    <p>
        <span class="highlight">Mock</span> — это объект, который имитирует поведение реального объекта, но полностью контролируется тестом. Mock-объекты используются для проверки взаимодействия между тестируемым кодом и его зависимостями. Они не содержат реальной логики и возвращают заранее определённые значения.
    </p>

    <h3>Пример использования Mock:</h3>
    <pre><code>
import static org.mockito.Mockito.*;

public class MockExample {
    public static void main(String[] args) {
        // Создаём mock-объект
        List<String> mockedList = mock(List.class);

        // Задаём поведение mock-объекта
        when(mockedList.get(0)).thenReturn("Первый элемент");

        // Используем mock-объект
        System.out.println(mockedList.get(0));  // Вывод: "Первый элемент"

        // Проверяем, что метод был вызван
        verify(mockedList).get(0);
    }
}
    </code></pre>

    <h2>Что такое Spy?</h2>
    <p>
        <span class="highlight">Spy</span> — это объект, который оборачивает реальный объект и позволяет частично контролировать его поведение. В отличие от Mock, Spy использует реальную логику объекта, но позволяет переопределять определённые методы или отслеживать вызовы.
    </p>

    <h3>Пример использования Spy:</h3>
    <pre><code>
import static org.mockito.Mockito.*;

public class SpyExample {
    public static void main(String[] args) {
        // Создаём реальный объект
        List<String> realList = new ArrayList<>();
        realList.add("Первый элемент");

        // Создаём spy-объект
        List<String> spiedList = spy(realList);

        // Переопределяем поведение одного из методов
        when(spiedList.get(1)).thenReturn("Второй элемент");

        // Используем spy-объект
        System.out.println(spiedList.get(0));  // Вывод: "Первый элемент" (реальная логика)
        System.out.println(spiedList.get(1));  // Вывод: "Второй элемент" (переопределённое поведение)

        // Проверяем, что метод был вызван
        verify(spiedList).get(0);
    }
}
    </code></pre>

    <h2>Основные различия между Mock и Spy</h2>
    <p>
        <span class="highlight">1. Поведение по умолчанию:</span>
        <ul>
            <li>Mock: Все методы возвращают значения по умолчанию (например, <code>null</code>, <code>0</code>, <code>false</code>), если их поведение не переопределено.</li>
            <li>Spy: Использует реальную логику объекта, если поведение метода не переопределено.</li>
        </ul>
    </p>
    <p>
        <span class="highlight">2. Использование реального объекта:</span>
        <ul>
            <li>Mock: Не использует реальный объект, полностью заменяет его.</li>
            <li>Spy: Оборачивает реальный объект и использует его логику.</li>
        </ul>
    </p>
    <p>
        <span class="highlight">3. Цель использования:</span>
        <ul>
            <li>Mock: Используется для проверки взаимодействия между объектами и изоляции тестируемого кода.</li>
            <li>Spy: Используется для частичного контроля поведения реального объекта и отслеживания вызовов.</li>
        </ul>
    </p>

    <h2>Когда использовать Mock, а когда Spy?</h2>
    <p>
        <span class="highlight">Используйте Mock, если:</span>
        <ul>
            <li>Вам нужно полностью изолировать тестируемый код от зависимостей.</li>
            <li>Вам нужно проверить, что определённые методы были вызваны с правильными аргументами.</li>
            <li>Вам не нужна реальная логика объекта.</li>
        </ul>
    </p>
    <p>
        <span class="highlight">Используйте Spy, если:</span>
        <ul>
            <li>Вам нужно частично контролировать поведение реального объекта.</li>
            <li>Вам нужно отслеживать вызовы методов реального объекта.</li>
            <li>Вам нужно сохранить реальную логику объекта для большинства методов.</li>
        </ul>
    </p>

    <h2>Рекомендации по использованию Mock и Spy</h2>
    <p>
        <span class="highlight">1. Используйте Mock для изоляции:</span> Если вам нужно полностью изолировать тестируемый код, используйте Mock.
    </p>
    <p>
        <span class="highlight">2. Используйте Spy для частичного контроля:</span> Если вам нужно сохранить реальную логику объекта, но при этом переопределить некоторые методы, используйте Spy.
    </p>
    <p>
        <span class="highlight">3. Избегайте чрезмерного использования Spy:</span> Spy может усложнить тесты, так как сочетает реальную логику и мокирование. Используйте его только тогда, когда это действительно необходимо.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Mock и Spy — это мощные инструменты для тестирования, но их следует использовать с осторожностью. Правильный выбор между ними поможет сделать тесты более читаемыми и поддерживаемыми.
        </p>
    </div>
</body>
</html>', 'TEST', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c1320e7f-7e85-495f-8907-5b76f268db09', 'Что такое Spring MVC и как он работает?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring MVC: Как это работает?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Spring MVC: Как это работает?</h1>
    <p>
        <span class="highlight">Spring MVC</span> — это модуль Spring Framework, предназначенный для создания веб-приложений на основе архитектурного паттерна Model-View-Controller (MVC). Он предоставляет мощные инструменты для обработки HTTP-запросов, управления данными и отображения представлений, что делает разработку веб-приложений более структурированной и удобной.
    </p>

    <h2>Основные компоненты Spring MVC</h2>
    <p>
        <span class="highlight">1. Model (Модель):</span> Представляет данные приложения. Модель может быть простым объектом или коллекцией объектов, которые передаются между контроллером и представлением.
    </p>
    <p>
        <span class="highlight">2. View (Представление):</span> Отвечает за отображение данных пользователю. В Spring MVC это может быть HTML-страница, JSON, XML или любой другой формат.
    </p>
    <p>
        <span class="highlight">3. Controller (Контроллер):</span> Обрабатывает запросы пользователя, взаимодействует с моделью и возвращает представление.
    </p>

    <h2>Как работает Spring MVC?</h2>
    <p>
        Spring MVC работает на основе диспетчера <code>DispatcherServlet</code>, который является центральным компонентом и координирует все запросы и ответы. Вот основные этапы обработки запроса:
    </p>

    <h3>1. Запрос поступает в DispatcherServlet</h3>
    <p>
        Все HTTP-запросы сначала попадают в <code>DispatcherServlet</code>, который действует как фронт-контроллер (front controller). Он определяет, какой контроллер должен обработать запрос.
    </p>

    <h3>2. Определение контроллера</h3>
    <p>
        <code>DispatcherServlet</code> использует <code>HandlerMapping</code> для определения, какой контроллер должен обработать запрос на основе URL и других параметров.
    </p>

    <h3>3. Обработка запроса контроллером</h3>
    <p>
        Контроллер обрабатывает запрос, взаимодействует с сервисным слоем и моделью, а затем возвращает имя представления или объект данных.
    </p>

    <h3>4. Определение представления</h3>
    <p>
        <code>DispatcherServlet</code> использует <code>ViewResolver</code> для определения, какое представление должно быть использовано для отображения данных.
    </p>

    <h3>5. Отображение представления</h3>
    <p>
        Представление (например, JSP, Thymeleaf, JSON) отображает данные и возвращает ответ клиенту.
    </p>

    <h2>Пример работы Spring MVC</h2>
    <p>
        Рассмотрим простой пример веб-приложения на Spring MVC, которое отображает список пользователей.
    </p>

    <h3>Контроллер:</h3>
    <pre><code>
@Controller
@RequestMapping("/users")
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public String getUsers(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "users";  // Имя представления (users.jsp или users.html)
    }
}
    </code></pre>

    <h3>Сервис:</h3>
    <pre><code>
@Service
public class UserService {
    public List<User> getAllUsers() {
        // Логика получения пользователей
        return Arrays.asList(new User("Alice"), new User("Bob"));
    }
}
    </code></pre>

    <h3>Представление (Thymeleaf):</h3>
    <pre><code>
&lt;!DOCTYPE html&gt;
&lt;html xmlns:th="http://www.thymeleaf.org"&gt;
&lt;head&gt;
    &lt;title&gt;Список пользователей&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;h1&gt;Пользователи&lt;/h1&gt;
    &lt;ul&gt;
        &lt;li th:each="user : ${users}"&gt;
            &lt;span th:text="${user.name}"&gt;Имя пользователя&lt;/span&gt;
        &lt;/li&gt;
    &lt;/ul&gt;
&lt;/body&gt;
&lt;/html&gt;
    </code></pre>

    <h2>Преимущества Spring MVC</h2>
    <p>
        <span class="highlight">1. Гибкость:</span> Spring MVC поддерживает различные технологии для представлений (JSP, Thymeleaf, FreeMarker, JSON, XML и другие).
    </p>
    <p>
        <span class="highlight">2. Интеграция с Spring:</span> Spring MVC легко интегрируется с другими модулями Spring, такими как Spring Security, Spring Data и Spring Boot.
    </p>
    <p>
        <span class="highlight">3. Аннотации:</span> Использование аннотаций делает код более читаемым и удобным для поддержки.
    </p>
    <p>
        <span class="highlight">4. Тестируемость:</span> Контроллеры и другие компоненты Spring MVC легко тестируются с помощью инструментов, таких как JUnit и Mockito.
    </p>

    <h2>Рекомендации по использованию Spring MVC</h2>
    <p>
        <span class="highlight">1. Используйте аннотации:</span> Аннотации, такие как <code>@Controller</code>, <code>@RequestMapping</code> и <code>@Autowired</code>, упрощают разработку и делают код более читаемым.
    </p>
    <p>
        <span class="highlight">2. Разделяйте ответственность:</span> Следуйте принципам MVC, разделяя логику на модель, представление и контроллер.
    </p>
    <p>
        <span class="highlight">3. Используйте современные технологии для представлений:</span> Например, Thymeleaf или FreeMarker вместо устаревших JSP.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring MVC — это мощный инструмент для создания веб-приложений. Понимание его работы и правильное использование помогут вам создавать качественные и поддерживаемые приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0b53780e-affd-45c0-a373-1b0a236e329d', 'Каковы основные аннотации Spring и для чего они предназначены?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Основные аннотации Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Основные аннотации Spring</h1>
    <p>
        Spring Framework предоставляет множество аннотаций, которые упрощают разработку приложений, делая код более читаемым и удобным для поддержки. Эти аннотации используются для конфигурации, управления бинами, внедрения зависимостей, обработки запросов и многого другого. Вот основные аннотации Spring и их назначение.
    </p>

    <h2>Аннотации для конфигурации и управления бинами</h2>
    <p>
        <span class="highlight">1. @Configuration:</span> Указывает, что класс содержит конфигурацию Spring. Классы с этой аннотацией используются для определения бинов.
    </p>
    <p>
        <span class="highlight">2. @Bean:</span> Указывает, что метод возвращает бин, который должен быть управляем Spring-контейнером.
    </p>
    <p>
        <span class="highlight">3. @Component:</span> Указывает, что класс является компонентом Spring. Это общая аннотация для любых управляемых Spring-бинов.
    </p>
    <p>
        <span class="highlight">4. @Service:</span> Указывает, что класс является сервисом. Это специализированная версия аннотации <code>@Component</code>.
    </p>
    <p>
        <span class="highlight">5. @Repository:</span> Указывает, что класс является репозиторием. Это специализированная версия аннотации <code>@Component</code>, которая также предоставляет дополнительные возможности для обработки исключений, связанных с доступом к данным.
    </p>
    <p>
        <span class="highlight">6. @Controller:</span> Указывает, что класс является контроллером в Spring MVC. Это специализированная версия аннотации <code>@Component</code>.
    </p>

    <h3>Пример использования аннотаций для конфигурации:</h3>
    <pre><code>
@Configuration
public class AppConfig {
    @Bean
    public UserRepository userRepository() {
        return new UserRepositoryImpl();
    }

    @Bean
    public UserService userService(UserRepository userRepository) {
        return new UserService(userRepository);
    }
}
    </code></pre>

    <h2>Аннотации для внедрения зависимостей</h2>
    <p>
        <span class="highlight">1. @Autowired:</span> Внедряет зависимости автоматически. Может использоваться для полей, конструкторов и методов.
    </p>
    <p>
        <span class="highlight">2. @Qualifier:</span> Уточняет, какой именно бин должен быть внедрён, если есть несколько бинов одного типа.
    </p>
    <p>
        <span class="highlight">3. @Value:</span> Внедряет значения из properties-файлов или других источников.
    </p>

    <h3>Пример использования аннотаций для внедрения зависимостей:</h3>
    <pre><code>
@Service
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Value("${app.name}")
    private String appName;

    public void saveUser(User user) {
        userRepository.save(user);
    }
}
    </code></pre>

    <h2>Аннотации для Spring MVC</h2>
    <p>
        <span class="highlight">1. @RequestMapping:</span> Сопоставляет HTTP-запросы с методами контроллера.
    </p>
    <p>
        <span class="highlight">2. @GetMapping, @PostMapping, @PutMapping, @DeleteMapping:</span> Специализированные версии <code>@RequestMapping</code> для конкретных HTTP-методов.
    </p>
    <p>
        <span class="highlight">3. @RequestParam:</span> Извлекает параметры запроса из URL.
    </p>
    <p>
        <span class="highlight">4. @PathVariable:</span> Извлекает переменные из пути URL.
    </p>
    <p>
        <span class="highlight">5. @RequestBody:</span> Связывает тело HTTP-запроса с объектом.
    </p>
    <p>
        <span class="highlight">6. @ResponseBody:</span> Указывает, что возвращаемое значение метода должно быть сериализовано в тело HTTP-ответа.
    </p>

    <h3>Пример использования аннотаций для Spring MVC:</h3>
    <pre><code>
@RestController
@RequestMapping("/users")
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/{id}")
    public User getUser(@PathVariable Long id) {
        return userService.getUserById(id);
    }

    @PostMapping
    public void createUser(@RequestBody User user) {
        userService.saveUser(user);
    }
}
    </code></pre>

    <h2>Аннотации для транзакций</h2>
    <p>
        <span class="highlight">1. @Transactional:</span> Указывает, что метод или класс должен выполняться в рамках транзакции.
    </p>

    <h3>Пример использования аннотации для транзакций:</h3>
    <pre><code>
@Service
@Transactional
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

    <h2>Рекомендации по использованию аннотаций</h2>
    <p>
        <span class="highlight">1. Используйте аннотации для упрощения конфигурации:</span> Аннотации делают код более читаемым и удобным для поддержки.
    </p>
    <p>
        <span class="highlight">2. Избегайте чрезмерного использования аннотаций:</span> Чрезмерное использование аннотаций может сделать код сложным для понимания.
    </p>
    <p>
        <span class="highlight">3. Используйте специализированные аннотации:</span> Например, используйте <code>@Service</code> для сервисов и <code>@Repository</code> для репозиториев.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотации Spring — это мощный инструмент, который упрощает разработку и делает код более читаемым. Используйте их правильно, чтобы улучшить качество вашего приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('96028933-90c0-4cee-89f2-380c751c9182', 'Что такое JDK? Что в него входит?', e'<!DOCTYPE html>
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
    <h1>Что такое JDK?</h1>

    <p>
        <span class="note">JDK</span>, <span class="note">Java Development Kit</span> (комплект разработки на Java) – это <span class="note">JRE</span> и набор инструментов разработчика приложений на языке Java, включающий в себя:
    </p>
    <ul>
        <li>компилятор Java,</li>
        <li>стандартные библиотеки классов Java,</li>
        <li>примеры,</li>
        <li>документацию,</li>
        <li>различные утилиты.</li>
    </ul>

    <p>
        Коротко: <span class="note">JDK</span> – это среда для разработки программ на Java, включающая в себя <span class="note">JRE</span> (среду для обеспечения запуска Java-программ), которая, в свою очередь, содержит <span class="note">JVM</span> (интерпретатор кода Java-программ).
    </p>

    <div class="definition">
        <p>
            <strong>JDK</strong> – это основной инструмент для разработки Java-приложений, который предоставляет все необходимые компоненты для написания, компиляции и запуска программ.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c4cdeecf-a40e-4749-bd45-f69b559e7cd0', 'Как вы настраиваете маршрутизацию в Spring MVC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Настройка маршрутизации в Spring MVC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Настройка маршрутизации в Spring MVC</h1>
    <p>
        <span class="highlight">Маршрутизация (Routing)</span> в Spring MVC — это процесс сопоставления HTTP-запросов с методами контроллера. Spring MVC предоставляет гибкие инструменты для настройки маршрутизации с использованием аннотаций и конфигурационных файлов. Это позволяет легко управлять URL-адресами и обработкой запросов в веб-приложении.
    </p>

    <h2>Основные аннотации для маршрутизации</h2>
    <p>
        <span class="highlight">1. @RequestMapping:</span> Универсальная аннотация для сопоставления URL-адресов с методами контроллера. Поддерживает все HTTP-методы (GET, POST, PUT, DELETE и другие).
    </p>
    <p>
        <span class="highlight">2. @GetMapping:</span> Специализированная аннотация для обработки GET-запросов.
    </p>
    <p>
        <span class="highlight">3. @PostMapping:</span> Специализированная аннотация для обработки POST-запросов.
    </p>
    <p>
        <span class="highlight">4. @PutMapping:</span> Специализированная аннотация для обработки PUT-запросов.
    </p>
    <p>
        <span class="highlight">5. @DeleteMapping:</span> Специализированная аннотация для обработки DELETE-запросов.
    </p>
    <p>
        <span class="highlight">6. @PatchMapping:</span> Специализированная аннотация для обработки PATCH-запросов.
    </p>

    <h3>Пример использования аннотаций для маршрутизации:</h3>
    <pre><code>
@RestController
@RequestMapping("/users")
public class UserController {

    @GetMapping
    public List<User> getAllUsers() {
        // Логика получения всех пользователей
        return userService.getAllUsers();
    }

    @GetMapping("/{id}")
    public User getUserById(@PathVariable Long id) {
        // Логика получения пользователя по ID
        return userService.getUserById(id);
    }

    @PostMapping
    public void createUser(@RequestBody User user) {
        // Логика создания пользователя
        userService.saveUser(user);
    }

    @PutMapping("/{id}")
    public void updateUser(@PathVariable Long id, @RequestBody User user) {
        // Логика обновления пользователя
        userService.updateUser(id, user);
    }

    @DeleteMapping("/{id}")
    public void deleteUser(@PathVariable Long id) {
        // Логика удаления пользователя
        userService.deleteUser(id);
    }
}
    </code></pre>

    <h2>Параметры маршрутизации</h2>
    <p>
        <span class="highlight">1. @PathVariable:</span> Используется для извлечения переменных из URL-адреса.
    </p>
    <p>
        <span class="highlight">2. @RequestParam:</span> Используется для извлечения параметров запроса из URL.
    </p>
    <p>
        <span class="highlight">3. @RequestBody:</span> Используется для связывания тела HTTP-запроса с объектом.
    </p>

    <h3>Пример использования параметров маршрутизации:</h3>
    <pre><code>
@GetMapping("/search")
public List<User> searchUsers(@RequestParam String name) {
    // Логика поиска пользователей по имени
    return userService.searchUsersByName(name);
}
    </code></pre>

    <h2>Настройка маршрутизации через конфигурацию</h2>
    <p>
        В Spring MVC также можно настроить маршрутизацию через конфигурационные файлы или Java-конфигурацию. Это полезно для более сложных сценариев, таких как настройка префиксов или фильтров.
    </p>

    <h3>Пример Java-конфигурации маршрутизации:</h3>
    <pre><code>
@Configuration
@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.jsp("/WEB-INF/views/", ".jsp");
    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/home").setViewName("home");
        registry.addViewController("/login").setViewName("login");
    }
}
    </code></pre>

    <h2>Рекомендации по настройке маршрутизации</h2>
    <p>
        <span class="highlight">1. Используйте специализированные аннотации:</span> Например, используйте <code>@GetMapping</code> для GET-запросов и <code>@PostMapping</code> для POST-запросов.
    </p>
    <p>
        <span class="highlight">2. Минимизируйте использование <code>@RequestMapping</code>:</span> Специализированные аннотации делают код более читаемым и понятным.
    </p>
    <p>
        <span class="highlight">3. Используйте параметры маршрутизации:</span> <code>@PathVariable</code> и <code>@RequestParam</code> упрощают обработку динамических URL и параметров запроса.
    </p>
    <p>
        <span class="highlight">4. Настройте префиксы и фильтры:</span> Используйте конфигурацию для настройки префиксов URL или фильтров, таких как аутентификация и авторизация.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Правильная настройка маршрутизации в Spring MVC делает код более структурированным и удобным для поддержки. Используйте аннотации и конфигурацию для создания гибких и масштабируемых веб-приложений.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ec147e65-b374-4c2d-bae7-8cadd28a9e66', 'Как влияет операция remove на Entity-объекты каждого из четырех  статусов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Влияние операции remove на Entity-объекты</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Влияние операции remove на Entity-объекты</h1>
    <p>
        Операция <code>remove()</code> в JPA (Java Persistence API) по-разному влияет на Entity-объекты в зависимости от их
        текущего состояния (статуса). Ниже описано, как эта операция взаимодействует с каждым из четырёх статусов.
    </p>

    <h2>Влияние на каждый статус</h2>
    <ul>
        <li>
            <span class="highlight">New (Transient):</span>
            <ul>
                <li>Операция <code>remove()</code> игнорируется, так как объект ещё не сохранён в базе данных.</li>
                <li>Однако, если у объекта есть зависимые сущности с аннотациями каскадных изменений
                    (например, <code>CascadeType.REMOVE</code>), и они находятся в состоянии <code>Managed</code>, они могут
                    перейти в состояние <code>Removed</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Managed:</span>
            <ul>
                <li>Объект переходит из состояния <code>Managed</code> в состояние <code>Removed</code>.</li>
                <li>Запись объекта в базе данных будет удалена при коммите транзакции.</li>
                <li>Также будут удалены все каскаднозависимые объекты, если они помечены соответствующими
                    аннотациями.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Detached:</span>
            <ul>
                <li>Вызов <code>remove()</code> для объекта в состоянии <code>Detached</code> приведёт к исключению
                    (<code>IllegalArgumentException</code>) либо сразу, либо на этапе коммита транзакции.</li>
                <li>Для удаления объекта, находящегося в состоянии <code>Detached</code>, его сначала нужно
                    присоединить к контексту персистентности с помощью метода <code>merge()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Removed:</span>
            <ul>
                <li>Операция <code>remove()</code> игнорируется, так как объект уже помечен для удаления.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>remove()</code> только для объектов в состоянии <code>Managed</code>.</li>
                <li>Для объектов в состоянии <code>Detached</code> сначала используйте <code>merge()</code>, а затем <code>remove()</code>.</li>
                <li>Операция <code>remove()</code> не влияет на новые объекты (<code>Transient</code>), но может повлиять на
                    зависимые сущности с каскадными изменениями.</li>
            </ul>
        </p>
    </div>

    <h2>Примеры</h2>
    <pre><code>
EntityManager em = ...;

// New (Transient) → Игнорируется
MyEntity newEntity = new MyEntity();
em.remove(newEntity); // Операция игнорируется

// Managed → Removed
MyEntity managedEntity = em.find(MyEntity.class, 1L);
em.remove(managedEntity); // Объект помечен для удаления

// Detached → Исключение
MyEntity detachedEntity = em.find(MyEntity.class, 2L);
em.detach(detachedEntity);
em.remove(detachedEntity); // Исключение!

// Removed → Игнорируется
MyEntity removedEntity = em.find(MyEntity.class, 3L);
em.remove(removedEntity);
em.remove(removedEntity); // Операция игнорируется
    </code></pre>
    <p>
        В этом примере показано, как операция <code>remove()</code> влияет на объекты в разных состояниях.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8d3707a1-26c8-4798-98a2-85e8a042dcc6', 'Что такое @RestController и чем он отличается от @Controller?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@RestController vs @Controller</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>@RestController vs @Controller</h1>
    <p>
        В Spring MVC аннотации <span class="highlight">@Controller</span> и <span class="highlight">@RestController</span> используются для создания контроллеров, которые обрабатывают HTTP-запросы. Однако они имеют ключевые различия, которые определяют их использование в различных сценариях.
    </p>

    <h2>Аннотация @Controller</h2>
    <p>
        <span class="highlight">@Controller</span> — это аннотация, которая указывает, что класс является контроллером в Spring MVC. Она используется для создания веб-приложений, где контроллер возвращает имя представления (view), которое затем отображается пользователю.
    </p>

    <h3>Основные особенности @Controller:</h3>
    <ul>
        <li>
            <span class="highlight">Возвращает имя представления:</span> Методы контроллера возвращают строку, которая указывает на имя представления (например, JSP, Thymeleaf).
        </li>
        <li>
            <span class="highlight">Используется с ViewResolver:</span> Spring MVC использует <code>ViewResolver</code> для поиска и отображения представления.
        </li>
        <li>
            <span class="highlight">Подходит для традиционных веб-приложений:</span> Например, для приложений, где требуется отображение HTML-страниц.
        </li>
    </ul>

    <h3>Пример использования @Controller:</h3>
    <pre><code>
@Controller
@RequestMapping("/users")
public class UserController {

    @GetMapping
    public String getUsers(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "users";  // Имя представления (users.jsp или users.html)
    }
}
    </code></pre>

    <h2>Аннотация @RestController</h2>
    <p>
        <span class="highlight">@RestController</span> — это специализированная версия аннотации <code>@Controller</code>, которая используется для создания RESTful веб-сервисов. Она объединяет в себе функциональность <code>@Controller</code> и <code>@ResponseBody</code>, что позволяет методам возвращать данные напрямую в теле HTTP-ответа.
    </p>

    <h3>Основные особенности @RestController:</h3>
    <ul>
        <li>
            <span class="highlight">Возвращает данные напрямую:</span> Методы контроллера возвращают объекты, которые автоматически сериализуются в JSON, XML или другой формат.
        </li>
        <li>
            <span class="highlight">Не требует ViewResolver:</span> Данные возвращаются напрямую клиенту, без необходимости отображения через представление.
        </li>
        <li>
            <span class="highlight">Подходит для RESTful API:</span> Например, для создания веб-сервисов, которые возвращают JSON или XML.
        </li>
    </ul>

    <h3>Пример использования @RestController:</h3>
    <pre><code>
@RestController
@RequestMapping("/api/users")
public class UserRestController {

    @GetMapping
    public List<User> getAllUsers() {
        return userService.getAllUsers();  // Возвращает JSON
    }

    @GetMapping("/{id}")
    public User getUserById(@PathVariable Long id) {
        return userService.getUserById(id);  // Возвращает JSON
    }
}
    </code></pre>

    <h2>Основные различия между @Controller и @RestController</h2>
    <p>
        <span class="highlight">1. Возвращаемое значение:</span>
        <ul>
            <li><code>@Controller</code> возвращает имя представления.</li>
            <li><code>@RestController</code> возвращает данные напрямую в теле ответа.</li>
        </ul>
    </p>
    <p>
        <span class="highlight">2. Использование ViewResolver:</span>
        <ul>
            <li><code>@Controller</code> использует <code>ViewResolver</code> для отображения представлений.</li>
            <li><code>@RestController</code> не использует <code>ViewResolver</code>, так как данные возвращаются напрямую.</li>
        </ul>
    </p>
    <p>
        <span class="highlight">3. Применение:</span>
        <ul>
            <li><code>@Controller</code> подходит для традиционных веб-приложений с HTML-представлениями.</li>
            <li><code>@RestController</code> подходит для RESTful API, возвращающих JSON, XML или другие данные.</li>
        </ul>
    </p>

    <h2>Рекомендации по использованию</h2>
    <p>
        <span class="highlight">1. Используйте @Controller для веб-приложений:</span> Если ваше приложение требует отображения HTML-страниц, используйте <code>@Controller</code>.
    </p>
    <p>
        <span class="highlight">2. Используйте @RestController для RESTful API:</span> Если ваше приложение предоставляет RESTful API, используйте <code>@RestController</code>.
    </p>
    <p>
        <span class="highlight">3. Комбинируйте при необходимости:</span> В одном приложении можно использовать как <code>@Controller</code>, так и <code>@RestController</code>, если это требуется.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Понимание различий между <code>@Controller</code> и <code>@RestController</code> поможет вам выбрать правильный подход для вашего приложения и сделать код более читаемым и поддерживаемым.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9becc8da-e779-43b1-ad69-9da6859b3e95', 'Расскажите про паттерн «Абстрактная фабрика» (Abstract Factory)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн «Абстрактная фабрика» (Abstract Factory)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерн «Абстрактная фабрика» (Abstract Factory)</h1>
    <p>
        <span class="highlight">Abstract Factory</span> — это порождающий паттерн проектирования, который представляет собой интерфейс для создания других классов, не привязываясь к конкретным классам создаваемых объектов.
    </p>

    <h2>Как работает Abstract Factory?</h2>
    <ul>
        <li>
            Абстрактная фабрика предлагает выделить общие интерфейсы для отдельных продуктов, составляющих семейства. Например, все вариации кресел получат общий интерфейс <code>Кресло</code>, все диваны реализуют интерфейс <code>Диван</code> и так далее.
        </li>
        <li>
            Затем создаётся абстрактная фабрика — общий интерфейс, который содержит фабричные методы создания всех продуктов семейства (например, <code>создатьКресло</code>, <code>создатьДиван</code> и <code>создатьСтолик</code>). Эти операции возвращают абстрактные типы продуктов, представленные интерфейсами, которые выделили ранее.
        </li>
    </ul>

    <h2>Плюсы и минусы Abstract Factory</h2>
    <ul>
        <li>
            <span class="highlight">Плюсы:</span>
            <ul>
                <li>Гарантирует, что будут создаваться объекты одного семейства.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Минусы:</span>
            <ul>
                <li>Усложняет код программы из-за введения множества дополнительных классов.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн «Абстрактная фабрика» полезен, когда система должна быть независимой от процесса создания объектов, а также когда объекты должны создаваться в рамках одного семейства.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7b5a9cca-1a06-4cd0-a883-cf83c34ccb04', 'Какие два типа fetch-стратегии в JPA вы знаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fetch-стратегии в JPA</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Fetch-стратегии в JPA</h1>
    <p>
        В JPA (Java Persistence API) существует два типа стратегий загрузки данных (fetch strategies):
        <code>LAZY</code> (ленивая) и <code>EAGER</code> (жадная). Эти стратегии определяют, когда данные связанных сущностей
        будут загружены из базы данных.
    </p>

    <h2>LAZY (ленивая загрузка)</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span> Данные загружаются не сразу, а только при первом обращении к ним.
            Однако это не строгое требование, и Hibernate может изменить это поведение, загрузив данные
            сразу.
        </li>
        <li>
            <span class="highlight">По умолчанию:</span> Используется для полей, аннотированных <code>@OneToMany</code>,
            <code>@ManyToMany</code> и <code>@ElementCollection</code>.
        </li>
        <li>
            <span class="highlight">Реализация:</span> В объект загружается прокси-объект для ленивого поля. Если это коллекция,
            то она будет представлена типом <code>bag</code> от Hibernate.
        </li>
        <li>
            <span class="highlight">Ограничения:</span> Подгрузка данных должна происходить в рамках одной транзакции или до
            закрытия <code>EntityManager</code>. Если обратиться к данным после закрытия контекста,
            будет выброшено исключение <code>LazyInitializationException</code>.
        </li>
    </ul>

    <h2>EAGER (жадная загрузка)</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span> Данные загружаются немедленно вместе с основной сущностью.
        </li>
        <li>
            <span class="highlight">По умолчанию:</span> Используется для полей, аннотированных <code>@Basic</code>,
            <code>@ManyToOne</code> и <code>@OneToOne</code>.
        </li>
        <li>
            <span class="highlight">Правило:</span> Все аннотации, заканчивающиеся на <code>One</code> (например, <code>@ManyToOne</code>,
            <code>@OneToOne</code>), используют стратегию <code>EAGER</code>, а аннотации, заканчивающиеся на
            <code>Many</code> (например, <code>@OneToMany</code>, <code>@ManyToMany</code>), используют стратегию <code>LAZY</code>.
        </li>
        <li>
            <span class="highlight">Использование:</span> <code>EAGER</code> подходит для владельца связи, где данные должны быть
            загружены сразу.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>LAZY</code> для оптимизации производительности, чтобы избежать загрузки
                    ненужных данных.</li>
                <li>Используйте <code>EAGER</code>, если данные всегда нужны сразу и их загрузка не создаёт
                    проблем с производительностью.</li>
            </ul>
        </p>
    </div>

    <h2>Примеры</h2>
    <pre><code>
@Entity
public class Parent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "parent")
    private List<Child> children; // Ленивая загрузка
}

@Entity
public class Child {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "parent_id")
    private Parent parent; // Жадная загрузка
}
    </code></pre>
    <p>
        В этом примере коллекция <code>children</code> загружается лениво, а поле <code>parent</code> — жадным способом.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6c8ed9cf-4bf4-41c1-86d0-d007ed049bc7', 'Что такое SessionFactory и в чем его роль в Hibernate?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SessionFactory в Hibernate</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
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
        <h1>Что такое SessionFactory в Hibernate?</h1>
        <p>
            <span class="highlight">SessionFactory</span> — это один из ключевых компонентов Hibernate, который отвечает за создание и управление сессиями (<code>Session</code>). Это тяжёловесный объект, который инициализируется один раз за время работы приложения и используется для взаимодействия с базой данных.
        </p>

        <h2>Роль SessionFactory в Hibernate</h2>
        <ul>
            <li>
                <span class="highlight">Создание сессий:</span> SessionFactory создаёт объекты <code>Session</code>, которые используются для выполнения операций с базой данных (например, сохранение, обновление, удаление и выборка данных).
            </li>
            <li>
                <span class="highlight">Кэширование метаданных:</span> SessionFactory кэширует метаданные, такие как маппинг сущностей и настройки Hibernate, что повышает производительность.
            </li>
            <li>
                <span class="highlight">Управление подключениями:</span> SessionFactory управляет пулом подключений к базе данных, что позволяет эффективно использовать ресурсы.
            </li>
            <li>
                <span class="highlight">Конфигурация Hibernate:</span> SessionFactory хранит все настройки Hibernate, указанные в конфигурационном файле (<code>hibernate.cfg.xml</code>) или через програмный API.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> SessionFactory — это потокобезопасный объект, поэтому его можно использовать в многопоточной среде без дополнительной синхронизации.
            </p>
        </div>

        <h2>Как создать SessionFactory?</h2>
        <p>
            SessionFactory создаётся на основе конфигурации Hibernate. Обычно это делается один раз при старте приложения. Пример создания SessionFactory:
        </p>
        <pre><code>import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    private static final SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        try {
            // Загрузка конфигурации из hibernate.cfg.xml
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
        // Закрытие SessionFactory при завершении работы приложения
        getSessionFactory().close();
    }
}</code></pre>

        <h2>Использование SessionFactory</h2>
        <p>
            После создания SessionFactory можно использовать для получения сессий (<code>Session</code>), которые выполняют операции с базой данных. Пример:
        </p>
        <pre><code>import org.hibernate.Session;
import org.hibernate.Transaction;

public class Main {
    public static void main(String[] args) {
        // Получение SessionFactory
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

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
        HibernateUtil.shutdown();
    }
}</code></pre>

        <h2>Преимущества использования SessionFactory</h2>
        <ul>
            <li>
                <span class="highlight">Производительность:</span> SessionFactory кэширует метаданные и управляет пулом подключений, что повышает производительность приложения.
            </li>
            <li>
                <span class="highlight">Потокобезопасность:</span> SessionFactory можно использовать в многопоточной среде без дополнительной синхронизации.
            </li>
            <li>
                <span class="highlight">Централизованное управление:</span> SessionFactory предоставляет единую точку для управления сессиями и подключениями к базе данных.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            SessionFactory — это важный компонент Hibernate, который управляет созданием сессий, кэшированием метаданных и подключениями к базе данных. Он обеспечивает высокую производительность и потокобезопасность, что делает его незаменимым инструментом для работы с Hibernate.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('980976fb-7957-41f0-aa9c-d9b4da306e6d', 'Как вы можете удалить локальную ветку в Git?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Удаление локальной ветки в Git</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
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
        <h1>Как удалить локальную ветку в Git?</h1>
        <p>
            В Git локальные ветки можно удалять, если они больше не нужны. Это помогает поддерживать порядок в репозитории и избавляться от ненужных веток.
        </p>

        <h2>Как удалить локальную ветку?</h2>
        <ul>
            <li>
                <span class="highlight">Удаление одной ветки:</span> Чтобы удалить локальную ветку, используйте команду:
                <pre><code>git branch -d имя_ветки</code></pre>
                Например:
                <pre><code>git branch -d feature-branch</code></pre>
                Эта команда удалит ветку <code>feature-branch</code>, если она уже была слита с другой веткой.
            </li>
            <li>
                <span class="highlight">Принудительное удаление:</span> Если ветка не была слита, но вы хотите удалить её принудительно, используйте флаг <code>-D</code>:
                <pre><code>git branch -D имя_ветки</code></pre>
                Например:
                <pre><code>git branch -D feature-branch</code></pre>
                Эта команда удалит ветку, даже если она содержит неслитые изменения.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Убедитесь, что вы не находитесь на ветке, которую хотите удалить. Для удаления текущей ветки сначала переключитесь на другую ветку.
            </p>
        </div>

        <h2>Примеры команд</h2>
        <ul>
            <li>
                <code>git branch -d имя_ветки</code> — удаляет локальную ветку, если она была слита.
            </li>
            <li>
                <code>git branch -D имя_ветки</code> — принудительно удаляет локальную ветку, даже если она не была слита.
            </li>
        </ul>

        <h2>Как проверить список веток перед удалением?</h2>
        <p>
            Перед удалением ветки рекомендуется проверить список всех локальных веток с помощью команды:
        </p>
        <pre><code>git branch</code></pre>
        <p>
            Эта команда покажет все локальные ветки, а текущая ветка будет выделена звёздочкой (<code>*</code>).
        </p>

        <h2>Как переключиться на другую ветку перед удалением?</h2>
        <p>
            Если вы находитесь на ветке, которую хотите удалить, сначала переключитесь на другую ветку:
        </p>
        <pre><code>git checkout другая_ветка</code></pre>
        <p>
            Например:
        </p>
        <pre><code>git checkout main</code></pre>
        <p>
            После этого вы сможете безопасно удалить ненужную ветку.
        </p>
    </div>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('69520b7a-df8f-4749-b289-e3ea4fd84c42', 'Что такое ViewResolver?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ViewResolver в Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Что такое ViewResolver?</h1>
    <p>
        <code>ViewResolver</code> — это механизм в Spring Framework, который отвечает за преобразование логических имён представлений, возвращаемых контроллерами, в реальные представления (например, HTML-файлы, JSP, Thymeleaf и другие). Он позволяет Spring находить и отображать представления на основе имени, возвращаемого методом контроллера.
    </p>

    <h2>Основная задача ViewResolver</h2>
    <p>
        Основная задача <code>ViewResolver</code> — сопоставить имя представления, возвращаемое контроллером, с конкретным файлом или ресурсом, который будет использоваться для отображения данных. Это позволяет отделить логику контроллера от деталей реализации представлений.
    </p>

    <h2>Реализации ViewResolver</h2>
    <p>
        Spring Framework предоставляет множество реализаций <code>ViewResolver</code>, каждая из которых предназначена для работы с определёнными технологиями представлений. Вот некоторые из них:
    </p>
    <ul>
        <li>
            <span class="highlight">InternalResourceViewResolver:</span> Реализация по умолчанию, которая ищет представления (например, JSP-файлы) по заданному пути, префиксу, суффиксу и имени.
            <pre><code>@Bean
public ViewResolver internalResourceViewResolver() {
    InternalResourceViewResolver resolver = new InternalResourceViewResolver();
    resolver.setPrefix("/WEB-INF/views/");
    resolver.setSuffix(".jsp");
    return resolver;
}</code></pre>
        </li>
        <li>
            <span class="highlight">UrlBasedViewResolver:</span> Поддерживает прямое преобразование логических имён представлений в URL.
        </li>
        <li>
            <span class="highlight">FreeMarkerViewResolver:</span> Используется для интеграции с шаблонизатором FreeMarker.
            <pre><code>@Bean
public FreeMarkerViewResolver freeMarkerViewResolver() {
    FreeMarkerViewResolver resolver = new FreeMarkerViewResolver();
    resolver.setPrefix("");
    resolver.setSuffix(".ftl");
    return resolver;
}</code></pre>
        </li>
        <li>
            <span class="highlight">VelocityViewResolver:</span> Используется для интеграции с шаблонизатором Velocity.
        </li>
        <li>
            <span class="highlight">JasperReportsViewResolver:</span> Используется для интеграции с JasperReports.
        </li>
    </ul>

    <h2>Как работает InternalResourceViewResolver?</h2>
    <p>
        <code>InternalResourceViewResolver</code> — это наиболее часто используемая реализация <code>ViewResolver</code>. Она ищет представления (например, JSP-файлы) по заданному пути, префиксу и суффиксу. Например:
    </p>
    <pre><code>@Bean
public ViewResolver internalResourceViewResolver() {
    InternalResourceViewResolver resolver = new InternalResourceViewResolver();
    resolver.setPrefix("/WEB-INF/views/"); // Префикс пути
    resolver.setSuffix(".jsp");            // Суффикс файла
    return resolver;
}</code></pre>
    <p>
        Если контроллер возвращает имя представления <code>"home"</code>, то <code>InternalResourceViewResolver</code> преобразует его в путь <code>"/WEB-INF/views/home.jsp"</code>.
    </p>

    <h2>Интернационализация (i18n)</h2>
    <p>
        Многие реализации <code>ViewResolver</code> поддерживают интернационализацию, что позволяет отображать представления на разных языках в зависимости от локали пользователя. Например, можно использовать <code>ResourceBundleViewResolver</code> для загрузки представлений из ресурсных файлов.
    </p>

    <h2>Пример использования ViewResolver</h2>
    <p>
        Рассмотрим пример использования <code>InternalResourceViewResolver</code> в Spring MVC:
    </p>
    <pre><code>@Configuration
@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.viewResolver(viewResolver());
    }
}</code></pre>

    <h2>Преимущества ViewResolver</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет использовать различные технологии представлений (JSP, Thymeleaf, FreeMarker и другие).
        </li>
        <li>
            <span class="highlight">Разделение логики:</span> Отделяет логику контроллера от деталей реализации представлений.
        </li>
        <li>
            <span class="highlight">Интернационализация:</span> Поддерживает отображение представлений на разных языках.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Сложность настройки:</span> Для некоторых технологий (например, FreeMarker или Velocity) требуется дополнительная конфигурация.
        </li>
        <li>
            <span class="highlight">Зависимость от технологий:</span> Каждая реализация <code>ViewResolver</code> зависит от конкретной технологии представлений.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор реализации <code>ViewResolver</code> зависит от используемой технологии представлений. Для JSP-файлов чаще всего используется <code>InternalResourceViewResolver</code>, а для шаблонизаторов, таких как FreeMarker или Thymeleaf, — соответствующие реализации.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8742fe8c-e7e0-448d-b73c-5367a2fc98f6', 'Расскажите про паттерн Front Controller, как он реализован в Spring?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Паттерн Front Controller в Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Паттерн Front Controller в Spring</h1>
    <p>
        Паттерн <strong>Front Controller</strong> обеспечивает единую точку входа для всех входящих запросов в веб-приложении. В Spring Framework этот паттерн реализован с помощью <code>DispatcherServlet</code>, который выступает в роли центрального обработчика запросов.
    </p>

    <h2>Как работает Front Controller в Spring?</h2>
    <p>
        В Spring Framework <code>DispatcherServlet</code> является реализацией паттерна Front Controller. Он обрабатывает все входящие HTTP-запросы и распределяет их между соответствующими контроллерами. Основные задачи <code>DispatcherServlet</code>:
    </p>
    <ul>
        <li>
            <span class="highlight">Единая точка входа:</span> Все запросы сначала попадают в <code>DispatcherServlet</code>.
        </li>
        <li>
            <span class="highlight">Маршрутизация:</span> <code>DispatcherServlet</code> определяет, какой контроллер должен обработать запрос, на основе URL и конфигурации.
        </li>
        <li>
            <span class="highlight">Обработка запросов:</span> После маршрутизации запрос передаётся соответствующему контроллеру для обработки.
        </li>
        <li>
            <span class="highlight">Возврат результата:</span> После обработки запроса контроллер возвращает результат (например, имя представления или данные), который <code>DispatcherServlet</code> передаёт в представление (View).
        </li>
    </ul>

    <h2>Конфигурация DispatcherServlet</h2>
    <p>
        <code>DispatcherServlet</code> настраивается в файле <code>web.xml</code> или через Java-конфигурацию. По умолчанию он маппится на корневой URL (<code>/</code>), что делает его единой точкой входа для всех запросов.
    </p>

    <h3>Пример конфигурации в <code>web.xml</code>:</h3>
    <pre><code>&lt;servlet&gt;
    &lt;servlet-name&gt;dispatcher&lt;/servlet-name&gt;
    &lt;servlet-class&gt;org.springframework.web.servlet.DispatcherServlet&lt;/servlet-class&gt;
    &lt;init-param&gt;
        &lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;
        &lt;param-value&gt;/WEB-INF/spring/dispatcher-config.xml&lt;/param-value&gt;
    &lt;/init-param&gt;
    &lt;load-on-startup&gt;1&lt;/load-on-startup&gt;
&lt;/servlet&gt;

&lt;servlet-mapping&gt;
    &lt;servlet-name&gt;dispatcher&lt;/servlet-name&gt;
    &lt;url-pattern&gt;/&lt;/url-pattern&gt;
&lt;/servlet-mapping&gt;</code></pre>

    <h3>Пример Java-конфигурации:</h3>
    <pre><code>public class WebAppInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) {
        AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
        context.register(AppConfig.class);

        DispatcherServlet dispatcherServlet = new DispatcherServlet(context);
        ServletRegistration.Dynamic registration = servletContext.addServlet("dispatcher", dispatcherServlet);
        registration.setLoadOnStartup(1);
        registration.addMapping("/");
    }
}</code></pre>

    <h2>Иерархия контекстов</h2>
    <p>
        В Spring Framework веб-приложение может иметь несколько <code>DispatcherServlet</code>, каждый из которых работает в своём собственном пространстве имён и загружает свой дочерний <code>WebApplicationContext</code>. При этом:
    </p>
    <ul>
        <li>
            <span class="highlight">Корневой контекст:</span> Создаётся с помощью <code>ContextLoaderListener</code> и используется всеми дочерними контекстами.
        </li>
        <li>
            <span class="highlight">Дочерние контексты:</span> Каждый <code>DispatcherServlet</code> создаёт свой дочерний контекст, который может переопределять бины из корневого контекста.
        </li>
    </ul>

    <h3>Пример иерархии контекстов:</h3>
    <pre><code>&lt;context-param&gt;
    &lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;
    &lt;param-value&gt;/WEB-INF/applicationContext.xml&lt;/param-value&gt;
&lt;/context-param&gt;

&lt;listener&gt;
    &lt;listener-class&gt;org.springframework.web.context.ContextLoaderListener&lt;/listener-class&gt;
&lt;/listener&gt;

&lt;servlet&gt;
    &lt;servlet-name&gt;dispatcher&lt;/servlet-name&gt;
    &lt;servlet-class&gt;org.springframework.web.servlet.DispatcherServlet&lt;/servlet-class&gt;
    &lt;init-param&gt;
        &lt;param-name&gt;contextConfigLocation&lt;/param-name&gt;
        &lt;param-value&gt;/WEB-INF/dispatcher-servlet.xml&lt;/param-value&gt;
    &lt;/init-param&gt;
    &lt;load-on-startup&gt;1&lt;/load-on-startup&gt;
&lt;/servlet&gt;

&lt;servlet-mapping&gt;
    &lt;servlet-name&gt;dispatcher&lt;/servlet-name&gt;
    &lt;url-pattern&gt;/&lt;/url-pattern&gt;
&lt;/servlet-mapping&gt;</code></pre>

    <h2>WebApplicationContext</h2>
    <p>
        <code>WebApplicationContext</code> расширяет <code>ApplicationContext</code> и предоставляет дополнительные методы для работы с веб-приложениями, такие как доступ к <code>ServletContext</code> через метод <code>getServletContext()</code>.
    </p>

    <h2>Преимущества паттерна Front Controller в Spring</h2>
    <ul>
        <li>
            <span class="highlight">Централизация:</span> Все запросы обрабатываются через единую точку входа, что упрощает управление и настройку.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Возможность настройки нескольких <code>DispatcherServlet</code> для разных частей приложения.
        </li>
        <li>
            <span class="highlight">Модульность:</span> Разделение контекстов позволяет изолировать бины и конфигурации для разных модулей приложения.
        </li>
    </ul>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span> Настройка нескольких <code>DispatcherServlet</code> и контекстов может усложнить архитектуру приложения.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Централизованная обработка запросов может стать узким местом при высокой нагрузке.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Паттерн Front Controller, реализованный через <code>DispatcherServlet</code>, является основой архитектуры Spring MVC и обеспечивает гибкость и модульность веб-приложений.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('263bbd8f-8035-4ec9-860b-19767d11ba3d', 'Объясните концепцию ORM (Object-Relational Mapping) и как Hibernate реализует эту концепцию', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Концепция ORM и её реализация в Hibernate</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
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
        <h1>Что такое ORM (Object-Relational Mapping)?</h1>
        <p>
            <span class="highlight">ORM (Object-Relational Mapping)</span> — это технология, которая позволяет связывать объекты в объектно-ориентированных языках программирования (например, Java) с таблицами в реляционных базах данных. ORM упрощает работу с базой данных, избавляя разработчиков от необходимости писать SQL-запросы вручную.
        </p>

        <h2>Основные концепции ORM</h2>
        <ul>
            <li>
                <span class="highlight">Маппинг объектов на таблицы:</span> Каждый класс в приложении отображается на таблицу в базе данных, а поля класса — на столбцы таблицы.
            </li>
            <li>
                <span class="highlight">Управление состоянием объектов:</span> ORM автоматически отслеживает изменения в объектах и синхронизирует их с базой данных.
            </li>
            <li>
                <span class="highlight">Запросы на основе объектов:</span> Вместо написания SQL-запросов разработчики используют объектно-ориентированные запросы (например, HQL в Hibernate).
            </li>
            <li>
                <span class="highlight">Транзакции и кэширование:</span> ORM предоставляет встроенные механизмы для управления транзакциями и кэширования данных.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> ORM не заменяет SQL полностью, а предоставляет более высокоуровневый API для работы с базой данных.
            </p>
        </div>

        <h2>Как Hibernate реализует ORM?</h2>
        <p>
            <span class="highlight">Hibernate</span> — это одна из самых популярных реализаций ORM для Java. Он предоставляет мощные инструменты для маппинга объектов на таблицы и работы с базой данных.
        </p>

        <h3>Основные компоненты Hibernate</h3>
        <ul>
            <li>
                <span class="highlight">Сущности (Entities):</span> Классы Java, которые отображаются на таблицы базы данных. Например:
                <pre><code>@Entity
public class User {
    @Id
    @GeneratedValue
    private Long id;
    private String name;
    // Геттеры и сеттеры
}</code></pre>
            </li>
            <li>
                <span class="highlight">Маппинг:</span> Hibernate использует аннотации (например, <code>@Entity</code>, <code>@Table</code>, <code>@Column</code>) или XML-файлы для связи объектов с таблицами.
            </li>
            <li>
                <span class="highlight">Сессии (Sessions):</span> Hibernate использует сессии для управления жизненным циклом объектов и их синхронизации с базой данных.
            </li>
            <li>
                <span class="highlight">HQL (Hibernate Query Language):</span> Язык запросов, похожий на SQL, но работающий с объектами. Например:
                <pre><code>SELECT u FROM User u WHERE u.name = \'John\'</code></pre>
            </li>
            <li>
                <span class="highlight">Кэширование:</span> Hibernate поддерживает кэширование первого и второго уровня для повышения производительности.
            </li>
        </ul>

        <h2>Преимущества использования Hibernate как ORM</h2>
        <ul>
            <li>
                <span class="highlight">Сокращение кода:</span> Hibernate автоматически генерирует SQL-запросы, что уменьшает количество кода, который нужно писать вручную.
            </li>
            <li>
                <span class="highlight">Портативность:</span> Hibernate абстрагирует разработчика от особенностей конкретной СУБД, что позволяет легко переключаться между разными базами данных.
            </li>
            <li>
                <span class="highlight">Производительность:</span> Кэширование и ленивая загрузка (Lazy Loading) повышают производительность приложения.
            </li>
            <li>
                <span class="highlight">Поддержка сложных операций:</span> Hibernate поддерживает наследование, ассоциации и другие объектно-ориентированные концепции.
            </li>
        </ul>

        <h2>Пример работы с Hibernate</h2>
        <p>
            Рассмотрим пример создания и сохранения объекта в базе данных с помощью Hibernate:
        </p>
        <pre><code>// Создание объекта
User user = new User();
user.setName("John");

// Получение сессии
Session session = HibernateUtil.getSessionFactory().openSession();
session.beginTransaction();

// Сохранение объекта
session.save(user);

// Завершение транзакции
session.getTransaction().commit();
session.close();</code></pre>

        <h2>Когда использовать Hibernate?</h2>
        <p>
            Hibernate рекомендуется использовать в следующих случаях:
        </p>
        <ul>
            <li>Вы работаете с большими и сложными базами данных.</li>
            <li>Вы хотите сократить время разработки и уменьшить количество кода.</li>
            <li>Вам нужна поддержка объектно-ориентированных концепций (наследование, ассоциации).</li>
            <li>Вы хотите повысить производительность за счёт кэширования и ленивой загрузки.</li>
        </ul>

        <h2>Заключение</h2>
        <p>
            ORM — это мощная технология, которая упрощает работу с базами данных, позволяя разработчикам сосредоточиться на бизнес-логике приложения. Hibernate, как одна из самых популярных реализаций ORM, предоставляет удобные инструменты для маппинга объектов на таблицы, управления транзакциями и повышения производительности.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('77e8bcd2-1448-42de-9590-d0f437331666', 'Что такое "tag" в Git, и как вы его создаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Теги (Tags) в Git</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Теги (Tags) в Git</h1>
    <p>
        В Git <span class="highlight">тег (tag)</span> — это метка, которая указывает на определённый коммит в истории
        проекта. Теги обычно используются для отметки важных моментов в разработке, таких как
        выпуски версий (например, v1.0.0). Теги бывают двух типов: <span class="highlight">легковесные (lightweight)</span> и
        <span class="highlight">аннотированные (annotated)</span>.
    </p>

    <h2>Типы тегов</h2>
    <ul>
        <li>
            <span class="highlight">Легковесные теги (Lightweight Tags):</span>
            <p>
                Легковесные теги — это просто указатели на определённый коммит. Они не содержат
                дополнительной информации, такой как имя автора, дата или сообщение.
            </p>
        </li>
        <li>
            <span class="highlight">Аннотированные теги (Annotated Tags):</span>
            <p>
                Аннотированные теги — это полноценные объекты в Git, которые содержат дополнительную
                информацию: имя автора, дату, сообщение и подпись (если используется GPG). Они
                рекомендуются для создания релизов.
            </p>
        </li>
    </ul>

    <h2>Создание тегов</h2>
    <ul>
        <li>
            <span class="highlight">Создание легковесного тега:</span>
            <p>
                Чтобы создать легковесный тег, используйте команду <code>git tag</code> с именем тега.
            </p>
            <pre><code>
# Создание легковесного тега
git tag v1.0.0
            </code></pre>
        </li>
        <li>
            <span class="highlight">Создание аннотированного тега:</span>
            <p>
                Чтобы создать аннотированный тег, используйте команду <code>git tag -a</code> с именем тега и
                опцией <code>-m</code> для добавления сообщения.
            </p>
            <pre><code>
# Создание аннотированного тега
git tag -a v1.0.0 -m "Релиз версии 1.0.0"
            </code></pre>
        </li>
    </ul>

    <h2>Просмотр тегов</h2>
    <p>
        Чтобы просмотреть список всех тегов в репозитории, используйте команду <code>git tag</code>.
    </p>
    <pre><code>
# Просмотр списка тегов
git tag
    </code></pre>
    <p>
        Чтобы просмотреть информацию о конкретном теге, используйте команду <code>git show</code>.
    </p>
    <pre><code>
# Просмотр информации о теге
git show v1.0.0
    </code></pre>

    <h2>Отправка тегов в удалённый репозиторий</h2>
    <p>
        По умолчанию теги не отправляются в удалённый репозиторий при использовании команды
        <code>git push</code>. Чтобы отправить тег, используйте команду <code>git push origin</code> с именем тега.
    </p>
    <pre><code>
# Отправка тега в удалённый репозиторий
git push origin v1.0.0
    </code></pre>
    <p>
        Чтобы отправить все теги, используйте команду <code>git push --tags</code>.
    </p>
    <pre><code>
# Отправка всех тегов в удалённый репозиторий
git push --tags
    </code></pre>

    <h2>Удаление тегов</h2>
    <p>
        Чтобы удалить тег, используйте команду <code>git tag -d</code>.
    </p>
    <pre><code>
# Удаление тега
git tag -d v1.0.0
    </code></pre>
    <p>
        Чтобы удалить тег из удалённого репозитория, используйте команду <code>git push --delete</code>.
    </p>
    <pre><code>
# Удаление тега из удалённого репозитория
git push --delete origin v1.0.0
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотированные теги рекомендуется использовать для отметки релизов,
            так как они содержат дополнительную информацию, которая может быть полезна для
            понимания истории проекта.
        </p>
    </div>

    <h2>Пример рабочего процесса</h2>
    <pre><code>
# 1. Создание аннотированного тега для релиза
git tag -a v1.0.0 -m "Релиз версии 1.0.0"

# 2. Просмотр информации о теге
git show v1.0.0

# 3. Отправка тега в удалённый репозиторий
git push origin v1.0.0
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Теги в Git — это мощный инструмент для отметки важных моментов в истории проекта, таких как
        релизы версий. Используйте легковесные теги для простых указателей и аннотированные теги
        для более сложных случаев, когда требуется дополнительная информация. Понимание того, как
        создавать, просматривать и управлять тегами, помогает эффективно работать с Git и
        поддерживать порядок в проекте.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a6429e79-a01b-4918-9e34-c9a336d2271a', 'Для чего нужна аннотация Access?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Access в JPA</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотация @Access в JPA</h1>
    <p>
        Аннотация <code>@Access</code> в JPA (Java Persistence API) используется для определения типа доступа к полям сущности.
        Она позволяет указать, как Hibernate будет читать и записывать данные: через поля (<code>FIELD</code>) или через методы
        (<code>PROPERTY</code>).
    </p>

    <h2>Типы доступа</h2>
    <ul>
        <li>
            <span class="highlight">Field Access (доступ по полям):</span>
            <ul>
                <li>Аннотации маппинга (например, <code>@Id</code>, <code>@Column</code>) размещаются над полями.</li>
                <li>Hibernate напрямую работает с полями сущности, читая и записывая их.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Property Access (доступ по свойствам):</span>
            <ul>
                <li>Аннотации маппинга размещаются над методами-геттерами, но не над сеттерами.</li>
                <li>Hibernate использует методы для доступа к данным.</li>
            </ul>
        </li>
    </ul>

    <h2>Определение типа доступа</h2>
    <ul>
        <li>
            <span class="highlight">По умолчанию:</span>
            <ul>
                <li>Тип доступа определяется местом, где находится аннотация <code>@Id</code>.</li>
                <li>Если <code>@Id</code> находится над полем, используется <code>AccessType.FIELD</code>.</li>
                <li>Если <code>@Id</code> находится над геттером, используется <code>AccessType.PROPERTY</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Явное указание:</span>
            <ul>
                <li>Для явного указания типа доступа используется аннотация <code>@Access</code>.</li>
                <li>Она может быть указана на уровне сущности, <code>Mapped Superclass</code> или <code>Embeddable class</code>,
                    а также над отдельными полями или методами.</li>
            </ul>
        </li>
    </ul>

    <h2>Особенности</h2>
    <ul>
        <li>
            <span class="highlight">Наследование:</span>
            <ul>
                <li>Поля, унаследованные от суперкласса, имеют тип доступа, определённый в суперклассе.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Смешанный доступ:</span>
            <ul>
                <li>Если в одной сущности используются разные типы доступа, необходимо использовать
                    аннотацию <code>@Transient</code> для избежания дублирования маппинга.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>@Access</code> для явного указания типа доступа, если это необходимо.</li>
                <li>При смешанном доступе убедитесь, что поля или методы, не участвующие в маппинге, помечены
                    аннотацией <code>@Transient</code>.</li>
            </ul>
        </p>
    </div>

    <h2>Примеры</h2>
    <pre><code>
@Entity
@Access(AccessType.FIELD) // Явное указание типа доступа
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "user_name")
    private String name;

    @Transient // Поле не участвует в маппинге
    private String temporaryData;

    @Access(AccessType.PROPERTY) // Смешанный доступ
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Тип доступа по умолчанию для сущности <code>User</code> — <code>FIELD</code>.</li>
            <li>Поле <code>name</code> использует доступ через методы (<code>PROPERTY</code>).</li>
            <li>Поле <code>temporaryData</code> помечено как <code>@Transient</code>, чтобы избежать дублирования маппинга.</li>
        </ul>
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c645144f-fd35-4242-bfbb-bcae8f43633a', 'Что такое Hibernate и каковы его основные преимущества по сравнению с JDBC?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hibernate и его преимущества перед JDBC</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
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
        <h1>Что такое Hibernate?</h1>
        <p>
            <span class="highlight">Hibernate</span> — это объектно-реляционный фреймворк (ORM, Object-Relational Mapping) для Java, который упрощает взаимодействие с реляционными базами данных. Он позволяет разработчикам работать с объектами Java вместо написания SQL-запросов вручную, как это делается в JDBC.
        </p>

        <h2>Основные преимущества Hibernate перед JDBC</h2>
        <ul>
            <li>
                <span class="highlight">Упрощение работы с базой данных:</span> Hibernate автоматически генерирует SQL-запросы, что избавляет разработчиков от необходимости писать их вручную, как в JDBC.
            </li>
            <li>
                <span class="highlight">Объектно-ориентированный подход:</span> Hibernate позволяет работать с данными как с объектами Java, что делает код более понятным и удобным для разработки.
            </li>
            <li>
                <span class="highlight">Кэширование:</span> Hibernate поддерживает кэширование на уровне приложения и базы данных, что повышает производительность.
            </li>
            <li>
                <span class="highlight">Портативность:</span> Hibernate абстрагирует разработчика от особенностей конкретной СУБД, что позволяет легко переключаться между разными базами данных.
            </li>
            <li>
                <span class="highlight">Автоматическое управление транзакциями:</span> Hibernate предоставляет удобные инструменты для управления транзакциями, что упрощает работу с ними по сравнению с JDBC.
            </li>
            <li>
                <span class="highlight">Поддержка наследования и ассоциаций:</span> Hibernate поддерживает объектно-ориентированные концепции, такие как наследование и ассоциации, что делает его более гибким, чем JDBC.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Hibernate не заменяет JDBC полностью, а работает поверх него, предоставляя более высокоуровневый API для работы с базами данных.
            </p>
        </div>

        <h2>Основные особенности Hibernate</h2>
        <ul>
            <li>
                <span class="highlight">Маппинг объектов на таблицы:</span> Hibernate использует XML-файлы или аннотации для связи объектов Java с таблицами базы данных.
            </li>
            <li>
                <span class="highlight">HQL (Hibernate Query Language):</span> Hibernate предоставляет собственный язык запросов, похожий на SQL, но работающий с объектами.
            </li>
            <li>
                <span class="highlight">Ленивая загрузка (Lazy Loading):</span> Hibernate загружает данные только тогда, когда они действительно нужны, что улучшает производительность.
            </li>
            <li>
                <span class="highlight">Поддержка различных СУБД:</span> Hibernate поддерживает множество реляционных баз данных, включая MySQL, PostgreSQL, Oracle и другие.
            </li>
        </ul>

        <h2>Сравнение Hibernate и JDBC</h2>
        <table>
            <thead>
                <tr>
                    <th>Характеристика</th>
                    <th>Hibernate</th>
                    <th>JDBC</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Уровень абстракции</td>
                    <td>Высокоуровневый (работа с объектами)</td>
                    <td>Низкоуровневый (работа с SQL-запросами)</td>
                </tr>
                <tr>
                    <td>Производительность</td>
                    <td>Выше за счёт кэширования и оптимизаций</td>
                    <td>Зависит от качества написанных SQL-запросов</td>
                </tr>
                <tr>
                    <td>Портативность</td>
                    <td>Высокая (поддержка разных СУБД)</td>
                    <td>Низкая (зависит от SQL-диалекта СУБД)</td>
                </tr>
                <tr>
                    <td>Управление транзакциями</td>
                    <td>Автоматическое и ручное</td>
                    <td>Только ручное</td>
                </tr>
                <tr>
                    <td>Сложность разработки</td>
                    <td>Низкая (меньше кода)</td>
                    <td>Высокая (больше ручной работы)</td>
                </tr>
            </tbody>
        </table>

        <h2>Когда использовать Hibernate?</h2>
        <p>
            Hibernate рекомендуется использовать в следующих случаях:
        </p>
        <ul>
            <li>Вы работаете с большими и сложными базами данных.</li>
            <li>Вы хотите сократить время разработки и уменьшить количество кода.</li>
            <li>Вам нужна поддержка объектно-ориентированных концепций (наследование, ассоциации).</li>
            <li>Вы хотите повысить производительность за счёт кэширования и ленивой загрузки.</li>
        </ul>

        <h2>Когда использовать JDBC?</h2>
        <p>
            JDBC может быть полезен в следующих случаях:
        </p>
        <ul>
            <li>Вы работаете с простыми запросами или небольшими проектами.</li>
            <li>Вам нужен полный контроль над SQL-запросами.</li>
            <li>Вы хотите избежать накладных расходов, связанных с использованием ORM.</li>
        </ul>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d80017a4-51e1-470f-b032-cf5c47c73f29', 'Как проверить историю коммитов в Git и вывести изменения, сделанные в определённом коммите?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Просмотр истории коммитов и изменений в Git</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Просмотр истории коммитов и изменений в Git</h1>
    <p>
        В Git история коммитов и изменения, внесённые в каждом коммите, могут быть легко просмотрены
        с помощью нескольких команд. Это позволяет отслеживать, кто и когда внёс изменения, а также
        что именно было изменено.
    </p>

    <h2>Просмотр истории коммитов</h2>
    <p>
        Чтобы просмотреть историю коммитов, используется команда <code>git log</code>. Она выводит список
        коммитов в обратном хронологическом порядке (последние коммиты показываются первыми).
    </p>
    <ul>
        <li>
            <span class="highlight">Базовая команда:</span>
            <pre><code>
git log
            </code></pre>
            <p>
                Эта команда покажет список коммитов с их хешами, авторами, датами и сообщениями.
            </p>
        </li>
        <li>
            <span class="highlight">Сокращённый вывод:</span>
            <p>
                Чтобы вывести сокращённый список коммитов, используйте опцию <code>--oneline</code>.
            </p>
            <pre><code>
git log --oneline
            </code></pre>
        </li>
        <li>
            <span class="highlight">Просмотр истории с графиком ветвления:</span>
            <p>
                Чтобы увидеть историю с визуализацией ветвления, используйте опцию <code>--graph</code>.
            </p>
            <pre><code>
git log --graph --oneline
            </code></pre>
        </li>
    </ul>

    <h2>Просмотр изменений в определённом коммите</h2>
    <p>
        Чтобы просмотреть изменения, внесённые в определённом коммите, используется команда
        <code>git show</code> с указанием хеша коммита.
    </p>
    <ul>
        <li>
            <span class="highlight">Просмотр изменений:</span>
            <p>
                Используйте команду <code>git show</code> с хешем коммита, чтобы увидеть изменения, внесённые
                в этом коммите.
            </p>
            <pre><code>
git show commit-hash
            </code></pre>
            <p>
                Например:
            </p>
            <pre><code>
git show abc1234
            </code></pre>
        </li>
        <li>
            <span class="highlight">Просмотр изменений в сокращённом формате:</span>
            <p>
                Чтобы увидеть только изменения в файлах, используйте опцию <code>--stat</code>.
            </p>
            <pre><code>
git show --stat commit-hash
            </code></pre>
        </li>
    </ul>

    <h2>Пример рабочего процесса</h2>
    <pre><code>
# 1. Просмотр истории коммитов
git log --oneline

# 2. Просмотр изменений в конкретном коммите
git show abc1234
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Хеш коммита можно найти с помощью команды <code>git log</code>. Обычно
            достаточно первых 7 символов хеша для идентификации коммита.
        </p>
    </div>

    <h2>Дополнительные команды для работы с историей</h2>
    <ul>
        <li>
            <span class="highlight">Просмотр изменений между коммитами:</span>
            <p>
                Чтобы увидеть изменения между двумя коммитами, используйте команду <code>git diff</code>.
            </p>
            <pre><code>
git diff commit-hash-1 commit-hash-2
            </code></pre>
        </li>
        <li>
            <span class="highlight">Просмотр изменений в последнем коммите:</span>
            <p>
                Чтобы увидеть изменения в последнем коммите, используйте команду <code>git show</code> без
                указания хеша.
            </p>
            <pre><code>
git show
            </code></pre>
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        Просмотр истории коммитов и изменений в Git — это важная часть работы с системой контроля
        версий. Используйте команды <code>git log</code> и <code>git show</code> для отслеживания изменений и
        понимания, кто и когда внёс их в проект. Это помогает поддерживать порядок в коде и
        эффективно управлять разработкой.
    </p>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9ce75598-72ae-4b16-af28-f0cba9b705bf', 'Можно ли вставить бин в статическое поле? Почему?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Внедрение бина в статическое поле</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Можно ли вставить бин в статическое поле?</h1>
    <p>
        Spring не поддерживает прямое внедрение бинов в статические поля. Это связано с тем, что статические поля инициализируются на этапе загрузки класса, когда контекст Spring ещё не загружен и не готов к внедрению зависимостей.
    </p>

    <h2>Почему Spring не позволяет внедрять бины в статические поля?</h2>
    <ul>
        <li>
            <span class="highlight">Порядок инициализации:</span> Статические поля инициализируются до того, как Spring создаёт и настраивает свои бины. Это делает невозможным прямое внедрение зависимостей в статические поля.
        </li>
        <li>
            <span class="highlight">Жизненный цикл бинов:</span> Spring управляет жизненным циклом бинов, но статические поля существуют вне этого цикла, что противоречит принципам Dependency Injection.
        </li>
    </ul>

    <h2>Как обойти это ограничение?</h2>
    <p>
        Для внедрения бина в статическое поле можно использовать нестатический сеттер-метод с аннотацией <code>@Autowired</code>. Этот метод будет вызван Spring после инициализации контекста, и бин будет присвоен статическому полю.
    </p>
    <pre><code>private static OrderItemService orderItemService;

@Autowired
public void setOrderItemService(OrderItemService orderItemService) {
    TestDataInit.orderItemService = orderItemService;
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Этот подход позволяет обойти ограничение, но его использование должно быть оправданным. Статические поля и зависимости могут усложнить тестирование и нарушить принципы объектно-ориентированного программирования.
        </p>
    </div>

    <h2>Преимущества использования сеттера</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяет внедрять зависимости в статические поля, не нарушая жизненный цикл Spring.
        </li>
        <li>
            <span class="highlight">Простота:</span> Решение требует минимальных изменений в коде.
        </li>
    </ul>

    <h2>Недостатки использования статических полей</h2>
    <ul>
        <li>
            <span class="highlight">Нарушение принципов DI:</span> Использование статических полей противоречит принципам Dependency Injection, так как зависимости становятся глобальными.
        </li>
        <li>
            <span class="highlight">Сложность тестирования:</span> Статические поля усложняют модульное тестирование, так как их состояние может быть изменено в любом месте программы.
        </li>
        <li>
            <span class="highlight">Потенциальные утечки памяти:</span> Статические поля могут удерживать ссылки на объекты, что может привести к утечкам памяти.
        </li>
    </ul>

    <h2>Рекомендации</h2>
    <p>
        По возможности избегайте использования статических полей для хранения зависимостей. Вместо этого используйте стандартные механизмы Spring, такие как внедрение через конструктор или сеттер. Это сделает код более гибким, тестируемым и соответствующим принципам DI.
    </p>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('757d9197-be2f-4d3a-ba03-e24ad089fc38', 'Какие есть варианты коммитов в GIT?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Типы коммитов в Git</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Типы коммитов в Git</h1>
    <p>
        В Git коммиты используются для сохранения изменений в репозитории. Однако не все коммиты одинаковы.
        В зависимости от цели и содержания изменений, коммиты можно разделить на несколько типов.
    </p>

    <h2>Основные типы коммитов</h2>
    <ul>
        <li>
            <span class="highlight">Обычный коммит:</span> Стандартный коммит, который сохраняет изменения в коде.
            Например, добавление новой функции или исправление бага.
        </li>
        <li>
            <span class="highlight">Исправляющий коммит (fix):</span> Коммит, который исправляет ошибки или баги в коде.
            Обычно начинается с префикса <code>fix:</code>.
        </li>
        <li>
            <span class="highlight">Коммит новой функциональности (feat):</span> Коммит, который добавляет новую функциональность
            в проект. Обычно начинается с префикса <code>feat:</code>.
        </li>
        <li>
            <span class="highlight">Рефакторинг (refactor):</span> Коммит, который улучшает структуру кода без изменения
            его функциональности. Обычно начинается с префикса <code>refactor:</code>.
        </li>
        <li>
            <span class="highlight">Документация (docs):</span> Коммит, который вносит изменения в документацию проекта.
            Обычно начинается с префикса <code>docs:</code>.
        </li>
        <li>
            <span class="highlight">Тесты (test):</span> Коммит, который добавляет или изменяет тесты.
            Обычно начинается с префикса <code>test:</code>.
        </li>
        <li>
            <span class="highlight">Стили (style):</span> Коммит, который вносит изменения в форматирование кода
            (например, отступы, пробелы). Обычно начинается с префикса <code>style:</code>.
        </li>
        <li>
            <span class="highlight">Настройка (chore):</span> Коммит, который связан с настройкой проекта или
            обновлением зависимостей. Обычно начинается с префикса <code>chore:</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование соглашений о коммитах (например, <a href="https://www.conventionalcommits.org/">Conventional Commits</a>)
            помогает поддерживать порядок в истории изменений и упрощает автоматическую генерацию changelog.
        </p>
    </div>

    <h2>Примеры коммитов</h2>
    <ul>
        <li>
            <code>feat: добавить авторизацию через Google</code> — добавление новой функциональности.
        </li>
        <li>
            <code>fix: исправить баг с отображением меню</code> — исправление ошибки.
        </li>
        <li>
            <code>refactor: улучшить структуру модуля API</code> — рефакторинг кода.
        </li>
        <li>
            <code>docs: обновить README.md</code> — изменение документации.
        </li>
        <li>
            <code>test: добавить тесты для модуля авторизации</code> — добавление тестов.
        </li>
        <li>
            <code>style: исправить отступы в файле main.js</code> — изменение стиля кода.
        </li>
        <li>
            <code>chore: обновить зависимости</code> — настройка проекта.
        </li>
    </ul>

    <h2>Преимущества использования типов коммитов</h2>
    <ul>
        <li>
            <span class="highlight">Улучшение читаемости истории:</span> Четкое разделение коммитов по типам делает историю изменений
            более понятной и структурированной.
        </li>
        <li>
            <span class="highlight">Автоматизация:</span> Соглашения о коммитах позволяют автоматически генерировать changelog и
            определять версии проекта (например, с помощью <code>semantic-release</code>).
        </li>
        <li>
            <span class="highlight">Упрощение code review:</span> Четкие описания коммитов помогают ревьюверам быстрее понять,
            какие изменения были внесены.
        </li>
    </ul>
</body>
</html>', 'GIT', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('647a2e6b-8372-4cfa-b52c-a0e2db1e6c59', 'Расскажите про аннотации @JoinColumn и @JoinTable? Где и для чего они  используются?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотации @JoinColumn и @JoinTable в JPA</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотации @JoinColumn и @JoinTable в JPA</h1>
    <p>
        Аннотации <code>@JoinColumn</code> и <code>@JoinTable</code> в JPA (Java Persistence API) используются для управления связями
        между сущностями и таблицами базы данных. Они позволяют явно указать, как сущности связаны друг с
        другом через внешние ключи или промежуточные таблицы.
    </p>

    <h2>Аннотация @JoinColumn</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li>Используется для указания столбца <code>FOREIGN KEY</code>, который связывает две сущности.</li>
                <li>Только сущность-владелец связи может иметь внешние ключи от другой сущности (владеемой).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особенности использования:</span>
            <ul>
                <li>
                    <span class="highlight">@OneToOne:</span>
                    <ul>
                        <li>Создаётся столбец в таблице сущности-владельца связи, который содержит внешний ключ,
                            ссылающийся на первичный ключ владеемой сущности.</li>
                    </ul>
                </li>
                <li>
                    <span class="highlight">@OneToMany/@ManyToOne:</span>
                    <ul>
                        <li>Если на стороне <code>@ManyToOne</code> не указана аннотация <code>@mappedBy</code>, создаётся
                            промежуточная таблица (<code>JoinTable</code>) с ключами обеих таблиц.</li>
                        <li>У владельца связи также создаётся столбец с внешними ключами.</li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>

    <h2>Аннотация @JoinColumns</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li>Используется для группировки нескольких аннотаций <code>@JoinColumn</code>.</li>
                <li>Применяется, когда у сущности составной первичный ключ и требуется несколько колонок для
                    указания внешнего ключа.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Каждая аннотация <code>@JoinColumn</code> внутри <code>@JoinColumns</code> должна содержать атрибуты
                    <code>name</code> и <code>referencedColumnName</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Аннотация @JoinTable</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li>Используется для указания промежуточной (сводной) таблицы, которая связывает две другие
                    таблицы.</li>
                <li>Часто применяется для реализации связей <code>@ManyToMany</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Позволяет настроить имя промежуточной таблицы, а также имена колонок, которые ссылаются
                    на первичные ключи связанных таблиц.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>@JoinColumn</code> для управления внешними ключами в связях между сущностями.</li>
                <li>Используйте <code>@JoinColumns</code> для работы с составными ключами.</li>
                <li>Используйте <code>@JoinTable</code> для создания промежуточных таблиц в связях <code>@ManyToMany</code>.</li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования</h2>
    <pre><code>
// Пример с @JoinColumn (OneToOne)
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "address_id")
    private Address address;

    // Геттеры и сеттеры
}

// Пример с @JoinColumns (составной ключ)
@Entity
public class Order {
    @EmbeddedId
    private OrderId id;

    @ManyToOne
    @JoinColumns({
        @JoinColumn(name = "customer_id", referencedColumnName = "customerId"),
        @JoinColumn(name = "order_date", referencedColumnName = "orderDate")
    })
    private Customer customer;

    // Геттеры и сеттеры
}

// Пример с @JoinTable (ManyToMany)
@Entity
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToMany
    @JoinTable(
        name = "student_course",
        joinColumns = @JoinColumn(name = "student_id"),
        inverseJoinColumns = @JoinColumn(name = "course_id")
    )
    private Set<Course> courses;

    // Геттеры и сеттеры
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Для связи <code>@OneToOne</code> используется <code>@JoinColumn</code>.</li>
            <li>Для работы с составным ключом используется <code>@JoinColumns</code>.</li>
            <li>Для связи <code>@ManyToMany</code> используется <code>@JoinTable</code>.</li>
        </ul>
    </p>

    <h2>Сравнение аннотаций</h2>
    <table>
        <thead>
            <tr>
                <th>Аннотация</th>
                <th>Назначение</th>
                <th>Использование</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>@JoinColumn</td>
                <td>Указывает столбец внешнего ключа.</td>
                <td>Используется в связях <code>@OneToOne</code>, <code>@OneToMany</code>, <code>@ManyToOne</code>.</td>
            </tr>
            <tr>
                <td>@JoinColumns</td>
                <td>Группирует несколько <code>@JoinColumn</code>.</td>
                <td>Используется для составных ключей.</td>
            </tr>
            <tr>
                <td>@JoinTable</td>
                <td>Создаёт промежуточную таблицу.</td>
                <td>Используется в связях <code>@ManyToMany</code>.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9d870ef5-fa96-41b7-a68e-7540289be6e1', 'Для чего нужны аннотации @OrderBy и @OrderColumn, чем они отличаются?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотации @OrderBy и @OrderColumn в JPA</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотации @OrderBy и @OrderColumn в JPA</h1>
    <p>
        Аннотации <code>@OrderBy</code> и <code>@OrderColumn</code> в JPA (Java Persistence API) используются для управления порядком
        элементов в коллекциях. Однако они имеют разные подходы к поддержанию порядка и применяются в
        различных сценариях.
    </p>

    <h2>Аннотация @OrderBy</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li>Указывает порядок, в котором элементы коллекции должны быть отсортированы при извлечении
                    из базы данных.</li>
                <li>Добавляет к SQL-запросу конструкцию <code>ORDER BY</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Если данные уже находятся в кеше, сортировка не применяется, так как <code>@OrderBy</code> работает
                    только на уровне SQL-запроса.</li>
                <li>Может использоваться с аннотациями <code>@ElementCollection</code>, <code>@OneToMany</code>,
                    <code>@ManyToMany</code>.</li>
                <li>Для коллекций базовых типов элементы сортируются в натуральном порядке.</li>
                <li>Для коллекций встраиваемых типов (<code>@Embeddable</code>) можно указать атрибут для сортировки
                    через точку (<code>"."</code>).</li>
                <li>Для коллекций сущностей можно указать имя поля сущности для сортировки. Если параметр не
                    указан, сортировка выполняется по первичному ключу.</li>
                <li>Вложенные свойства сущностей (например, <code>@OrderBy("supervisor.name")</code>) не поддерживаются
                    и вызывают исключение <code>RuntimeException</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Аннотация @OrderColumn</h2>
    <ul>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li>Создаёт в таблице столбец с индексами порядка элементов, который поддерживает постоянный
                    порядок в списке.</li>
                <li>Этот столбец не считается частью состояния сущности или встраиваемого класса.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особенности:</span>
            <ul>
                <li>Hibernate отвечает за поддержание порядка в базе данных и при извлечении данных.</li>
                <li>Порядок обновляется при каждой вставке, удалении или изменении элементов списка.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>Используйте <code>@OrderBy</code> для сортировки элементов коллекции на уровне SQL-запроса.</li>
                <li>Используйте <code>@OrderColumn</code> для поддержания постоянного порядка элементов в базе данных.</li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования</h2>
    <pre><code>
// Пример с @OrderBy
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToMany
    @OrderBy("name ASC") // Сортировка по имени
    private List<Role> roles;

    // Геттеры и сеттеры
}

// Пример с @OrderColumn
@Entity
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ElementCollection
    @OrderColumn(name = "page_order") // Столбец для порядка страниц
    private List<String> pages;

    // Геттеры и сеттеры
}
    </code></pre>
    <p>
        В этом примере:
        <ul>
            <li>Для сущности <code>User</code> используется <code>@OrderBy</code> для сортировки ролей по имени.</li>
            <li>Для сущности <code>Book</code> используется <code>@OrderColumn</code> для поддержания порядка страниц.</li>
        </ul>
    </p>

    <h2>Сравнение @OrderBy и @OrderColumn</h2>
    <table>
        <thead>
            <tr>
                <th>Аспект</th>
                <th>@OrderBy</th>
                <th>@OrderColumn</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Назначение</td>
                <td>Сортировка элементов коллекции на уровне SQL-запроса.</td>
                <td>Поддержание постоянного порядка элементов в базе данных.</td>
            </tr>
            <tr>
                <td>Уровень работы</td>
                <td>Рантайм (при выполнении запроса).</td>
                <td>База данных (постоянное хранение порядка).</td>
            </tr>
            <tr>
                <td>Использование</td>
                <td>С коллекциями базовых, встраиваемых типов и сущностей.</td>
                <td>С коллекциями, где требуется сохранить порядок элементов.</td>
            </tr>
            <tr>
                <td>Влияние на БД</td>
                <td>Добавляет <code>ORDER BY</code> к SQL-запросу.</td>
                <td>Создаёт отдельный столбец для хранения порядка.</td>
            </tr>
        </tbody>
    </table>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c792415b-5cb6-4ee9-9171-1dc65dc613bb', 'Какое отличие Hibbernate от Spring?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отличие Hibernate от Spring</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Отличие Hibernate от Spring</h1>
    <p>
        Hibernate и Spring — это два популярных фреймворка в экосистеме Java, но они решают разные задачи.
        Hibernate используется для работы с базами данных, а Spring — для создания enterprise-приложений.
        Давайте разберёмся, в чём их основные отличия.
    </p>

    <h2>Hibernate</h2>
    <p>
        <span class="highlight">Hibernate</span> — это ORM (Object-Relational Mapping) фреймворк, который упрощает работу с базами данных.
        Он позволяет отображать объекты Java на таблицы в базе данных и автоматизирует выполнение SQL-запросов.
    </p>
    <ul>
        <li>
            <span class="highlight">Основные функции:</span>
            <ul>
                <li>Маппинг объектов Java на таблицы базы данных.</li>
                <li>Автоматическая генерация SQL-запросов.</li>
                <li>Управление транзакциями.</li>
                <li>Кэширование данных для повышения производительности.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Упрощает работу с базой данных.</li>
                <li>Снижает количество boilerplate-кода.</li>
                <li>Поддерживает различные СУБД (MySQL, PostgreSQL, Oracle и др.).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Требует настройки маппинга.</li>
                <li>Может быть сложным для новичков.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
// Пример использования Hibernate
Session session = HibernateUtil.getSessionFactory().openSession();
session.beginTransaction();

User user = new User();
user.setName("John Doe");
session.save(user);

session.getTransaction().commit();
session.close();
    </code></pre>

    <h2>Spring</h2>
    <p>
        <span class="highlight">Spring</span> — это универсальный фреймворк для создания enterprise-приложений. Он предоставляет
        множество модулей для решения различных задач, таких как dependency injection, управление транзакциями,
        безопасность, веб-разработка и многое другое.
    </p>
    <ul>
        <li>
            <span class="highlight">Основные функции:</span>
            <ul>
                <li>Dependency Injection (DI) для управления зависимостями.</li>
                <li>Управление транзакциями.</li>
                <li>Интеграция с другими технологиями (Hibernate, JPA, JDBC и др.).</li>
                <li>Поддержка веб-приложений (Spring MVC, Spring Boot).</li>
                <li>Безопасность (Spring Security).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Гибкость и модульность.</li>
                <li>Упрощает разработку сложных приложений.</li>
                <li>Большое сообщество и документация.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Может быть избыточным для простых приложений.</li>
                <li>Требует времени для изучения.</li>
            </ul>
        </li>
    </ul>
    <pre><code>
// Пример использования Spring
@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/users")
    public List<User> getUsers() {
        return userService.getAllUsers();
    }
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring и Hibernate часто используются вместе. Spring предоставляет
            удобные инструменты для интеграции с Hibernate, такие как <code>Spring Data JPA</code>.
        </p>
    </div>

    <h2>Сравнение Hibernate и Spring</h2>
    <table>
        <thead>
            <tr>
                <th>Критерий</th>
                <th>Hibernate</th>
                <th>Spring</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Основное назначение</td>
                <td>ORM (работа с базой данных)</td>
                <td>Фреймворк для enterprise-приложений</td>
            </tr>
            <tr>
                <td>Dependency Injection</td>
                <td>Нет</td>
                <td>Да (основная функция)</td>
            </tr>
            <tr>
                <td>Управление транзакциями</td>
                <td>Да</td>
                <td>Да (через Spring Transaction Management)</td>
            </tr>
            <tr>
                <td>Интеграция с другими технологиями</td>
                <td>Ограничена (в основном базы данных)</td>
                <td>Широкая (веб, безопасность, данные и др.)</td>
            </tr>
            <tr>
                <td>Сложность</td>
                <td>Средняя (требует знания SQL и ORM)</td>
                <td>Высокая (много модулей и функций)</td>
            </tr>
        </tbody>
    </table>

    <h2>Пример совместного использования Hibernate и Spring</h2>
    <pre><code>
// Конфигурация Spring и Hibernate
@Configuration
@EnableTransactionManagement
public class HibernateConfig {

    @Bean
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan("com.example.model");
        sessionFactory.setHibernateProperties(hibernateProperties());
        return sessionFactory;
    }

    @Bean
    public DataSource dataSource() {
        return new DriverManagerDataSource("jdbc:mysql://localhost:3306/mydb", "user", "password");
    }

    @Bean
    public PlatformTransactionManager hibernateTransactionManager() {
        HibernateTransactionManager transactionManager = new HibernateTransactionManager();
        transactionManager.setSessionFactory(sessionFactory().getObject());
        return transactionManager;
    }
}
    </code></pre>
    <p>
        В этом примере Spring используется для настройки Hibernate и управления транзакциями.
    </p>

    <h2>Заключение</h2>
    <p>
        Hibernate и Spring — это мощные инструменты, которые решают разные задачи. Hibernate упрощает работу с базами данных,
        а Spring предоставляет инфраструктуру для создания сложных приложений. Часто они используются вместе, чтобы
        объединить их преимущества.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ed4c36c7-d5b6-4165-a80e-7a57c10f81dd', 'Расскажите про аннотацию @Resource', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Resource</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотация @Resource</h1>
    <p>
        Аннотация <code>@Resource</code> используется для внедрения зависимостей в Java-приложениях. Она является частью стандарта JSR-250 и может использоваться не только в Spring, но и в других фреймворках.
        <code>@Resource</code> пытается получить зависимость сначала по имени, затем по типу, и, наконец, по описанию (если указан <code>@Qualifier</code>).
    </p>

    <h2>Как работает @Resource?</h2>
    <ul>
        <li>
            <span class="highlight">Поиск по имени:</span> Аннотация сначала ищет бин по имени. Имя извлекается из имени аннотируемого поля, сеттера или параметра <code>name</code>.
        </li>
        <li>
            <span class="highlight">Поиск по типу:</span> Если бин не найден по имени, <code>@Resource</code> ищет его по типу.
        </li>
        <li>
            <span class="highlight">Поиск по описанию:</span> Если указан <code>@Qualifier</code>, поиск осуществляется по описанию.
        </li>
    </ul>

    <h2>Примеры использования @Resource</h2>
    <ul>
        <li>
            <span class="highlight">Поиск по умолчанию:</span>
            <pre><code>@Resource // Поиск бина с именем "context"
private ApplicationContext context;</code></pre>
        </li>
        <li>
            <span class="highlight">Поиск по имени:</span>
            <pre><code>@Resource(name="greetingService") // Поиск бина с именем "greetingService"
public void setGreetingService(GreetingService service) {
    this.greetingService = service;
}</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@Resource</code> является частью стандарта Java (JSR-250), что делает её более универсальной по сравнению с <code>@Autowired</code>.
        </p>
    </div>

    <h2>Отличия от @Autowired</h2>
    <ul>
        <li>
            <span class="highlight">Порядок поиска:</span> <code>@Resource</code> сначала ищет бин по имени, а затем по типу, в то время как <code>@Autowired</code> сначала ищет по типу.
        </li>
        <li>
            <span class="highlight">Указание имени:</span> <code>@Resource</code> не требует дополнительной аннотации для указания имени бина, так как имя можно задать через параметр <code>name</code>.
        </li>
        <li>
            <span class="highlight">Необязательное внедрение:</span> <code>@Autowired</code> позволяет отметить внедрение как необязательное с помощью параметра <code>required = false</code>. В <code>@Resource</code> такой функциональности нет.
        </li>
        <li>
            <span class="highlight">Универсальность:</span> <code>@Resource</code> не привязана к Spring и может использоваться в других фреймворках, что делает её более гибкой.
        </li>
    </ul>

    <h2>Преимущества @Resource</h2>
    <ul>
        <li>
            <span class="highlight">Универсальность:</span> Аннотация может использоваться вне Spring, что упрощает переход на другие фреймворки.
        </li>
        <li>
            <span class="highlight">Простота:</span> Не требует дополнительных аннотаций для указания имени бина.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Поддерживает поиск бина по имени, типу и описанию.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('72ff8503-27f1-4e72-bedd-3b97f07fddcf', 'Расскажи про внешний ключ(Foreign Key)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Внешний ключ (Foreign Key)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Внешний ключ (Foreign Key)</h1>
    <p>
        <span class="highlight">Внешний ключ (Foreign Key)</span> — это важный элемент реляционных баз данных, который используется для
        установления связей между таблицами. Внешний ключ в одной таблице ссылается на первичный ключ
        (или уникальный ключ) в другой таблице, что позволяет поддерживать целостность данных и создавать
        отношения между таблицами.
    </p>

    <h2>Основные характеристики внешнего ключа</h2>
    <ul>
        <li>
            <span class="highlight">Связь между таблицами:</span>
            <p>
                Внешний ключ создаёт связь между двумя таблицами. Он указывает на первичный ключ (или уникальный
                ключ) в другой таблице, что позволяет устанавливать отношения "один-ко-многим" или "один-к-одному".
            </p>
        </li>
        <li>
            <span class="highlight">Целостность данных:</span>
            <p>
                Внешний ключ обеспечивает целостность данных, предотвращая добавление записей, которые ссылаются
                на несуществующие данные в связанной таблице.
            </p>
        </li>
        <li>
            <span class="highlight">Каскадные операции:</span>
            <p>
                Внешний ключ может быть настроен для выполнения каскадных операций, таких как автоматическое
                удаление или обновление связанных записей при изменении данных в родительской таблице.
            </p>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Внешний ключ может ссылаться только на столбец, который является
            первичным ключом или имеет уникальное ограничение (UNIQUE constraint) в связанной таблице.
        </p>
    </div>

    <h2>Типы связей с использованием внешнего ключа</h2>
    <ul>
        <li>
            <span class="highlight">Один-ко-многим (One-to-Many):</span>
            <p>
                Одна запись в родительской таблице может быть связана с несколькими записями в дочерней таблице.
                Например, один пользователь может иметь несколько заказов.
            </p>
        </li>
        <li>
            <span class="highlight">Один-к-одному (One-to-One):</span>
            <p>
                Одна запись в родительской таблице связана с одной записью в дочерней таблице. Например,
                пользователь и его паспортные данные.
            </p>
        </li>
        <li>
            <span class="highlight">Многие-ко-многим (Many-to-Many):</span>
            <p>
                Для реализации связи "многие-ко-многим" используется промежуточная таблица, которая содержит
                внешние ключи, ссылающиеся на обе таблицы. Например, студенты и курсы.
            </p>
        </li>
    </ul>

    <h2>Примеры использования внешнего ключа</h2>
    <pre><code>
-- Пример создания таблиц с внешним ключом в SQL
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Первичный ключ
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Первичный ключ
    user_id INT, -- Внешний ключ
    order_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(id) -- Связь с таблицей users
);
    </code></pre>
    <p>
        В этом примере таблица <code>orders</code> содержит внешний ключ <code>user_id</code>, который ссылается
        на первичный ключ <code>id</code> в таблице <code>users</code>. Это создаёт связь "один-ко-многим"
        между пользователями и заказами.
    </p>

    <h2>Преимущества использования внешнего ключа</h2>
    <ul>
        <li>
            <span class="highlight">Целостность данных:</span>
            <p>
                Внешний ключ предотвращает добавление записей, которые ссылаются на несуществующие данные,
                что обеспечивает целостность базы данных.
            </p>
        </li>
        <li>
            <span class="highlight">Упрощение запросов:</span>
            <p>
                Внешний ключ позволяет использовать JOIN-запросы для получения связанных данных из нескольких
                таблиц.
            </p>
        </li>
        <li>
            <span class="highlight">Автоматизация операций:</span>
            <p>
                Каскадные операции (например, удаление или обновление) упрощают управление связанными данными.
            </p>
        </li>
    </ul>

    <h2>Недостатки использования внешнего ключа</h2>
    <ul>
        <li>
            <span class="highlight">Сложность управления:</span>
            <p>
                Внешние ключи могут усложнить управление базой данных, особенно при большом количестве связей.
            </p>
        </li>
        <li>
            <span class="highlight">Производительность:</span>
            <p>
                Проверка внешних ключей может замедлить операции вставки, обновления и удаления данных.
            </p>
        </li>
    </ul>

    <h2>Внешний ключ в ORM (на примере JPA)</h2>
    <pre><code>
// Пример сущностей с внешним ключом в JPA
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // Первичный ключ

    @Column(name = "username")
    private String username;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Order> orders;

    // Геттеры и сеттеры
}

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // Первичный ключ

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user; // Внешний ключ

    @Column(name = "order_date")
    private LocalDate orderDate;

    // Геттеры и сеттеры
}
    </code></pre>
    <p>
        В этом примере сущность <code>Order</code> содержит внешний ключ <code>user</code>, который ссылается
        на сущность <code>User</code>. Это создаёт связь "один-ко-многим" между пользователями и заказами.
    </p>

    <h2>Заключение</h2>
    <p>
        Внешний ключ — это мощный инструмент для создания связей между таблицами в реляционных базах данных.
        Он обеспечивает целостность данных, упрощает запросы и позволяет автоматизировать операции. Однако
        важно учитывать возможные сложности и ограничения, связанные с использованием внешних ключей, чтобы
        эффективно проектировать базы данных.
    </p>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('bbd3ab88-c0d3-4ea6-9d0f-c0bccd48b32b', 'Что такое «звезды» (starvation) в контексте многопоточности? Как это можно предотвратить?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Голодание (starvation) в многопоточности</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
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
        <h1>Что такое голодание (starvation) в контексте многопоточности?</h1>
        <p>
            <span class="highlight">Голодание (starvation)</span> — это ситуация в многопоточных программах, когда один или несколько потоков не могут получить доступ к общим ресурсам или выполнить свою работу из-за того, что другие потоки постоянно монополизируют эти ресурсы. Это приводит к тому, что "голодающие" потоки не могут прогрессировать.
        </p>

        <h2>Причины голодания</h2>
        <p>
            Голодание может возникать по нескольким причинам:
        </p>
        <ul>
            <li>
                <span class="highlight">Несправедливое распределение ресурсов:</span> Некоторые потоки могут получать доступ к ресурсам чаще, чем другие.
            </li>
            <li>
                <span class="highlight">Высокий приоритет одних потоков:</span> Потоки с высоким приоритетом могут постоянно вытеснять потоки с низким приоритетом.
            </li>
            <li>
                <span class="highlight">Неправильная синхронизация:</span> Использование блокировок или других механизмов синхронизации может привести к тому, что некоторые потоки не получают доступа к ресурсам.
            </li>
        </ul>

        <h2>Пример голодания</h2>
        <p>
            Рассмотрим пример, где несколько потоков пытаются получить доступ к общему ресурсу, но один поток постоянно монополизирует его:
        </p>
        <pre><code>import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class SharedResource {
    private Lock lock = new ReentrantLock();

    public void accessResource() {
        lock.lock();
        try {
            System.out.println("Ресурс захвачен потоком: " + Thread.currentThread().getName());
            Thread.sleep(1000); // Имитация работы с ресурсом
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            lock.unlock();
        }
    }
}

public class Main {
    public static void main(String[] args) {
        SharedResource resource = new SharedResource();

        Thread greedyThread = new Thread(() -> {
            while (true) {
                resource.accessResource();
            }
        }, "GreedyThread");

        Thread starvingThread = new Thread(() -> {
            while (true) {
                resource.accessResource();
            }
        }, "StarvingThread");

        greedyThread.start();
        starvingThread.start();
    }
}</code></pre>
        <p>
            В этом примере поток <code>GreedyThread</code> постоянно захватывает ресурс, не давая потоку <code>StarvingThread</code> возможности получить доступ.
        </p>

        <h2>Как предотвратить голодание?</h2>
        <p>
            Чтобы предотвратить голодание, можно использовать следующие подходы:
        </p>

        <h3>1. Использование справедливых блокировок</h3>
        <p>
            В Java можно использовать <code>ReentrantLock</code> с параметром <code>fair</code>, который обеспечивает справедливое распределение блокировок между потоками.
        </p>
        <pre><code>private Lock lock = new ReentrantLock(true); // Справедливая блокировка</code></pre>

        <h3>2. Управление приоритетами потоков</h3>
        <p>
            Убедитесь, что потоки с низким приоритетом не блокируются потоками с высоким приоритетом. Однако этот подход не всегда эффективен, так как управление приоритетами зависит от операционной системы.
        </p>

        <h3>3. Использование тайм-аутов</h3>
        <p>
            Используйте методы с тайм-аутом, такие как <code>tryLock()</code>, чтобы потоки не блокировались навсегда.
        </p>
        <pre><code>if (lock.tryLock(100, TimeUnit.MILLISECONDS)) {
    try {
        // Работа с ресурсом
    } finally {
        lock.unlock();
    }
}</code></pre>

        <h3>4. Балансировка нагрузки</h3>
        <p>
            Распределяйте задачи между потоками равномерно, чтобы избежать ситуации, когда один поток выполняет большую часть работы.
        </p>

        <h3>5. Использование пулов потоков</h3>
        <p>
            Используйте пулы потоков (например, <code>ExecutorService</code>), чтобы управлять количеством потоков и распределением задач.
        </p>
        <pre><code>ExecutorService executor = Executors.newFixedThreadPool(4);
executor.submit(() -> {
    // Задача для выполнения
});
executor.shutdown();</code></pre>

        <h2>Преимущества предотвращения голодания</h2>
        <ul>
            <li>
                <span class="highlight">Справедливость:</span> Все потоки получают возможность выполнять свою работу.
            </li>
            <li>
                <span class="highlight">Стабильность:</span> Программа работает более предсказуемо и устойчиво.
            </li>
            <li>
                <span class="highlight">Производительность:</span> Эффективное использование ресурсов системы.
            </li>
        </ul>

        <h2>Заключение</h2>
        <p>
            Голодание (starvation) — это серьёзная проблема в многопоточных программах, которая может привести к тому, что некоторые потоки не смогут выполнять свою работу. Чтобы предотвратить голодание, используйте справедливые блокировки, управляйте приоритетами потоков, применяйте тайм-ауты и балансируйте нагрузку. Эти подходы помогут обеспечить справедливое распределение ресурсов и стабильную работу приложения.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cefb3bd3-be80-4942-8eb1-0d025420ad38', 'Как заинжектить примитив?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Внедрение примитивов с помощью @Value</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Как заинжектить примитив?</h1>
    <p>
        Для внедрения примитивных значений (например, строк, чисел, булевых значений) в Spring используется аннотация <code>@Value</code>. Она позволяет получать значения из property-файлов, переменных окружения, бинов и других источников.
    </p>

    <h2>Использование аннотации @Value</h2>
    <p>
        Аннотация <code>@Value</code> может быть применена к полям, конструкторам и методам. Она поддерживает различные источники данных, включая property-файлы и Spring Expression Language (SpEL).
    </p>

    <h3>Пример использования @Value</h3>
    <ul>
        <li>
            <span class="highlight">Внедрение значения из property-файла:</span>
            <pre><code>@Value("${some.key}")
private String stringWithDefaultValue;</code></pre>
            В этом случае значение <code>some.key</code> будет взято из property-файла (например, <code>application.properties</code>).
        </li>
        <li>
            <span class="highlight">Внедрение значения по умолчанию:</span>
            <pre><code>@Value("${some.key:defaultValue}")
private String stringWithDefaultValue;</code></pre>
            Если значение <code>some.key</code> не найдено, будет использовано значение <code>defaultValue</code>.
        </li>
        <li>
            <span class="highlight">Использование SpEL:</span>
            <pre><code>@Value("#{systemProperties[\'user.name\']}")
private String userName;</code></pre>
            В этом случае значение будет взято из системных свойств (например, имя пользователя системы).
        </li>
    </ul>

    <h2>Источники данных для @Value</h2>
    <ul>
        <li>
            <span class="highlight">Property-файлы:</span> Значения могут быть указаны в файлах конфигурации, таких как <code>application.properties</code> или <code>application.yml</code>.
        </li>
        <li>
            <span class="highlight">Системные свойства:</span> Использование SpEL позволяет получать значения из системных свойств или переменных окружения.
        </li>
        <li>
            <span class="highlight">Бины:</span> Можно использовать значения, возвращаемые методами бинов.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@Value</code> поддерживает гибкость в указании источников данных, что делает её мощным инструментом для конфигурации приложений.
        </p>
    </div>

    <h2>Примеры использования @Value</h2>
    <h3>Внедрение в поле</h3>
    <pre><code>@Component
public class MyComponent {

    @Value("${app.name}")
    private String appName;

    @Value("${app.version:1.0}")
    private String appVersion;

    @Value("#{systemProperties[\'user.name\']}")
    private String systemUser;
}</code></pre>

    <h3>Внедрение в конструктор</h3>
    <pre><code>@Component
public class MyComponent {

    private final String appName;

    public MyComponent(@Value("${app.name}") String appName) {
        this.appName = appName;
    }
}</code></pre>

    <h3>Внедрение в метод</h3>
    <pre><code>@Component
public class MyComponent {

    private String appName;

    @Autowired
    public void setAppName(@Value("${app.name}") String appName) {
        this.appName = appName;
    }
}</code></pre>

    <h2>Преимущества @Value</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Поддержка различных источников данных, включая property-файлы, системные свойства и SpEL.
        </li>
        <li>
            <span class="highlight">Простота:</span> Упрощает конфигурацию приложения, позволяя легко внедрять значения из внешних источников.
        </li>
        <li>
            <span class="highlight">Поддержка значений по умолчанию:</span> Позволяет задавать значения по умолчанию, если ключ не найден.
        </li>
    </ul>

    <h2>Ограничения @Value</h2>
    <ul>
        <li>
            <span class="highlight">Только для примитивов и строк:</span> Аннотация <code>@Value</code> предназначена для внедрения примитивных типов и строк. Для сложных объектов следует использовать другие механизмы, такие как <code>@Autowired</code>.
        </li>
        <li>
            <span class="highlight">Зависимость от конфигурации:</span> Если значение не найдено и не указано значение по умолчанию, может возникнуть ошибка.
        </li>
    </ul>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7b3ef042-ec2a-4fca-bd5f-3d0f0ee9ddad', 'Что такое аннотация @Transactional и как она используется?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аннотация @Transactional</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аннотация @Transactional</h1>
    <p>
        <span class="highlight">@Transactional</span> — это аннотация в Spring Framework, которая используется для управления транзакциями в приложениях. Она позволяет указать, что метод или класс должен выполняться в рамках транзакции, обеспечивая атомарность, согласованность, изолированность и долговечность (ACID) операций с базой данных.
    </p>

    <h2>Основные возможности @Transactional</h2>
    <p>
        <span class="highlight">1. Управление транзакциями:</span> Аннотация <code>@Transactional</code> автоматически управляет началом, завершением и откатом транзакций.
    </p>
    <p>
        <span class="highlight">2. Поддержка отката:</span> Если в методе, помеченном <code>@Transactional</code>, возникает исключение, транзакция автоматически откатывается.
    </p>
    <p>
        <span class="highlight">3. Настройка поведения транзакций:</span> Аннотация позволяет настраивать такие параметры, как уровень изоляции, распространение транзакций и таймауты.
    </p>

    <h2>Как использовать @Transactional?</h2>
    <p>
        Аннотация <code>@Transactional</code> может быть применена к методам или классам. Если она применяется к классу, все публичные методы этого класса будут выполняться в рамках транзакции.
    </p>

    <h3>Пример использования @Transactional на уровне метода:</h3>
    <pre><code>
@Service
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Transactional
    public void createUser(User user) {
        userRepository.save(user);
    }

    @Transactional(readOnly = true)
    public User getUserById(Long id) {
        return userRepository.findById(id).orElseThrow(() -> new RuntimeException("User not found"));
    }
}
    </code></pre>

    <h3>Пример использования @Transactional на уровне класса:</h3>
    <pre><code>
@Service
@Transactional
public class UserService {
    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void createUser(User user) {
        userRepository.save(user);
    }

    @Transactional(readOnly = true)
    public User getUserById(Long id) {
        return userRepository.findById(id).orElseThrow(() -> new RuntimeException("User not found"));
    }
}
    </code></pre>

    <h2>Параметры аннотации @Transactional</h2>
    <p>
        Аннотация <code>@Transactional</code> поддерживает несколько параметров для настройки поведения транзакций:
        <ul>
            <li>
                <span class="highlight">propagation:</span> Определяет поведение транзакции относительно других транзакций. Например, <code>Propagation.REQUIRED</code> (по умолчанию) означает, что метод будет выполняться в текущей транзакции или создаст новую, если текущей нет.
            </li>
            <li>
                <span class="highlight">isolation:</span> Определяет уровень изоляции транзакции. Например, <code>Isolation.READ_COMMITTED</code> (по умолчанию) гарантирует, что данные, прочитанные в транзакции, будут зафиксированы.
            </li>
            <li>
                <span class="highlight">readOnly:</span> Указывает, что транзакция только для чтения. Это может улучшить производительность для операций, которые не изменяют данные.
            </li>
            <li>
                <span class="highlight">timeout:</span> Определяет максимальное время выполнения транзакции в секундах.
            </li>
            <li>
                <span class="highlight">rollbackFor:</span> Указывает, для каких исключений должен выполняться откат транзакции.
            </li>
            <li>
                <span class="highlight">noRollbackFor:</span> Указывает, для каких исключений не должен выполняться откат транзакции.
            </li>
        </ul>
    </p>

    <h3>Пример настройки параметров @Transactional:</h3>
    <pre><code>
@Transactional(
    propagation = Propagation.REQUIRED,
    isolation = Isolation.READ_COMMITTED,
    readOnly = false,
    timeout = 30,
    rollbackFor = {RuntimeException.class},
    noRollbackFor = {IllegalArgumentException.class}
)
public void updateUser(User user) {
    userRepository.save(user);
}
    </code></pre>

    <h2>Рекомендации по использованию @Transactional</h2>
    <p>
        <span class="highlight">1. Используйте @Transactional для операций с базой данных:</span> Это обеспечивает атомарность и согласованность данных.
    </p>
    <p>
        <span class="highlight">2. Настраивайте параметры транзакций:</span> Используйте параметры, такие как <code>propagation</code> и <code>isolation</code>, чтобы настроить поведение транзакций в соответствии с требованиями вашего приложения.
    </p>
    <p>
        <span class="highlight">3. Избегайте длительных транзакций:</span> Длительные транзакции могут привести к блокировкам и снижению производительности. Используйте параметр <code>timeout</code>, чтобы ограничить время выполнения транзакции.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@Transactional</code> — это мощный инструмент для управления транзакциями в Spring. Правильное её использование помогает обеспечить целостность данных и улучшить производительность приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('88ec8d0f-c308-4d6c-88de-4a6a9c466040', 'Что такое загрузчик классов (classloader)?', e'<!DOCTYPE html>
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
    <h1>Что такое загрузчик классов (ClassLoader)?</h1>

    <p>
        Основа работы с классами в Java – <span class="note">классы-загрузчики</span>, обычные Java-объекты, предоставляющие интерфейс для поиска и создания объекта класса по его имени во время работы приложения.
    </p>

    <h2>Основные загрузчики классов</h2>
    <p>
        В начале работы программы создается 3 основных загрузчика классов:
    </p>
    <ul>
        <li>
            <span class="note">Базовый загрузчик (bootstrap/primordial)</span> – загружает основные системные и внутренние классы JDK (Core API – пакеты java.* (rt.jar и i18n.jar)). Важно заметить, что базовый загрузчик является «изначальным», или «корневым» и частью JVM, вследствие чего его нельзя создать внутри кода программы.
        </li>
        <li>
            <span class="note">Загрузчик расширений (extention)</span> – загружает различные пакеты расширений, которые располагаются в директории <code>&lt;JAVA_HOME&gt;/lib/ext</code> или другой директории, описанной в системном параметре <code>java.ext.dirs</code>. Это позволяет обновлять и добавлять новые расширения без необходимости модифицировать настройки используемых приложений. Загрузчик расширений реализован классом <code>sun.misc.Launcher$ExtClassLoader</code>.
        </li>
        <li>
            <span class="note">Системный загрузчик (system/application)</span> – загружает классы, пути к которым указаны в переменной окружения <code>CLASSPATH</code> или пути, которые указаны в командной строке запуска JVM после ключей <code>-classpath</code> или <code>-cp</code>. Системный загрузчик реализован классом <code>sun.misc.Launcher$AppClassLoader</code>.
        </li>
    </ul>

    <h2>Иерархия загрузчиков</h2>
    <p>
        Загрузчики классов являются иерархическими: каждый из них (кроме базового) имеет родительский загрузчик и в большинстве случаев перед тем как попробовать загрузить класс самостоятельно, посылает вначале запрос родительскому загрузчику загрузить указанный класс. Такое делегирование позволяет загружать классы тем загрузчиком, который находится ближе всего к базовому в иерархии делегирования. Как следствие поиск классов будет происходить в источниках в порядке их доверия: сначала в библиотеке Core API, потом в папке расширений, потом в локальных файлах CLASSPATH.
    </p>

    <h2>Процесс загрузки класса</h2>
    <p>
        Процесс загрузки класса состоит из трех частей:
    </p>
    <ul>
        <li>
            <span class="note">Loading</span> – на этой фазе происходит поиск и физическая загрузка файла класса в определенном источнике (в зависимости от загрузчика). Этот процесс определяет базовое представление класса в памяти. На этом этапе такие понятия как «методы», «поля» и т. д. пока неизвестны.
        </li>
        <li>
            <span class="note">Linking</span> – процесс, который может быть разбит на 3 части:
            <ul>
                <li><span class="note">Bytecode verification</span> – проверка байт-кода на соответствие требованиям, определенным в спецификации JVM;</li>
                <li><span class="note">Class preparation</span> – создание и инициализация необходимых структур, используемых для представления полей, методов, реализованных интерфейсов и т.п., определенных в загружаемом классе;</li>
                <li><span class="note">Resolving</span> – загрузка набора классов, на которые ссылается загружаемый класс.</li>
            </ul>
        </li>
        <li>
            <span class="note">Initialization</span> – вызов статических блоков инициализации и присваивание полям класса значений по умолчанию.
        </li>
    </ul>

    <h2>Особенности динамической загрузки классов</h2>
    <p>
        Динамическая загрузка классов в Java имеет ряд особенностей:
    </p>
    <ul>
        <li>
            <span class="note">Отложенная (lazy) загрузка и связывание классов</span> – загрузка классов производится только при необходимости, что позволяет экономить ресурсы и распределять нагрузку.
        </li>
        <li>
            <span class="note">Проверка корректности загружаемого кода (type safeness)</span> – все действия, связанные с контролем использования типов, производятся только во время загрузки класса, позволяя избежать дополнительной нагрузки во время выполнения кода.
        </li>
        <li>
            <span class="note">Программируемая загрузка</span> – пользовательский загрузчик полностью контролирует процесс получения запрошенного класса – самому ли искать байт-код и создавать класс или делегировать создание другому загрузчику. Дополнительно существует возможность выставлять различные атрибуты безопасности для загружаемых классов, позволяя таким образом работать с кодом из ненадежных источников.
        </li>
        <li>
            <span class="note">Множественные пространства имен</span> – каждый загрузчик имеет свое пространство имен для создаваемых классов. Соответственно, классы, загруженные двумя различными загрузчиками на основе общего байт-кода, в системе будут различаться.
        </li>
    </ul>

    <h2>Способы инициировать загрузку класса</h2>
    <p>
        Существует несколько способов инициировать загрузку требуемого класса:
    </p>
    <ul>
        <li>
            <span class="note">Явный</span> – вызов <code>ClassLoader.loadClass()</code> или <code>Class.forName()</code> (по умолчанию используется загрузчик, создавший текущий класс, но есть возможность и явного указания загрузчика).
        </li>
        <li>
            <span class="note">Неявный</span> – когда для дальнейшей работы приложения требуется ранее не использованный класс, JVM инициирует его загрузку.
        </li>
    </ul>

    <div class="definition">
        <p>
            <strong>ClassLoader</strong> – это механизм в Java, который отвечает за загрузку классов в память во время выполнения программы. Он обеспечивает гибкость и безопасность при работе с классами.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f5a5f163-07e6-4131-9258-83489512ebf4', 'Что такое JVM?', e'<!DOCTYPE html>
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
    <h1>Что такое JVM?</h1>

    <p>
        <span class="note">JVM</span>, <span class="note">Java Virtual Machine</span> (виртуальная машина Java) – это основная часть среды времени исполнения Java (<span class="note">JRE</span>). Виртуальная машина Java исполняет байт-код Java, предварительно созданный из исходного текста Java-программы компилятором Java. JVM может также использоваться для выполнения программ, написанных на других языках программирования.
    </p>

    <div class="definition">
        <p>
            <strong>JVM</strong> – это виртуальная машина, которая обеспечивает выполнение байт-кода Java и является ключевым компонентом платформы Java.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b8a474d7-26b8-4341-a943-7b226808bd22', 'Как реализовать репозиторий с использованием Spring Data?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Реализация репозитория с использованием Spring Data</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Реализация репозитория с использованием Spring Data</h1>
    <p>
        <span class="highlight">Spring Data</span> предоставляет мощные инструменты для создания репозиториев, которые упрощают работу с базами данных. Репозитории в Spring Data позволяют выполнять CRUD-операции (Create, Read, Update, Delete) и создавать сложные запросы с минимальным количеством кода. В этом руководстве мы рассмотрим, как реализовать репозиторий с использованием Spring Data JPA.
    </p>

    <h2>Основные шаги для создания репозитория</h2>
    <p>
        <span class="highlight">1. Создание сущности (Entity):</span> Определите класс, который будет представлять таблицу в базе данных.
    </p>
    <p>
        <span class="highlight">2. Создание интерфейса репозитория:</span> Создайте интерфейс, который расширяет один из стандартных интерфейсов Spring Data, например, <code>JpaRepository</code>.
    </p>
    <p>
        <span class="highlight">3. Использование репозитория в сервисе:</span> Внедрите репозиторий в сервисный слой для выполнения операций с данными.
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

    <h3>Пример интерфейса репозитория:</h3>
    <pre><code>
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    // Найти пользователей по имени
    List<User> findByName(String name);

    // Найти пользователей по email (содержащему указанную строку)
    List<User> findByEmailContaining(String email);
}
    </code></pre>

    <h3>Пример использования репозитория в сервисе:</h3>
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

    public User saveUser(User user) {
        return userRepository.save(user);
    }

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }
}
    </code></pre>

    <h2>Преимущества использования Spring Data JPA</h2>
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

    <h2>Рекомендации по созданию репозиториев</h2>
    <p>
        <span class="highlight">1. Используйте стандартные интерфейсы:</span> Расширяйте интерфейсы, такие как <code>JpaRepository</code>, чтобы получить доступ к стандартным методам CRUD.
    </p>
    <p>
        <span class="highlight">2. Создавайте методы с понятными именами:</span> Spring Data JPA автоматически создаёт запросы на основе имён методов, поэтому используйте понятные имена, такие как <code>findByName</code> или <code>findByEmailContaining</code>.
    </p>
    <p>
        <span class="highlight">3. Используйте аннотации для кастомных запросов:</span> Если стандартные методы не подходят, используйте аннотацию <code>@Query</code> для создания кастомных запросов.
    </p>

    <h3>Пример кастомного запроса с использованием @Query:</h3>
    <pre><code>
public interface UserRepository extends JpaRepository<User, Long> {
    @Query("SELECT u FROM User u WHERE u.email LIKE %:email%")
    List<User> searchByEmail(@Param("email") String email);
}
    </code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring Data JPA — это мощный инструмент для работы с базами данных, который значительно упрощает разработку. Используйте его возможности для создания надёжных и поддерживаемых приложений.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('bf139e85-5da3-471c-a4e8-2940e6695a73', 'Что такое аспектно-ориентированное программирование (AOP)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Аспектно-ориентированное программирование (AOP)</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Аспектно-ориентированное программирование (AOP)</h1>
    <p>
        <span class="highlight">Аспектно-ориентированное программирование (AOP)</span> — это парадигма программирования, которая позволяет разделять сквозные задачи (cross-cutting concerns) от основной бизнес-логики. Это помогает улучшить модульность и поддерживаемость кода, уменьшая дублирование и упрощая управление такими задачами, как логирование, транзакции, безопасность и кэширование.
    </p>

    <h2>Основные концепции AOP</h2>
    <p>
        <span class="highlight">1. Аспект (Aspect):</span> Модуль, который инкапсулирует сквозную задачу. Например, аспект может отвечать за логирование или управление транзакциями.
    </p>
    <p>
        <span class="highlight">2. Совет (Advice):</span> Действие, которое выполняется в определённой точке соединения (join point). Например, это может быть код, который выполняется до или после вызова метода.
    </p>
    <p>
        <span class="highlight">3. Точка соединения (Join Point):</span> Точка в выполнении программы, где может быть применён аспект. Например, вызов метода или обработка исключения.
    </p>
    <p>
        <span class="highlight">4. Срез (Pointcut):</span> Выражение, которое определяет, где именно должен быть применён совет. Например, все методы в определённом пакете или все методы, аннотированные <code>@Transactional</code>.
    </p>
    <p>
        <span class="highlight">5. Внедрение (Weaving):</span> Процесс связывания аспектов с объектами приложения. Это может происходить во время компиляции, загрузки или выполнения программы.
    </p>

    <h2>Пример использования AOP в Spring</h2>
    <p>
        Spring Framework предоставляет мощную поддержку AOP, которая позволяет легко внедрять аспекты в приложение. Рассмотрим пример аспекта для логирования.
    </p>

    <h3>Пример аспекта для логирования:</h3>
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

    <h3>Пример сервиса, к которому применяется аспект:</h3>
    <pre><code>
@Service
public class UserService {
    public void createUser(User user) {
        System.out.println("Пользователь создан: " + user.getName());
    }

    public void deleteUser(Long id) {
        System.out.println("Пользователь удалён: " + id);
    }
}
    </code></pre>

    <h2>Преимущества AOP</h2>
    <p>
        <span class="highlight">1. Уменьшение дублирования кода:</span> Сквозные задачи, такие как логирование или управление транзакциями, могут быть вынесены в отдельные аспекты.
    </p>
    <p>
        <span class="highlight">2. Улучшение модульности:</span> Основная бизнес-логика остаётся чистой и не загромождённой дополнительными задачами.
    </p>
    <p>
        <span class="highlight">3. Упрощение поддержки:</span> Изменения в сквозных задачах могут быть сделаны в одном месте, а не во множестве классов.
    </p>
    <p>
        <span class="highlight">4. Гибкость:</span> Аспекты могут быть легко включены или отключены в зависимости от конфигурации.
    </p>

    <h2>Рекомендации по использованию AOP</h2>
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
            <span class="highlight">Важно:</span> Аспектно-ориентированное программирование — это мощный инструмент для улучшения модульности и поддерживаемости кода. Используйте его с умом, чтобы избежать сложностей и улучшить качество вашего приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e104a141-1c4e-4594-945b-35cb2669937a', 'Виды ссылок в Java', e'<!DOCTYPE html>
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
</head>ody>
    <h1>Виды ссылок в Java</h1>

    <p>
        В Java существует 4 типа ссылок. Особенности каждого типа ссылок связаны с работой <span class="note">Garbage Collector</span>:
    </p>
    <ul>
        <li><span class="note">сильные (strong reference)</span>;</li>
        <li><span class="note">мягкие (SoftReference)</span>;</li>
        <li><span class="note">слабые (WeakReference)</span>;</li>
        <li><span class="note">фантомные (PhantomReference)</span>.</li>
    </ul>

    <h2>Отличия между слабыми, мягкими, фантомными и обычными ссылками в Java</h2>
    <p>
        <span class="note">Слабые</span> ссылки и <span class="note">мягкие</span> ссылки (<code>WeakReference</code>, <code>SoftReference</code>) были добавлены в Java API давно. Ссылочные классы особенно важны в контексте сборки мусора. Сборщик мусора сам освобождает память, занимаемую объектами, но решение об освобождении памяти он принимает, исходя из типа имеющихся на объект ссылок.
    </p>
    <p>
        Главное отличие <span class="note">SoftReference</span> от <span class="note">WeakReference</span> в том, как сборщик с ними будет работать. Он может удалить объект в любой момент, если на него указывают только <span class="note">weak-ссылки</span>, с другой стороны объекты с <span class="note">soft-ссылкой</span> будут собраны только когда JVM очень нужна память.
    </p>
    <p>
        Благодаря таким особенностям ссылочных классов каждый из них имеет свое применение. <span class="note">SoftReference</span> можно использовать для реализации кэшей, и когда JVM понадобится память, она освободит ее за счет удаления таких объектов. А <span class="note">WeakReference</span> отлично подойдут для хранения метаданных, например, для хранения ссылки на <code>ClassLoader</code>. Если нет классов для загрузки, то нет смысла хранить ссылку на <code>ClassLoader</code>, слабая ссылка делает <code>ClassLoader</code> доступным для удаления как только мы назначим ее вместо сильной ссылки (<span class="note">Strong reference</span>).
    </p>

    <h2>Фантомные ссылки</h2>
    <p>
        <span class="note">Фантомные ссылки</span> – третий тип ссылок, доступных в пакете <code>java.lang.ref</code>. <span class="note">Phantom-ссылки</span> представлены классом <code>java.lang.ref.PhantomReference</code>. Объект, на который указывают только <span class="note">phantom-ссылки</span>, может быть удален сборщиком в любой момент. <span class="note">Phantom-ссылка</span> создается точно так же, как <span class="note">weak</span> или <span class="note">soft</span>.
    </p>
    <pre>
DigitalCounter digit = new DigitalCounter(); // digit reference variable has strong reference
PhantomReference phantom = new PhantomReference(digit); // phantom reference
digit = null;
    </pre>
    <p>
        Как только обнулите <span class="note">strong-ссылки</span> на объект <code>DigitalCounter</code>, сборщик мусора удалит его в любой момент, так как теперь на него ведут только <span class="note">phantom-ссылки</span>.
    </p>

    <h2>Использование ReferenceQueue</h2>
    <p>
        Классом <code>ReferenceQueue</code> можно воспользоваться при создании объекта класса <code>WeakReference</code>, <code>SoftReference</code> или <code>PhantomReference</code>:
    </p>
    <pre>
ReferenceQueue refQueue = new ReferenceQueue(); // reference will be stored in this queue for cleanup
DigitalCounter digit = new DigitalCounter();
PhantomReference phantom = new PhantomReference(digit, refQueue);
    </pre>
    <p>
        Ссылка на объект будет добавлена в <code>ReferenceQueue</code>, и можно будет контролировать состояние ссылок путем опроса <code>ReferenceQueue</code>.
    </p>

    <div class="definition">
        <p>
            <strong>Правильное использование ссылок</strong> поможет при сборке мусора, и в результате получим более гибкое управление памятью в Java.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('218f7567-8940-4d36-b042-0b6464a59027', 'Как работает сборщик мусора?', e'<!DOCTYPE html>
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
    <h1>Как работает сборщик мусора?</h1>

    <p>
        <span class="note">Механизм сборки мусора</span> – это процесс освобождения места в куче для возможности добавления новых объектов.
    </p>

    <p>
        Объекты создаются с помощью оператора <code>new</code>, тем самым присваивая объекту ссылку. Для окончания работы с объектом достаточно перестать на него ссылаться, например, присвоив переменной ссылку на другой объект или значение <code>null</code>; прекратить выполнение метода, чтобы его локальные переменные завершили свое существование естественным образом. Объекты, ссылки на которые отсутствуют, принято называть <span class="note">мусором (garbage)</span>, который будет удален.
    </p>

    <p>
        Виртуальная машина Java, применяя механизм сборки мусора, гарантирует, что любой объект, обладающий ссылками, остается в памяти – все объекты, которые недостижимы из исполняемого кода, ввиду отсутствия ссылок на них, удаляются с высвобождением отведенной для них памяти. Точнее говоря, объект не попадает в сферу действия процесса сборки мусора, если он достижим посредством цепочки ссылок, начиная с корневой (<span class="note">GC Root</span>) ссылки, т. е. ссылки, непосредственно существующей в выполняемом коде.
    </p>

    <p>
        Память освобождается сборщиком мусора по его собственному «усмотрению». Программа может успешно завершить работу, не исчерпав ресурсов свободной памяти или даже не приблизившись к этой черте, и поэтому ей так и не потребуются «услуги» сборщика мусора.
    </p>

    <p>
        Мусор собирается системой автоматически без вмешательства пользователя или программиста, но это не значит, что этот процесс не требует внимания вовсе. Необходимость создания и удаления большого количества объектов существенным образом сказывается на производительности приложений, и если быстродействие программы является важным фактором, следует тщательно обдумывать решения, связанные с созданием объектов. Это, в свою очередь, уменьшит и объем мусора, подлежащего утилизации.
    </p>

    <div class="definition">
        <p>
            <strong>Сборщик мусора (Garbage Collector)</strong> – это механизм, который автоматически управляет памятью в Java, освобождая её от неиспользуемых объектов и предотвращая утечки памяти.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a1fbb310-4a41-4b0f-b589-ec23769af9b1', ' Какие есть разновидности сборщиков мусора?', e'<!DOCTYPE html>
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
    <h1>Разновидности сборщиков мусора в HotSpot</h1>

    <p>
        <span class="note">Java HotSpot VM</span> предоставляет разработчикам на выбор четыре различных сборщика мусора:
    </p>
    <ul>
        <li>
            <span class="note">Serial (последовательный)</span> – самый простой вариант для приложений с небольшим объемом данных и не требовательных к задержкам. На данный момент используется сравнительно редко, но на слабых компьютерах может быть выбран виртуальной машиной в качестве сборщика по умолчанию. Использование <span class="note">Serial GC</span> включается опцией <code>-XX:+UseSerialGC</code>.
        </li>
        <li>
            <span class="note">Parallel (параллельный)</span> – наследует подходы к сборке от последовательного сборщика, но добавляет параллелизм в некоторые операции, а также возможности по автоматической подстройке под требуемые параметры производительности. Параллельный сборщик включается опцией <code>-XX:+UseParallelGC</code>.
        </li>
        <li>
            <span class="note">Concurrent Mark Sweep (CMS)</span> – нацелен на снижение максимальных задержек путем выполнения части работ по сборке мусора параллельно с основными потоками приложения. Подходит для работы с относительно большими объемами данных в памяти. Использование <span class="note">CMS GC</span> включается опцией <code>-XX:+UseConcMarkSweepGC</code>.
        </li>
        <li>
            <span class="note">Garbage-First (G1)</span> – создан для замены CMS, особенно в серверных приложениях, работающих на многопроцессорных серверах и оперирующих большими объемами данных. <span class="note">G1</span> включается опцией <code>-XX:+UseG1GC</code>.
        </li>
    </ul>

    <div class="definition">
        <p>
            <strong>Сборщики мусора в HotSpot</strong> – это различные реализации механизмов управления памятью, которые позволяют оптимизировать производительность приложений в зависимости от их требований и характеристик.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b2f74aee-8f10-43be-99fd-03910fa58770', 'Опишите алгоритм работы сборщика мусора', e'<!DOCTYPE html>
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
    <h1>Алгоритм работы Serial Garbage Collector</h1>

    <p>
        <span class="note">Serial Garbage Collector</span> (последовательный сборщик мусора) был одним из первых сборщиков мусора в <span class="note">HotSpot VM</span>. Во время работы этого сборщика приложение приостанавливается и продолжает работать только после завершения сборки мусора.
    </p>

    <h2>Структура памяти</h2>
    <p>
        Память приложения делится на три пространства:
    </p>
    <ul>
        <li>
            <span class="note">Young generation</span>. Объекты создаются именно в этом участке памяти.
        </li>
        <li>
            <span class="note">Old generation</span>. В этот участок памяти перемещаются объекты, которые переживают «minor garbage collection».
        </li>
        <li>
            <span class="note">Permanent generation</span>. Тут хранятся метаданные об объектах, Class data sharing (CDS), пул строк (String pool). Permanent-область делится на две: только для чтения и для чтения-записи. Очевидно, что в этом случае область только для чтения не чистится сборщиком мусора никогда.
        </li>
    </ul>

    <h3>Young generation</h3>
    <p>
        Область памяти <span class="note">Young generation</span> состоит из трех областей:
    </p>
    <ul>
        <li><span class="note">Eden</span> – большинство объектов создаются в этой области.</li>
        <li><span class="note">Survivor spaces</span> – две меньшие области: <span class="note">To space</span> и <span class="note">From space</span>. В них перемещаются объекты, которые пережили по крайней мере одну сборку мусора, но еще не достигли порога «старости» (tenuring threshold), чтобы быть перемещенными в <span class="note">Old generation</span>.</li>
    </ul>

    <h3>Minor Collection</h3>
    <p>
        Когда <span class="note">Young generation</span> заполняется, в этой области запускается процесс <span class="note">minor collection</span> (легкая сборка). Он происходит следующим образом:
    </p>
    <ul>
        <li>В начале работы одно из <span class="note">Survivor spaces</span> – <span class="note">To space</span> – является пустым, а другое – <span class="note">From space</span> – содержит объекты, пережившие предыдущие сборки.</li>
        <li>Сборщик мусора ищет живые объекты в <span class="note">Eden</span> и копирует их в <span class="note">To space</span>.</li>
        <li>Затем копирует туда же и живые «молодые» объекты из <span class="note">From space</span>.</li>
        <li>Старые объекты из <span class="note">From space</span> перемещаются в <span class="note">Old generation</span>.</li>
        <li>После легкой сборки <span class="note">From space</span> и <span class="note">To space</span> меняются ролями, область <span class="note">Eden</span> становится пустой, а число объектов в <span class="note">Old generation</span> увеличивается.</li>
    </ul>
    <p>
        Если в процессе копирования <span class="note">To space</span> переполняется, то оставшиеся живые объекты из <span class="note">Eden</span> и <span class="note">From space</span>, которым не хватило места в <span class="note">To space</span>, будут перемещены в <span class="note">Old generation</span>, независимо от того, сколько сборок мусора они пережили.
    </p>

    <h3>Old Generation Collection</h3>
    <p>
        В <span class="note">Old generation</span> сборка мусора происходит с использованием алгоритма <span class="note">mark-sweep-compact</span>, который состоит из трех фаз:
    </p>
    <ul>
        <li>
            <span class="note">Mark (пометка)</span> – сборщик мусора помечает все живые объекты.
        </li>
        <li>
            <span class="note">Sweep (очистка)</span> – все не помеченные объекты удаляются.
        </li>
        <li>
            <span class="note">Compact (уплотнение)</span> – все живые объекты перемещаются в начало <span class="note">Old generation</span>, в результате чего свободная память после очистки представляет собой непрерывную область.
        </li>
    </ul>
    <p>
        Фаза уплотнения выполняется для того, чтобы избежать фрагментации и упростить процесс выделения памяти в <span class="note">Old generation</span>.
    </p>

    <h3>Bump-the-Pointer</h3>
    <p>
        Когда свободная память представляет собой непрерывную область, для выделения памяти под создаваемый объект используется очень быстрый алгоритм <span class="note">bump-the-pointer</span>:
    </p>
    <ul>
        <li>Адрес начала свободной памяти хранится в специальном указателе.</li>
        <li>Когда поступает запрос на создание нового объекта, код проверяет, что для нового объекта достаточно места.</li>
        <li>Если это так, то указатель просто увеличивается на размер объекта.</li>
    </ul>

    <h2>Преимущества и недостатки</h2>
    <p>
        Последовательный сборщик мусора отлично подходит для большинства приложений, использующих до 200 Мб кучи, работающих на машинах клиентского типа и не предъявляющих жестких требований к величине пауз, затрачиваемых на сборку мусора. Однако модель <span class="note">stop-the-world</span> может вызвать длительные паузы в работе приложения при использовании больших объемов памяти. Кроме того, последовательный алгоритм работы не позволяет оптимально использовать вычислительные ресурсы компьютера, и последовательный сборщик мусора может стать узким местом при работе приложения на многопроцессорных машинах.
    </p>

    <div class="definition">
        <p>
            <strong>Serial Garbage Collector</strong> – это простой и эффективный сборщик мусора, который подходит для приложений с небольшими объемами данных и не требовательных к задержкам.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');