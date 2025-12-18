INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('49edf0f0-ddad-46f2-991d-d4abf02118e4', 'Что является монитором у статического synchronized-метода?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Монитор статического synchronized-метода в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Монитор статического synchronized-метода в Java</h1>
    <p>
        В Java монитор — это механизм, который обеспечивает синхронизацию доступа к общим ресурсам. Для
        статических <code>synchronized</code>-методов монитором является объект типа <code>Class</code>, соответствующий классу,
        в котором определён метод.
    </p>

    <h2>Что является монитором у статического synchronized-метода?</h2>
    <ul>
        <li>
            <span class="highlight">Объект типа Class:</span>
            <ul>
                <li>
                    Для статических <code>synchronized</code>-методов монитором является объект <code>Class</code>, связанный с классом,
                    в котором определён метод.
                </li>
                <li>
                    Это означает, что только один поток может выполнять статический <code>synchronized</code>-метод
                    для данного класса в определённый момент времени.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Статические <code>synchronized</code>-методы синхронизируются на уровне класса, а не на уровне
                    экземпляра класса.
                </li>
                <li>
                    Это позволяет избежать конфликтов при доступе к статическим данным из разных потоков.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример статического synchronized-метода</h2>
    <pre><code>public class Counter {
    private static int count = 0;

    public static synchronized void increment() {
        count++;
    }

    public static int getCount() {
        return count;
    }
}</code></pre>

    <h2>Объяснение</h2>
    <ul>
        <li>
            <span class="highlight">Монитор:</span>
            <ul>
                <li>
                    В данном примере монитором для метода <code>increment()</code> является объект <code>Counter.class</code>.
                </li>
                <li>
                    Это означает, что если один поток выполняет метод <code>increment()</code>, другие потоки не смогут
                    выполнять этот метод или другие статические <code>synchronized</code>-методы класса <code>Counter</code> до тех пор,
                    пока первый поток не завершит выполнение.
                </li>
            </ul>
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7e083266-1ccf-4735-b3de-5374c0a09401', 'В каких состояниях может находиться поток?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Состояния потока в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Состояния потока в Java</h1>
    <p>
        Поток в Java может находиться в одном из нескольких состояний, которые определяют его жизненный цикл.
        Понимание этих состояний помогает управлять потоками и их выполнением.
    </p>

    <h2>Состояния потока</h2>
    <ul>
        <li>
            <span class="highlight">New:</span>
            <ul>
                <li>
                    Объект класса <code>Thread</code> создан, но метод <code>start()</code> ещё не вызван.
                </li>
                <li>
                    Поток не является потоком выполнения и не выполняется.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Runnable:</span>
            <ul>
                <li>
                    Поток готов к выполнению, но планировщик потоков ещё не выбрал его для выполнения.
                </li>
                <li>
                    Поток находится в пуле потоков и ожидает, пока ему будет выделено процессорное время.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Running:</span>
            <ul>
                <li>
                    Поток выполняется. В этом состоянии поток выполняет свой код.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Waiting/Blocked/Sleeping:</span>
            <ul>
                <li>
                    Поток блокирован или ожидает завершения работы другого потока.
                </li>
                <li>
                    Это состояние может быть вызвано методами <code>wait()</code>, <code>sleep()</code>, блокировкой ввода-вывода
                    или ожиданием захвата монитора.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Dead:</span>
            <ul>
                <li>
                    Поток завершил выполнение. Попытка вызвать метод <code>start()</code> для потока в этом состоянии
                    приведёт к выбросу исключения <code>IllegalThreadStateException</code>.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Переход между состояниями управляется методами <code>start()</code>, <code>wait()</code>, <code>notify()</code>, <code>sleep()</code>
                    и другими механизмами синхронизации.
                </li>
                <li>
                    Понимание состояний потока помогает избежать ошибок, таких как попытка запуска уже завершённого потока.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример жизненного цикла потока</h2>
    <ul>
        <li>
            <code>New:</code> Поток создан, но ещё не запущен.
        </li>
        <li>
            <code>Runnable:</code> Поток готов к выполнению, но ожидает выделения процессорного времени.
        </li>
        <li>
            <code>Running:</code> Поток выполняется.
        </li>
        <li>
            <code>Waiting/Blocked/Sleeping:</code> Поток приостановлен или ожидает завершения другого потока.
        </li>
        <li>
            <code>Dead:</code> Поток завершил выполнение.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('368011be-a457-43f2-ac0a-e1bca11f6d11', 'Как перебрать все значения Map?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Перебор всех значений Map</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Перебор всех значений Map</h1>
    <p>
        Для перебора всех значений в <code>Map</code> можно использовать метод <code>values()</code>, который возвращает коллекцию (<code>Collection</code>) значений. Это позволяет легко итерироваться по всем значениям коллекции.
    </p>

    <h2>Использование values()</h2>
    <ul>
        <li>
            <span class="highlight">Метод values():</span>
            <ul>
                <li>Возвращает коллекцию значений типа <code>Collection&lt;V&gt;</code>, где <code>V</code> – тип значения.</li>
                <li>Эта коллекция может быть использована для итерации по всем значениям <code>Map</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример перебора:</span>
            <ul>
                <li>Можно использовать цикл <code>for-each</code> или итератор для перебора значений.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
Map&lt;String, Integer&gt; map = new HashMap&lt;&gt;();
map.put("A", 1);
map.put("B", 2);
map.put("C", 3);

// Перебор значений с помощью values()
for (Integer value : map.values()) {
    System.out.println("Значение: " + value);
}
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Метод <code>values()</code> возвращает коллекцию значений <code>[1, 2, 3]</code>.</li>
        <li>Цикл <code>for-each</code> используется для перебора и вывода всех значений.</li>
    </ul>

    <h2>Использование итератора</h2>
    <pre>
<code>
Iterator&lt;Integer&gt; iterator = map.values().iterator();
while (iterator.hasNext()) {
    Integer value = iterator.next();
    System.out.println("Значение: " + value);
}
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Метод <code>values()</code> предоставляет удобный способ перебора всех значений в <code>Map</code>. Это особенно полезно, если нужно выполнить операции только со значениями, без доступа к ключам.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6ee5742c-ca44-4357-ab9e-309ef0b0080d', 'Объясните смысл параметров в конструкторе HashMap(int initialCapacity,  float loadFactor).', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Параметры конструктора HashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Параметры конструктора HashMap</h1>
    <p>
        Конструктор <code>HashMap(int initialCapacity, float loadFactor)</code> позволяет задать начальную ёмкость и коэффициент загрузки для <code>HashMap</code>. Эти параметры влияют на производительность и частоту перехеширования.
    </p>

    <h2>Параметры конструктора</h2>
    <ul>
        <li>
            <span class="highlight">initialCapacity:</span>
            <ul>
                <li>Это начальный размер <code>HashMap</code>, то есть количество корзин в хеш-таблице в момент её создания.</li>
                <li>По умолчанию <code>initialCapacity</code> равен 16.</li>
                <li>Если известно примерное количество элементов, можно задать начальную ёмкость, чтобы избежать частого перехеширования.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">loadFactor:</span>
            <ul>
                <li>Это коэффициент заполнения <code>HashMap</code>, который определяет, при каком уровне заполнения произойдёт увеличение количества корзин.</li>
                <li>По умолчанию <code>loadFactor</code> равен 0.75.</li>
                <li>Коэффициент загрузки вычисляется как отношение числа элементов к текущей ёмкости (<code>size / capacity</code>).</li>
                <li>Когда коэффициент загрузки превышает заданное значение, количество корзин увеличивается в 2 раза, и происходит перехеширование.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
// Создание HashMap с initialCapacity = 32 и loadFactor = 0.5
Map&lt;String, Integer&gt; map = new HashMap&lt;&gt;(32, 0.5f);

for (int i = 0; i < 16; i++) { // Порог перехеширования: 32 * 0.5 = 16
    map.put("Key" + i, i);
}

map.put("Key16", 16); // Количество элементов превышает порог, корзины увеличиваются в 2 раза
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Изначально <code>HashMap</code> имеет 32 корзины и порог перехеширования 16.</li>
        <li>После добавления 16-го элемента количество корзин увеличивается до 64.</li>
        <li>Все элементы перехешируются и распределяются по новым корзинам.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Параметры <code>initialCapacity</code> и <code>loadFactor</code> позволяют оптимизировать производительность <code>HashMap</code>, минимизируя количество перехеширований. Выбор значений зависит от ожидаемого количества элементов и требований к производительности.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('abe3afd9-dc08-4b77-8e4f-b9404aae792f', 'Виды Join’ов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Виды JOIN в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Виды JOIN в SQL</h1>
    <p>
        Оператор <code>JOIN</code> в SQL используется для объединения данных из двух или более таблиц на основе
        определённого условия. В результате выполнения <code>JOIN</code> создаётся новая таблица, которая содержит
        данные из исходных таблиц.
    </p>

    <h2>Основные виды JOIN</h2>
    <ul>
        <li>
            <span class="highlight">INNER JOIN:</span>
            <ul>
                <li>
                    Возвращает только те строки, для которых есть совпадение в обеих таблицах.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Table1 INNER JOIN Table2 ON Table1.id = Table2.id;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">LEFT JOIN (или LEFT OUTER JOIN):</span>
            <ul>
                <li>
                    Возвращает все строки из левой таблицы (Table1) и соответствующие строки из правой таблицы
                    (Table2). Если совпадений нет, то в правой части будут <code>NULL</code>.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Table1 LEFT JOIN Table2 ON Table1.id = Table2.id;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">RIGHT JOIN (или RIGHT OUTER JOIN):</span>
            <ul>
                <li>
                    Возвращает все строки из правой таблицы (Table2) и соответствующие строки из левой таблицы
                    (Table1). Если совпадений нет, то в левой части будут <code>NULL</code>.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Table1 RIGHT JOIN Table2 ON Table1.id = Table2.id;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">FULL JOIN (или FULL OUTER JOIN):</span>
            <ul>
                <li>
                    Возвращает все строки из обеих таблиц. Если совпадений нет, то в недостающих частях будут
                    <code>NULL</code>.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Table1 FULL JOIN Table2 ON Table1.id = Table2.id;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">CROSS JOIN:</span>
            <ul>
                <li>
                    Возвращает декартово произведение строк из обеих таблиц. Каждая строка из первой таблицы
                    объединяется с каждой строкой из второй таблицы.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Table1 CROSS JOIN Table2;</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>INNER JOIN</code> используется для получения только совпадающих данных из обеих таблиц.
                </li>
                <li>
                    <code>LEFT JOIN</code> и <code>RIGHT JOIN</code> позволяют получить все строки из одной таблицы и совпадающие
                    строки из другой.
                </li>
                <li>
                    <code>FULL JOIN</code> возвращает все строки из обеих таблиц, даже если нет совпадений.
                </li>
                <li>
                    <code>CROSS JOIN</code> создаёт декартово произведение строк, что может привести к большому количеству
                    результатов.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования JOIN</h2>
    <ul>
        <li>
            <span class="highlight">INNER JOIN:</span>
            <pre><code>SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.id;</code></pre>
        </li>
        <li>
            <span class="highlight">LEFT JOIN:</span>
            <pre><code>SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.id;</code></pre>
        </li>
        <li>
            <span class="highlight">RIGHT JOIN:</span>
            <pre><code>SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.id;</code></pre>
        </li>
        <li>
            <span class="highlight">FULL JOIN:</span>
            <pre><code>SELECT employees.name, departments.department_name
FROM employees
FULL JOIN departments ON employees.department_id = departments.id;</code></pre>
        </li>
        <li>
            <span class="highlight">CROSS JOIN:</span>
            <pre><code>SELECT employees.name, departments.department_name
FROM employees
CROSS JOIN departments;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('79b1e7af-5772-4882-be15-0a08bcc5951d', 'Какие есть виды связей?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Виды связей в JPA</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Виды связей в JPA</h1>
    <p>
        В JPA (Java Persistence API) существует четыре основных типа связей между сущностями (Entity).
        Эти связи определяют, как сущности взаимодействуют друг с другом и как они хранятся в базе данных.
    </p>

    <h2>Типы связей</h2>
    <ul>
        <li>
            <span class="highlight">OneToOne:</span> Один экземпляр Entity может быть связан не больше чем с одним
            экземпляром другого Entity. Для реализации этой связи необходимо использовать
            <code>@JoinColumn</code> с указанием колонки, которая ссылается на родительскую сущность.
            В поле, где устанавливается связь, указывается тип другой сущности.
        </li>
        <li>
            <span class="highlight">OneToMany:</span> Один экземпляр Entity может быть связан с несколькими
            экземплярами других Entity. В этом случае используется коллекция для хранения связанных сущностей.
        </li>
        <li>
            <span class="highlight">ManyToOne:</span> Обратная связь для <code>OneToMany</code>. Несколько экземпляров Entity
            могут быть связаны с одним экземпляром другого Entity. Например, несколько машин могут
            принадлежать одному пользователю. В этом случае хранится одна сущность.
        </li>
        <li>
            <span class="highlight">ManyToMany:</span> Экземпляры Entity могут быть связаны с несколькими экземплярами
            друг друга. Для реализации этой связи используется сводная таблица с идентификаторами,
            где хранятся коллекции связанных сущностей.
        </li>
    </ul>

    <h2>Дополнительная классификация связей</h2>
    <p>
        Каждый из типов связей можно разделить на два вида:
    </p>
    <ul>
        <li>
            <span class="highlight">Bidirectional:</span> Связь устанавливается с обеих сторон. Используется аннотация
            <code>@MappedBy</code> на стороне, где указана <code>@OneToMany</code>. Например, в случае связи
            <code>OneToOne</code> между Entity A и Entity B, в Entity A будет ссылка на Entity B, а в Entity B —
            ссылка на Entity A. Entity A считается владельцем связи, что важно для каскадного удаления
            (при удалении A также удаляется B, но не наоборот).
        </li>
        <li>
            <span class="highlight">Unidirectional:</span> Связь устанавливается только с одной стороны. Например, в случае
            <code>OneToOne</code> между Entity A и Entity B, только Entity A будет иметь ссылку на Entity B,
            а Entity B не будет иметь ссылки на Entity A.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор типа связи и её направления зависит от требований приложения и
            структуры данных. Правильное использование связей позволяет эффективно управлять
            данными и их взаимодействием.
        </p>
    </div>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3107386c-8c6a-4e7d-a609-1b2ca32c7410', 'Может ли НЕ entity-класс наследоваться от entity-класса?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Наследование не Entity-класса от Entity-класса</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Наследование не Entity-класса от Entity-класса</h1>
    <p>
        В JPA (Java Persistence API) <span class="highlight">не Entity-класс</span> (non-entity class) может наследоваться от
        <span class="highlight">Entity-класса</span>. Это позволяет использовать общие свойства и методы Entity-класса в
        классах, которые не являются сущностями. Однако важно понимать, что не Entity-класс не будет
        отображаться в базе данных, даже если он наследует от Entity-класса.
    </p>

    <h2>Особенности наследования не Entity-класса от Entity-класса</h2>
    <p>
        Когда не Entity-класс наследуется от Entity-класса, важно учитывать следующие моменты:
    </p>
    <ul>
        <li>
            <span class="highlight">Отсутствие маппинга:</span> Не Entity-класс не будет отображаться в базе данных, даже
            если он наследует поля и методы от Entity-класса.
        </li>
        <li>
            <span class="highlight">Использование общих свойств:</span> Не Entity-класс может использовать поля и методы
            родительского Entity-класса, но они не будут сохраняться в базе данных.
        </li>
        <li>
            <span class="highlight">Отсутствие аннотаций:</span> Не Entity-класс не может быть помечен аннотациями JPA,
            такими как <code>@Entity</code>, <code>@Id</code> и другими.
        </li>
    </ul>

    <h2>Пример наследования не Entity-класса от Entity-класса</h2>
    <p>
        Рассмотрим пример, где не Entity-класс наследуется от Entity-класса:
    </p>
    <pre><code>
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

// Родительский Entity-класс
@Entity
public class Person {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private int age;

    public Person() {}

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}

// Не Entity-класс, наследующий от Entity-класса
public class Employee extends Person {
    private String department;

    public Employee() {}

    public Employee(String name, int age, String department) {
        super(name, age);
        this.department = department;
    }

    // Геттеры и сеттеры
    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
    </code></pre>

    <h2>Использование наследования</h2>
    <p>
        В этом примере класс <code>Person</code> является Entity-классом и отображается в базе данных. Класс
        <code>Employee</code> наследует поля и методы от <code>Person</code>, но сам не является Entity-классом. Это
        позволяет использовать общую логику в классе <code>Employee</code>, но данные этого класса не будут
        сохраняться в базе данных.
    </p>

    <h2>Заключение</h2>
    <p>
        Не Entity-класс может наследоваться от Entity-класса, что позволяет повторно использовать код и
        логику в классах, которые не являются сущностями. Однако важно помнить, что не Entity-класс не
        будет отображаться в базе данных, даже если он наследует поля и методы от Entity-класса. Это
        даёт гибкость в проектировании, но требует внимательности при работе с данными.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b960c0e3-4ccb-4578-bdf1-0517a9bfe86e', 'Как «смапить» коллекцию примитивов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Маппинг коллекции примитивов</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Маппинг коллекции примитивов</h1>
    <p>
        Если у сущности есть поле с коллекцией, то обычно используют аннотации <code>@OneToMany</code>
        или <code>@ManyToMany</code>. Однако эти аннотации применяются, когда коллекция состоит из
        других сущностей (entities). Если же коллекция содержит базовые или встраиваемые
        (embeddable) типы, то в JPA для таких случаев предусмотрена специальная аннотация
        <code>@ElementCollection</code>.
    </p>

    <h2>Как работает @ElementCollection?</h2>
    <ul>
        <li>
            <span class="highlight">Отдельная таблица:</span> Все записи коллекции хранятся в отдельной таблице.
            Таким образом, получается две таблицы: одна для сущности, а вторая — для коллекции элементов.
        </li>
        <li>
            <span class="highlight">Очистка и заполнение:</span> При добавлении новой строки в коллекцию она
            полностью очищается и заполняется заново, так как у элементов нет идентификаторов (id).
            Это можно решить с помощью аннотации <code>@OrderColumn</code>.
        </li>
        <li>
            <span class="highlight">Редактирование таблицы:</span> Аннотация <code>@CollectionTable</code> позволяет
            редактировать таблицу, в которой хранится коллекция.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Аннотация <code>@ElementCollection</code> упрощает работу с коллекциями
            примитивов или встраиваемых типов, но требует внимания к управлению данными в
            отдельной таблице.
        </p>
    </div>

    <h2>Пример использования @ElementCollection</h2>
    <ul>
        <li>
            <code>@ElementCollection</code> — указывает, что поле содержит коллекцию базовых или
            встраиваемых типов.
        </li>
        <li>
            <code>@OrderBy</code> — позволяет указать порядок элементов в коллекции.
        </li>
        <li>
            <code>@CollectionTable</code> — позволяет настроить таблицу для хранения коллекции.
        </li>
    </ul>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cabe978c-1893-4072-b309-ae091e10c4eb', 'Может ли entity-класс наследоваться от не entity-классов (non-entity  classes)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Наследование Entity-класса от не Entity-класса</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Наследование Entity-класса от не Entity-класса</h1>
    <p>
        В JPA (Java Persistence API) <span class="highlight">Entity-класс</span> может наследоваться от класса, который не является
        Entity (non-entity class). Это позволяет использовать общую логику или свойства в нескольких
        Entity-классах, не делая родительский класс Entity.
    </p>

    <h2>Особенности наследования от не Entity-класса</h2>
    <p>
        Когда Entity-класс наследуется от не Entity-класса, важно учитывать следующие моменты:
    </p>
    <ul>
        <li>
            <span class="highlight">Поля родительского класса:</span> Поля не Entity-класса не будут автоматически отображаться
            в базе данных. Если необходимо сохранить эти поля, их нужно явно объявить в Entity-классе
            или использовать стратегию маппинга, которая поддерживает наследование.
        </li>
        <li>
            <span class="highlight">Методы родительского класса:</span> Методы не Entity-класса могут быть унаследованы и
            использованы в Entity-классе, но они не будут влиять на маппинг в базу данных.
        </li>
        <li>
            <span class="highlight">Отсутствие аннотаций:</span> Поскольку родительский класс не является Entity, он не может
            быть помечен аннотациями JPA, такими как <code>@Entity</code>, <code>@Id</code> и другими.
        </li>
    </ul>

    <h2>Пример наследования Entity-класса от не Entity-класса</h2>
    <p>
        Рассмотрим пример, где Entity-класс наследуется от не Entity-класса:
    </p>
    <pre><code>
// Не Entity-класс
public class Person {
    private String name;
    private int age;

    public Person() {}

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    // Геттеры и сеттеры
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}

// Entity-класс, наследующий от не Entity-класса
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
public class Employee extends Person {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String department;

    public Employee() {}

    public Employee(String name, int age, String department) {
        super(name, age);
        this.department = department;
    }

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
    </code></pre>

    <h2>Использование наследования</h2>
    <p>
        В этом примере класс <code>Person</code> не является Entity, но содержит общие поля и методы, которые
        могут быть полезны для нескольких Entity-классов. Класс <code>Employee</code> наследует эти поля и
        методы, добавляя свои собственные, специфичные для Entity.
    </p>

    <h2>Заключение</h2>
    <p>
        Entity-класс может наследоваться от не Entity-класса, что позволяет повторно использовать код и
        логику в нескольких Entity-классах. Однако важно помнить, что поля и методы родительского
        класса не будут автоматически отображаться в базе данных, если они не объявлены в Entity-классе.
        Это даёт гибкость в проектировании, но требует внимательности при маппинге данных.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('bfd42362-2d76-429e-ad58-1dc58c1957b9', 'Что такое DML? Какие операции в него входят? Рассказать про них', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DML (Data Manipulation Language)</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>DML (Data Manipulation Language)</h1>
    <p>
        DML (Data Manipulation Language) — это набор операторов, используемых для работы с данными в базе данных.
        DML позволяет выбирать, добавлять, изменять и удалять данные в таблицах.
    </p>

    <h2>Основные операции DML</h2>
    <ul>
        <li>
            <span class="highlight">SELECT:</span>
            <ul>
                <li>
                    Выбирает данные из таблицы, удовлетворяющие заданным условиям.
                </li>
                <li>
                    Пример: <code>SELECT * FROM users WHERE age > 18;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">INSERT:</span>
            <ul>
                <li>
                    Добавляет новые данные в таблицу.
                </li>
                <li>
                    Пример: <code>INSERT INTO users (id, name, age) VALUES (1, \'John\', 25);</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">UPDATE:</span>
            <ul>
                <li>
                    Изменяет существующие данные в таблице.
                </li>
                <li>
                    Пример: <code>UPDATE users SET age = 26 WHERE id = 1;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">DELETE:</span>
            <ul>
                <li>
                    Удаляет данные из таблицы при выполнении условия <code>WHERE</code>.
                </li>
                <li>
                    Пример: <code>DELETE FROM users WHERE id = 1;</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Операции DML работают с данными в таблицах, но не изменяют структуру базы данных.
                </li>
                <li>
                    <code>DELETE</code> удаляет строки из таблицы, но может быть отменён с помощью <code>ROLLBACK</code>, в отличие
                    от <code>TRUNCATE</code>.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования DML</h2>
    <ul>
        <li>
            <span class="highlight">Выбор данных:</span>
            <pre><code>SELECT name, age FROM users WHERE age > 18;</code></pre>
        </li>
        <li>
            <span class="highlight">Добавление данных:</span>
            <pre><code>INSERT INTO users (id, name, age) VALUES (2, \'Alice\', 30);</code></pre>
        </li>
        <li>
            <span class="highlight">Изменение данных:</span>
            <pre><code>UPDATE users SET age = 31 WHERE id = 2;</code></pre>
        </li>
        <li>
            <span class="highlight">Удаление данных:</span>
            <pre><code>DELETE FROM users WHERE id = 2;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('554925bb-39f2-4067-a97f-3d8d54ad5a84', 'LinkedHashMap – что в нем от LinkedList, а что от HashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Особенности LinkedHashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Особенности LinkedHashMap</h1>
    <p>
        <code>LinkedHashMap</code> – это реализация интерфейса <code>Map</code>, которая сочетает в себе функциональность <code>HashMap</code> и поддержку порядка элементов с помощью двухсвязного списка. Это позволяет сохранять порядок добавления или доступа к элементам.
    </p>

    <h2>Что от HashMap?</h2>
    <ul>
        <li>
            <span class="highlight">Хеш-таблица:</span>
            <ul>
                <li><code>LinkedHashMap</code> использует хеш-таблицу для хранения элементов, как и <code>HashMap</code>.</li>
                <li>Это обеспечивает быстрый доступ к элементам по ключу (<code>O(1)</code> в среднем случае).</li>
            </ul>
        </li>
    </ul>

    <h2>Что от LinkedList?</h2>
    <ul>
        <li>
            <span class="highlight">Двухсвязный список:</span>
            <ul>
                <li><code>LinkedHashMap</code> использует двухсвязный список для поддержания порядка элементов.</li>
                <li>По умолчанию элементы упорядочены в порядке добавления (insertion-order).</li>
                <li>Если параметр <code>accessOrder</code> установлен в <code>true</code>, элементы упорядочиваются по порядку последнего доступа (access-order).</li>
            </ul>
        </li>
    </ul>

    <h2>Порядок итерации</h2>
    <ul>
        <li>
            <span class="highlight">Insertion-order:</span>
            <ul>
                <li>Элементы перебираются в порядке их добавления в <code>LinkedHashMap</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Access-order:</span>
            <ul>
                <li>Если <code>accessOrder = true</code>, элементы перебираются в порядке последнего доступа (вызов <code>get()</code> или <code>put()</code> перемещает элемент в конец списка).</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования LinkedHashMap</h2>
    <pre>
<code>
Map&lt;String, Integer&gt; map = new LinkedHashMap&lt;&gt;(16, 0.75f, true);
map.put("A", 1);
map.put("B", 2);
map.put("C", 3);

map.get("A"); // Доступ к элементу "A"
map.put("B", 4); // Обновление элемента "B"

System.out.println(map); // Выведет [C=3, A=1, B=4] (порядок последнего доступа)
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Параметр <code>accessOrder</code> установлен в <code>true</code>, поэтому элементы упорядочены по последнему доступу.</li>
        <li>Элемент <code>"A"</code> переместился в конец списка после вызова <code>get("A")</code>.</li>
        <li>Элемент <code>"B"</code> переместился в конец списка после вызова <code>put("B", 4)</code>.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>LinkedHashMap</code> полезен, когда требуется сохранить порядок добавления или доступа к элементам. Это делает его удобным для реализации кэшей или других структур, где важен порядок элементов.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a980883a-fcd4-4177-a528-a5f30863a6c4', 'Как работает HashMap при попытке сохранить в него два элемента по  ключам с одинаковым hashCode(), но для которых equals() == false?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Поведение HashMap при коллизиях</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Поведение HashMap при коллизиях</h1>
    <p>
        В <code>HashMap</code> могут возникать ситуации, когда два разных ключа имеют одинаковый <code>hashCode()</code>, но их <code>equals()</code> методы возвращают <code>false</code>. В этом случае происходит коллизия, и <code>HashMap</code> обрабатывает её определённым образом.
    </p>

    <h2>Как работает HashMap при коллизиях?</h2>
    <ul>
        <li>
            <span class="highlight">Вычисление индекса:</span>
            <ul>
                <li>По значению <code>hashCode()</code> ключа вычисляется индекс ячейки массива (корзины), в которую будет помещён элемент.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Проверка элементов в корзине:</span>
            <ul>
                <li>Если в корзине уже есть элементы, <code>HashMap</code> проверяет их ключи с помощью метода <code>equals()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Добавление элемента:</span>
            <ul>
                <li>Если ключи не равны (<code>equals() == false</code>), новый элемент добавляется в конец связного списка в этой корзине.</li>
                <li>Если ключи равны (<code>equals() == true</code>), значение существующего элемента заменяется новым.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
class Key {
    private int id;

    public Key(int id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        return 1; // Все объекты Key имеют одинаковый hashCode
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Key key = (Key) obj;
        return id == key.id;
    }
}

public class Main {
    public static void main(String[] args) {
        Map&lt;Key, String&gt; map = new HashMap&lt;&gt;();
        map.put(new Key(1), "A");
        map.put(new Key(2), "B"); // hashCode одинаковый, но equals() == false

        System.out.println(map.size()); // Выведет 2
    }
}
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Оба ключа имеют одинаковый <code>hashCode()</code>, но их <code>equals()</code> методы возвращают <code>false</code>.</li>
        <li>Оба элемента будут добавлены в одну корзину, но в разные узлы связного списка.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если два ключа имеют одинаковый <code>hashCode()</code>, но их <code>equals()</code> методы возвращают <code>false</code>, <code>HashMap</code> добавляет их в одну корзину, но в разные узлы связного списка. Это позволяет корректно хранить элементы с одинаковым хеш-кодом, но разными ключами.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3b737d20-70be-42df-b2de-763453da7469', 'Имеет ли смысл индексировать данные, имеющие небольшое количество  возможных значений?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Индексирование данных с малым количеством уникальных значений</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Индексирование данных с малым количеством уникальных значений</h1>
    <p>
        Индексирование данных, имеющих небольшое количество уникальных значений, может быть неэффективным.
        В таких случаях использование индекса может привести к замедлению операций выборки, а не к их ускорению.
    </p>

    <h2>Когда индексирование неэффективно?</h2>
    <ul>
        <li>
            <span class="highlight">Малое количество уникальных значений:</span>
            <ul>
                <li>
                    Если столбец имеет мало уникальных значений (например, пол или статус), индексирование может
                    не дать значительного прироста производительности.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Размер индекса:</span>
            <ul>
                <li>
                    Если размер индекса превышает объём данных, которые не удовлетворяют условию выборки,
                    индексирование может замедлить выполнение запроса.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Примерное правило</h2>
    <ul>
        <li>
            <span class="highlight">Оценка эффективности:</span>
            <ul>
                <li>
                    Если объём данных, не удовлетворяющих условию выборки, меньше, чем размер индекса, то
                    индексирование, скорее всего, неэффективно.
                </li>
                <li>
                    Пример: Если столбец имеет только два значения (например, "да" и "нет"), индексирование может
                    не принести пользы.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Индексы полезны для столбцов с большим количеством уникальных значений, где они могут
                    значительно ускорить поиск.
                </li>
                <li>
                    Для столбцов с малым количеством уникальных значений индексы могут быть избыточными и даже
                    замедлять выполнение запросов.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример</h2>
    <ul>
        <li>
            <span class="highlight">Столбец с малым количеством уникальных значений:</span>
            <pre><code>CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    gender CHAR(1)  -- \'M\' или \'F\'
);

-- Индексирование столбца gender может быть неэффективным
CREATE INDEX idx_gender ON employees(gender);</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e0fc5070-d8e7-4c97-b4f0-0d77fce36798', 'В чем отличия TreeSet и HashSet?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отличия TreeSet и HashSet</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Отличия TreeSet и HashSet</h1>
    <p>
        <code>TreeSet</code> и <code>HashSet</code> – это две реализации интерфейса <code>Set</code> в Java. Они имеют существенные различия в структуре данных, производительности и порядке хранения элементов.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Структура данных:</span>
            <ul>
                <li><code>TreeSet</code> использует красно-черное дерево для хранения элементов, что обеспечивает их упорядоченность.</li>
                <li><code>HashSet</code> использует хеш-таблицу для хранения элементов, что обеспечивает быстрый доступ, но не гарантирует порядок.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Упорядоченность:</span>
            <ul>
                <li><code>TreeSet</code> хранит элементы в отсортированном порядке (по умолчанию в естественном порядке или с использованием <code>Comparator</code>).</li>
                <li><code>HashSet</code> не гарантирует порядок хранения элементов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Временная сложность:</span>
            <ul>
                <li><code>TreeSet</code> обеспечивает сложность операций добавления, удаления и поиска <code>O(log(N))</code>.</li>
                <li><code>HashSet</code> обеспечивает сложность операций добавления, удаления и поиска <code>O(1)</code> в среднем случае, но может ухудшиться до <code>O(N)</code> в худшем случае (при плохой хеш-функции).</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования TreeSet</h2>
    <pre>
<code>
Set&lt;Integer&gt; treeSet = new TreeSet&lt;&gt;();
treeSet.add(3);
treeSet.add(1);
treeSet.add(2);

System.out.println(treeSet); // Выведет [1, 2, 3] (элементы отсортированы)
</code>
    </pre>

    <h2>Пример использования HashSet</h2>
    <pre>
<code>
Set&lt;Integer&gt; hashSet = new HashSet&lt;&gt;();
hashSet.add(3);
hashSet.add(1);
hashSet.add(2);

System.out.println(hashSet); // Порядок вывода может быть любым, например [1, 2, 3] или [3, 1, 2]
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между <code>TreeSet</code> и <code>HashSet</code> зависит от требований к порядку элементов и производительности. Если нужен отсортированный набор, используйте <code>TreeSet</code>. Если важна скорость операций и порядок не важен, используйте <code>HashSet</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4c5ee018-9fac-43d5-9e77-81cb87400c43', 'Что такое TIMESTAMP?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TIMESTAMP и DATETIME</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>TIMESTAMP и DATETIME</h1>
    <p>
        В базах данных для хранения временных данных используются типы <code>TIMESTAMP</code> и <code>DATETIME</code>.
        Они имеют разные характеристики и используются в зависимости от требований к данным.
    </p>

    <h2>DATETIME</h2>
    <p>
        Тип <code>DATETIME</code> предназначен для хранения даты и времени в формате <code>YYYYMMDDHHMMSS</code>.
        Это значение не зависит от временной зоны, настроенной на сервере.
    </p>
    <ul>
        <li><span class="highlight">Формат:</span> <code>YYYY-MM-DD HH:MM:SS</code> (например, <code>2023-10-05 14:30:00</code>).</li>
        <li><span class="highlight">Размер:</span> 8 байт.</li>
        <li><span class="highlight">Независимость от временной зоны:</span> Значение <code>DATETIME</code> всегда отображается
            так, как было сохранено, без учёта временной зоны сервера.</li>
    </ul>

    <h2>TIMESTAMP</h2>
    <p>
        Тип <code>TIMESTAMP</code> хранит количество секунд, прошедших с полуночи 1 января 1970 года по
        усреднённому времени Гринвича (Unix-время). При извлечении данных значение
        <code>TIMESTAMP</code> автоматически преобразуется с учётом временной зоны сервера.
    </p>
    <ul>
        <li><span class="highlight">Формат:</span> Количество секунд с 1 января 1970 года (например, <code>1696523400</code>).</li>
        <li><span class="highlight">Размер:</span> 4 байта.</li>
        <li><span class="highlight">Зависимость от временной зоны:</span> Значение <code>TIMESTAMP</code> автоматически
            преобразуется в соответствии с настройками временной зоны сервера.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>TIMESTAMP</code> занимает меньше места (4 байта против 8 байт у <code>DATETIME</code>),
            но имеет ограниченный диапазон дат (с 1970 года до 2038 года). <code>DATETIME</code> поддерживает
            более широкий диапазон дат, но не учитывает временные зоны.
        </p>
    </div>

    <h2>Сравнение TIMESTAMP и DATETIME</h2>
    <table>
        <thead>
            <tr>
                <th>Характеристика</th>
                <th>TIMESTAMP</th>
                <th>DATETIME</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><span class="highlight">Размер</span></td>
                <td>4 байта</td>
                <td>8 байта</td>
            </tr>
            <tr>
                <td><span class="highlight">Диапазон дат</span></td>
                <td>1970-01-01 до 2038-01-19</td>
                <td>1000-01-01 до 9999-12-31</td>
            </tr>
            <tr>
                <td><span class="highlight">Зависимость от временной зоны</span></td>
                <td>Да (автоматически преобразуется)</td>
                <td>Нет</td>
            </tr>
            <tr>
                <td><span class="highlight">Использование</span></td>
                <td>Для хранения временных меток с учётом зоны</td>
                <td>Для хранения точных дат и времени без учёта зоны</td>
            </tr>
        </tbody>
    </table>

    <h2>Примеры использования</h2>
    <ul>
        <li>
            <span class="highlight">TIMESTAMP:</span> Используется для хранения временных меток, таких как время создания
            или изменения записи, когда важно учитывать временную зону.
        </li>
        <li>
            <span class="highlight">DATETIME:</span> Используется для хранения точных дат и времени, например, даты
            рождения или времени события, когда временная зона не важна.
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0b33b903-7d36-4737-8f1e-47262edc41d9', 'Будет ли работать HashMap, если все добавляемые ключи будут иметь  одинаковый hashCode()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HashMap с одинаковыми hashCode()</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>HashMap с одинаковыми hashCode()</h1>
    <p>
        <code>HashMap</code> будет работать, даже если все добавляемые ключи имеют одинаковый <code>hashCode()</code>. Однако в этом случае его производительность значительно ухудшится, и он выродится в связный список.
    </p>

    <h2>Почему HashMap будет работать?</h2>
    <ul>
        <li>
            <span class="highlight">Обработка коллизий:</span>
            <ul>
                <li>Если все ключи имеют одинаковый <code>hashCode()</code>, все элементы будут попадать в одну корзину.</li>
                <li>В этом случае <code>HashMap</code> использует связный список для хранения элементов в одной корзине.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Поиск элементов:</span>
            <ul>
                <li>Для поиска элемента в такой корзине требуется перебрать все элементы списка.</li>
                <li>Это делает операции добавления, поиска и удаления менее эффективными.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
class BadKey {
    private int id;

    public BadKey(int id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        return 1; // Все ключи имеют одинаковый hashCode
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        BadKey key = (BadKey) obj;
        return id == key.id;
    }
}

public class Main {
    public static void main(String[] args) {
        Map&lt;BadKey, String&gt; map = new HashMap&lt;&gt;();
        for (int i = 0; i < 1000; i++) {
            map.put(new BadKey(i), "Value" + i);
        }

        // Поиск элемента в худшем случае
        long startTime = System.nanoTime();
        String value = map.get(new BadKey(999));
        long endTime = System.nanoTime();
        System.out.println("Время поиска: " + (endTime - startTime) + " нс");
    }
}
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Все ключи имеют одинаковый <code>hashCode()</code>, поэтому все элементы попадают в одну корзину.</li>
        <li>Поиск элемента требует перебора всех элементов в корзине, что занимает время <code>O(n)</code>.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> В Java 8 и выше, если длина цепочки в корзине превышает определённый порог, она преобразуется в сбалансированное дерево, что улучшает сложность до <code>O(log(n))</code>. Однако в худшем случае (при плохой хеш-функции) сложность может остаться <code>O(n)</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('96a09273-6fbe-4d1b-b663-e98482703643', 'Что такое LIMIT?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оператор LIMIT в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Оператор LIMIT в SQL</h1>
    <p>
        Оператор <code>LIMIT</code> в SQL используется для ограничения количества строк, возвращаемых в результате
        запроса. Он позволяет указать максимальное число строк, которые должны быть возвращены.
    </p>

    <h2>Как работает LIMIT?</h2>
    <ul>
        <li>
            <span class="highlight">Ограничение выборки:</span>
            <ul>
                <li>
                    <code>LIMIT</code> ограничивает количество строк, возвращаемых запросом, до указанного числа.
                </li>
                <li>
                    Пример: <code>SELECT * FROM employees LIMIT 10;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование с OFFSET:</span>
            <ul>
                <li>
                    <code>LIMIT</code> может использоваться вместе с <code>OFFSET</code> для пропуска определённого
                    количества строк перед началом выборки.
                </li>
                <li>
                    Пример: <code>SELECT * FROM employees LIMIT 10 OFFSET 20;</code> (пропустить 20 строк и вернуть
                    следующие 10).
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>LIMIT</code> полезен для пагинации данных, когда нужно отображать результаты по частям.
                </li>
                <li>
                    В некоторых СУБД (например, SQL Server) вместо <code>LIMIT</code> используется <code>TOP</code> или
                    <code>FETCH FIRST</code>.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования LIMIT</h2>
    <ul>
        <li>
            <span class="highlight">Ограничение выборки:</span>
            <pre><code>SELECT * FROM employees LIMIT 5;</code></pre>
        </li>
        <li>
            <span class="highlight">Использование с OFFSET:</span>
            <pre><code>SELECT * FROM employees LIMIT 10 OFFSET 20;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('476c36f6-c867-4005-84bf-e8bb424bb64c', 'Что такое хранимые процедуры? Для чего они нужны?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Хранимые процедуры</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Хранимые процедуры</h1>
    <p>
        Хранимая процедура – это объект базы данных, представляющий собой набор SQL-инструкций,
        который хранится на сервере. Хранимые процедуры позволяют выполнять сложные операции
        с данными непосредственно на стороне сервера базы данных.
    </p>

    <h2>Для чего нужны хранимые процедуры?</h2>
    <ul>
        <li>
            <span class="highlight">Повышение производительности:</span> Хранимые процедуры компилируются при первом
            запуске, что ускоряет их выполнение при последующих вызовах. Это позволяет
            уменьшить время обработки запросов.
        </li>
        <li>
            <span class="highlight">Расширение возможностей программирования:</span> Хранимые процедуры поддерживают
            использование переменных, циклов, ветвлений и других конструкций, что делает их
            похожими на методы языков высокого уровня.
        </li>
        <li>
            <span class="highlight">Безопасность данных:</span> Хранимые процедуры позволяют ограничить прямой доступ
            к данным, предоставляя пользователям только необходимые операции через
            интерфейс процедуры.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Хранимые процедуры могут выполнять как операции с данными (DML), так и
            операции с структурой базы данных (DDL). Это делает их мощным инструментом для
            управления базами данных.
        </p>
    </div>

    <h2>Примеры использования хранимых процедур</h2>
    <ul>
        <li>
            <span class="highlight">Обработка данных:</span> Хранимые процедуры могут выполнять сложные вычисления,
            агрегацию данных и преобразования.
        </li>
        <li>
            <span class="highlight">Управление транзакциями:</span> Хранимые процедуры позволяют управлять транзакциями,
            обеспечивая целостность данных.
        </li>
        <li>
            <span class="highlight">Автоматизация задач:</span> Хранимые процедуры могут использоваться для автоматизации
            рутинных операций, таких как резервное копирование или очистка данных.
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('060951d4-8bc4-443d-862c-4b6a11650430', 'Что такое индексы? Какие они бывают?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Индексы в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Индексы в SQL</h1>
    <p>
        Индексы в SQL используются для ускорения операций поиска и извлечения данных из таблиц. Они создают
        структуру, которая позволяет быстрее находить записи по определённым столбцам.
    </p>

    <h2>Типы индексов</h2>
    <ul>
        <li>
            <span class="highlight">Уникальный индекс (Unique Index):</span>
            <ul>
                <li>
                    Гарантирует, что все значения в индексируемом столбце уникальны.
                </li>
                <li>
                    Если определён первичный ключ (<code>PRIMARY KEY</code>), уникальный индекс применяется автоматически.
                </li>
                <li>
                    Пример: <code>CREATE UNIQUE INDEX idx_email ON employees(email);</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Кластеризованный индекс (Clustered Index):</span>
            <ul>
                <li>
                    Сортирует и хранит строки данных в таблице на основе ключевых значений.
                </li>
                <li>
                    Ускоряет операции чтения, но замедляет вставку и обновление данных.
                </li>
                <li>
                    В таблице может быть только один кластеризованный индекс.
                </li>
                <li>
                    Пример: <code>CREATE CLUSTERED INDEX idx_id ON employees(id);</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Некластеризованный индекс (Non-Clustered Index):</span>
            <ul>
                <li>
                    Создаёт отдельную структуру, содержащую ключевые значения и указатели на строки данных.
                </li>
                <li>
                    Не изменяет физический порядок данных в таблице.
                </li>
                <li>
                    В таблице может быть несколько некластеризованных индексов.
                </li>
                <li>
                    Пример: <code>CREATE NONCLUSTERED INDEX idx_name ON employees(name);</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Индексы ускоряют поиск данных, но могут замедлять операции вставки, обновления и удаления,
                    так как при каждом изменении данных необходимо обновлять индекс.
                </li>
                <li>
                    Кластеризованный индекс изменяет физический порядок данных, а некластеризованный — нет.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования индексов</h2>
    <ul>
        <li>
            <span class="highlight">Уникальный индекс:</span>
            <pre><code>CREATE UNIQUE INDEX idx_email ON employees(email);</code></pre>
        </li>
        <li>
            <span class="highlight">Кластеризованный индекс:</span>
            <pre><code>CREATE CLUSTERED INDEX idx_id ON employees(id);</code></pre>
        </li>
        <li>
            <span class="highlight">Некластеризованный индекс:</span>
            <pre><code>CREATE NONCLUSTERED INDEX idx_name ON employees(name);</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('83c625e1-1fef-4b7d-9f49-2b9ed9cffa68', 'Сравните интерфейсы Queue и Deque. Кто кого расширяет: Queue  расширяет Deque или Deque расширяет Queue?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сравнение Queue и Deque</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Сравнение Queue и Deque</h1>
    <p>
        Интерфейсы <code>Queue</code> и <code>Deque</code> представляют собой коллекции, используемые для хранения элементов в определённом порядке. Они имеют как сходства, так и различия, а также определённую иерархию наследования.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Queue:</span>
            <ul>
                <li>Обычно строится по принципу FIFO (First-In-First-Out).</li>
                <li>Извлечение элемента происходит с начала очереди, а вставка – в конец.</li>
                <li>Пример реализации: <code>LinkedList</code>, <code>PriorityQueue</code>.</li>
                <li><code>PriorityQueue</code> нарушает принцип FIFO, используя естественный порядок или переданный <code>Comparator</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Deque:</span>
            <ul>
                <li>Расширяет интерфейс <code>Queue</code>.</li>
                <li>Поддерживает вставку и извлечение элементов с обоих концов.</li>
                <li>Может работать как по принципу FIFO, так и LIFO (Last-In-First-Out).</li>
                <li>Пример реализации: <code>ArrayDeque</code>, <code>LinkedList</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Иерархия наследования</h2>
    <ul>
        <li>
            <span class="highlight">Deque расширяет Queue:</span>
            <ul>
                <li><code>Deque</code> добавляет методы для работы с обоими концами коллекции, такие как <code>addFirst()</code>, <code>addLast()</code>, <code>removeFirst()</code>, <code>removeLast()</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Методы equals() и hashCode()</h2>
    <ul>
        <li>
            <span class="highlight">Реализации:</span>
            <ul>
                <li>Реализации <code>Queue</code> и <code>Deque</code> обычно не переопределяют методы <code>equals()</code> и <code>hashCode()</code>.</li>
                <li>Вместо этого используются унаследованные методы класса <code>Object</code>, основанные на сравнении ссылок.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования Queue</h2>
    <pre>
<code>
Queue&lt;String&gt; queue = new LinkedList&lt;&gt;();
queue.add("A");
queue.add("B");

System.out.println(queue.poll()); // Выведет "A"
</code>
    </pre>

    <h2>Пример использования Deque</h2>
    <pre>
<code>
Deque&lt;String&gt; deque = new ArrayDeque&lt;&gt;();
deque.addFirst("A");
deque.addLast("B");

System.out.println(deque.pollFirst()); // Выведет "A"
System.out.println(deque.pollLast()); // Выведет "B"
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>Deque</code> расширяет <code>Queue</code> и предоставляет дополнительные методы для работы с обоими концами коллекции. В то время как <code>Queue</code> обычно работает по принципу FIFO, <code>Deque</code> может поддерживать как FIFO, так и LIFO.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3c659016-43ba-4224-826b-9a4baef6564a', 'Можно ли вызвать start() для одного потока дважды?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Метод start() в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Метод start() в Java</h1>
    <p>
        Метод <code>start()</code> используется для запуска потока. Однако, попытка вызвать его более одного раза для одного и того же потока приведёт к ошибке.
    </p>

    <h2>Можно ли вызвать start() для одного потока дважды?</h2>
    <ul>
        <li>
            <span class="highlight">Однократный запуск:</span>
            <ul>
                <li>
                    Метод <code>start()</code> можно вызвать только один раз для каждого потока.
                </li>
                <li>
                    После завершения выполнения потока (в состоянии <code>TERMINATED</code>), его нельзя перезапустить.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Исключение:</span>
            <ul>
                <li>
                    При попытке повторного вызова <code>start()</code> для одного и того же потока выбрасывается исключение
                    <code>IllegalThreadStateException</code>.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Поток может быть запущен только один раз. Для повторного выполнения задачи необходимо создать новый экземпляр потока.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример</h2>
    <ul>
        <li>
            <code>Thread thread = new Thread(() -> { ... });</code> — создание потока.
        </li>
        <li>
            <code>thread.start();</code> — успешный запуск потока.
        </li>
        <li>
            <code>thread.start();</code> — вызовет <code>IllegalThreadStateException</code>, так как поток уже был запущен.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('28aedaa5-f1c0-43b6-9754-5b603313c447', 'Как между собой связаны Iterable и Iterator?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Связь между Iterable и Iterator</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Связь между Iterable и Iterator</h1>
    <p>
        Интерфейсы <code>Iterable</code> и <code>Iterator</code> тесно связаны между собой. <code>Iterable</code> предоставляет метод для получения итератора, который используется для обхода элементов коллекции.
    </p>

    <h2>Основная связь</h2>
    <ul>
        <li>
            <span class="highlight">Метод iterator():</span>
            <ul>
                <li>Интерфейс <code>Iterable</code> содержит единственный метод <code>iterator()</code>, который возвращает объект типа <code>Iterator</code>.</li>
                <li>Этот метод позволяет получить итератор для обхода элементов коллекции.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <ul>
                <li>Классы, реализующие <code>Iterable</code>, могут быть использованы в цикле <code>for-each</code>.</li>
                <li>Пример:
                    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

Iterable&lt;String&gt; iterable = list;
Iterator&lt;String&gt; iterator = iterable.iterator(); // Получение итератора

while (iterator.hasNext()) {
    String element = iterator.next();
    System.out.println(element);
}
</code>
                    </pre>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Интерфейс <code>Iterable</code> предоставляет метод <code>iterator()</code>, который возвращает объект <code>Iterator</code>. Это позволяет обходить элементы коллекции с помощью итератора.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('758e92e9-f642-4125-989e-a604701d3b85', 'Какова роль equals() и hashCode() в HashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Роль equals() и hashCode() в HashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Роль equals() и hashCode() в HashMap</h1>
    <p>
        Методы <code>equals()</code> и <code>hashCode()</code> играют ключевую роль в работе <code>HashMap</code>. Они используются для хранения и поиска элементов в коллекции.
    </p>

    <h2>Роль hashCode()</h2>
    <ul>
        <li>
            <span class="highlight">Определение корзины:</span>
            <ul>
                <li>Метод <code>hashCode()</code> используется для вычисления хеш-кода ключа.</li>
                <li>На основе хеш-кода определяется индекс корзины (ячейки массива), в которой будет храниться элемент.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Оптимизация поиска:</span>
            <ul>
                <li>Хеш-код позволяет быстро определить корзину для поиска элемента, что делает операции добавления, поиска и удаления эффективными.</li>
            </ul>
        </li>
    </ul>

    <h2>Роль equals()</h2>
    <ul>
        <li>
            <span class="highlight">Сравнение ключей:</span>
            <ul>
                <li>Метод <code>equals()</code> используется для сравнения ключей элементов в корзине с искомым ключом.</li>
                <li>Если хеш-коды совпадают, но ключи разные, <code>equals()</code> помогает определить, является ли ключ искомым.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Обработка коллизий:</span>
            <ul>
                <li>В случае коллизий (когда несколько ключей попадают в одну корзину), <code>equals()</code> используется для поиска нужного элемента в связном списке или дереве.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
class Key {
    private int id;

    public Key(int id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        return id; // Простая реализация hashCode
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Key key = (Key) obj;
        return id == key.id;
    }
}

public class Main {
    public static void main(String[] args) {
        Map&lt;Key, String&gt; map = new HashMap&lt;&gt;();
        Key key1 = new Key(1);
        map.put(key1, "Value");

        Key key2 = new Key(1); // Ключ с тем же hashCode и equals
        System.out.println(map.get(key2)); // Выведет "Value"
    }
}
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Метод <code>hashCode()</code> определяет корзину для хранения элемента.</li>
        <li>Метод <code>equals()</code> используется для сравнения ключей и поиска элемента в корзине.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Для корректной работы <code>HashMap</code> методы <code>equals()</code> и <code>hashCode()</code> должны быть согласованы. Если два объекта равны по <code>equals()</code>, их хеш-коды должны быть одинаковыми.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6fbb00c3-ea19-418b-abb1-446b9fe7fe72', 'Когда полное сканирование набора данных выгоднее доступа по индексу?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Полное сканирование vs Доступ по индексу</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Полное сканирование vs Доступ по индексу</h1>
    <p>
        В SQL выбор между полным сканированием таблицы и доступом по индексу зависит от нескольких факторов,
        таких как селективность запроса, кластеризация данных и размер таблицы. В некоторых случаях полное
        сканирование может быть более эффективным, чем доступ по индексу.
    </p>

    <h2>Когда полное сканирование выгоднее?</h2>
    <ul>
        <li>
            <span class="highlight">Слабая селективность предикатов:</span>
            <ul>
                <li>
                    Если запрос возвращает большую часть данных из таблицы (например, более 10-20%), полное
                    сканирование может быть быстрее, чем доступ по индексу.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Слабая кластеризация данных:</span>
            <ul>
                <li>
                    Если данные в таблице плохо кластеризованы (разбросаны по разным блокам), доступ по индексу
                    может потребовать множества одноблочных чтений, что замедляет выполнение запроса.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Маленькие наборы данных:</span>
            <ul>
                <li>
                    Для очень маленьких таблиц полное сканирование может быть быстрее, так как стоимость
                    многоблочного чтения ниже, чем одноблочного.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Почему полное сканирование может быть выгоднее?</h2>
    <ul>
        <li>
            <span class="highlight">Многоблочное чтение:</span>
            <ul>
                <li>
                    Полное сканирование выполняется многоблочным чтением, что позволяет быстрее обрабатывать
                    большие объёмы данных.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Одноблочное чтение:</span>
            <ul>
                <li>
                    Доступ по индексу требует одноблочного чтения, что может быть медленнее, если данных много
                    или они плохо кластеризованы.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Оптимизатор SQL сам выбирает, какой метод доступа использовать, основываясь на стоимости
                    выполнения запроса.
                </li>
                <li>
                    Полное сканирование предпочтительно при слабой селективности запроса или плохой
                    кластеризации данных.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример</h2>
    <ul>
        <li>
            <span class="highlight">Полное сканирование:</span>
            <pre><code>SELECT * FROM employees WHERE salary > 1000;</code></pre>
            <p>
                Если большинство сотрудников имеют зарплату больше 1000, полное сканирование будет быстрее.
            </p>
        </li>
        <li>
            <span class="highlight">Доступ по индексу:</span>
            <pre><code>SELECT * FROM employees WHERE id = 123;</code></pre>
            <p>
                Для поиска конкретной записи по уникальному идентификатору доступ по индексу будет эффективнее.
            </p>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b5797140-fd19-4892-95a5-6971536cce5c', ' В WeakHashMap используются WeakReferences. А почему бы не создать  PhantomHashMap на PhantomReferences?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему не используется PhantomHashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Почему не используется PhantomHashMap</h1>
    <p>
        В Java существуют различные типы ссылок: сильные (<code>StrongReference</code>), мягкие (<code>SoftReference</code>), слабые (<code>WeakReference</code>) и фантомные (<code>PhantomReference</code>). Хотя <code>WeakHashMap</code> использует слабые ссылки, создание аналогичной структуры данных на основе фантомных ссылок – <code>PhantomHashMap</code> – не имеет практического смысла. Рассмотрим, почему это так.
    </p>

    <h2>Особенности PhantomReference</h2>
    <ul>
        <li>
            <span class="highlight">Возврат null:</span>
            <ul>
                <li>Метод <code>get()</code> у <code>PhantomReference</code> всегда возвращает <code>null</code>.</li>
                <li>Это делает невозможным доступ к объекту через фантомную ссылку.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li>Фантомные ссылки используются для отслеживания факта удаления объекта сборщиком мусора.</li>
                <li>Они полезны для выполнения финализации или очистки ресурсов после удаления объекта.</li>
            </ul>
        </li>
    </ul>

    <h2>Почему PhantomHashMap не имеет смысла?</h2>
    <ul>
        <li>
            <span class="highlight">Невозможность доступа к ключам:</span>
            <ul>
                <li>Поскольку <code>PhantomReference.get()</code> всегда возвращает <code>null</code>, невозможно получить доступ к ключам в <code>PhantomHashMap</code>.</li>
                <li>Это делает такую структуру данных бесполезной для хранения и поиска пар «ключ-значение».</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ограниченное применение:</span>
            <ul>
                <li>Фантомные ссылки предназначены для отслеживания удаления объектов, а не для хранения данных.</li>
                <li>Их использование в <code>HashMap</code> не имеет практического смысла.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования PhantomReference</h2>
    <pre>
<code>
Object obj = new Object();
ReferenceQueue&lt;Object&gt; queue = new ReferenceQueue&lt;&gt;();
PhantomReference&lt;Object&gt; phantomRef = new PhantomReference&lt;&gt;(obj, queue);

obj = null; // Удаляем сильную ссылку на объект
System.gc(); // Вызов сборщика мусора

// Проверка, был ли объект удален
Reference&lt;?&gt; ref = queue.poll();
if (ref != null) {
    System.out.println("Объект удален");
}
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Фантомная ссылка используется для отслеживания удаления объекта.</li>
        <li>После удаления объекта сборщиком мусора, фантомная ссылка помещается в <code>ReferenceQueue</code>.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>PhantomHashMap</code> не имеет практического смысла, так как фантомные ссылки не позволяют получить доступ к объектам. Они предназначены для отслеживания удаления объектов, а не для хранения данных.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('15f3bee1-c80d-4470-966d-13bb7534104b', 'Что такое владелец связи?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Владелец связи в JPA</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Владелец связи</h1>
    <p>
        В отношениях между двумя сущностями всегда есть одна владеющая сторона, а зависимая
        сторона может отсутствовать, если отношения однонаправленные. Владелец связи определяется
        наличием внешнего ключа на другую сущность.
    </p>

    <h2>Как определяется владелец связи?</h2>
    <ul>
        <li>
            <span class="highlight">Внешний ключ:</span> Если в таблице одной сущности есть колонка, содержащая
            внешние ключи от другой сущности, то эта сущность признается владельцем связи.
            Другая сущность в таком случае считается зависимой.
        </li>
        <li>
            <span class="highlight">Однонаправленные отношения:</span> В однонаправленных отношениях сторона,
            которая имеет поле с типом другой сущности, автоматически становится владельцем
            связи по умолчанию.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Владелец связи управляет состоянием связи в базе данных. Это означает,
            что изменения в связи (например, добавление или удаление) должны выполняться через
            владеющую сторону. Зависимая сторона лишь отражает состояние связи, но не управляет ею.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Рассмотрим пример связи <code>OneToOne</code> между сущностями <code>User</code> и <code>Profile</code>:
    </p>
    <ul>
        <li>
            Если в таблице <code>User</code> есть колонка <code>profile_id</code>, которая является внешним ключом
            на таблицу <code>Profile</code>, то <code>User</code> считается владельцем связи.
        </li>
        <li>
            В однонаправленных отношениях, если <code>User</code> имеет поле типа <code>Profile</code>, то
            <code>User</code> автоматически становится владельцем связи.
        </li>
    </ul>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9fbb79d3-e5f9-4d3e-9b51-40591e08302b', 'Что быстрее убирает дубликаты: distinct или group by?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DISTINCT vs GROUP BY</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>DISTINCT vs GROUP BY: Что быстрее убирает дубликаты?</h1>
    <p>
        В SQL для удаления дубликатов из результата запроса можно использовать как <code>DISTINCT</code>, так и
        <code>GROUP BY</code>. Однако выбор между ними зависит от конкретной задачи и контекста использования.
    </p>

    <h2>DISTINCT</h2>
    <p>
        Ключевое слово <code>DISTINCT</code> используется для получения уникальных значений из результата
        запроса. Оно применяется, когда нужно просто убрать дубликаты из выборки.
    </p>
    <pre><code>
SELECT DISTINCT column1, column2
FROM table_name;
    </code></pre>
    <p>
        В этом примере будут возвращены только уникальные комбинации значений <code>column1</code> и
        <code>column2</code>.
    </p>

    <h3>Преимущества DISTINCT</h3>
    <ul>
        <li><span class="highlight">Простота использования:</span> <code>DISTINCT</code> легко добавить в запрос, чтобы
            убрать дубликаты.</li>
        <li><span class="highlight">Читаемость:</span> Запрос с <code>DISTINCT</code> проще понять, особенно если задача
            заключается только в удалении дубликатов.</li>
    </ul>

    <h3>Недостатки DISTINCT</h3>
    <ul>
        <li><span class="highlight">Ограниченная функциональность:</span> <code>DISTINCT</code> не позволяет выполнять
            агрегацию или группировку данных.</li>
    </ul>

    <h2>GROUP BY</h2>
    <p>
        Ключевое слово <code>GROUP BY</code> используется для группировки строк по определённым столбцам.
        Оно также может быть использовано для удаления дубликатов, но его основное назначение –
        группировка данных для выполнения агрегатных функций (например, <code>COUNT</code>, <code>SUM</code>, <code>AVG</code>).
    </p>
    <pre><code>
SELECT column1, column2
FROM table_name
GROUP BY column1, column2;
    </code></pre>
    <p>
        В этом примере будут возвращены уникальные комбинации значений <code>column1</code> и <code>column2</code>,
        аналогично <code>DISTINCT</code>.
    </p>

    <h3>Преимущества GROUP BY</h3>
    <ul>
        <li><span class="highlight">Гибкость:</span> <code>GROUP BY</code> позволяет выполнять агрегацию данных, что
            полезно для анализа и отчётов.</li>
        <li><span class="highlight">Эффективность при поиске дубликатов:</span> Если задача заключается в поиске
            дубликатов, <code>GROUP BY</code> может быть более эффективным, особенно при использовании
            агрегатных функций.</li>
    </ul>

    <h3>Недостатки GROUP BY</h3>
    <ul>
        <li><span class="highlight">Сложность:</span> Запросы с <code>GROUP BY</code> могут быть сложнее для понимания,
            особенно если используются агрегатные функции.</li>
        <li><span class="highlight">Производительность:</span> В некоторых случаях <code>GROUP BY</code> может быть
            медленнее, чем <code>DISTINCT</code>, особенно если данные не индексированы.</li>
    </ul>

    <h2>Что быстрее: DISTINCT или GROUP BY?</h2>
    <p>
        Скорость выполнения запроса зависит от конкретной СУБД, структуры данных и индексов. Однако
        в большинстве случаев:
    </p>
    <ul>
        <li><span class="highlight">DISTINCT</span> быстрее, если задача заключается только в удалении дубликатов.</li>
        <li><span class="highlight">GROUP BY</span> может быть быстрее, если задача включает поиск дубликатов или
            агрегацию данных.</li>
    </ul>

    <h2>Когда использовать DISTINCT, а когда GROUP BY?</h2>
    <ul>
        <li><span class="highlight">Используйте DISTINCT:</span> Если нужно просто убрать дубликаты из результата
            запроса без выполнения дополнительных операций.</li>
        <li><span class="highlight">Используйте GROUP BY:</span> Если нужно не только убрать дубликаты, но и
            выполнить группировку или агрегацию данных.</li>
    </ul>

    <h2>Пример сравнения</h2>
    <p>
        Рассмотрим пример, где нужно получить уникальные значения из столбца <code>city</code>:
    </p>
    <pre><code>
-- Использование DISTINCT
SELECT DISTINCT city
FROM customers;

-- Использование GROUP BY
SELECT city
FROM customers
GROUP BY city;
    </code></pre>
    <p>
        Оба запроса вернут одинаковый результат, но <code>DISTINCT</code> будет проще и понятнее, если
        задача заключается только в удалении дубликатов.
    </p>

    <h2>Заключение</h2>
    <p>
        Выбор между <code>DISTINCT</code> и <code>GROUP BY</code> зависит от задачи. Если нужно просто убрать дубликаты,
        используйте <code>DISTINCT</code>. Если требуется группировка или агрегация данных, используйте
        <code>GROUP BY</code>. В большинстве случаев <code>DISTINCT</code> будет быстрее для простого удаления
        дубликатов, но <code>GROUP BY</code> может быть более эффективным для сложных задач.
    </p>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e057f007-0b41-4c75-ae25-afb3fa60f700', 'Чем различаются Enumeration и Iterator?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Различия между Enumeration и Iterator</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Различия между Enumeration и Iterator</h1>
    <p>
        Интерфейсы <code>Enumeration</code> и <code>Iterator</code> используются для обхода коллекций, но они имеют существенные различия в функциональности и использовании.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Добавление и удаление элементов:</span>
            <ul>
                <li><code>Enumeration</code> не поддерживает операции добавления или удаления элементов.</li>
                <li><code>Iterator</code> позволяет удалять элементы с помощью метода <code>remove()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Имена методов:</span>
            <ul>
                <li>В <code>Enumeration</code> используются методы <code>hasMoreElements()</code> и <code>nextElement()</code>.</li>
                <li>В <code>Iterator</code> имена методов более интуитивны: <code>hasNext()</code> и <code>next()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Применение:</span>
            <ul>
                <li><code>Enumeration</code> используется в устаревших классах, таких как <code>Vector</code> и <code>Stack</code>.</li>
                <li><code>Iterator</code> присутствует во всех современных классах-коллекциях, таких как <code>ArrayList</code>, <code>HashSet</code> и других.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования Enumeration</h2>
    <pre>
<code>
Vector&lt;String&gt; vector = new Vector&lt;&gt;();
vector.add("A");
vector.add("B");

Enumeration&lt;String&gt; enumeration = vector.elements();
while (enumeration.hasMoreElements()) {
    String element = enumeration.nextElement();
    System.out.println(element);
}
</code>
    </pre>

    <h2>Пример использования Iterator</h2>
    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

Iterator&lt;String&gt; iterator = list.iterator();
while (iterator.hasNext()) {
    String element = iterator.next();
    System.out.println(element);
    iterator.remove(); // Удаление элемента
}
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>Enumeration</code> является устаревшим интерфейсом и используется в старых классах, таких как <code>Vector</code>. <code>Iterator</code> предоставляет больше функциональности и используется в современных коллекциях.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c8896dd8-96ff-4f4e-8a7e-52897d3c5068', 'Сколько переходов происходит в момент вызова HashMap.get(key) по ключу,  который есть в таблице?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Количество переходов при вызове HashMap.get(key)</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Количество переходов при вызове HashMap.get(key)</h1>
    <p>
        При вызове метода <code>HashMap.get(key)</code> происходит определённое количество переходов в зависимости от того, является ли ключ <code>null</code> или нет.
    </p>

    <h2>Если ключ равен null</h2>
    <ul>
        <li>
            <span class="highlight">1 переход:</span>
            <ul>
                <li>Выполняется метод <code>getForNullKey()</code>, который ищет элемент с ключом <code>null</code> в специальной корзине.</li>
            </ul>
        </li>
    </ul>

    <h2>Если ключ не равен null</h2>
    <ul>
        <li>
            <span class="highlight">4 перехода:</span>
            <ul>
                <li><strong>1.</strong> Вычисление хеш-кода ключа с помощью метода <code>hashCode()</code>.</li>
                <li><strong>2.</strong> Определение номера корзины на основе хеш-кода.</li>
                <li><strong>3.</strong> Поиск значения в корзине (в списке или дереве).</li>
                <li><strong>4.</strong> Возврат найденного значения.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
Map&lt;String, Integer&gt; map = new HashMap&lt;&gt;();
map.put("A", 1);
map.put(null, 2);

// Поиск по ключу null
Integer value1 = map.get(null); // 1 переход (getForNullKey())

// Поиск по ключу "A"
Integer value2 = map.get("A"); // 4 перехода
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>При поиске по ключу <code>null</code> выполняется только один метод <code>getForNullKey()</code>.</li>
        <li>При поиске по ключу <code>"A"</code> происходит четыре перехода: вычисление хеш-кода, определение корзины, поиск значения и возврат результата.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Количество переходов при вызове <code>HashMap.get(key)</code> зависит от того, является ли ключ <code>null</code>. Для <code>null</code> выполняется один переход, а для других ключей – четыре.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('66c6fc37-2b9e-4c65-b71e-94c10adc4155', 'NavigableSet', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Интерфейс NavigableSet</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Интерфейс NavigableSet</h1>
    <p>
        <code>NavigableSet</code> – это интерфейс, который расширяет <code>SortedSet</code> и добавляет методы для навигации по набору элементов. Он позволяет находить ближайшие совпадения по заданному значению и поддерживает уникальность элементов.
    </p>

    <h2>Основные особенности</h2>
    <ul>
        <li>
            <span class="highlight">Наследование:</span>
            <ul>
                <li><code>NavigableSet</code> наследует все методы интерфейса <code>SortedSet</code>.</li>
                <li>Это означает, что элементы в <code>NavigableSet</code> всегда отсортированы.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Методы навигации:</span>
            <ul>
                <li><code>lower(E e)</code> – возвращает наибольший элемент, который меньше заданного.</li>
                <li><code>floor(E e)</code> – возвращает наибольший элемент, который меньше или равен заданному.</li>
                <li><code>ceiling(E e)</code> – возвращает наименьший элемент, который больше или равен заданному.</li>
                <li><code>higher(E e)</code> – возвращает наименьший элемент, который больше заданного.</li>
                <li><code>pollFirst()</code> – удаляет и возвращает первый элемент.</li>
                <li><code>pollLast()</code> – удаляет и возвращает последний элемент.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Уникальность элементов:</span>
            <ul>
                <li>Как и в <code>SortedSet</code>, в <code>NavigableSet</code> не может быть дубликатов.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования NavigableSet</h2>
    <pre>
<code>
NavigableSet&lt;Integer&gt; set = new TreeSet&lt;&gt;();
set.add(1);
set.add(3);
set.add(5);

System.out.println(set.lower(3)); // Выведет 1
System.out.println(set.higher(3)); // Выведет 5
System.out.println(set.floor(3)); // Выведет 3
System.out.println(set.ceiling(3)); // Выведет 3

System.out.println(set.pollFirst()); // Выведет и удалит 1
System.out.println(set.pollLast()); // Выведет и удалит 5
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Элементы в <code>NavigableSet</code> отсортированы.</li>
        <li>Методы навигации позволяют находить ближайшие элементы к заданному значению.</li>
        <li>Методы <code>pollFirst()</code> и <code>pollLast()</code> удаляют и возвращают первый и последний элементы соответственно.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>NavigableSet</code> полезен, когда требуется работать с отсортированным набором элементов и находить ближайшие значения. Это делает его удобным для задач, связанных с поиском и навигацией по данным.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('37790c7a-ae02-486f-a72f-85dc2de273bf', 'Что такое потоки демоны? Для чего они нужны? Как создать поток-демон?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Потоки-демоны в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Потоки-демоны в Java</h1>
    <p>
        Потоки-демоны — это фоновые потоки, которые выполняются параллельно с основными потоками программы.
        Они предназначены для выполнения задач, которые не являются критическими для работы приложения,
        таких как обслуживание или мониторинг.
    </p>

    <h2>Что такое потоки-демоны?</h2>
    <ul>
        <li>
            <span class="highlight">Потоки-демоны:</span>
            <ul>
                <li>
                    Это фоновые потоки, которые работают вместе с основными потоками программы.
                </li>
                <li>
                    Они не являются неотъемлемой частью программы и могут быть завершены, если все основные
                    потоки завершили выполнение.
                </li>
                <li>
                    Пример потока-демона — сборщик мусора (Garbage Collector, GC).
                </li>
            </ul>
        </li>
    </ul>

    <h2>Для чего нужны потоки-демоны?</h2>
    <ul>
        <li>
            <span class="highlight">Фоновые задачи:</span>
            <ul>
                <li>
                    Потоки-демоны используются для выполнения фоновых задач, таких как мониторинг,
                    логирование или обслуживание.
                </li>
                <li>
                    Они помогают разгрузить основные потоки, выполняя второстепенные операции.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Автоматическое завершение:</span>
            <ul>
                <li>
                    Потоки-демоны автоматически завершаются, когда все основные потоки программы завершили
                    выполнение.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Как создать поток-демон?</h2>
    <ul>
        <li>
            <span class="highlight">Метод setDaemon(boolean value):</span>
            <ul>
                <li>
                    Чтобы сделать поток демоном, нужно вызвать метод <code>setDaemon(true)</code> у объекта потока
                    до его запуска.
                </li>
                <li>
                    Если поток уже запущен, попытка установить его как демон вызовет исключение
                    <code>IllegalThreadStateException</code>.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Метод isDaemon():</span>
            <ul>
                <li>
                    Метод <code>isDaemon()</code> позволяет проверить, является ли поток демоном.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Потоки-демоны завершаются автоматически, когда завершаются все основные потоки программы.
                </li>
                <li>
                    Они не подходят для выполнения задач, которые должны быть завершены корректно,
                    так как их выполнение может быть прервано в любой момент.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример создания потока-демона</h2>
    <ul>
        <li>
            <code>Thread daemonThread = new Thread(() -> { ... });</code> — создание потока.
        </li>
        <li>
            <code>daemonThread.setDaemon(true);</code> — установка потока как демона.
        </li>
        <li>
            <code>daemonThread.start();</code> — запуск потока.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3ea520b1-21e1-4fb7-8c13-f9477466c90c', 'Что такое Mapped Superclass?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mapped Superclass в JPA</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Mapped Superclass в JPA</h1>
    <p>
        <span class="highlight">Mapped Superclass</span> – это класс, от которого наследуются Entity-классы. Он может содержать
        аннотации JPA, но сам по себе не является Entity. Это позволяет выносить общие свойства и методы
        в отдельный класс, который затем может быть унаследован несколькими Entity-классами.
    </p>

    <h2>Основные характеристики Mapped Superclass</h2>
    <p>
        Mapped Superclass имеет следующие особенности:
    </p>
    <ul>
        <li>
            <span class="highlight">Не является Entity:</span> Mapped Superclass не является сущностью и не может быть
            использован в операциях <code>EntityManager</code> или <code>Query</code>.
        </li>
        <li>
            <span class="highlight">Аннотация @MappedSuperclass:</span> Класс должен быть помечен аннотацией
            <code>@MappedSuperclass</code> или описан в XML-файле конфигурации JPA.
        </li>
        <li>
            <span class="highlight">Общие свойства и методы:</span> Mapped Superclass может содержать общие поля и методы,
            которые будут унаследованы Entity-классами.
        </li>
        <li>
            <span class="highlight">Отсутствие первичного ключа:</span> Mapped Superclass не обязан содержать первичный ключ,
            хотя может содержать поля, которые будут использоваться как часть первичного ключа в
            Entity-классах.
        </li>
    </ul>

    <h2>Требования JPA к Mapped Superclass</h2>
    <p>
        JPA устанавливает следующие требования к Mapped Superclass:
    </p>
    <ul>
        <li>
            <span class="highlight">Аннотация @MappedSuperclass:</span> Класс должен быть помечен аннотацией
            <code>@MappedSuperclass</code>.
        </li>
        <li>
            <span class="highlight">Конструктор без аргументов:</span> Класс должен иметь <code>public</code> или <code>protected</code>
            конструктор без аргументов.
        </li>
        <li>
            <span class="highlight">Не финальный класс:</span> Класс не должен быть объявлен как <code>final</code>.
        </li>
        <li>
            <span class="highlight">Поля и методы:</span> Поля и методы класса должны быть доступны через геттеры и сеттеры.
        </li>
    </ul>

    <h2>Пример Mapped Superclass</h2>
    <p>
        Рассмотрим пример Mapped Superclass и его использование в Entity-классах:
    </p>
    <pre><code>
import javax.persistence.MappedSuperclass;

// Mapped Superclass
@MappedSuperclass
public class BaseEntity {
    private String createdBy;
    private String updatedBy;

    public BaseEntity() {}

    public BaseEntity(String createdBy, String updatedBy) {
        this.createdBy = createdBy;
        this.updatedBy = updatedBy;
    }

    // Геттеры и сеттеры
    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(String updatedBy) {
        this.updatedBy = updatedBy;
    }
}

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

// Entity-класс, наследующий Mapped Superclass
@Entity
public class User extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    public User() {}

    public User(String name, String createdBy, String updatedBy) {
        super(createdBy, updatedBy);
        this.name = name;
    }

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
}
    </code></pre>

    <h2>Использование Mapped Superclass</h2>
    <p>
        В этом примере класс <code>BaseEntity</code> является Mapped Superclass и содержит общие поля
        <code>createdBy</code> и <code>updatedBy</code>. Класс <code>User</code> наследует эти поля и добавляет свои
        собственные, специфичные для Entity.
    </p>

    <h2>Преимущества использования Mapped Superclass</h2>
    <ul>
        <li>
            <span class="highlight">Сокращение кода:</span> Позволяет выносить общие свойства и методы в отдельный класс,
            что сокращает дублирование кода.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Упрощает поддержку и изменение общих свойств в нескольких Entity-классах.
        </li>
        <li>
            <span class="highlight">Упрощение структуры:</span> Делает код более читаемым и структурированным.
        </li>
    </ul>

    <h2>Заключение</h2>
    <p>
        Mapped Superclass в JPA – это мощный инструмент для выноса общих свойств и методов в отдельный
        класс, который может быть унаследован несколькими Entity-классами. Это упрощает структуру кода,
        сокращает дублирование и повышает гибкость при разработке. Однако важно помнить, что
        Mapped Superclass не является Entity и не может быть использован в операциях с базой данных
        напрямую.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7241d641-d16c-44f2-b6ba-776d778959da', 'Что такое EntityManager? Какие функции он выполняет?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EntityManager в JPA</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>EntityManager в JPA</h1>
    <p>
        <span class="highlight">EntityManager</span> – это ключевой интерфейс в JPA (Java Persistence API), который предоставляет
        API для выполнения основных операций над сущностями (Entity). Он управляет жизненным циклом
        сущностей, выполняет запросы к базе данных и обеспечивает взаимодействие с persistence-контекстом.
    </p>

    <h2>Основные функции EntityManager</h2>
    <p>
        EntityManager выполняет множество операций, которые можно разделить на несколько категорий:
    </p>

    <h3>1. Операции над сущностями (Entity)</h3>
    <ul>
        <li>
            <span class="highlight">persist:</span> Добавляет новую сущность в базу данных. Сущность переходит в состояние
            "управляемой" (managed).
        </li>
        <li>
            <span class="highlight">merge:</span> Обновляет сущность в базе данных. Если сущность не существует, она будет
            создана.
        </li>
        <li>
            <span class="highlight">remove:</span> Удаляет сущность из базы данных.
        </li>
        <li>
            <span class="highlight">refresh:</span> Обновляет состояние сущности из базы данных, перезаписывая текущие значения.
        </li>
        <li>
            <span class="highlight">detach:</span> Удаляет сущность из управления JPA. После этого сущность становится
            "отсоединённой" (detached).
        </li>
        <li>
            <span class="highlight">lock:</span> Блокирует сущность от изменений в других потоках.
        </li>
    </ul>

    <h3>2. Получение данных</h3>
    <ul>
        <li>
            <span class="highlight">find:</span> Находит и возвращает сущность по её идентификатору.
        </li>
        <li>
            <span class="highlight">createQuery:</span> Создаёт объект запроса (Query) для выполнения JPQL-запросов.
        </li>
        <li>
            <span class="highlight">createNamedQuery:</span> Создаёт объект запроса на основе именованного запроса,
            определённого в аннотациях или XML.
        </li>
        <li>
            <span class="highlight">createNativeQuery:</span> Создаёт объект запроса для выполнения SQL-запросов.
        </li>
        <li>
            <span class="highlight">contains:</span> Проверяет, управляется ли сущность текущим EntityManager.
        </li>
        <li>
            <span class="highlight">createNamedStoredProcedureQuery:</span> Создаёт объект для выполнения именованных
            хранимых процедур.
        </li>
        <li>
            <span class="highlight">createStoredProcedureQuery:</span> Создаёт объект для выполнения хранимых процедур.
        </li>
    </ul>

    <h3>3. Получение других сущностей JPA</h3>
    <ul>
        <li>
            <span class="highlight">getTransaction:</span> Возвращает объект <code>EntityTransaction</code> для управления
            транзакциями.
        </li>
        <li>
            <span class="highlight">getEntityManagerFactory:</span> Возвращает фабрику EntityManager, которая создала
            данный экземпляр.
        </li>
        <li>
            <span class="highlight">getCriteriaBuilder:</span> Возвращает объект <code>CriteriaBuilder</code> для создания
            типобезопасных запросов.
        </li>
        <li>
            <span class="highlight">getMetamodel:</span> Возвращает метамодель, которая предоставляет метаданные о сущностях.
        </li>
        <li>
            <span class="highlight">getDelegate:</span> Возвращает объект, который является реализацией EntityManager
            (например, Hibernate Session).
        </li>
    </ul>

    <h3>4. Работа с EntityGraph</h3>
    <ul>
        <li>
            <span class="highlight">createEntityGraph:</span> Создаёт объект <code>EntityGraph</code> для управления
            загрузкой связанных сущностей.
        </li>
        <li>
            <span class="highlight">getEntityGraph:</span> Возвращает именованный <code>EntityGraph</code>.
        </li>
    </ul>

    <h3>5. Общие операции</h3>
    <ul>
        <li>
            <span class="highlight">close:</span> Закрывает EntityManager. После этого все сущности становятся "отсоединёнными".
        </li>
        <li>
            <span class="highlight">clear:</span> Очищает persistence-контекст, отсоединяя все сущности.
        </li>
        <li>
            <span class="highlight">isOpen:</span> Проверяет, открыт ли EntityManager.
        </li>
        <li>
            <span class="highlight">getProperties:</span> Возвращает свойства, связанные с EntityManager.
        </li>
        <li>
            <span class="highlight">setProperty:</span> Устанавливает свойство для EntityManager.
        </li>
    </ul>

    <h2>Потокобезопасность EntityManager</h2>
    <p>
        Объекты <code>EntityManager</code> не являются потокобезопасными. Это означает, что каждый поток
        должен получить свой экземпляр <code>EntityManager</code>, выполнить необходимые операции и
        закрыть его после завершения работы.
    </p>

    <h2>Пример использования EntityManager</h2>
    <p>
        Рассмотрим пример использования <code>EntityManager</code> для выполнения операций с сущностью:
    </p>
    <pre><code>
// Получение EntityManager из EntityManagerFactory
EntityManager entityManager = entityManagerFactory.createEntityManager();

// Начало транзакции
entityManager.getTransaction().begin();

// Создание новой сущности
User user = new User("John Doe", "john.doe@example.com");

// Сохранение сущности в базе данных
entityManager.persist(user);

// Поиск сущности по идентификатору
User foundUser = entityManager.find(User.class, 1L);

// Обновление сущности
foundUser.setEmail("new.email@example.com");
entityManager.merge(foundUser);

// Удаление сущности
entityManager.remove(foundUser);

// Завершение транзакции
entityManager.getTransaction().commit();

// Закрытие EntityManager
entityManager.close();
    </code></pre>

    <h2>Заключение</h2>
    <p>
        <code>EntityManager</code> – это мощный инструмент в JPA, который предоставляет API для выполнения
        операций с сущностями, управления транзакциями и выполнения запросов. Он играет ключевую роль
        в управлении жизненным циклом сущностей и взаимодействии с базой данных. Однако важно
        помнить, что <code>EntityManager</code> не является потокобезопасным, и каждый поток должен
        использовать свой экземпляр.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('92b85a28-ea8d-4b60-b8f2-6be3c3c2ff83', 'Сколько создается новых объектов, когда добавляете новый элемент в  HashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Количество новых объектов при добавлении элемента в HashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Количество новых объектов при добавлении элемента в HashMap</h1>
    <p>
        При добавлении нового элемента в <code>HashMap</code> создаётся один новый объект. Это объект статического вложенного класса <code>Entry&lt;K, V&gt;</code>, который хранит пару «ключ-значение».
    </p>

    <h2>Что происходит при добавлении элемента?</h2>
    <ul>
        <li>
            <span class="highlight">Создание объекта Entry:</span>
            <ul>
                <li>Каждый элемент в <code>HashMap</code> представлен объектом класса <code>Entry&lt;K, V&gt;</code>.</li>
                <li>При добавлении нового элемента создаётся один объект <code>Entry</code>, который содержит ключ и значение.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Размещение в корзине:</span>
            <ul>
                <li>Объект <code>Entry</code> помещается в соответствующую корзину (ячейку массива) на основе хеш-кода ключа.</li>
                <li>Если в корзине уже есть элементы, новый объект добавляется в связный список или дерево (в зависимости от длины цепочки).</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
Map&lt;String, Integer&gt; map = new HashMap&lt;&gt;();
map.put("A", 1); // Создается один объект Entry
map.put("B", 2); // Создается еще один объект Entry
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>При каждом вызове <code>map.put()</code> создаётся один новый объект <code>Entry</code>.</li>
        <li>Объект <code>Entry</code> содержит ключ и значение, а также ссылку на следующий элемент в цепочке (если есть коллизии).</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При добавлении нового элемента в <code>HashMap</code> создаётся только один новый объект – экземпляр класса <code>Entry&lt;K, V&gt;</code>. Это делает добавление элементов эффективным по памяти.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ea10bbed-56e4-485b-b831-513ce9b7e1d6', 'В каком случае может быть потерян элемент в HashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Потеря элемента в HashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Потеря элемента в HashMap</h1>
    <p>
        В <code>HashMap</code> может произойти потеря элемента, если ключ, используемый для добавления элемента, изменяется после добавления. Это связано с тем, что <code>HashMap</code> использует хеш-код ключа для определения корзины, в которой будет храниться элемент.
    </p>

    <h2>Как происходит потеря элемента?</h2>
    <ul>
        <li>
            <span class="highlight">Изменение ключа:</span>
            <ul>
                <li>Если ключ (объект) изменяется после добавления в <code>HashMap</code>, его хеш-код может измениться.</li>
                <li>Это приводит к тому, что элемент больше не может быть найден в исходной корзине.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Проблемы с поиском:</span>
            <ul>
                <li>При попытке найти элемент по изменённому ключу, <code>HashMap</code> будет искать его в новой корзине, соответствующей новому хеш-коду.</li>
                <li>Если элемент не будет найден в новой корзине, он считается потерянным.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пересчёт хеш-кодов:</span>
            <ul>
                <li>При увеличении размера корзин и пересчёте хеш-кодов элементов, изменённый ключ может попасть в другую корзину, что приведёт к полной потере элемента.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
class Key {
    private int id;
    private String name;

    public Key(int id, String name) {
        this.id = id;
        this.name = name;
    }

    @Override
    public int hashCode() {
        return id + name.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Key key = (Key) obj;
        return id == key.id && name.equals(key.name);
    }
}

public class Main {
    public static void main(String[] args) {
        Map&lt;Key, String&gt; map = new HashMap&lt;&gt;();
        Key key = new Key(1, "A");
        map.put(key, "Value");

        key.setName("B"); // Изменение поля, участвующего в hashCode()
        System.out.println(map.get(key)); // Выведет null, элемент потерян
    }
}
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Ключ <code>key</code> изменяется после добавления в <code>HashMap</code>.</li>
        <li>Хеш-код ключа изменяется, и элемент больше не может быть найден.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Чтобы избежать потери элементов в <code>HashMap</code>, ключи должны быть неизменяемыми (immutable). Если ключ изменяется, это может привести к непредсказуемому поведению и потере данных.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('00254be7-1fdf-4333-ad64-9f46c8e4d4cb', 'Как перебрать все ключи Map?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Перебор всех ключей Map</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Перебор всех ключей Map</h1>
    <p>
        Для перебора всех ключей в <code>Map</code> можно использовать метод <code>keySet()</code>, который возвращает множество (<code>Set</code>) ключей. Это позволяет легко итерироваться по всем ключам коллекции.
    </p>

    <h2>Использование keySet()</h2>
    <ul>
        <li>
            <span class="highlight">Метод keySet():</span>
            <ul>
                <li>Возвращает множество ключей типа <code>Set&lt;K&gt;</code>, где <code>K</code> – тип ключа.</li>
                <li>Этот набор можно использовать для итерации по всем ключам <code>Map</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример перебора:</span>
            <ul>
                <li>Можно использовать цикл <code>for-each</code> или итератор для перебора ключей.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
Map&lt;String, Integer&gt; map = new HashMap&lt;&gt;();
map.put("A", 1);
map.put("B", 2);
map.put("C", 3);

// Перебор ключей с помощью keySet()
for (String key : map.keySet()) {
    System.out.println("Ключ: " + key);
}
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Метод <code>keySet()</code> возвращает множество ключей <code>["A", "B", "C"]</code>.</li>
        <li>Цикл <code>for-each</code> используется для перебора и вывода всех ключей.</li>
    </ul>

    <h2>Использование итератора</h2>
    <pre>
<code>
Iterator&lt;String&gt; iterator = map.keySet().iterator();
while (iterator.hasNext()) {
    String key = iterator.next();
    System.out.println("Ключ: " + key);
}
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Метод <code>keySet()</code> предоставляет удобный способ перебора всех ключей в <code>Map</code>. Это особенно полезно, если нужно выполнить операции только с ключами, без доступа к значениям.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ee4803fe-c2fa-4049-8756-df7d6a8421ef', ' Может ли значение в столбце, на который наложено ограничение FOREIGN  KEY, равняться NULL?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NULL в столбце с FOREIGN KEY</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>NULL в столбце с FOREIGN KEY</h1>
    <p>
        В SQL столбец, на который наложено ограничение <code>FOREIGN KEY</code>, может содержать значение <code>NULL</code>,
        если на этот столбец не наложено ограничение <code>NOT NULL</code>.
    </p>

    <h2>Особенности FOREIGN KEY и NULL</h2>
    <ul>
        <li>
            <span class="highlight">NULL в FOREIGN KEY:</span>
            <ul>
                <li>
                    Если столбец с <code>FOREIGN KEY</code> не имеет ограничения <code>NOT NULL</code>, он может содержать
                    значение <code>NULL</code>.
                </li>
                <li>
                    Это означает, что запись может не иметь связи с другой таблицей.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <ul>
                <li>
                    Создание таблицы с <code>FOREIGN KEY</code>, допускающей <code>NULL</code>:
                    <pre><code>CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);</code></pre>
                </li>
                <li>
                    В этом случае <code>employee_id</code> может быть <code>NULL</code>, если на него не наложено ограничение
                    <code>NOT NULL</code>.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>FOREIGN KEY</code> может содержать <code>NULL</code>, если это явно не запрещено ограничением
                    <code>NOT NULL</code>.
                </li>
                <li>
                    Это позволяет создавать записи, которые могут не иметь связи с другой таблицей.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования</h2>
    <pre><code>CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);</code></pre>

    <p>
        В этом примере столбец <code>employee_id</code> в таблице <code>orders</code> может содержать <code>NULL</code>, если на него не
        наложено ограничение <code>NOT NULL</code>.
    </p>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a11666b9-8cb3-40f1-95e6-08ce788ffbef', ' Сколько элементов будет пропущено, если Iterator.next() будет вызван после  10-ти вызовов Iterator.hasNext()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Поведение Iterator.hasNext() и Iterator.next()</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Поведение Iterator.hasNext() и Iterator.next()</h1>
    <p>
        Метод <code>Iterator.hasNext()</code> используется для проверки наличия следующего элемента в коллекции, но он не перемещает итератор. Это означает, что вызов <code>hasNext()</code> не влияет на позицию итератора.
    </p>

    <h2>Что происходит при вызове Iterator.hasNext()?</h2>
    <ul>
        <li>
            <span class="highlight">Проверка наличия элемента:</span>
            <ul>
                <li>Метод <code>hasNext()</code> только проверяет, есть ли следующий элемент в коллекции.</li>
                <li>Он не изменяет состояние итератора и не перемещает его.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <ul>
                <li>Если вызвать <code>hasNext()</code> 10 раз подряд, это не приведёт к пропуску элементов.</li>
                <li>Пример:
                    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

Iterator&lt;String&gt; iterator = list.iterator();
for (int i = 0; i < 10; i++) {
    iterator.hasNext(); // Просто проверка, без перемещения
}
iterator.next(); // Вернёт элемент "A"
</code>
                    </pre>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Метод <code>hasNext()</code> не перемещает итератор и не пропускает элементы. Он только проверяет наличие следующего элемента. Для перемещения итератора используется метод <code>next()</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d973d35a-d1a7-40ee-ae06-7e7f1192aa0d', 'Чем Thread отличается от Runnable? Когда нужно использовать Thread, а  когда Runnable?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thread vs Runnable</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Thread vs Runnable</h1>
    <p>
        В Java для работы с потоками используются два основных подхода: класс <code>Thread</code> и интерфейс <code>Runnable</code>.
        Они имеют свои особенности и применяются в разных ситуациях.
    </p>

    <h2>Чем отличается Thread от Runnable?</h2>
    <ul>
        <li>
            <span class="highlight">Thread:</span> Это класс, который представляет собой надстройку над физическим потоком.
            Он позволяет управлять потоком напрямую, включая его запуск, приостановку и остановку.
            В классе <code>Thread</code> есть несколько методов, которые можно переопределить, но обязательным
            является только метод <code>run()</code>.
        </li>
        <li>
            <span class="highlight">Runnable:</span> Это интерфейс, который представляет абстракцию над выполняемой задачей.
            Он содержит единственный метод <code>run()</code>, который должен быть реализован.
            <code>Runnable</code> позволяет отделить логику выполнения задачи от управления потоком.
        </li>
    </ul>

    <h2>Когда использовать Thread, а когда Runnable?</h2>
    <ul>
        <li>
            <span class="highlight">Использование Thread:</span> Следует использовать, когда нужно расширить функциональность
            класса <code>Thread</code> и переопределить его методы (например, <code>start()</code>, <code>stop()</code> и т.д.).
            Однако, если требуется только реализация метода <code>run()</code>, то использование <code>Thread</code> может быть избыточным.
        </li>
        <li>
            <span class="highlight">Использование Runnable:</span> Рекомендуется использовать, когда нужно отделить логику задачи
            от управления потоком. Это особенно полезно, если требуется наследование от другого класса,
            так как Java не поддерживает множественное наследование. Кроме того, <code>Runnable</code>
            позволяет более гибко управлять задачами, передавая их в различные потоки.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если вам не нужно переопределять методы класса <code>Thread</code>,
            то предпочтительнее использовать интерфейс <code>Runnable</code>. Это делает код более гибким
            и позволяет избежать ограничений, связанных с наследованием.
        </p>
    </div>

    <h2>Примеры использования</h2>
    <ul>
        <li>
            <code>Thread</code> — используется, когда требуется управление потоком на низком уровне,
            например, для приостановки или остановки потока.
        </li>
        <li>
            <code>Runnable</code> — используется для создания задач, которые могут быть выполнены в
            различных потоках, что делает код более модульным и переиспользуемым.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('196f67bb-15bf-45d1-8fae-9cf302fda758', 'В чем разница между HashMap и IdentityHashMap? Для чего нужна  IdentityHashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между HashMap и IdentityHashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Разница между HashMap и IdentityHashMap</h1>
    <p>
        <code>HashMap</code> и <code>IdentityHashMap</code> – это две реализации интерфейса <code>Map</code>, но они имеют существенные различия в способе сравнения ключей и производительности. Рассмотрим их основные отличия и назначение <code>IdentityHashMap</code>.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Сравнение ключей:</span>
            <ul>
                <li>В <code>HashMap</code> для сравнения ключей используются методы <code>equals()</code> и <code>hashCode()</code>.</li>
                <li>В <code>IdentityHashMap</code> для сравнения ключей используется сравнение ссылок (<code>==</code>), а не <code>equals()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Хеш-код:</span>
            <ul>
                <li><code>HashMap</code> использует метод <code>hashCode()</code> для вычисления хеш-кода ключа.</li>
                <li><code>IdentityHashMap</code> использует метод <code>System.identityHashCode()</code>, который возвращает хеш-код на основе адреса объекта в памяти.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Производительность:</span>
            <ul>
                <li><code>IdentityHashMap</code> может быть более производительным, особенно если объекты имеют дорогостоящие методы <code>equals()</code> и <code>hashCode()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Неизменяемость ключей:</span>
            <ul>
                <li>Для <code>HashMap</code> рекомендуется использовать неизменяемые ключи, чтобы избежать потери данных.</li>
                <li>Для <code>IdentityHashMap</code> это требование не актуально, так как сравнение ключей основано на ссылках, а не на содержимом объектов.</li>
            </ul>
        </li>
    </ul>

    <h2>Назначение IdentityHashMap</h2>
    <ul>
        <li>
            <span class="highlight">Сериализация и клонирование:</span>
            <ul>
                <li><code>IdentityHashMap</code> может использоваться для реализации сериализации и клонирования, где необходимо отслеживать уникальные объекты, даже если они равны по <code>equals()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Сравнение ссылок:</span>
            <ul>
                <li>Полезен в случаях, когда требуется сравнивать объекты по ссылкам, а не по их содержимому.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
Map&lt;String, Integer&gt; hashMap = new HashMap&lt;&gt;();
Map&lt;String, Integer&gt; identityHashMap = new IdentityHashMap&lt;&gt;();

String key1 = new String("A");
String key2 = new String("A");

hashMap.put(key1, 1);
hashMap.put(key2, 2); // Ключи равны по equals(), значение перезаписывается

identityHashMap.put(key1, 1);
identityHashMap.put(key2, 2); // Ключи разные по ссылкам, оба добавляются

System.out.println(hashMap.size()); // Выведет 1
System.out.println(identityHashMap.size()); // Выведет 2
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>В <code>HashMap</code> ключи <code>key1</code> и <code>key2</code> считаются равными, так как они равны по <code>equals()</code>.</li>
        <li>В <code>IdentityHashMap</code> ключи <code>key1</code> и <code>key2</code> считаются разными, так как они разные по ссылкам.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>IdentityHashMap</code> полезен в случаях, когда требуется сравнивать объекты по ссылкам, а не по содержимому. Он также может быть более производительным, если методы <code>equals()</code> и <code>hashCode()</code> объектов дорогостоящие.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('48a93e99-bdd5-4035-94b3-1728a2aaac8b', 'Почему нельзя использовать byte[] в качестве ключа в HashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему нельзя использовать byte[] в качестве ключа в HashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Почему нельзя использовать byte[] в качестве ключа в HashMap</h1>
    <p>
        Использование массива <code>byte[]</code> в качестве ключа в <code>HashMap</code> может привести к непредсказуемому поведению. Это связано с тем, как массивы реализуют методы <code>hashCode()</code> и <code>equals()</code>.
    </p>

    <h2>Проблемы с использованием byte[] в качестве ключа</h2>
    <ul>
        <li>
            <span class="highlight">Хеш-код массива:</span>
            <ul>
                <li>Метод <code>hashCode()</code> для массивов не переопределён и наследуется от <code>Object</code>.</li>
                <li>Хеш-код массива зависит от его адреса в памяти, а не от содержимого массива.</li>
                <li>Это означает, что два массива с одинаковыми элементами будут иметь разные хеш-коды.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Сравнение массивов:</span>
            <ul>
                <li>Метод <code>equals()</code> для массивов также не переопределён и сравнивает ссылки, а не содержимое массивов.</li>
                <li>Это приводит к тому, что два массива с одинаковыми элементами считаются разными объектами.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Проблемы с доступом:</span>
            <ul>
                <li>Если использовать массив в качестве ключа, доступ к элементу возможен только при использовании той же самой ссылки на массив, что использовалась при добавлении.</li>
                <li>Даже если создать новый массив с такими же элементами, доступ к значению будет невозможен.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
Map&lt;byte[], String&gt; map = new HashMap&lt;&gt;();
byte[] key1 = new byte[] {1, 2, 3};
map.put(key1, "Value");

byte[] key2 = new byte[] {1, 2, 3}; // Тот же набор элементов, но другой массив
System.out.println(map.get(key2)); // Выведет null, доступ невозможен
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Массивы <code>key1</code> и <code>key2</code> содержат одинаковые элементы, но это разные объекты.</li>
        <li>Поэтому <code>map.get(key2)</code> возвращает <code>null</code>, так как <code>key2</code> не равен <code>key1</code> по ссылке.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Чтобы использовать массив в качестве ключа в <code>HashMap</code>, рекомендуется обернуть его в объект, который правильно реализует методы <code>hashCode()</code> и <code>equals()</code>, например, <code>ByteBuffer</code> или создать собственный класс-обёртку.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9e54a1dd-6141-47e3-90b6-de184b82593f', 'Какие агрегатные функции вы знаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Агрегатные функции в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Агрегатные функции в SQL</h1>
    <p>
        Агрегатные функции в SQL используются для выполнения вычислений на наборе значений и возврата
        одиночного результата. Они часто применяются вместе с оператором <code>GROUP BY</code> для группировки данных.
    </p>

    <h2>Основные агрегатные функции</h2>
    <ul>
        <li>
            <span class="highlight">COUNT:</span>
            <ul>
                <li>
                    Подсчитывает количество строк, удовлетворяющих условию запроса.
                </li>
                <li>
                    Пример: <code>SELECT COUNT(*) FROM employees;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">CONCAT:</span>
            <ul>
                <li>
                    Соединяет строки. В некоторых СУБД (например, MySQL) используется для объединения
                    текстовых значений.
                </li>
                <li>
                    Пример: <code>SELECT CONCAT(first_name, \' \', last_name) AS full_name FROM employees;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">SUM:</span>
            <ul>
                <li>
                    Вычисляет арифметическую сумму всех значений в столбце.
                </li>
                <li>
                    Пример: <code>SELECT SUM(salary) FROM employees;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">AVG:</span>
            <ul>
                <li>
                    Вычисляет среднее арифметическое всех значений в столбце.
                </li>
                <li>
                    Пример: <code>SELECT AVG(salary) FROM employees;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">MAX:</span>
            <ul>
                <li>
                    Определяет наибольшее значение в столбце.
                </li>
                <li>
                    Пример: <code>SELECT MAX(salary) FROM employees;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">MIN:</span>
            <ul>
                <li>
                    Определяет наименьшее значение в столбце.
                </li>
                <li>
                    Пример: <code>SELECT MIN(salary) FROM employees;</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Агрегатные функции часто используются с оператором <code>GROUP BY</code> для группировки данных и
                    выполнения вычислений по каждой группе.
                </li>
                <li>
                    <code>COUNT</code>, <code>SUM</code>, <code>AVG</code>, <code>MAX</code> и <code>MIN</code> работают с числовыми данными, а <code>CONCAT</code> — с
                    текстовыми.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования агрегатных функций</h2>
    <ul>
        <li>
            <span class="highlight">COUNT:</span>
            <pre><code>SELECT COUNT(*) FROM employees;</code></pre>
        </li>
        <li>
            <span class="highlight">SUM:</span>
            <pre><code>SELECT SUM(salary) FROM employees;</code></pre>
        </li>
        <li>
            <span class="highlight">AVG:</span>
            <pre><code>SELECT AVG(salary) FROM employees;</code></pre>
        </li>
        <li>
            <span class="highlight">MAX:</span>
            <pre><code>SELECT MAX(salary) FROM employees;</code></pre>
        </li>
        <li>
            <span class="highlight">MIN:</span>
            <pre><code>SELECT MIN(salary) FROM employees;</code></pre>
        </li>
        <li>
            <span class="highlight">CONCAT:</span>
            <pre><code>SELECT CONCAT(first_name, \' \', last_name) AS full_name FROM employees;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6803dccc-04ce-4355-b23b-5984826cbf6b', ' Какие три типа стратегий наследования мапинга (Inheritance Mapping  Strategies) описаны в JPA?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Стратегии наследования маппинга в JPA</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Стратегии наследования маппинга в JPA</h1>
    <p>
        В JPA (Java Persistence API) существует три основные стратегии наследования маппинга, которые
        определяют, как сущности (Entity) и их классы-наследники будут отображаться на таблицы в базе
        данных. Эти стратегии позволяют гибко управлять структурой данных и оптимизировать
        производительность.
    </p>

    <h2>1. Одна таблица на всю иерархию классов (SINGLE_TABLE)</h2>
    <p>
        В этой стратегии все сущности и их классы-наследники хранятся в одной таблице. Для
        идентификации типа сущности используется специальная колонка – <span class="highlight">discriminator column</span>.
    </p>
    <ul>
        <li>
            <span class="highlight">Пример:</span> Есть сущность <code>Animals</code> с классами-потомками <code>Cats</code> и <code>Dogs</code>. Все данные
            будут храниться в одной таблице <code>Animals</code>, а колонка <code>animalType</code> будет указывать тип
            сущности (<code>cat</code> или <code>dog</code>).
        </li>
        <li>
            <span class="highlight">Преимущества:</span> Простота и высокая производительность, так как данные хранятся в одной
            таблице.
        </li>
        <li>
            <span class="highlight">Недостатки:</span> В таблице будут созданы все поля, уникальные для каждого класса-потомка,
            которые будут пустыми для других классов. Например, в таблице <code>Animals</code> будут поля
            <code>climbingSpeed</code> (для <code>Cats</code>) и <code>canFetchSlippers</code> (для <code>Dogs</code>), которые будут
            <code>null</code> для других типов. Также нельзя использовать ограничения <code>NOT NULL</code> для таких полей.
        </li>
    </ul>

    <h2>2. Стратегия «соединения» (JOINED_TABLE)</h2>
    <p>
        В этой стратегии каждый класс сущности хранит данные в своей таблице, но только уникальные
        поля (не унаследованные от классов-предков). Общие поля хранятся в таблице класса-предка.
    </p>
    <ul>
        <li>
            <span class="highlight">Пример:</span> Для сущности <code>Animals</code> и её классов-потомков <code>Cats</code> и <code>Dogs</code> будут
            созданы три таблицы: <code>Animals</code>, <code>Cats</code> и <code>Dogs</code>. В таблице <code>Animals</code> будут храниться общие
            поля, а в таблицах <code>Cats</code> и <code>Dogs</code> – уникальные поля для каждого класса.
        </li>
        <li>
            <span class="highlight">Преимущества:</span> Нормализация данных, отсутствие избыточности.
        </li>
        <li>
            <span class="highlight">Недостатки:</span> Потеря производительности из-за необходимости объединения таблиц
            (JOIN) при выполнении запросов.
        </li>
    </ul>

    <h2>3. Таблица для каждого класса (TABLE_PER_CLASS)</h2>
    <p>
        В этой стратегии каждый класс-наследник имеет свою таблицу, в которой хранятся все его данные,
        включая унаследованные поля.
    </p>
    <ul>
        <li>
            <span class="highlight">Пример:</span> Для сущности <code>Animals</code> и её классов-потомков <code>Cats</code> и <code>Dogs</code> будут
            созданы отдельные таблицы <code>Cats</code> и <code>Dogs</code>, в которых будут храниться все данные, как если
            бы они не имели общего суперкласса.
        </li>
        <li>
            <span class="highlight">Преимущества:</span> Отсутствие избыточности, простота структуры таблиц.
        </li>
        <li>
            <span class="highlight">Недостатки:</span> Плохая поддержка полиморфизма (polymorphic relationships). Для
            выборки всех классов иерархии потребуется выполнение нескольких SQL-запросов или
            использование <code>UNION</code>.
        </li>
    </ul>

    <h2>Выбор стратегии наследования</h2>
    <p>
        Для задания стратегии наследования используется аннотация <code>@Inheritance</code> или
        соответствующие блоки в XML-файле конфигурации. Выбор стратегии зависит от требований
        приложения:
    </p>
    <ul>
        <li>
            <span class="highlight">SINGLE_TABLE:</span> Подходит для простых иерархий с небольшим количеством классов и
            полей.
        </li>
        <li>
            <span class="highlight">JOINED_TABLE:</span> Подходит для сложных иерархий с большим количеством общих полей.
        </li>
        <li>
            <span class="highlight">TABLE_PER_CLASS:</span> Подходит для случаев, когда каждый класс-наследник имеет
            уникальные поля и полиморфизм не требуется.
        </li>
    </ul>

    <h2>Пример использования аннотации @Inheritance</h2>
    <p>
        Рассмотрим пример использования аннотации <code>@Inheritance</code> для задания стратегии
        <code>SINGLE_TABLE</code>:
    </p>
    <pre><code>
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "animalType", discriminatorType = DiscriminatorType.STRING)
public class Animal {
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
}

@Entity
public class Cat extends Animal {
    private double climbingSpeed;

    // Геттеры и сеттеры
    public double getClimbingSpeed() {
        return climbingSpeed;
    }

    public void setClimbingSpeed(double climbingSpeed) {
        this.climbingSpeed = climbingSpeed;
    }
}

@Entity
public class Dog extends Animal {
    private boolean canFetchSlippers;

    // Геттеры и сеттеры
    public boolean isCanFetchSlippers() {
        return canFetchSlippers;
    }

    public void setCanFetchSlippers(boolean canFetchSlippers) {
        this.canFetchSlippers = canFetchSlippers;
    }
}
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Стратегии наследования маппинга в JPA предоставляют гибкость в проектировании структуры
        данных. Выбор стратегии зависит от требований приложения, таких как производительность,
        нормализация данных и поддержка полиморфизма. Правильный выбор стратегии позволяет
        оптимизировать работу с базой данных и упростить поддержку кода.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c42b9d60-d446-4ffc-a196-f5bd8047ffb4', 'Как и когда происходит увеличение количества корзин в HashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Увеличение количества корзин в HashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Увеличение количества корзин в HashMap</h1>
    <p>
        В <code>HashMap</code> количество корзин (ёмкость) увеличивается автоматически при достижении определённого порога. Этот процесс называется <strong>перехешированием</strong>.
    </p>

    <h2>Как происходит увеличение корзин?</h2>
    <ul>
        <li>
            <span class="highlight">Параметры:</span>
            <ul>
                <li><code>capacity</code> – текущее количество корзин.</li>
                <li><code>loadFactor</code> – коэффициент загрузки, по умолчанию равен <code>0.75</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Порог перехеширования:</span>
            <ul>
                <li>Порог вычисляется как <code>capacity * loadFactor</code>.</li>
                <li>Когда количество элементов в <code>HashMap</code> достигает этого порога, количество корзин увеличивается в 2 раза.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Перехеширование:</span>
            <ul>
                <li>После увеличения количества корзин для всех элементов вычисляется новое местоположение на основе нового количества корзин.</li>
                <li>Этот процесс называется перехешированием и может быть затратным по времени.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
Map&lt;String, Integer&gt; map = new HashMap&lt;&gt;(); // capacity = 16, loadFactor = 0.75
for (int i = 0; i < 12; i++) { // Порог перехеширования: 16 * 0.75 = 12
    map.put("Key" + i, i);
}

map.put("Key12", 12); // Количество элементов превышает порог, корзины увеличиваются в 2 раза
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Изначально <code>HashMap</code> имеет 16 корзин и порог перехеширования 12.</li>
        <li>После добавления 12-го элемента количество корзин увеличивается до 32.</li>
        <li>Все элементы перехешируются и распределяются по новым корзинам.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Перехеширование может быть затратным по времени, так как требует пересчёта хеш-кодов и перемещения элементов. Поэтому при создании <code>HashMap</code> можно задать начальную ёмкость и коэффициент загрузки, чтобы минимизировать количество перехеширований.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0e8b3fca-f7ab-4d9e-986f-75678d1ad514', 'Для чего нужны типы данных atomic? Чем отличаются от volatile?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Типы данных Atomic в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Типы данных Atomic в Java</h1>
    <p>
        Типы данных <code>Atomic</code> в Java предоставляют атомарные операции над примитивными типами данных,
        такими как <code>int</code>, <code>long</code>, <code>boolean</code> и другими. Они используются для обеспечения потокобезопасности
        без необходимости использования блокировок.
    </p>

    <h2>Для чего нужны типы данных Atomic?</h2>
    <ul>
        <li>
            <span class="highlight">Атомарные операции:</span>
            <ul>
                <li>
                    Типы данных <code>Atomic</code> предоставляют методы для выполнения атомарных операций, таких как
                    инкремент, декремент, сложение и другие.
                </li>
                <li>
                    Например, метод <code>getAndIncrement()</code> в <code>AtomicInteger</code> атомарно увеличивает значение на единицу.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Потокобезопасность:</span>
            <ul>
                <li>
                    Они позволяют избежать состояния гонки (race condition) при работе с общими ресурсами в многопоточной среде.
                </li>
                <li>
                    Это достигается без использования блокировок, что повышает производительность.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Чем отличаются Atomic от volatile?</h2>
    <ul>
        <li>
            <span class="highlight">volatile:</span>
            <ul>
                <li>
                    Гарантирует видимость изменений переменной для всех потоков.
                </li>
                <li>
                    Не обеспечивает атомарность составных операций, таких как <code>count++</code>.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Atomic:</span>
            <ul>
                <li>
                    Обеспечивает атомарность операций, таких как инкремент, декремент и другие.
                </li>
                <li>
                    Предоставляет потокобезопасные методы для работы с примитивными типами данных.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>volatile</code> подходит для простых операций, где требуется только видимость изменений.
                </li>
                <li>
                    <code>Atomic</code> типы используются для сложных операций, требующих атомарности.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования Atomic типов</h2>
    <ul>
        <li>
            <code>AtomicInteger atomicInt = new AtomicInteger(0);</code> — создание атомарного целого числа.
        </li>
        <li>
            <code>atomicInt.getAndIncrement();</code> — атомарное увеличение значения на единицу.
        </li>
        <li>
            <code>atomicInt.addAndGet(5);</code> — атомарное добавление значения 5.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0fecfe1a-1161-4d33-b5ff-84e4ca317f84', 'Как работают методы wait(), notify() и notifyAll()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Методы wait(), notify() и notifyAll()</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Методы wait(), notify() и notifyAll()</h1>
    <p>
        Методы <code>wait()</code>, <code>notify()</code> и <code>notifyAll()</code> используются для управления потоками в Java.
        Они позволяют потокам взаимодействовать друг с другом, синхронизируя их выполнение.
    </p>

    <h2>Как работают методы wait(), notify() и notifyAll()?</h2>
    <ul>
        <li>
            <span class="highlight">wait():</span>
            <ul>
                <li>
                    Освобождает монитор объекта и переводит вызывающий поток в состояние ожидания.
                </li>
                <li>
                    Поток остаётся в состоянии ожидания до тех пор, пока другой поток не вызовет метод
                    <code>notify()</code> или <code>notifyAll()</code> для того же объекта.
                </li>
                <li>
                    Когда вызывается <code>wait()</code>, поток переходит из состояния "работающий" (running)
                    в состояние "ожидание" (waiting).
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">notify():</span>
            <ul>
                <li>
                    Продолжает работу одного из потоков, который ранее вызвал метод <code>wait()</code> на том же объекте.
                </li>
                <li>
                    Невозможно определить, какой именно поток будет разбужен, если несколько потоков
                    находятся в состоянии ожидания.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">notifyAll():</span>
            <ul>
                <li>
                    Возобновляет работу всех потоков, которые ранее вызвали метод <code>wait()</code> на том же объекте.
                </li>
                <li>
                    Все потоки переходят из состояния "ожидание" (waiting) в состояние "работоспособный" (runnable).
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Если ни один поток не находится в состоянии ожидания на объекте, вызов <code>notify()</code>
                    или <code>notifyAll()</code> не имеет эффекта.
                </li>
                <li>
                    Методы <code>wait()</code>, <code>notify()</code> и <code>notifyAll()</code> должны вызываться только из синхронизированного
                    кода (внутри <code>synchronized</code> блока или метода), так как они работают с монитором объекта.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования</h2>
    <ul>
        <li>
            <code>wait():</code> Используется для приостановки потока до тех пор, пока не будет выполнено
            определённое условие.
        </li>
        <li>
            <code>notify():</code> Используется для пробуждения одного потока, ожидающего на объекте.
        </li>
        <li>
            <code>notifyAll():</code> Используется для пробуждения всех потоков, ожидающих на объекте.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('62695388-b004-4de8-8421-e12030bfd833', 'Что будет, если добавлять элементы в TreeSet по возрастанию?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Добавление элементов в TreeSet по возрастанию</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Добавление элементов в TreeSet по возрастанию</h1>
    <p>
        <code>TreeSet</code> в Java использует красно-черное дерево для хранения элементов. Эта структура данных автоматически балансируется, что позволяет сохранять эффективность операций независимо от порядка добавления элементов.
    </p>

    <h2>Как работает TreeSet?</h2>
    <ul>
        <li>
            <span class="highlight">Красно-черное дерево:</span>
            <ul>
                <li><code>TreeSet</code> использует красно-черное дерево, которое автоматически балансируется после каждой операции добавления или удаления.</li>
                <li>Это гарантирует, что высота дерева остаётся логарифмической относительно количества элементов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Порядок добавления:</span>
            <ul>
                <li>Независимо от того, добавляются ли элементы в <code>TreeSet</code> по возрастанию, убыванию или в случайном порядке, дерево будет сбалансировано.</li>
                <li>Это обеспечивает сложность операций добавления, удаления и поиска <code>O(log(N))</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример добавления элементов по возрастанию</h2>
    <pre>
<code>
Set&lt;Integer&gt; treeSet = new TreeSet&lt;&gt;();
for (int i = 1; i <= 1000; i++) {
    treeSet.add(i); // Добавляем элементы по возрастанию
}

System.out.println(treeSet); // Элементы будут отсортированы
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Элементы добавляются в <code>TreeSet</code> по возрастанию.</li>
        <li>Красно-черное дерево автоматически балансируется, сохраняя эффективность операций.</li>
        <li>Элементы в <code>TreeSet</code> будут отсортированы, независимо от порядка добавления.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>TreeSet</code> автоматически балансирует дерево, что позволяет сохранять эффективность операций независимо от порядка добавления элементов. Это делает его удобным для хранения отсортированных данных.
        </p>
    </div>
</body>
</html>
', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('11d5812e-bfe8-4c2c-b019-0880f8d49a96', 'Чем процесс отличается от потока?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отличия процесса и потока</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Отличия процесса и потока</h1>
    <p>
        Процесс и поток – это два основных понятия в многозадачных операционных системах. Они имеют существенные различия в управлении ресурсами и выполнении задач.
    </p>

    <h2>Процесс</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span>
            <ul>
                <li>Процесс – это экземпляр программы во время выполнения, независимый объект, которому выделены системные ресурсы (процессорное время, память и т.д.).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Адресное пространство:</span>
            <ul>
                <li>Каждый процесс выполняется в отдельном адресном пространстве.</li>
                <li>Один процесс не может получить доступ к переменным и структурам данных другого процесса.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Межпроцессное взаимодействие:</span>
            <ul>
                <li>Для обмена данными между процессами используется межпроцессное взаимодействие (IPC), например, конвейеры, файлы, сокеты и т.д.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Виртуальное адресное пространство:</span>
            <ul>
                <li>Операционная система создает для каждого процесса виртуальное адресное пространство, которое содержит только его данные.</li>
            </ul>
        </li>
    </ul>

    <h2>Поток (thread)</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span>
            <ul>
                <li>Поток – это способ выполнения процесса, определяющий последовательность исполнения кода в рамках одного процесса.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Общие ресурсы:</span>
            <ul>
                <li>Потоки выполняются в контексте процесса и имеют доступ к его данным и ресурсам.</li>
                <li>Потоки могут совместно использовать переменные, структуры данных и описатели объектов ядра.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Эффективность:</span>
            <ul>
                <li>Потоки расходуют меньше ресурсов, чем процессы, так как они используют общее адресное пространство.</li>
                <li>Создание и переключение между потоками происходит быстрее, чем между процессами.</li>
            </ul>
        </li>
    </ul>

    <h2>Сравнение</h2>
    <ul>
        <li>
            <span class="highlight">Ресурсы:</span>
            <ul>
                <li>Процессы изолированы и имеют собственные ресурсы.</li>
                <li>Потоки разделяют ресурсы процесса, в котором они созданы.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Производительность:</span>
            <ul>
                <li>Потоки более эффективны для выполнения задач, требующих частого взаимодействия и обмена данными.</li>
                <li>Процессы используются для изолированных задач, где важна независимость и безопасность.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Процессы обеспечивают изоляцию и безопасность, в то время как потоки позволяют эффективно использовать ресурсы и выполнять задачи параллельно. Выбор между процессами и потоками зависит от требований к изоляции и производительности.
        </p>
    </div>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b58d0ea7-fb50-4125-8900-09501dc315f0', 'Что делает UNION?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оператор UNION в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Оператор UNION в SQL</h1>
    <p>
        Оператор <code>UNION</code> в SQL используется для объединения результатов двух или более SQL-запросов в одну
        таблицу. Оба запроса должны возвращать одинаковое количество столбцов, и типы данных в соответствующих
        столбцах должны быть совместимы.
    </p>

    <h2>Как работает UNION?</h2>
    <ul>
        <li>
            <span class="highlight">Объединение результатов:</span>
            <ul>
                <li>
                    <code>UNION</code> объединяет результаты двух запросов в одну таблицу, удаляя дубликаты строк.
                </li>
                <li>
                    Пример: <code>SELECT name FROM employees UNION SELECT name FROM managers;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Порядок записей:</span>
            <ul>
                <li>
                    <code>UNION</code> не гарантирует порядок записей. Для сортировки результата необходимо
                    использовать <code>ORDER BY</code>.
                </li>
                <li>
                    Пример: <code>SELECT name FROM employees UNION SELECT name FROM managers ORDER BY name;</code>
                </li>
            </ul>
        </li>
    </ul>

    <h2>Разница между UNION и UNION ALL</h2>
    <ul>
        <li>
            <span class="highlight">UNION:</span>
            <ul>
                <li>
                    Удаляет дубликаты строк из результата.
                </li>
                <li>
                    Пример: <code>SELECT name FROM employees UNION SELECT name FROM managers;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">UNION ALL:</span>
            <ul>
                <li>
                    Включает все строки, включая дубликаты.
                </li>
                <li>
                    Пример: <code>SELECT name FROM employees UNION ALL SELECT name FROM managers;</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>UNION</code> удаляет дубликаты, что может быть полезно, если нужно получить уникальные
                    значения.
                </li>
                <li>
                    <code>UNION ALL</code> работает быстрее, так как не проверяет дубликаты, и используется, когда
                    дублирующиеся строки допустимы.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования UNION</h2>
    <ul>
        <li>
            <span class="highlight">UNION:</span>
            <pre><code>SELECT name FROM employees
UNION
SELECT name FROM managers
ORDER BY name;</code></pre>
        </li>
        <li>
            <span class="highlight">UNION ALL:</span>
            <pre><code>SELECT name FROM employees
UNION ALL
SELECT name FROM managers
ORDER BY name;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0f8da525-3566-4ed0-b404-b9497a29c24d', 'Как мапятся даты (до Java 8 и после)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Маппинг дат в JPA</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Маппинг дат в JPA</h1>
    <p>
        В JPA (Java Persistence API) маппинг дат зависит от версии Java. До Java 8 использовалась
        аннотация <code>@Temporal</code>, а начиная с Java 8, аннотация больше не требуется благодаря
        поддержке новых типов дат из пакета <code>java.time</code>.
    </p>

    <h2>Маппинг дат до Java 8</h2>
    <p>
        До Java 8 для маппинга дат использовалась аннотация <code>@Temporal</code>, которая указывала, какой
        тип даты будет использоваться в базе данных. Основные типы:
    </p>
    <ul>
        <li>
            <span class="highlight">@Temporal(TemporalType.DATE):</span> Хранит только дату (год, месяц, день).
        </li>
        <li>
            <span class="highlight">@Temporal(TemporalType.TIME):</span> Хранит только время (часы, минуты, секунды).
        </li>
        <li>
            <span class="highlight">@Temporal(TemporalType.TIMESTAMP):</span> Хранит дату и время.
        </li>
    </ul>

    <h3>Пример использования @Temporal</h3>
    <pre><code>
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.Date;

@Entity
public class Event {
    @Id
    private Long id;

    @Temporal(TemporalType.DATE)
    private Date eventDate;

    @Temporal(TemporalType.TIME)
    private Date eventTime;

    @Temporal(TemporalType.TIMESTAMP)
    private Date eventTimestamp;

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getEventDate() {
        return eventDate;
    }

    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }

    public Date getEventTime() {
        return eventTime;
    }

    public void setEventTime(Date eventTime) {
        this.eventTime = eventTime;
    }

    public Date getEventTimestamp() {
        return eventTimestamp;
    }

    public void setEventTimestamp(Date eventTimestamp) {
        this.eventTimestamp = eventTimestamp;
    }
}
    </code></pre>

    <h2>Маппинг дат в Java 8 и выше</h2>
    <p>
        Начиная с Java 8, в JPA появилась поддержка новых типов дат из пакета <code>java.time</code>, таких как
        <code>LocalDate</code>, <code>LocalTime</code>, <code>LocalDateTime</code> и других. Аннотация <code>@Temporal</code> больше не
        требуется, так как JPA автоматически определяет тип данных для маппинга.
    </p>

    <h3>Пример использования типов из java.time</h3>
    <pre><code>
import javax.persistence.Entity;
import javax.persistence.Id;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.LocalDateTime;

@Entity
public class Event {
    @Id
    private Long id;

    private LocalDate eventDate;
    private LocalTime eventTime;
    private LocalDateTime eventTimestamp;

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getEventDate() {
        return eventDate;
    }

    public void setEventDate(LocalDate eventDate) {
        this.eventDate = eventDate;
    }

    public LocalTime getEventTime() {
        return eventTime;
    }

    public void setEventTime(LocalTime eventTime) {
        this.eventTime = eventTime;
    }

    public LocalDateTime getEventTimestamp() {
        return eventTimestamp;
    }

    public void setEventTimestamp(LocalDateTime eventTimestamp) {
        this.eventTimestamp = eventTimestamp;
    }
}
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Маппинг дат в JPA зависит от версии Java. До Java 8 необходимо использовать аннотацию
        <code>@Temporal</code> для указания типа даты. Начиная с Java 8, аннотация больше не требуется,
        так как JPA автоматически поддерживает новые типы дат из пакета <code>java.time</code>. Это
        упрощает работу с датами и делает код более читаемым и современным.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('80e42558-9723-4471-98f9-9c4da8bd0ebb', 'Что такое ORDER BY?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оператор ORDER BY в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Оператор ORDER BY в SQL</h1>
    <p>
        Оператор <code>ORDER BY</code> в SQL используется для сортировки результатов запроса по одному или нескольким
        столбцам. По умолчанию сортировка выполняется по возрастанию, но можно указать и убывание.
    </p>

    <h2>Как работает ORDER BY?</h2>
    <ul>
        <li>
            <span class="highlight">Сортировка по столбцам:</span>
            <ul>
                <li>
                    <code>ORDER BY</code> упорядочивает строки результата запроса по значениям в указанных столбцах.
                </li>
                <li>
                    Пример: <code>SELECT name, salary FROM employees ORDER BY salary;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Направление сортировки:</span>
            <ul>
                <li>
                    По умолчанию сортировка выполняется по возрастанию (<code>ASC</code>).
                </li>
                <li>
                    Для сортировки по убыванию используется ключевое слово <code>DESC</code>.
                </li>
                <li>
                    Пример: <code>SELECT name, salary FROM employees ORDER BY salary DESC;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Сортировка по нескольким столбцам:</span>
            <ul>
                <li>
                    Можно сортировать по нескольким столбцам, указывая их через запятую. Сортировка
                    выполняется в порядке указания столбцов.
                </li>
                <li>
                    Пример: <code>SELECT name, department, salary FROM employees ORDER BY department, salary DESC;</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>ORDER BY</code> может использоваться как с числовыми, так и с текстовыми столбцами.
                </li>
                <li>
                    Если не указать направление сортировки, по умолчанию будет использоваться <code>ASC</code>
                    (по возрастанию).
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования ORDER BY</h2>
    <ul>
        <li>
            <span class="highlight">Сортировка по одному столбцу:</span>
            <pre><code>SELECT name, salary FROM employees ORDER BY salary;</code></pre>
        </li>
        <li>
            <span class="highlight">Сортировка по убыванию:</span>
            <pre><code>SELECT name, salary FROM employees ORDER BY salary DESC;</code></pre>
        </li>
        <li>
            <span class="highlight">Сортировка по нескольким столбцам:</span>
            <pre><code>SELECT name, department, salary FROM employees ORDER BY department, salary DESC;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('87cf6125-62c4-4836-aa30-b6002ba00f10', 'Что лучше использовать join или подзапросы? Почему?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JOIN vs Подзапросы в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>JOIN vs Подзапросы в SQL</h1>
    <p>
        В SQL для объединения данных из нескольких таблиц можно использовать как <code>JOIN</code>, так и подзапросы.
        Выбор между ними зависит от конкретной задачи и требований к производительности.
    </p>

    <h2>Когда использовать JOIN?</h2>
    <ul>
        <li>
            <span class="highlight">Преимущества JOIN:</span>
            <ul>
                <li>
                    <code>JOIN</code> обычно более понятен и лучше оптимизируется СУБД.
                </li>
                <li>
                    <code>JOIN</code> эффективен, когда нужно объединить данные из нескольких таблиц и выбрать
                    столбцы из каждой из них.
                </li>
                <li>
                    Пример: <code>SELECT employees.name, departments.department_name FROM employees INNER JOIN departments ON employees.department_id = departments.id;</code>
                </li>
            </ul>
        </li>
    </ul>

    <h2>Когда использовать подзапросы?</h2>
    <ul>
        <li>
            <span class="highlight">Преимущества подзапросов:</span>
            <ul>
                <li>
                    Подзапросы удобны, когда нужно вычислить агрегатные значения (например, сумму, среднее) и
                    использовать их для сравнений во внешних запросах.
                </li>
                <li>
                    Подзапросы могут быть полезны, когда данные из одной таблицы используются для фильтрации
                    данных в другой таблице.
                </li>
                <li>
                    Пример: <code>SELECT name FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>JOIN</code> обычно предпочтителен для объединения данных из нескольких таблиц, так как он
                    более читаем и лучше оптимизируется.
                </li>
                <li>
                    Подзапросы лучше использовать для вычислений и фильтрации данных, особенно когда нужно
                    работать с агрегатными функциями.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования JOIN и подзапросов</h2>
    <ul>
        <li>
            <span class="highlight">JOIN:</span>
            <pre><code>SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.id;</code></pre>
        </li>
        <li>
            <span class="highlight">Подзапрос:</span>
            <pre><code>SELECT name FROM employees
WHERE department_id = (SELECT id FROM departments WHERE department_name = \'Sales\');</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d33a1882-b3e7-4489-8dda-c51c2db6587d', 'Что такое каскады?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Каскады в JPA</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Каскады в JPA</h1>
    <p>
        Каскадирование — это механизм, при котором действие, выполняемое над целевой сущностью (Entity),
        автоматически применяется к связанным с ней сущностям. В JPA (Java Persistence API) каскадирование
        управляется с помощью перечисления <code>CascadeType</code>.
    </p>

    <h2>Типы каскадов</h2>
    <ul>
        <li>
            <span class="highlight">ALL:</span> Гарантирует, что все персистентные события (например, сохранение, обновление,
            удаление), происходящие с родительской сущностью, будут переданы связанным сущностям.
        </li>
        <li>
            <span class="highlight">PERSIST:</span> Операции <code>save()</code> или <code>persist()</code> каскадно передаются связанным
            сущностям. Это означает, что при сохранении родительской сущности сохраняются и все
            связанные с ней сущности.
        </li>
        <li>
            <span class="highlight">MERGE:</span> Связанные сущности объединяются (merge), когда объединяется родительская
            сущность. Это полезно при обновлении данных.
        </li>
        <li>
            <span class="highlight">REMOVE:</span> Удаляет все связанные сущности при удалении родительской сущности.
        </li>
        <li>
            <span class="highlight">DETACH:</span> Отключает все связанные сущности, если происходит «ручное отключение»
            родительской сущности от контекста persistence.
        </li>
        <li>
            <span class="highlight">REFRESH:</span> Повторно считывает значение данного экземпляра и связанных сущностей из
            базы данных при вызове метода <code>refresh()</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Каскадирование упрощает управление связанными сущностями, но требует
            осторожности, особенно при использовании <code>CascadeType.REMOVE</code>, чтобы избежать
            нежелательного удаления данных.
        </p>
    </div>

    <h2>Пример использования</h2>
    <p>
        Рассмотрим пример, где сущность <code>Parent</code> связана с сущностью <code>Child</code>:
    </p>
    <pre><code>
@Entity
public class Parent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "parent")
    private List<Child> children;
}

@Entity
public class Child {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "parent_id")
    private Parent parent;
}
    </code></pre>
    <p>
        В этом примере при сохранении, обновлении или удалении сущности <code>Parent</code> те же действия
        будут автоматически применены к связанным сущностям <code>Child</code> благодаря <code>CascadeType.ALL</code>.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('95727c3e-b6b9-41a3-b890-f35b99b89e46', 'Шардирование БД', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Шардирование базы данных</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Шардирование базы данных</h1>
    <p>
        При большом количестве данных запросы начинают выполняться медленно, и сервер может
        не справляться с нагрузкой. Одним из решений этой проблемы является масштабирование
        базы данных, например, с помощью шардинга или репликации.
    </p>

    <h2>Что такое шардинг?</h2>
    <p>
        Шардинг – это метод разделения данных на несколько частей (шардов) для распределения
        нагрузки. Шардинг может быть вертикальным (партицирование) и горизонтальным.
    </p>

    <h3>Вертикальное шардирование (партицирование)</h3>
    <p>
        Вертикальное шардирование предполагает разделение одной большой таблицы на несколько
        меньших таблиц по определённому принципу. Например, таблица с пользователями может быть
        разделена на несколько таблиц по географическому признаку или по категориям.
    </p>

    <h3>Горизонтальное шардирование</h3>
    <p>
        Горизонтальное шардирование отличается от вертикального тем, что данные распределяются
        по разным инстансам баз данных. Например, данные могут быть разделены между несколькими
        серверами, что позволяет распределить нагрузку и увеличить производительность.
    </p>

    <h2>Пример шардирования таблицы</h2>
    <p>
        Рассмотрим таблицу <code>news</code>, которая содержит следующие поля:
    </p>
    <ul>
        <li><code>id</code> – идентификатор новости.</li>
        <li><code>category_id</code> – категория новости.</li>
        <li><code>author</code> – автор новости.</li>
    </ul>
    <p>
        Для шардирования этой таблицы выполним следующие шаги:
    </p>

    <h3>1. Создание наследованных таблиц</h3>
    <p>
        Создадим шардированные таблицы, например, <code>news_1</code>, <code>news_2</code>, которые будут
        наследоваться от основной таблицы <code>news</code>. Наследованные таблицы будут содержать все
        колонки родительской таблицы, а также могут иметь дополнительные колонки. Однако они
        не будут содержать ограничений, индексов и триггеров от родительской таблицы.
    </p>
    <pre><code>
CREATE TABLE news_1 (
    CHECK (category_id = 1)
) INHERITS (news);

CREATE TABLE news_2 (
    CHECK (category_id = 2)
) INHERITS (news);
    </code></pre>

    <h3>2. Установка ограничений</h3>
    <p>
        Для каждой наследованной таблицы устанавливаем ограничения, чтобы в неё попадали только
        данные с определённым признаком. Например, в таблицу <code>news_1</code> будут попадать только
        записи с <code>category_id = 1</code>.
    </p>

    <h3>3. Создание правил для вставки данных</h3>
    <p>
        На основную таблицу <code>news</code> добавляем правило, которое будет перенаправлять данные в
        соответствующую шардированную таблицу. Например, при вставке записи с <code>category_id = 1</code>
        данные будут автоматически попадать в таблицу <code>news_1</code>.
    </p>
    <pre><code>
CREATE RULE news_insert_to_news_1 AS
ON INSERT TO news
WHERE (category_id = 1)
DO INSTEAD
INSERT INTO news_1 VALUES (NEW.*);

CREATE RULE news_insert_to_news_2 AS
ON INSERT TO news
WHERE (category_id = 2)
DO INSTEAD
INSERT INTO news_2 VALUES (NEW.*);
    </code></pre>

    <h2>Преимущества шардинга</h2>
    <ul>
        <li><span class="highlight">Увеличение производительности:</span> Распределение данных между несколькими таблицами
            или серверами позволяет снизить нагрузку на каждый отдельный сервер.</li>
        <li><span class="highlight">Масштабируемость:</span> Шардинг позволяет легко добавлять новые шарды для
            увеличения объёма данных.</li>
        <li><span class="highlight">Улучшение отказоустойчивости:</span> При выходе из строя одного шарда остальные
            продолжают работать.</li>
    </ul>

    <h2>Недостатки шардинга</h2>
    <ul>
        <li><span class="highlight">Сложность реализации:</span> Шардинг требует тщательного планирования и настройки.</li>
        <li><span class="highlight">Ограничения на запросы:</span> Запросы, которые затрагивают несколько шардов, могут
            быть сложными и медленными.</li>
        <li><span class="highlight">Управление данными:</span> Необходимо следить за распределением данных и балансировкой
            нагрузки.</li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f80283b5-414a-4faf-a17c-1d69e64a1e90', 'В чем разница между interrupted() и isInterrupted()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между interrupted() и isInterrupted()</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Разница между interrupted() и isInterrupted()</h1>
    <p>
        В Java механизм прерывания потока реализован с использованием внутреннего флага, известного как статус прерывания.
        Методы <code>Thread.interrupted()</code> и <code>isInterrupted()</code> позволяют проверить этот флаг, но они работают
        по-разному.
    </p>

    <h2>Метод Thread.interrupted()</h2>
    <ul>
        <li>
            <span class="highlight">Статический метод:</span>
            <ul>
                <li>
                    Проверяет статус прерывания <strong>текущего</strong> потока.
                </li>
                <li>
                    Если флаг прерывания установлен, метод возвращает <code>true</code> и <strong>сбрасывает</strong> флаг прерывания.
                </li>
                <li>
                    Пример использования: <code>Thread.interrupted()</code>.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Метод isInterrupted()</h2>
    <ul>
        <li>
            <span class="highlight">Нестатический метод:</span>
            <ul>
                <li>
                    Проверяет статус прерывания у <strong>конкретного</strong> потока (не обязательно текущего).
                </li>
                <li>
                    Если флаг прерывания установлен, метод возвращает <code>true</code>, но <strong>не сбрасывает</strong> флаг прерывания.
                </li>
                <li>
                    Пример использования: <code>thread.isInterrupted()</code>.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>Thread.interrupted()</code> сбрасывает флаг прерывания, поэтому его следует использовать,
                    если нужно проверить и сразу сбросить статус прерывания.
                </li>
                <li>
                    <code>isInterrupted()</code> не изменяет флаг прерывания, что делает его полезным для проверки
                    статуса другого потока.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования</h2>
    <ul>
        <li>
            <code>Thread.currentThread().interrupt();</code> — установка флага прерывания для текущего потока.
        </li>
        <li>
            <code>boolean isInterrupted = Thread.interrupted();</code> — проверка и сброс флага прерывания.
        </li>
        <li>
            <code>boolean isInterrupted = thread.isInterrupted();</code> — проверка флага прерывания у другого потока.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('50a0826a-3da4-4d8f-9d16-3123cce561d0', 'Что такое временные таблицы? Для чего они нужны?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Временные таблицы</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Временные таблицы</h1>
    <p>
        Временные таблицы – это таблицы, которые создаются для временного хранения данных в
        процессе выполнения задач. Они удобны для промежуточных выборок из нескольких таблиц
        или для хранения временных данных, которые не требуют постоянного хранения в базе данных.
    </p>

    <h2>Для чего нужны временные таблицы?</h2>
    <ul>
        <li>
            <span class="highlight">Временное хранение данных:</span> Временные таблицы используются для хранения
            промежуточных результатов, которые необходимы только в рамках текущей сессии или
            задачи.
        </li>
        <li>
            <span class="highlight">Упрощение сложных запросов:</span> Временные таблицы позволяют разбивать сложные
            запросы на более простые этапы, что упрощает их написание и отладку.
        </li>
        <li>
            <span class="highlight">Изоляция данных:</span> Временные таблицы доступны только в рамках текущей сессии
            (локальные) или всех открытых сессий (глобальные), что позволяет изолировать данные
            от других пользователей.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Временные таблицы автоматически удаляются после завершения сессии
            (локальные) или после завершения всех сессий, которые их используют (глобальные).
        </p>
    </div>

    <h2>Типы временных таблиц</h2>
    <ul>
        <li>
            <span class="highlight">Локальные временные таблицы:</span> Создаются с использованием одного знака <code>#</code>
            (например, <code>#TableName</code>). Они доступны только в рамках текущей сессии и автоматически
            удаляются при её завершении.
        </li>
        <li>
            <span class="highlight">Глобальные временные таблицы:</span> Создаются с использованием двух знаков <code>##</code>
            (например, <code>##TableName</code>). Они доступны всем открытым сессиям базы данных и
            автоматически удаляются, когда все сессии, использующие их, завершаются.
        </li>
    </ul>

    <h2>Пример создания временной таблицы</h2>
    <pre><code>
CREATE TABLE #ProductSummary
(
    ProdId INT IDENTITY,
    ProdName NVARCHAR(20),
    Price MONEY
)
    </code></pre>

    <h2>Примеры использования временных таблиц</h2>
    <ul>
        <li>
            <span class="highlight">Промежуточные вычисления:</span> Временные таблицы могут использоваться для хранения
            промежуточных результатов сложных вычислений или агрегаций.
        </li>
        <li>
            <span class="highlight">Тестирование и отладка:</span> Временные таблицы полезны для тестирования запросов
            или процедур без изменения основных данных.
        </li>
        <li>
            <span class="highlight">Изоляция данных:</span> Временные таблицы позволяют изолировать данные для конкретной
            задачи, не затрагивая основную базу данных.
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d83c6d07-cac4-4b51-9c6b-a21e0cf0b885', 'Как мапятся Enum''ы?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Маппинг Enum-ов в JPA</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Маппинг Enum-ов в JPA</h1>
    <p>
        В JPA (Java Persistence API) Enum-ы могут быть отображены в базу данных различными способами.
        Выбор способа зависит от требований приложения и предпочтений разработчика.
    </p>

    <h2>1. Использование аннотации @Enumerated</h2>
    <p>
        Аннотация <code>@Enumerated</code> позволяет указать, как Enum будет храниться в базе данных.
        Существует два основных варианта:
    </p>
    <ul>
        <li>
            <span class="highlight">@Enumerated(EnumType.STRING):</span> В базе данных будут храниться имена Enum.
            Например, если Enum имеет значения <code>RED</code>, <code>GREEN</code>, <code>BLUE</code>, то в базе данных будут
            храниться строки <code>"RED"</code>, <code>"GREEN"</code>, <code>"BLUE"</code>.
                                                                                                                                           </li>
                                                                                                                                           <li>
                                                                                                                                           <span class="highlight">@Enumerated(EnumType.ORDINAL):</span> В базе данных будут храниться порядковые
                                                                                                      номера Enum. Например, если Enum имеет значения <code>RED</code>, <code>GREEN</code>, <code>BLUE</code>, то в базе
            данных будут храниться числа <code>0</code>, <code>1</code>, <code>2</code>.
                                                                                                                                           </li>
                                                                                                                                           </ul>

                                                                                                                                           <h3>Пример использования @Enumerated</h3>
                                                                                                                                           <pre><code>
                                                                                                      import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.EnumType;
import javax.persistence.Id;

@Entity
public class Product {
    @Id
    private Long id;

    @Enumerated(EnumType.STRING)
    private Color color;

// Геттеры и сеттеры
    public Long getId() {
        return id;
}

    public void setId(Long id) {
        this.id = id;
}

    public Color getColor() {
        return color;
}

    public void setColor(Color color) {
        this.color = color;
}
}

public enum Color {
    RED, GREEN, BLUE
}
    </code></pre>

    <h2>2. Использование методов @PostLoad и @PrePersist</h2>
    <p>
        Другой способ маппинга Enum-ов – использование методов с аннотациями <code>@PostLoad</code> и
        <code>@PrePersist</code>. В этом случае в сущности создаётся вспомогательное поле, которое
        хранит значение Enum в базе данных, а само поле Enum помечается аннотацией <code>@Transient</code>.
    </p>

    <h3>Пример использования @PostLoad и @PrePersist</h3>
    <pre><code>
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.persistence.PostLoad;
import javax.persistence.PrePersist;

@Entity
public class Product {
    @Id
    private Long id;

    @Transient
    private Color color;

    private String colorValue;

    @PostLoad
    void fillTransient() {
        this.color = Color.valueOf(colorValue);
    }

    @PrePersist
    void fillPersistent() {
        this.colorValue = color.name();
    }

    // Геттеры и сеттеры
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }
}

public enum Color {
    RED, GREEN, BLUE
}
    </code></pre>

    <h2>3. Использование AttributeConverter (JPA 2.1+)</h2>
    <p>
        Начиная с JPA 2.1, можно использовать <code>AttributeConverter</code> для конвертации Enum-а в значение,
        которое будет храниться в базе данных, и обратно. Для этого нужно создать класс, реализующий
        интерфейс <code>javax.persistence.AttributeConverter</code>, и аннотировать его с помощью
        <code>@Converter</code>.
    </p>

    <h3>Пример использования AttributeConverter</h3>
    <pre><code>
import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply = true)
public class ColorConverter implements AttributeConverter<Color, String> {
    @Override
    public String convertToDatabaseColumn(Color color) {
        return color == null ? null : color.name();
}

    @Override
    public Color convertToEntityAttribute(String dbData) {
        return dbData == null ? null : Color.valueOf(dbData);
}
}

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Convert;

@Entity
public class Product {
    @Id
    private Long id;

    @Convert(converter = ColorConverter.class)
    private Color color;

// Геттеры и сеттеры
    public Long getId() {
        return id;
}

    public void setId(Long id) {
        this.id = id;
}

    public Color getColor() {
        return color;
}

    public void setColor(Color color) {
        this.color = color;
}
}

public enum Color {
    RED, GREEN, BLUE
}
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Маппинг Enum-ов в JPA может быть выполнен различными способами: с использованием аннотации
        <code>@Enumerated</code>, методов <code>@PostLoad</code> и <code>@PrePersist</code>, или с помощью
        <code>AttributeConverter</code>. Выбор способа зависит от требований приложения и предпочтений
        разработчика. Каждый из этих методов имеет свои преимущества и может быть использован для
        эффективного хранения и работы с Enum-ами в базе данных.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('83836418-3329-48ae-a9ce-d54f08b1d7ee', 'Что означает ключевое слово volatile? Почему операции над volatile  переменными не атомарны?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ключевое слово volatile в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Ключевое слово volatile в Java</h1>
    <p>
        Ключевое слово <code>volatile</code> в Java используется для обозначения переменных, которые могут быть изменены
        несколькими потоками. Оно обеспечивает видимость изменений переменной для всех потоков, но не гарантирует
        атомарность операций над ней.
    </p>

    <h2>Что означает ключевое слово volatile?</h2>
    <ul>
        <li>
            <span class="highlight">volatile:</span>
            <ul>
                <li>
                    Переменная, объявленная как <code>volatile</code>, хранится в основной памяти (хипе), а не в кэше потока.
                </li>
                <li>
                    Это гарантирует, что все потоки будут видеть актуальное значение переменной, а не устаревшее (stale) значение
                    из кэша.
                </li>
                <li>
                    Чтение и запись <code>volatile</code> переменной являются атомарными операциями.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Почему операции над volatile переменными не атомарны?</h2>
    <ul>
        <li>
            <span class="highlight">Неатомарность операций:</span>
            <ul>
                <li>
                    Хотя чтение и запись <code>volatile</code> переменной атомарны, составные операции (например, инкремент)
                    не являются атомарными.
                </li>
                <li>
                    Например, операция инкремента (<code>i++</code>) состоит из трёх шагов:
                    <ol>
                        <li>Чтение значения переменной.</li>
                        <li>Изменение значения в локальной памяти.</li>
                        <li>Запись нового значения обратно в переменную.</li>
                    </ol>
                    Эти шаги могут быть прерваны другим потоком, что приводит к потере данных.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Атомарные операции:</span>
            <ul>
                <li>
                    Атомарная операция выполняется как единая и неделимая команда процессора.
                </li>
                <li>
                    Для обеспечения атомарности составных операций следует использовать другие механизмы,
                    такие как <code>synchronized</code> блоки или классы из пакета <code>java.util.concurrent.atomic</code>.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>volatile</code> обеспечивает видимость изменений переменной для всех потоков, но не гарантирует
                    атомарность составных операций.
                </li>
                <li>
                    Для атомарных операций над переменными следует использовать специализированные классы,
                    такие как <code>AtomicInteger</code>, <code>AtomicLong</code> и другие.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования volatile</h2>
    <ul>
        <li>
            <code>volatile int counter = 0;</code> — объявление переменной как <code>volatile</code>.
        </li>
        <li>
            <code>counter++;</code> — неатомарная операция, несмотря на использование <code>volatile</code>.
        </li>
        <li>
            Для атомарного инкремента используйте <code>AtomicInteger</code>:
            <code>AtomicInteger atomicCounter = new AtomicInteger(0);</code>
            <code>atomicCounter.incrementAndGet();</code>
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d668a74f-af6b-4284-a063-c1c5dfb61af2', 'Что такое DDL? Какие операции в него входят? Рассказать про них', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DDL (Data Definition Language)</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>DDL (Data Definition Language)</h1>
    <p>
        DDL (Data Definition Language) — это набор операторов, используемых для создания, изменения и удаления
        объектов базы данных, таких как таблицы, индексы, представления и другие. DDL позволяет управлять
        структурой базы данных.
    </p>

    <h2>Основные операции DDL</h2>
    <ul>
        <li>
            <span class="highlight">CREATE:</span>
            <ul>
                <li>
                    Создает объекты базы данных, такие как таблицы, базы данных, представления, индексы и
                    пользователи.
                </li>
                <li>
                    Пример: <code>CREATE TABLE users (id INT PRIMARY KEY, name VARCHAR(50));</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">ALTER:</span>
            <ul>
                <li>
                    Изменяет структуру существующих объектов базы данных, например, добавляет или удаляет
                    столбцы в таблице.
                </li>
                <li>
                    Пример: <code>ALTER TABLE users ADD COLUMN email VARCHAR(100);</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">DROP:</span>
            <ul>
                <li>
                    Удаляет объекты базы данных, такие как таблицы, базы данных или индексы.
                </li>
                <li>
                    Пример: <code>DROP TABLE users;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">TRUNCATE:</span>
            <ul>
                <li>
                    Удаляет все данные из таблицы, но сохраняет её структуру. В отличие от <code>DELETE</code>,
                    <code>TRUNCATE</code> не может быть отменён с помощью <code>ROLLBACK</code>.
                </li>
                <li>
                    Если в таблице есть внешние ключи (<code>FOREIGN KEY</code>), выполнение <code>TRUNCATE</code> может быть
                    невозможно.
                </li>
                <li>
                    Пример: <code>TRUNCATE TABLE users;</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Операции DDL изменяют структуру базы данных, поэтому их выполнение требует осторожности.
                </li>
                <li>
                    <code>TRUNCATE</code> работает быстрее, чем <code>DELETE</code>, так как он не записывает изменения в журнал
                    транзакций, но его нельзя отменить.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования DDL</h2>
    <ul>
        <li>
            <span class="highlight">Создание таблицы:</span>
            <pre><code>CREATE TABLE employees (
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       id INT PRIMARY KEY,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       name VARCHAR(100),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       salary DECIMAL(10, 2)
                       );</code></pre>
        </li>
        <li>
            <span class="highlight">Изменение таблицы:</span>
            <pre><code>ALTER TABLE employees ADD COLUMN department VARCHAR(50);</code></pre>
        </li>
        <li>
            <span class="highlight">Удаление таблицы:</span>
            <pre><code>DROP TABLE employees;</code></pre>
        </li>
        <li>
            <span class="highlight">Очистка таблицы:</span>
            <pre><code>TRUNCATE TABLE employees;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('888b01ee-2405-44ef-a5b4-a0e433ee669c', ' Для Enum есть специальный класс java.util.EnumSet. Зачем? Чем авторов не  устраивал HashSet или TreeSet?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Особенности EnumSet</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Особенности EnumSet</h1>
    <p>
        <code>EnumSet</code> – это специализированная реализация интерфейса <code>Set</code>, предназначенная для работы с перечислениями (<code>Enum</code>). Она обеспечивает высокую производительность и компактность хранения данных.
    </p>

    <h2>Почему EnumSet?</h2>
    <ul>
        <li>
            <span class="highlight">Компактность:</span>
            <ul>
                <li><code>EnumSet</code> использует битовый вектор (bit vector) для хранения элементов, что делает его очень компактным.</li>
                <li>Это позволяет эффективно хранить наборы значений перечислений.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Производительность:</span>
            <ul>
                <li>Все основные операции (<code>add</code>, <code>remove</code>, <code>contains</code>) выполняются за <code>O(1)</code>.</li>
                <li>Пакетные операции, такие как <code>containsAll</code> и <code>retainAll</code>, выполняются быстрее, чем в <code>HashSet</code> или <code>TreeSet</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Порядок элементов:</span>
            <ul>
                <li>Элементы в <code>EnumSet</code> перебираются в порядке объявления в перечислении.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Удобство использования:</span>
            <ul>
                <li><code>EnumSet</code> предоставляет статические методы для удобного создания экземпляров, такие как <code>EnumSet.of()</code> и <code>EnumSet.allOf()</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования EnumSet</h2>
    <pre>
<code>
enum Day {
    MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
}

EnumSet&lt;Day&gt; weekend = EnumSet.of(Day.SATURDAY, Day.SUNDAY);
System.out.println(weekend); // Выведет [SATURDAY, SUNDAY]

EnumSet&lt;Day&gt; allDays = EnumSet.allOf(Day.class);
System.out.println(allDays); // Выведет все дни недели в порядке объявления
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li><code>EnumSet</code> используется для хранения набора значений перечисления <code>Day</code>.</li>
        <li>Элементы хранятся компактно и перебираются в порядке объявления в перечислении.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>EnumSet</code> – это оптимальный выбор для работы с наборами значений перечислений. Он обеспечивает высокую производительность, компактность и удобство использования.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5469321a-d157-4f0c-a361-a39aecb96f71', 'Что такое монитор? Как монитор реализован в java?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Монитор в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Монитор в Java</h1>
    <p>
        Монитор — это механизм синхронизации потоков, который обеспечивает доступ к неразделяемым ресурсам.
        В Java монитор реализован с помощью ключевого слова <code>synchronized</code>.
    </p>

    <h2>Что такое монитор?</h2>
    <ul>
        <li>
            <span class="highlight">Монитор:</span> Это механизм, который позволяет управлять доступом нескольких потоков
            к общим ресурсам. Он гарантирует, что только один поток может выполнять определённый
            блок кода или метод в любой момент времени.
        </li>
        <li>
            <span class="highlight">Mutex:</span> Частью монитора является <code>mutex</code> (взаимное исключение), который встроен
            в класс <code>Object</code> и имеется у каждого объекта. <code>Mutex</code> можно представить как идентификатор
            (<code>id</code>), который указывает, захвачен ли ресурс. Если <code>id</code> равен 0, ресурс свободен; если не 0,
            ресурс занят.
        </li>
    </ul>

    <h2>Как монитор реализован в Java?</h2>
    <ul>
        <li>
            <span class="highlight">Ключевое слово synchronized:</span> В Java монитор реализован с помощью ключевого слова
            <code>synchronized</code>. Оно может использоваться для синхронизации методов или блоков кода,
            обеспечивая безопасный доступ к общим ресурсам.
        </li>
        <li>
            <span class="highlight">Очередь ожидания:</span> Если поток пытается получить доступ к ресурсу, который уже
            захвачен другим потоком, он встаёт в очередь ожидания и ждёт освобождения ресурса.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Монитор в Java обеспечивает безопасность потоков, предотвращая состояние гонки
            (race condition) и гарантируя, что только один поток может выполнять синхронизированный
            блок кода в определённый момент времени.
        </p>
    </div>

    <h2>Пример использования монитора</h2>
    <ul>
        <li>
            <code>synchronized методы:</code> Метод, объявленный с ключевым словом <code>synchronized</code>, может быть
            выполнен только одним потоком одновременно.
        </li>
        <li>
            <code>synchronized блоки:</code> Блок кода, помеченный как <code>synchronized</code>, позволяет синхронизировать
            доступ к определённому объекту или ресурсу.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('84657f95-f526-4487-9254-183b465610ef', 'Чем WHERE отличается от HAVING (ответа про то, что используются в  разных частях запроса недостаточно)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между WHERE и HAVING в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Разница между WHERE и HAVING в SQL</h1>
    <p>
        В SQL ключевые слова <code>WHERE</code> и <code>HAVING</code> используются для фильтрации данных, но они имеют
        разные области применения и особенности использования.
    </p>

    <h2>Основные отличия WHERE и HAVING</h2>
    <ul>
        <li>
            <span class="highlight">WHERE:</span>
            <ul>
                <li>
                    Используется для фильтрации строк до группировки (до <code>GROUP BY</code>).
                </li>
                <li>
                    Не может использоваться с агрегатными функциями (например, <code>SUM</code>, <code>COUNT</code>, <code>AVG</code>).
                </li>
                <li>
                    Можно использовать псевдонимы (алиасы) для столбцов.
                </li>
                <li>
                    Пример: <code>SELECT name FROM employees WHERE salary > 50000;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">HAVING:</span>
            <ul>
                <li>
                    Используется для фильтрации данных после группировки (после <code>GROUP BY</code>).
                </li>
                <li>
                    Может использоваться с агрегатными функциями.
                </li>
                <li>
                    Псевдонимы можно использовать только для результатов агрегатных функций.
                </li>
                <li>
                    Пример: <code>SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department HAVING AVG(salary) > 50000;</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>WHERE</code> фильтрует строки до группировки, а <code>HAVING</code> — после группировки.
                </li>
                <li>
                    <code>HAVING</code> может использоваться без <code>GROUP BY</code>, но в этом случае агрегатные функции
                    применяются ко всему набору строк, и результат будет состоять из одной строки.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования WHERE и HAVING</h2>
    <ul>
        <li>
            <span class="highlight">WHERE:</span>
            <pre><code>SELECT name, salary FROM employees WHERE salary > 50000;</code></pre>
        </li>
        <li>
            <span class="highlight">HAVING:</span>
            <pre><code>SELECT department, AVG(salary) AS avg_salary
                       FROM employees
                       GROUP BY department
                       HAVING AVG(salary) > 50000;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e11f92b2-bcf8-4c9f-a401-66bc23f6214d', 'Расскажите про операторы IN, BETWEEN, LIKE', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Операторы IN, BETWEEN, LIKE в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Операторы IN, BETWEEN, LIKE в SQL</h1>
    <p>
        В SQL операторы <code>IN</code>, <code>BETWEEN</code> и <code>LIKE</code> используются для фильтрации данных в запросах. Каждый из
        этих операторов имеет свои особенности и применяется в зависимости от задачи.
    </p>

    <h2>Оператор IN</h2>
    <ul>
        <li>
            <span class="highlight">Определение набора значений:</span>
            <ul>
                <li>
                    Оператор <code>IN</code> позволяет указать набор значений, которые должны быть проверены в столбце.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Persons WHERE name IN (\'Ivan\', \'Petr\', \'Pavel\');</code>
                </li>
            </ul>
        </li>
    </ul>

    <h2>Оператор BETWEEN</h2>
    <ul>
        <li>
            <span class="highlight">Определение диапазона значений:</span>
            <ul>
                <li>
                    Оператор <code>BETWEEN</code> используется для проверки, находится ли значение столбца в
                    определённом диапазоне.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Persons WHERE age BETWEEN 20 AND 25;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Чувствительность к порядку:</span>
            <ul>
                <li>
                    <code>BETWEEN</code> чувствителен к порядку значений: первое значение должно быть меньше или
                    равно второму.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Оператор LIKE</h2>
    <ul>
        <li>
            <span class="highlight">Поиск подстрок:</span>
            <ul>
                <li>
                    Оператор <code>LIKE</code> используется для поиска подстрок в текстовых полях (<code>CHAR</code>, <code>VARCHAR</code>).
                </li>
                <li>
                    Пример: <code>SELECT * FROM UNIVERSITY WHERE NAME LIKE \'%o\';</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Символы шаблонизации:</span>
            <ul>
                <li>
                    <strong>_ (подчёркивание):</strong> Заменяет любой одиночный символ. Например, <code>\'b_t\'</code> соответствует
                    <code>\'bat\'</code> или <code>\'bit\'</code>, но не <code>\'brat\'</code>.
                </li>
                <li>
                    <strong>% (процент):</strong> Заменяет последовательность любого числа символов. Например,
                    <code>\'%p%t\'</code> соответствует <code>\'put\'</code>, <code>\'posit\'</code> или <code>\'opt\'</code>, но не <code>\'spite\'</code>.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>IN</code> удобен для проверки значения столбца на соответствие одному из нескольких значений.
                </li>
                <li>
                    <code>BETWEEN</code> используется для проверки диапазона значений и чувствителен к порядку.
                </li>
                <li>
                    <code>LIKE</code> позволяет искать подстроки с использованием символов шаблонизации.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования</h2>
    <ul>
        <li>
            <span class="highlight">IN:</span>
            <pre><code>SELECT * FROM Persons WHERE name IN (\'Ivan\', \'Petr\', \'Pavel\');</code></pre>
        </li>
        <li>
            <span class="highlight">BETWEEN:</span>
            <pre><code>SELECT * FROM Persons WHERE age BETWEEN 20 AND 25;</code></pre>
        </li>
        <li>
            <span class="highlight">LIKE:</span>
            <pre><code>SELECT * FROM UNIVERSITY WHERE NAME LIKE \'%o\';</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('98905650-f740-447e-9aae-069d45ae7fe7', 'Какие отличия между PRIMARY и UNIQUE?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отличия между PRIMARY и UNIQUE в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Отличия между PRIMARY и UNIQUE в SQL</h1>
    <p>
        В SQL ограничения <code>PRIMARY KEY</code> и <code>UNIQUE</code> используются для обеспечения уникальности данных в
        столбцах, но они имеют несколько ключевых отличий.
    </p>

    <h2>Основные отличия</h2>
    <ul>
        <li>
            <span class="highlight">Индексы:</span>
            <ul>
                <li>
                    <code>PRIMARY KEY</code> по умолчанию создаёт кластерный индекс на столбце.
                </li>
                <li>
                    <code>UNIQUE</code> создаёт некластерный индекс на столбце.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">NULL значения:</span>
            <ul>
                <li>
                    <code>PRIMARY KEY</code> не разрешает <code>NULL</code> значений в столбце.
                </li>
                <li>
                    <code>UNIQUE</code> разрешает одно (или несколько, в зависимости от СУБД) <code>NULL</code> значение.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Количество ограничений:</span>
            <ul>
                <li>
                    В таблице может быть только один <code>PRIMARY KEY</code>.
                </li>
                <li>
                    В таблице может быть несколько ограничений <code>UNIQUE</code>.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>PRIMARY KEY</code> используется для уникальной идентификации каждой строки в таблице и не
                    допускает <code>NULL</code> значений.
                </li>
                <li>
                    <code>UNIQUE</code> обеспечивает уникальность значений в столбце, но может допускать одно или
                    несколько <code>NULL</code> значений.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования</h2>
    <ul>
        <li>
            <span class="highlight">PRIMARY KEY:</span>
            <pre><code>CREATE TABLE employees (
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    id INT PRIMARY KEY,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    name VARCHAR(50)
                       );</code></pre>
        </li>
        <li>
            <span class="highlight">UNIQUE:</span>
            <pre><code>CREATE TABLE employees (
                                                                           id INT UNIQUE,
                                                                           email VARCHAR(100) UNIQUE
                       );</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9024615f-6cb2-4029-bc2d-3da056ea9181', 'Comparator vs. Comparable', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comparator vs. Comparable</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Comparator vs. Comparable</h1>
    <p>
        Интерфейсы <code>Comparable</code> и <code>Comparator</code> используются для сравнения объектов в Java, но они имеют разные цели и применения. Вот основные различия и причины использования каждого из них.
    </p>

    <h2>Comparable</h2>
    <ul>
        <li>
            <span class="highlight">Основное назначение:</span>
            <ul>
                <li>Интерфейс <code>Comparable</code> используется для определения естественного порядка объектов.</li>
                <li>Он реализуется самим классом, объекты которого нужно сравнивать.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <ul>
                <li>Если класс реализует <code>Comparable</code>, это означает, что у него есть основной способ сравнения объектов.</li>
                <li>Пример:
                    <pre>
<code>
public class Person implements Comparable&lt;Person&gt; {
    private String name;
    private int age;

    @Override
public int compareTo(Person other) {
        return this.name.compareTo(other.name);
}
}
</code>
                    </pre>
                </li>
            </ul>
        </li>
    </ul>

    <h2>Comparator</h2>
    <ul>
        <li>
            <span class="highlight">Основное назначение:</span>
            <ul>
                <li>Интерфейс <code>Comparator</code> используется для определения альтернативных способов сравнения объектов.</li>
                <li>Он реализуется отдельным классом или лямбда-выражением.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Причины использования:</span>
            <ul>
                <li>Невозможность изменить исходный код класса (например, если класс находится в сторонней библиотеке).</li>
                <li>Необходимость избежать добавления дополнительного кода в классы домена.</li>
                <li>Возможность определения нескольких стратегий сравнения.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример:</span>
            <ul>
                <li>Пример использования <code>Comparator</code> для сортировки по возрасту:
                    <pre>
<code>
Comparator&lt;Person&gt; ageComparator = new Comparator&lt;Person&gt;() {
    @Override
    public int compare(Person p1, Person p2) {
        return Integer.compare(p1.getAge(), p2.getAge());
}
};
</code>
                    </pre>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>Comparable</code> используется для определения естественного порядка объектов, а <code>Comparator</code> – для создания альтернативных или дополнительных способов сравнения. Выбор между ними зависит от требований к гибкости и возможности изменения исходного кода.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('62b8c6bc-f695-49cf-8aff-f25f22f4eb87', 'Какова оценка временной сложности операций над элементами из HashMap?  Гарантирует ли HashMap указанную сложность выборки элемента?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Временная сложность операций в HashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Временная сложность операций в HashMap</h1>
    <p>
        <code>HashMap</code> в Java обеспечивает высокую производительность для операций добавления, поиска и удаления элементов. Однако временная сложность этих операций зависит от качества хеш-функции и распределения элементов по корзинам.
    </p>

    <h2>Оценка временной сложности</h2>
    <ul>
        <li>
            <span class="highlight">Общий случай:</span>
            <ul>
                <li>Операции добавления (<code>put()</code>), поиска (<code>get()</code>) и удаления (<code>remove()</code>) занимают константное время <code>O(1)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Худший случай:</span>
            <ul>
                <li>Если хеш-функция распределяет элементы неравномерно, временная сложность может ухудшиться.</li>
                <li>В случае, если все элементы попадают в одну корзину, <code>HashMap</code> превращается в связный список со сложностью <code>O(n)</code>.</li>
                <li>В Java 8 и выше, если длина цепочки в корзине превышает определённый порог, она преобразуется в сбалансированное дерево, что улучшает сложность до <code>O(log(n))</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Гарантии сложности</h2>
    <ul>
        <li>
            <span class="highlight">Нет гарантии:</span>
            <ul>
                <li>Сложность <code>O(1)</code> не гарантируется, так как она зависит от качества хеш-функции и распределения элементов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Факторы, влияющие на сложность:</span>
            <ul>
                <li>Качество хеш-функции: чем равномернее распределение элементов по корзинам, тем ближе сложность к <code>O(1)</code>.</li>
                <li>Количество элементов: при большом количестве элементов вероятность коллизий увеличивается.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
Map&lt;String, Integer&gt; map = new HashMap&lt;&gt;();
map.put("A", 1); // O(1)
map.put("B", 2); // O(1)

int value = map.get("A"); // O(1)
map.remove("B"); // O(1)
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> В общем случае операции в <code>HashMap</code> выполняются за константное время <code>O(1)</code>, но в худшем случае (при плохой хеш-функции) сложность может ухудшиться до <code>O(n)</code> или <code>O(log(n))</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('75ef3c57-faa7-4ac8-98d5-92c889003592', 'Как перебрать все пары «ключ-значение» в Map?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Перебор всех пар «ключ-значение» в Map</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Перебор всех пар «ключ-значение» в Map</h1>
    <p>
        Для перебора всех пар «ключ-значение» в <code>Map</code> можно использовать метод <code>entrySet()</code>, который возвращает множество (<code>Set</code>) объектов <code>Map.Entry&lt;K, V&gt;</code>. Это позволяет легко итерироваться по всем парам коллекции.
    </p>

    <h2>Использование entrySet()</h2>
    <ul>
        <li>
            <span class="highlight">Метод entrySet():</span>
            <ul>
                <li>Возвращает множество пар «ключ-значение» типа <code>Set&lt;Map.Entry&lt;K, V&gt;&gt;</code>, где <code>K</code> – тип ключа, а <code>V</code> – тип значения.</li>
                <li>Каждый элемент множества представляет собой объект <code>Map.Entry</code>, который содержит ключ и значение.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример перебора:</span>
            <ul>
                <li>Можно использовать цикл <code>for-each</code> или итератор для перебора пар.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
Map&lt;String, Integer&gt; map = new HashMap&lt;&gt;();
map.put("A", 1);
map.put("B", 2);
map.put("C", 3);

// Перебор пар с помощью entrySet()
for (Map.Entry&lt;String, Integer&gt; entry : map.entrySet()) {
    System.out.println("Ключ: " + entry.getKey() + ", Значение: " + entry.getValue());
}
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Метод <code>entrySet()</code> возвращает множество пар <code>[A=1, B=2, C=3]</code>.</li>
        <li>Цикл <code>for-each</code> используется для перебора и вывода всех пар «ключ-значение».</li>
    </ul>

    <h2>Использование итератора</h2>
    <pre>
<code>
Iterator&lt;Map.Entry&lt;String, Integer&gt;&gt; iterator = map.entrySet().iterator();
while (iterator.hasNext()) {
    Map.Entry&lt;String, Integer&gt; entry = iterator.next();
    System.out.println("Ключ: " + entry.getKey() + ", Значение: " + entry.getValue());
}
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Метод <code>entrySet()</code> предоставляет удобный способ перебора всех пар «ключ-значение» в <code>Map</code>. Это особенно полезно, если нужно одновременно работать с ключами и значениями.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6188926f-afa7-4a93-9272-05586b89a6ab', 'Сравните Iterator и ListIterator', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сравнение Iterator и ListIterator</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Сравнение Iterator и ListIterator</h1>
    <p>
        Интерфейсы <code>Iterator</code> и <code>ListIterator</code> используются для перебора элементов коллекций, но они имеют существенные различия в функциональности и применении.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Наследование:</span>
            <ul>
                <li><code>ListIterator</code> расширяет интерфейс <code>Iterator</code>, добавляя новые методы.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Применение:</span>
            <ul>
                <li><code>Iterator</code> может использоваться для перебора любых коллекций.</li>
                <li><code>ListIterator</code> может использоваться только для перебора коллекций, реализующих интерфейс <code>List</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Направление перебора:</span>
            <ul>
                <li><code>Iterator</code> позволяет перебирать элементы только в прямом направлении с помощью метода <code>next()</code>.</li>
                <li><code>ListIterator</code> поддерживает перебор элементов в обоих направлениях с помощью методов <code>next()</code> и <code>previous()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Текущая позиция:</span>
            <ul>
                <li><code>ListIterator</code> не указывает на конкретный элемент. Его текущая позиция находится между элементами, которые возвращают методы <code>previous()</code> и <code>next()</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Модификация коллекции:</span>
            <ul>
                <li><code>ListIterator</code> позволяет добавлять (<code>add()</code>) и заменять (<code>set()</code>) элементы в списке.</li>
                <li><code>Iterator</code> поддерживает только удаление элементов с помощью метода <code>remove()</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования Iterator</h2>
    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

Iterator&lt;String&gt; iterator = list.iterator();
while (iterator.hasNext()) {
    String element = iterator.next();
    System.out.println(element);
}
</code>
    </pre>

    <h2>Пример использования ListIterator</h2>
    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

ListIterator&lt;String&gt; listIterator = list.listIterator();
while (listIterator.hasNext()) {
    String element = listIterator.next();
    System.out.println(element);
}
while (listIterator.hasPrevious()) {
    String element = listIterator.previous();
    System.out.println(element);
}
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>ListIterator</code> предоставляет больше функциональности, чем <code>Iterator</code>, включая двунаправленный перебор и модификацию списка. Однако он может использоваться только с коллекциями, реализующими интерфейс <code>List</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('de8a976c-27c5-4c63-b278-7735a18e9854', 'Что такое представления (VIEW)? Для чего они нужны?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Представления (VIEW)</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Представления (VIEW)</h1>
    <p>
        Представление (VIEW) – это виртуальная таблица, представляющая данные одной или более
        таблиц альтернативным образом. В действительности представление – это результат
        выполнения оператора <code>SELECT</code>, который хранится в структуре памяти, напоминающей SQL-таблицу.
                                                                                                                                            Представления не содержат собственных данных, но могут использоваться в запросах и
                                                                                                                                            операторах DML так же, как и основные таблицы.
                                                                                                                                                </p>

                                                                                                                                                <h2>Для чего нужны представления?</h2>
                                                                                                                                                <ul>
                                                                                                                                                <li>
                                                                                                                                                <span class="highlight">Упрощение работы с данными:</span> Представления позволяют скрыть сложность запросов,
                                                                                                                                            предоставляя пользователю простой интерфейс для работы с данными.
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                <span class="highlight">Ограничение доступа к данным:</span> Представления могут предоставлять доступ только к
                                                                                                                                            определённым столбцам или строкам таблицы, что позволяет защитить конфиденциальные
                                                                                                                                            данные.
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                <span class="highlight">Агрегация и преобразование данных:</span> Представления могут объединять данные из
                                                                                                                                            нескольких таблиц, выполнять вычисления или фильтрацию, предоставляя пользователю
                                                                                                                                            готовый результат.
                                                                                                                                                </li>
                                                                                                                                                </ul>

                                                                                                                                                <div class="note">
                                                                                                                                                <p>
                                                                                                                                                <span class="highlight">Важно:</span> Представления не хранят данные физически. Они динамически извлекают данные
                                                                                                                                            из базовых таблиц при каждом обращении к ним.
                                                                                                                                                </p>
                                                                                                                                                </div>

                                                                                                                                                <h2>Особенности представлений</h2>
                                                                                                                                                <ul>
                                                                                                                                                <li>
                                                                                                                                                <span class="highlight">Виртуальность:</span> Представления не содержат собственных данных, а лишь представляют
                                                                                                                                            данные из других таблиц или представлений.
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                <span class="highlight">Вложенность:</span> Представления могут основываться на других представлениях, что
                                                                                                                                            позволяет создавать до 32 уровней вложенности.
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                <span class="highlight">Гибкость:</span> Представления могут включать фильтры, сортировки, агрегации и другие
                                                                                                                                            операции, что делает их мощным инструментом для работы с данными.
                                                                                                                                                </li>
                                                                                                                                                </ul>

                                                                                                                                                <h2>Примеры использования представлений</h2>
                                                                                                                                                <ul>
                                                                                                                                                <li>
                                                                                                                                                <span class="highlight">Упрощение сложных запросов:</span> Представления могут скрывать сложные SQL-запросы,
                                                                                                                                            предоставляя пользователю простой интерфейс для работы с данными.
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                <span class="highlight">Ограничение доступа:</span> Представления могут показывать только определённые столбцы
                                                                                                                                            или строки таблицы, что полезно для защиты конфиденциальной информации.
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                <span class="highlight">Агрегация данных:</span> Представления могут объединять данные из нескольких таблиц,
                                                                                                                                            выполнять вычисления и предоставлять готовый результат.
                                                                                                                                                </li>
                                                                                                                                                </ul>
                                                                                                                                                </body>
                                                                                                                                                </html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2f422c26-f819-4ac7-8517-d2d59267f1cf', 'Что такое EXISTS?', e'<!DOCTYPE html>
                                                                                                                                                <html lang="ru">
                                                                                                                                                <head>
                                                                                                                                                <meta charset="UTF-8">
                                                                                                                                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                                                                                                                                <title>Оператор EXISTS в SQL</title>
                                                                                                                                                <link rel="stylesheet" href="/css/text.css">
                                                                                                                                                </head>
                                                                                                                                                <body>
                                                                                                                                                <h1>Оператор EXISTS в SQL</h1>
                                                                                                                                                <p>
                                                                                                                                            Оператор <code>EXISTS</code> в SQL используется для проверки наличия строк, возвращаемых подзапросом. Он
                                                                                                                                            возвращает <code>TRUE</code>, если подзапрос возвращает хотя бы одну строку, и <code>FALSE</code>, если подзапрос не
                                                                                                                                            возвращает ни одной строки.
                                                                                                                                                </p>

                                                                                                                                                <h2>Как работает EXISTS?</h2>
                                                                                                                                                <ul>
                                                                                                                                                <li>
                                                                                                                                                <span class="highlight">Проверка подзапроса:</span>
                                                                                                                                                <ul>
                                                                                                                                                <li>
                                                                                                                                                <code>EXISTS</code> принимает подзапрос в качестве аргумента и возвращает <code>TRUE</code>, если подзапрос
                                                                                                                                            возвращает хотя бы одну строку.
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                            Пример: <code>SELECT * FROM employees WHERE EXISTS (SELECT 1 FROM departments WHERE employees.department_id = departments.id);</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование в условиях:</span>
            <ul>
                <li>
                    <code>EXISTS</code> часто используется в условиях <code>WHERE</code> для фильтрации данных на основе
                    результатов подзапроса.
                </li>
                <li>
                    Пример: <code>SELECT * FROM employees WHERE EXISTS (SELECT 1 FROM departments WHERE employees.department_id = departments.id AND departments.name = \'Sales\');</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>EXISTS</code> возвращает <code>TRUE</code> или <code>FALSE</code> в зависимости от того, возвращает ли
                    подзапрос хотя бы одну строку.
                </li>
                <li>
                    Подзапрос внутри <code>EXISTS</code> может быть любым допустимым SQL-запросом.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования EXISTS</h2>
    <ul>
        <li>
            <span class="highlight">Проверка наличия данных:</span>
            <pre><code>SELECT * FROM employees
                       WHERE EXISTS (SELECT 1 FROM departments WHERE employees.department_id = departments.id);</code></pre>
        </li>
        <li>
            <span class="highlight">Фильтрация по условию:</span>
            <pre><code>SELECT * FROM employees
                       WHERE EXISTS (SELECT 1 FROM departments WHERE employees.department_id = departments.id AND departments.name = \'Sales\');</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8dd44e12-b96a-4681-9329-802757933e9f', 'В чем разница между HashMap и WeakHashMap? Для чего используется  WeakHashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между HashMap и WeakHashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Разница между HashMap и WeakHashMap</h1>
    <p>
        <code>HashMap</code> и <code>WeakHashMap</code> – это две реализации интерфейса <code>Map</code>, но они имеют существенные различия в способе хранения ключей и управлении памятью. Рассмотрим их основные отличия и назначение <code>WeakHashMap</code>.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Типы ссылок:</span>
            <ul>
                <li>В <code>HashMap</code> ключи хранятся как сильные ссылки (<code>strong reference</code>).</li>
                <li>В <code>WeakHashMap</code> ключи хранятся как слабые ссылки (<code>WeakReference</code>).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Управление памятью:</span>
            <ul>
                <li>В <code>HashMap</code> объекты-ключи не удаляются, пока они находятся в коллекции.</li>
                <li>В <code>WeakHashMap</code> объекты-ключи удаляются сборщиком мусора, если на них больше нет сильных ссылок.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование:</span>
            <ul>
                <li><code>HashMap</code> используется для общего хранения пар «ключ-значение».</li>
                <li><code>WeakHashMap</code> используется в случаях, когда нужно автоматически удалять записи при удалении ключей сборщиком мусора.</li>
            </ul>
        </li>
    </ul>

    <h2>Назначение WeakHashMap</h2>
    <ul>
        <li>
            <span class="highlight">Расширение объектов:</span>
            <ul>
                <li><code>WeakHashMap</code> может использоваться для добавления дополнительной информации к объектам, не изменяя их класс.</li>
                <li>Например, можно хранить метаданные или кэшированные данные для объектов, которые могут быть удалены сборщиком мусора.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Автоматическое удаление:</span>
            <ul>
                <li>Когда объект-ключ больше не используется (на него нет сильных ссылок), он удаляется из <code>WeakHashMap</code>.</li>
                <li>Это позволяет избежать утечек памяти.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
Map&lt;Object, String&gt; weakHashMap = new WeakHashMap&lt;&gt;();
Object key = new Object();
weakHashMap.put(key, "Value");

System.out.println(weakHashMap.get(key)); // Выведет "Value"

key = null; // Удаляем сильную ссылку на ключ
System.gc(); // Вызов сборщика мусора

System.out.println(weakHashMap.isEmpty()); // Выведет true, запись удалена
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Ключ <code>key</code> хранится в <code>WeakHashMap</code> как слабая ссылка.</li>
        <li>После удаления сильной ссылки на ключ (<code>key = null</code>) и вызова сборщика мусора, запись удаляется из <code>WeakHashMap</code>.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>WeakHashMap</code> полезен в случаях, когда нужно автоматически удалять записи при удалении ключей сборщиком мусора. Это позволяет избежать утечек памяти и упрощает управление временными данными.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('31735c12-3910-41f5-800d-6594661491d2', ' Что такое встраиваемый (embeddable) класс? Какие требования JPA  устанавливает к встраиваемым (embeddable) классам?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Встраиваемые (Embeddable) классы в JPA</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Встраиваемые (Embeddable) классы в JPA</h1>
    <p>
        <span class="highlight">Встраиваемый (Embeddable) класс</span> – это класс, который не используется самостоятельно, а
        является частью одного или нескольких Entity-классов. Он позволяет выносить общие атрибуты и
        логику в отдельный класс, который затем может быть встроен в Entity-классы. Это упрощает
        структуру кода и повышает его повторное использование.
    </p>

    <h2>Основные характеристики Embeddable-классов</h2>
    <p>
        Встраиваемые классы имеют следующие особенности:
    </p>
    <ul>
        <li>
            <span class="highlight">Не самостоятельное использование:</span> Embeddable-класс не может быть использован
            самостоятельно как Entity. Он всегда является частью Entity-класса.
        </li>
        <li>
            <span class="highlight">Отсутствие первичного ключа:</span> В отличие от Entity-классов, Embeddable-классы не
            обязаны содержать первичный ключ.
        </li>
        <li>
            <span class="highlight">Аннотация @Embeddable:</span> Класс должен быть помечен аннотацией <code>@Embeddable</code> или
            описан в XML-файле конфигурации JPA.
        </li>
        <li>
            <span class="highlight">Использование в Entity:</span> Поле Embeddable-класса в Entity-классе должно быть
            помечено аннотацией <code>@Embedded</code>.
        </li>
        <li>
            <span class="highlight">Вложенность:</span> Embeddable-класс может содержать другие встраиваемые классы.
        </li>
        <li>
            <span class="highlight">Связи с Entity:</span> Embeddable-класс может содержать связи с другими Entity или
            коллекциями Entity, если он не используется как первичный ключ или ключ в Map.
        </li>
    </ul>

    <h2>Требования JPA к Embeddable-классам</h2>
    <p>
        JPA устанавливает следующие требования к Embeddable-классам:
    </p>
    <ul>
        <li>
            <span class="highlight">Аннотация @Embeddable:</span> Класс должен быть помечен аннотацией <code>@Embeddable</code>.
        </li>
        <li>
            <span class="highlight">Конструктор без аргументов:</span> Класс должен иметь <code>public</code> или <code>protected</code>
            конструктор без аргументов.
        </li>
        <li>
            <span class="highlight">Не финальный класс:</span> Класс не должен быть объявлен как <code>final</code>.
        </li>
        <li>
            <span class="highlight">Поля и методы:</span> Поля и методы класса должны быть доступны через геттеры и сеттеры.
        </li>
        <li>
            <span class="highlight">Отсутствие первичного ключа:</span> Класс не должен содержать первичный ключ.
        </li>
    </ul>

    <h2>Пример Embeddable-класса</h2>
    <p>
        Рассмотрим пример Embeddable-класса и его использование в Entity-классе:
    </p>
    <pre><code>
import javax.persistence.Embeddable;

// Встраиваемый класс
@Embeddable
public class Address {
    private String street;
    private String city;
    private String zipCode;

public Address() {}

    public Address(String street, String city, String zipCode) {
        this.street = street;
        this.city = city;
        this.zipCode = zipCode;
}

    // Геттеры и сеттеры
    public String getStreet() {
        return street;
}

    public void setStreet(String street) {
        this.street = street;
}

    public String getCity() {
        return city;
}

    public void setCity(String city) {
        this.city = city;
}

    public String getZipCode() {
        return zipCode;
}

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
}
}

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Embedded;

// Entity-класс, использующий Embeddable-класс
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @Embedded
private Address address;

public User() {}

    public User(String name, Address address) {
        this.name = name;
        this.address = address;
}

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

    public Address getAddress() {
        return address;
}

    public void setAddress(Address address) {
        this.address = address;
}
}
    </code></pre>

    <h2>Использование Embeddable-класса</h2>
    <p>
        В этом примере класс <code>Address</code> является Embeddable-классом и содержит информацию об
        адресе. Класс <code>User</code> использует этот класс как часть своей структуры, что позволяет
        вынести общие атрибуты в отдельный класс.
    </p>

    <h2>Заключение</h2>
    <p>
        Встраиваемые (Embeddable) классы в JPA позволяют выносить общие атрибуты и логику в отдельные
        классы, которые могут быть использованы в нескольких Entity-классах. Это упрощает структуру
        кода и повышает его повторное использование. Однако важно соблюдать требования JPA к
        Embeddable-классам, чтобы обеспечить корректную работу с данными.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9ae1c365-02de-455d-913b-d2202c445220', 'Расскажи про  EXPLAIN(SQL)', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EXPLAIN в MySQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>EXPLAIN в MySQL</h1>
    <p>
        Когда выполняется SQL-запрос, оптимизатор запросов MySQL пытается найти оптимальный план
        выполнения этого запроса. Чтобы понять, как MySQL будет выполнять запрос, можно использовать
        ключевое слово <code>EXPLAIN</code>. Оно позволяет увидеть план выполнения запроса и оценить его
        эффективность.
    </p>

    <h2>Использование EXPLAIN</h2>
    <p>
        Для анализа запроса достаточно добавить ключевое слово <code>EXPLAIN</code> перед оператором
        <code>SELECT</code>. Например:
                      </p>
                      <pre><code>
                  EXPLAIN SELECT * FROM categories;
</code></pre>
    <p>
        Результат выполнения этого запроса покажет, как MySQL планирует выполнить запрос, включая
        информацию о том, какие индексы будут использоваться, сколько строк будет обработано и какие
        таблицы будут задействованы.
    </p>

    <h2>Дополнительная информация с EXTENDED</h2>
    <p>
        Для получения более подробной информации о плане выполнения запроса можно использовать
        ключевое слово <code>EXTENDED</code> вместе с <code>EXPLAIN</code>. Например:
    </p>
    <pre><code>
EXPLAIN EXTENDED SELECT City.Name FROM City;
</code></pre>
    <p>
        После выполнения этого запроса можно использовать команду <code>SHOW WARNINGS</code>, чтобы
        увидеть дополнительную информацию, такую как переписанный запрос или предупреждения
        оптимизатора.
    </p>
    <pre><code>
SHOW WARNINGS;
</code></pre>

    <h2>Основные поля, возвращаемые EXPLAIN</h2>
    <p>
        Результат выполнения <code>EXPLAIN</code> содержит несколько важных полей:
    </p>
    <ul>
        <li>
            <span class="highlight">id:</span> Идентификатор шага выполнения запроса. Если запрос содержит подзапросы,
            каждый подзапрос будет иметь свой идентификатор.
        </li>
        <li>
            <span class="highlight">select_type:</span> Тип операции <code>SELECT</code> (например, <code>SIMPLE</code>, <code>PRIMARY</code>, <code>SUBQUERY</code>).
                                                                                   </li>
                                                                                   <li>
                                                                                   <span class="highlight">table:</span> Имя таблицы, к которой относится строка вывода.
                                                                                   </li>
                                                                                   <li>
                                                                                   <span class="highlight">type:</span> Тип соединения (например, <code>ALL</code>, <code>index</code>, <code>range</code>, <code>ref</code>). Это поле
                                                                               показывает, как MySQL будет искать строки в таблице.
                                                                                   </li>
                                                                                   <li>
                                                                                   <span class="highlight">possible_keys:</span> Индексы, которые могут быть использованы для выполнения запроса.
                                                                                   </li>
                                                                                   <li>
                                                                                   <span class="highlight">key:</span> Фактический индекс, который будет использоваться.
                                                                                   </li>
                                                                                   <li>
                                                                                   <span class="highlight">key_len:</span> Длина используемого индекса.
                                                                                   </li>
                                                                                   <li>
                                                                                   <span class="highlight">rows:</span> Оценочное количество строк, которые будут обработаны.
                                                                                   </li>
                                                                                   <li>
                                                                                   <span class="highlight">Extra:</span> Дополнительная информация о выполнении запроса (например, <code>Using where</code>,
                                                                                   <code>Using index</code>).
                                                                                   </li>
                                                                                   </ul>

                                                                                   <h2>Пример использования EXPLAIN</h2>
                                                                                   <p>
                                                                               Рассмотрим пример запроса и его анализ с помощью <code>EXPLAIN</code>:
                                                                                   </p>
                                                                                   <pre><code>
                                                                               EXPLAIN SELECT * FROM users WHERE age > 30;
</code></pre>
    <p>
        Результат может выглядеть следующим образом:
    </p>
    <table>
        <thead>
            <tr>
                <th>id</th>
                <th>select_type</th>
                <th>table</th>
                <th>type</th>
                <th>possible_keys</th>
                <th>key</th>
                <th>key_len</th>
                <th>rows</th>
                <th>Extra</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>SIMPLE</td>
                <td>users</td>
                <td>ALL</td>
                <td>NULL</td>
                <td>NULL</td>
                <td>NULL</td>
                <td>1000</td>
                <td>Using where</td>
            </tr>
        </tbody>
    </table>
    <p>
        В этом примере видно, что MySQL будет выполнять полное сканирование таблицы (<code>type: ALL</code>),
        так как нет подходящего индекса для условия <code>age > 30</code>. Это может быть сигналом к
        добавлению индекса на столбец <code>age</code>.
    </p>

    <h2>Преимущества использования EXPLAIN</h2>
    <ul>
        <li><span class="highlight">Оптимизация запросов:</span> Позволяет понять, как MySQL выполняет запрос, и найти
            узкие места.</li>
        <li><span class="highlight">Улучшение производительности:</span> Помогает определить, какие индексы нужно
            добавить или изменить.</li>
        <li><span class="highlight">Отладка сложных запросов:</span> Упрощает анализ и отладку сложных запросов с
            подзапросами и соединениями.</li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c8bc6e91-ecc6-4e39-ad1c-6565f4fd3b40', 'Зачем добавили ArrayList, если уже был Vector?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Зачем добавили ArrayList, если уже был Vector</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Зачем добавили ArrayList, если уже был Vector</h1>
    <p>
        Классы <code>Vector</code> и <code>ArrayList</code> в Java представляют собой динамические массивы, но они имеют существенные различия в производительности, синхронизации и использовании. Вот основные причины, по которым был добавлен <code>ArrayList</code>, несмотря на существование <code>Vector</code>.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Синхронизация:</span>
            <ul>
                <li>Методы класса <code>Vector</code> синхронизированы, что делает его потокобезопасным.</li>
                <li>Методы класса <code>ArrayList</code> не синхронизированы, что повышает производительность в однопоточных приложениях.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Увеличение размера:</span>
            <ul>
                <li>По умолчанию <code>Vector</code> удваивает свой размер, когда заканчивается выделенная под элементы память.</li>
                <li><code>ArrayList</code> увеличивает свой размер только на половину, что делает его более эффективным по памяти.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Устаревание:</span>
            <ul>
                <li><code>Vector</code> считается устаревшим классом, и его использование не рекомендуется.</li>
                <li><code>ArrayList</code> является современной заменой <code>Vector</code> и рекомендуется для использования в большинстве случаев.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования ArrayList</h2>
    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

for (String element : list) {
    System.out.println(element);
}
</code>
    </pre>

    <h2>Пример использования Vector</h2>
    <pre>
<code>
Vector&lt;String&gt; vector = new Vector&lt;&gt;();
vector.add("A");
vector.add("B");

for (String element : vector) {
    System.out.println(element);
}
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>ArrayList</code> был добавлен как более производительная и гибкая альтернатива <code>Vector</code>. В большинстве случаев рекомендуется использовать <code>ArrayList</code>, а <code>Vector</code> – только в устаревших или многопоточных приложениях, где требуется синхронизация.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8bd37a70-8d96-4959-8900-a3069c391c89', 'Что такое семафор? Как он реализован в Java?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Семафор в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Семафор в Java</h1>
    <p>
        Семафор — это механизм синхронизации, который управляет доступом к общему ресурсу с помощью счётчика.
        Он реализует шаблон синхронизации «Семафор» и используется для ограничения доступа к ресурсам,
        которые доступны в ограниченном количестве.
    </p>

    <h2>Что такое семафор?</h2>
    <ul>
        <li>
            <span class="highlight">Семафор:</span>
            <ul>
                <li>
                    Это синхронизатор, который управляет доступом к ресурсу с помощью счётчика.
                </li>
                <li>
                    Изначальное значение счётчика задаётся в конструкторе при создании семафора.
                </li>
                <li>
                    Когда поток заходит в защищаемый блок кода, значение счётчика уменьшается на единицу.
                </li>
                <li>
                    Когда поток покидает блок, значение счётчика увеличивается на единицу.
                </li>
                <li>
                    Если значение счётчика равно нулю, текущий поток блокируется до тех пор, пока другой поток
                    не освободит ресурс, увеличив счётчик.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Как семафор реализован в Java?</h2>
    <ul>
        <li>
            <span class="highlight">Класс Semaphore:</span>
            <ul>
                <li>
                    В Java семафор реализован в классе <code>java.util.concurrent.Semaphore</code>.
                </li>
                <li>
                    Конструктор класса принимает начальное значение счётчика, которое определяет количество
                    разрешений для доступа к ресурсу.
                </li>
                <li>
                    Метод <code>acquire()</code> уменьшает значение счётчика на единицу и блокирует поток, если
                    счётчик равен нулю.
                </li>
                <li>
                    Метод <code>release()</code> увеличивает значение счётчика на единицу, позволяя другим потокам
                    получить доступ к ресурсу.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Семафоры используются для защиты дорогих ресурсов, таких как подключения к базе данных
                    в пуле, где количество подключений ограничено.
                </li>
                <li>
                    Семафоры позволяют эффективно управлять доступом к ресурсам в многопоточной среде.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования семафора</h2>
    <ul>
        <li>
            <code>Semaphore semaphore = new Semaphore(5);</code> — создаёт семафор с 5 разрешениями.
        </li>
        <li>
            <code>semaphore.acquire();</code> — запрашивает разрешение. Если счётчик равен нулю, поток блокируется.
        </li>
        <li>
            <code>semaphore.release();</code> — освобождает разрешение, увеличивая счётчик.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fe83b1ae-6f6b-483b-bc5c-4ceee3b8fd99', 'Какое худшее время работы метода get(key) для ключа, который есть в  HashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Худшее время работы метода get(key) в HashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Худшее время работы метода get(key) в HashMap</h1>
    <p>
        В худшем случае время работы метода <code>get(key)</code> в <code>HashMap</code> может достигать <code>O(N)</code>. Это происходит при определённых условиях, связанных с хеш-кодами ключей.
    </p>

    <h2>Почему худшее время O(N)?</h2>
    <ul>
        <li>
            <span class="highlight">Коллизии:</span>
            <ul>
                <li>Если все ключи имеют одинаковый хеш-код, все элементы попадают в одну корзину.</li>
                <li>В этом случае <code>HashMap</code> вырождается в связный список.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Перебор элементов:</span>
            <ul>
                <li>Для поиска элемента в такой корзине требуется перебрать все элементы списка.</li>
                <li>В худшем случае это занимает линейное время <code>O(N)</code>, где <code>N</code> – количество элементов в списке.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример</h2>
    <pre>
<code>
class BadKey {
    private int id;

public BadKey(int id) {
        this.id = id;
}

    @Override
    public int hashCode() {
        return 1; // Все ключи имеют одинаковый хеш-код
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        BadKey key = (BadKey) obj;
return id == key.id;
}
}

public class Main {
    public static void main(String[] args) {
        Map&lt;BadKey, String&gt; map = new HashMap&lt;&gt;();
for (int i = 0; i < 1000; i++) {
            map.put(new BadKey(i), "Value" + i);
}

        // Поиск элемента в худшем случае
        long startTime = System.nanoTime();
        String value = map.get(new BadKey(999));
        long endTime = System.nanoTime();
        System.out.println("Время поиска: " + (endTime - startTime) + " нс");
}
}
</code>
    </pre>
    <p>
        В этом примере:
    </p>
    <ul>
        <li>Все ключи имеют одинаковый хеш-код, поэтому все элементы попадают в одну корзину.</li>
        <li>Поиск элемента требует перебора всех элементов в корзине, что занимает время <code>O(N)</code>.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> В Java 8 и выше, если длина цепочки в корзине превышает определённый порог, она преобразуется в сбалансированное дерево, что улучшает сложность до <code>O(log(n))</code>. Однако в худшем случае (при плохой хеш-функции) сложность может остаться <code>O(n)</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('26a485c5-e379-420c-a41f-e04ccb4a0bdf', 'Зачем нужен HashMap, если есть Hashtable?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Зачем нужен HashMap, если есть Hashtable</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Зачем нужен HashMap, если есть Hashtable</h1>
    <p>
        Классы <code>HashMap</code> и <code>Hashtable</code> в Java используются для хранения данных в виде пар «ключ-значение». Однако они имеют существенные различия, которые делают <code>HashMap</code> более предпочтительным в большинстве случаев.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Синхронизация:</span>
            <ul>
                <li>Методы класса <code>Hashtable</code> синхронизированы, что делает его потокобезопасным, но снижает производительность.</li>
                <li>Методы класса <code>HashMap</code> не синхронизированы, что делает его более производительным в однопоточных приложениях.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Поддержка null:</span>
            <ul>
                <li><code>Hashtable</code> не может содержать ключи или значения <code>null</code>.</li>
                <li><code>HashMap</code> может содержать один ключ <code>null</code> и любое количество значений <code>null</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Итераторы:</span>
            <ul>
                <li><code>Hashtable</code> использует <code>Enumeration</code>, который не поддерживает fail-fast поведение.</li>
                <li><code>HashMap</code> использует <code>Iterator</code>, который работает по принципу fail-fast (выбрасывает исключение при несогласованности данных).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Устаревание:</span>
            <ul>
                <li><code>Hashtable</code> считается устаревшим классом, и его использование не рекомендуется.</li>
                <li><code>HashMap</code> является современной заменой <code>Hashtable</code> и рекомендуется для использования в большинстве случаев.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования HashMap</h2>
    <pre>
<code>
Map&lt;String, Integer&gt; map = new HashMap&lt;&gt;();
map.put("A", 1);
map.put("B", 2);
map.put(null, 3); // Ключ null

System.out.println(map.get("A")); // Выведет 1
System.out.println(map.get(null)); // Выведет 3
</code>
    </pre>

    <h2>Пример использования Hashtable</h2>
    <pre>
<code>
Hashtable&lt;String, Integer&gt; table = new Hashtable&lt;&gt;();
table.put("A", 1);
table.put("B", 2);

System.out.println(table.get("A")); // Выведет 1
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>HashMap</code> был добавлен как более производительная и гибкая альтернатива <code>Hashtable</code>. В большинстве случаев рекомендуется использовать <code>HashMap</code>, а <code>Hashtable</code> – только в устаревших или многопоточных приложениях, где требуется синхронизация.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('23b39e22-8261-4552-aa4a-9fe2b63d7c13', 'Что является монитором у нестатического synchronized-метода?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Монитор нестатического synchronized-метода в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Монитор нестатического synchronized-метода в Java</h1>
    <p>
        В Java монитор — это механизм, который обеспечивает синхронизацию доступа к общим ресурсам. Для
        нестатических <code>synchronized</code>-методов монитором является объект <code>this</code>, то есть текущий экземпляр
        класса, в котором определён метод.
    </p>

    <h2>Что является монитором у нестатического synchronized-метода?</h2>
    <ul>
        <li>
            <span class="highlight">Объект this:</span>
            <ul>
                <li>
                    Для нестатических <code>synchronized</code>-методов монитором является текущий экземпляр класса
                    (<code>this</code>).
                </li>
                <li>
                    Это означает, что только один поток может выполнять нестатический <code>synchronized</code>-метод
                    для конкретного экземпляра класса в определённый момент времени.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Нестатические <code>synchronized</code>-методы синхронизируются на уровне экземпляра класса, а не
                    на уровне класса в целом.
                </li>
                <li>
                    Это позволяет разным экземплярам класса выполнять свои <code>synchronized</code>-методы
                    параллельно.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример нестатического synchronized-метода</h2>
    <pre><code>public class Counter {
    private int count = 0;

public synchronized void increment() {
        count++;
}

    public int getCount() {
        return count;
}
}</code></pre>

    <h2>Объяснение</h2>
    <ul>
        <li>
            <span class="highlight">Монитор:</span>
            <ul>
                <li>
                    В данном примере монитором для метода <code>increment()</code> является объект <code>this</code>, то есть
                    текущий экземпляр класса <code>Counter</code>.
                </li>
                <li>
                    Это означает, что если один поток выполняет метод <code>increment()</code> для конкретного экземпляра
                    класса, другие потоки не смогут выполнять этот метод для того же экземпляра до тех пор, пока
                    первый поток не завершит выполнение.
                </li>
            </ul>
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('559c6a23-cf8f-4720-9785-b774bcc3105e', 'Что такое приоритет потока? На что он влияет? Какой приоритет у  потоков по умолчанию?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Приоритет потоков в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Приоритет потоков в Java</h1>
    <p>
        Приоритет потока — это значение, которое определяет, насколько часто поток будет получать время процессора
        по сравнению с другими потоками. Планировщик потоков использует приоритеты для принятия решений о том,
        какой поток должен выполняться в данный момент.
    </p>

    <h2>Что такое приоритет потока?</h2>
    <ul>
        <li>
            <span class="highlight">Приоритет потока:</span>
            <ul>
                <li>
                    Это числовое значение, которое указывает планировщику потоков, насколько важно выполнение
                    данного потока.
                </li>
                <li>
                    Теоретически, потоки с более высоким приоритетом получают больше времени процессора, чем
                    потоки с низким приоритетом.
                </li>
                <li>
                    На практике время процессора зависит не только от приоритета, но и от других факторов, таких
                    как реализация планировщика и состояние системы.
                </li>
            </ul>
        </li>
    </ul>

    <h2>На что влияет приоритет потока?</h2>
    <ul>
        <li>
            <span class="highlight">Распределение времени процессора:</span>
            <ul>
                <li>
                    Потоки с высоким приоритетом имеют больше шансов получить время процессора, чем потоки
                    с низким приоритетом.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Поведение планировщика:</span>
            <ul>
                <li>
                    Планировщик потоков использует приоритеты для принятия решений о том, какой поток
                    должен выполняться следующим.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Какой приоритет у потоков по умолчанию?</h2>
    <ul>
        <li>
            <span class="highlight">Приоритет по умолчанию:</span>
            <ul>
                <li>
                    По умолчанию поток имеет приоритет <code>Thread.NORM_PRIORITY = 5</code>.
                </li>
                <li>
                    Минимальный приоритет — <code>Thread.MIN_PRIORITY = 1</code>.
                </li>
                <li>
                    Максимальный приоритет — <code>Thread.MAX_PRIORITY = 10</code>.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Как установить и получить приоритет потока?</h2>
    <ul>
        <li>
            <span class="highlight">Установка приоритета:</span>
            <ul>
                <li>
                    Метод <code>setPriority(int level)</code> позволяет установить приоритет потока.
                    Значение <code>level</code> должно быть в диапазоне от 1 до 10.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Получение приоритета:</span>
            <ul>
                <li>
                    Метод <code>getPriority()</code> возвращает текущий приоритет потока.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Приоритеты потоков не гарантируют точное распределение времени процессора, так как
                    это зависит от реализации планировщика и операционной системы.
                </li>
                <li>
                    Метод <code>yield()</code> можно использовать для того, чтобы текущий поток уступил время процессора
                    другим потокам с таким же или более высоким приоритетом.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример работы с приоритетами</h2>
    <ul>
        <li>
            <code>Thread thread = new Thread(() -> { ... });</code> — создание потока.
        </li>
        <li>
            <code>thread.setPriority(Thread.MAX_PRIORITY);</code> — установка максимального приоритета.
        </li>
        <li>
            <code>int priority = thread.getPriority();</code> — получение текущего приоритета.
        </li>
        <li>
            <code>Thread.yield();</code> — уступка времени процессора другим потокам.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('04c01703-2617-41f7-a120-d509de1542e3', 'Что такое TCL? Какие операции в него входят? Рассказать про них', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TCL (Transaction Control Language)</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>TCL (Transaction Control Language)</h1>
    <p>
        TCL (Transaction Control Language) — это набор операторов, используемых для управления транзакциями в
        базе данных. Транзакции позволяют группировать несколько операций в одну логическую единицу работы,
        обеспечивая целостность данных.
    </p>

    <h2>Основные операции TCL</h2>
    <ul>
        <li>
            <span class="highlight">BEGIN:</span>
            <ul>
                <li>
                    Определяет начало транзакции. Все операции, выполненные после <code>BEGIN</code>, будут частью
                    этой транзакции.
                </li>
                <li>
                    Пример: <code>BEGIN;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">COMMIT:</span>
            <ul>
                <li>
                    Применяет транзакцию, сохраняя все изменения, сделанные в её рамках.
                </li>
                <li>
                    Пример: <code>COMMIT;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">ROLLBACK:</span>
            <ul>
                <li>
                    Откатывает все изменения, сделанные в текущей транзакции, возвращая базу данных в состояние,
                    которое было до начала транзакции.
                </li>
                <li>
                    Пример: <code>ROLLBACK;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">SAVEPOINT:</span>
            <ul>
                <li>
                    Разбивает транзакцию на более мелкие части, создавая точку сохранения, к которой можно
                    вернуться с помощью <code>ROLLBACK</code>.
                </li>
                <li>
                    Пример: <code>SAVEPOINT savepoint_name;</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Транзакции обеспечивают атомарность, согласованность, изолированность и долговечность
                    (ACID) операций в базе данных.
                </li>
                <li>
                    <code>ROLLBACK</code> отменяет все изменения, сделанные после последнего <code>COMMIT</code> или <code>SAVEPOINT</code>.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования TCL</h2>
    <ul>
        <li>
            <span class="highlight">Начало транзакции:</span>
            <pre><code>BEGIN;</code></pre>
        </li>
        <li>
            <span class="highlight">Создание точки сохранения:</span>
            <pre><code>SAVEPOINT before_update;</code></pre>
        </li>
        <li>
            <span class="highlight">Изменение данных:</span>
            <pre><code>UPDATE users SET age = 26 WHERE id = 1;</code></pre>
        </li>
        <li>
            <span class="highlight">Откат к точке сохранения:</span>
            <pre><code>ROLLBACK TO before_update;</code></pre>
        </li>
        <li>
            <span class="highlight">Применение транзакции:</span>
            <pre><code>COMMIT;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d6a71981-55b2-4976-9591-49acbd94b6f1', 'Как избежать ConcurrentModificationException во время перебора коллекции?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Как избежать ConcurrentModificationException</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Как избежать ConcurrentModificationException</h1>
    <p>
        Исключение <code>ConcurrentModificationException</code> возникает, если коллекция изменяется во время итерации. Вот несколько способов избежать этого исключения:
    </p>

    <h2>Способы избежать исключения</h2>
    <ul>
        <li>
            <span class="highlight">Использование fail-safe итераторов:</span>
            <ul>
                <li>Некоторые коллекции предоставляют итераторы, работающие по принципу fail-safe, например, <code>ListIterator</code> для списков.</li>
                <li>Пример:
                    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

ListIterator&lt;String&gt; iterator = list.listIterator();
while (iterator.hasNext()) {
    String element = iterator.next();
    if (element.equals("A")) {
        iterator.remove(); // Безопасное удаление через итератор
    }
}
</code>
                    </pre>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование потокобезопасных коллекций:</span>
            <ul>
                <li>Коллекции, такие как <code>ConcurrentHashMap</code> и <code>CopyOnWriteArrayList</code>, поддерживают fail-safe поведение.</li>
                <li>Пример:
                    <pre>
<code>
CopyOnWriteArrayList&lt;String&gt; list = new CopyOnWriteArrayList&lt;&gt;();
list.add("A");
list.add("B");

for (String element : list) {
    if (element.equals("A")) {
        list.remove(element); // Безопасное удаление
    }
}
</code>
                    </pre>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преобразование списка в массив:</span>
            <ul>
                <li>Коллекцию можно преобразовать в массив и перебирать его.</li>
                <li>Пример:
                    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

String[] array = list.toArray(new String[0]);
for (String element : array) {
    if (element.equals("A")) {
        list.remove(element); // Удаление из коллекции
    }
}
</code>
                    </pre>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Синхронизация доступа к коллекции:</span>
            <ul>
                <li>Использование блока <code>synchronized</code> для блокировки изменений коллекции на время итерации.</li>
                <li>Пример:
                    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

synchronized (list) {
    Iterator&lt;String&gt; iterator = list.iterator();
    while (iterator.hasNext()) {
        String element = iterator.next();
        if (element.equals("A")) {
            iterator.remove(); // Безопасное удаление
        }
    }
}
</code>
                    </pre>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Хотя использование массивов и синхронизации позволяет избежать <code>ConcurrentModificationException</code>, это может ухудшить производительность. Лучше использовать fail-safe итераторы или потокобезопасные коллекции.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('65c38c51-44ca-439e-8cb2-58f86a1ac882', 'Stream API & ForkJoinPool, как связаны, что это такое?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stream API и ForkJoinPool в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Stream API и ForkJoinPool в Java</h1>
    <p>
        Stream API и ForkJoinPool тесно связаны в Java, особенно при использовании параллельных потоков. Stream API
        предоставляет удобный способ работы с коллекциями, а ForkJoinPool используется для выполнения задач в
        параллельных потоках.
    </p>

    <h2>Как связаны Stream API и ForkJoinPool?</h2>
    <ul>
        <li>
            <span class="highlight">Параллельные потоки:</span>
            <ul>
                <li>
                    В Stream API можно легко распараллелить выполнение операций с помощью методов
                    <code>parallel()</code> или <code>parallelStream()</code>.
                </li>
                <li>
                    Это позволяет использовать преимущества многоядерных процессоров для повышения
                    производительности.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">ForkJoinPool:</span>
            <ul>
                <li>
                    По умолчанию параллельные потоки используют общий пул потоков <code>ForkJoinPool.commonPool</code>.
                </li>
                <li>
                    Этот пул создаётся статически и существует до завершения работы программы (вызова
                    <code>System.exit</code>).
                </li>
                <li>
                    Размер пула по умолчанию равен количеству доступных ядер процессора минус один.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Caller-thread:</span>
            <ul>
                <li>
                    Если поток отправляет задачу в общий пул (<code>commonPool</code>), пул может использовать
                    вызывающий поток (caller-thread) для выполнения задачи.
                </li>
                <li>
                    Это позволяет более эффективно использовать ресурсы системы.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Использование параллельных потоков может значительно ускорить выполнение операций,
                    но требует осторожности при работе с общими ресурсами.
                </li>
                <li>
                    <code>ForkJoinPool.commonPool</code> автоматически управляет потоками, что упрощает разработку,
                    но может потребовать настройки для оптимизации производительности.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования параллельных потоков</h2>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class StreamExample {
    public static void main(String[] args) {
        List&lt;Integer&gt; numbers = IntStream.range(1, 100).boxed().collect(Collectors.toList());

// Параллельный поток
        List&lt;Integer&gt; squaredNumbers = numbers.parallelStream()
            .map(n -> n * n)
            .collect(Collectors.toList());

        System.out.println(squaredNumbers);
}
}</code></pre>

    <h2>Объяснение</h2>
    <ul>
        <li>
            <span class="highlight">Параллельный поток:</span>
            <ul>
                <li>
                    Метод <code>parallelStream()</code> создаёт параллельный поток, который использует
                    <code>ForkJoinPool.commonPool</code> для выполнения операций.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">ForkJoinPool:</span>
            <ul>
                <li>
                    Задачи в параллельном потоке распределяются между потоками из общего пула, что
                    позволяет ускорить выполнение операций.
                </li>
            </ul>
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c614911c-c4f7-4a2c-a3b5-ede444f19c71', 'Что такое GROUP BY?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оператор GROUP BY в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Оператор GROUP BY в SQL</h1>
    <p>
        Оператор <code>GROUP BY</code> в SQL используется для группировки строк результата запроса по одному или
        нескольким столбцам. Он часто применяется вместе с агрегатными функциями, такими как <code>SUM</code>,
        <code>COUNT</code>, <code>AVG</code>, <code>MIN</code> и <code>MAX</code>.
    </p>

    <h2>Как работает GROUP BY?</h2>
    <ul>
        <li>
            <span class="highlight">Группировка данных:</span>
            <ul>
                <li>
                    <code>GROUP BY</code> группирует строки по уникальным значениям указанных столбцов.
                </li>
                <li>
                    Пример: <code>SELECT department, COUNT(*) FROM employees GROUP BY department;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Агрегатные функции:</span>
            <ul>
                <li>
                    Вместе с <code>GROUP BY</code> часто используются агрегатные функции для вычисления значений
                    по каждой группе.
                </li>
                <li>
                    Пример: <code>SELECT department, AVG(salary) FROM employees GROUP BY department;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">NULL в GROUP BY:</span>
            <ul>
                <li>
                    Все значения <code>NULL</code> считаются равными и группируются вместе.
                </li>
                <li>
                    Пример: <code>SELECT department, COUNT(*) FROM employees GROUP BY department;</code> (включая
                    строки с <code>NULL</code> в столбце <code>department</code>).
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>GROUP BY</code> создаёт отдельные группы для всех уникальных значений в указанных столбцах,
                    включая <code>NULL</code>.
                </li>
                <li>
                    Агрегатные функции применяются к каждой группе отдельно.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования GROUP BY</h2>
    <ul>
        <li>
            <span class="highlight">Группировка по одному столбцу:</span>
            <pre><code>SELECT department, COUNT(*) AS employee_count
                       FROM employees
                       GROUP BY department;</code></pre>
        </li>
        <li>
            <span class="highlight">Группировка с агрегатной функцией:</span>
            <pre><code>SELECT department, AVG(salary) AS avg_salary
                       FROM employees
                       GROUP BY department;</code></pre>
        </li>
        <li>
            <span class="highlight">Группировка по нескольким столбцам:</span>
            <pre><code>SELECT department, job_title, COUNT(*) AS employee_count
                       FROM employees
                       GROUP BY department, job_title;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('54a6f82b-aa13-48cf-a802-f53f0e3146df', 'Чем отличаются методы wait() и sleep()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Методы wait() и sleep() в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Методы wait() и sleep() в Java</h1>
    <p>
        Методы <code>wait()</code> и <code>sleep()</code> используются для приостановки выполнения потока, но они имеют
        различные особенности и применяются в разных ситуациях.
    </p>

    <h2>Чем отличаются методы wait() и sleep()?</h2>
    <ul>
        <li>
            <span class="highlight">Метод sleep():</span>
            <ul>
                <li>
                    Приостанавливает выполнение текущего потока на указанное время.
                </li>
                <li>
                    Состояние потока меняется на <code>TIMED_WAITING</code> (если указано время) или <code>WAITING</code>.
                </li>
                <li>
                    После истечения времени поток переходит в состояние <code>RUNNABLE</code>.
                </li>
                <li>
                    <strong>Монитор не освобождается:</strong> Поток продолжает удерживать блокировку, если она была захвачена.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Метод wait():</span>
            <ul>
                <li>
                    Приостанавливает выполнение текущего потока до тех пор, пока другой поток не вызовет
                    <code>notify()</code> или <code>notifyAll()</code> для того же объекта.
                </li>
                <li>
                    Состояние потока меняется на <code>WAITING</code>.
                </li>
                <li>
                    <strong>Монитор освобождается:</strong> Поток освобождает блокировку объекта, что позволяет другим
                    потокам захватить её.
                </li>
                <li>
                    Может быть вызван только внутри синхронизированного блока или метода, иначе выбрасывается
                    исключение <code>IllegalMonitorStateException</code>.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>sleep()</code> используется для приостановки потока на определённое время, не затрагивая блокировки.
                </li>
                <li>
                    <code>wait()</code> используется для синхронизации потоков и требует освобождения блокировки.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования</h2>
    <ul>
        <li>
            <code>Thread.sleep(1000);</code> — приостанавливает поток на 1 секунду.
        </li>
        <li>
            <code>synchronized (obj) { obj.wait(); }</code> — приостанавливает поток и освобождает блокировку объекта <code>obj</code>.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('324e73e2-f0f0-4e3c-8f18-eff962adc4ec', 'Что такое DCL? Какие операции в него входят? Рассказать про них', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DCL (Data Control Language)</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>DCL (Data Control Language)</h1>
    <p>
        DCL (Data Control Language) — это набор операторов, используемых для управления правами доступа к данным
        в базе данных. DCL позволяет предоставлять и отзывать разрешения на выполнение определённых операций
        с объектами базы данных.
    </p>

    <h2>Основные операции DCL</h2>
    <ul>
        <li>
            <span class="highlight">GRANT:</span>
            <ul>
                <li>
                    Предоставляет пользователю или группе пользователей разрешения на выполнение определённых
                    операций с объектами базы данных (например, таблицами, представлениями).
                </li>
                <li>
                    Пример: <code>GRANT SELECT, INSERT ON users TO \'user1\';</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">REVOKE:</span>
            <ul>
                <li>
                    Отзывает ранее выданные разрешения у пользователя или группы пользователей.
                </li>
                <li>
                    Пример: <code>REVOKE INSERT ON users FROM \'user1\';</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">DENY:</span>
            <ul>
                <li>
                    Задаёт запрет на выполнение определённых операций, который имеет приоритет над разрешениями,
                    выданными через <code>GRANT</code>.
                </li>
                <li>
                    Пример: <code>DENY DELETE ON users TO \'user1\';</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Операции DCL используются для управления безопасностью и доступом к данным в базе данных.
                </li>
                <li>
                    <code>DENY</code> имеет приоритет над <code>GRANT</code>, что позволяет явно запретить определённые действия,
                    даже если пользователю были выданы соответствующие разрешения.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования DCL</h2>
    <ul>
        <li>
            <span class="highlight">Предоставление прав:</span>
            <pre><code>GRANT SELECT, UPDATE ON employees TO \'manager\';</code></pre>
        </li>
        <li>
            <span class="highlight">Отзыв прав:</span>
            <pre><code>REVOKE UPDATE ON employees FROM \'manager\';</code></pre>
        </li>
        <li>
            <span class="highlight">Запрет действий:</span>
            <pre><code>DENY DELETE ON employees TO \'manager\';</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8c969e38-3dac-4d86-86ac-cb25444c9ce5', 'Что делает оператор MERGE? Какие у него есть ограничения?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оператор MERGE в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Оператор MERGE в SQL</h1>
    <p>
        Оператор <code>MERGE</code> в SQL используется для объединения данных из одной таблицы с данными другой
        таблицы. Он позволяет выполнять операции <code>UPDATE</code> или <code>INSERT</code> в зависимости от условий слияния.
                                                       </p>

                                                       <h2>Как работает MERGE?</h2>
                                                       <ul>
                                                       <li>
                                                       <span class="highlight">Слияние данных:</span>
                                                       <ul>
                                                       <li>
                                                       <code>MERGE</code> проверяет условие слияния. Если условие истинно, выполняется <code>UPDATE</code>, если
                                                                                                                                                 ложно — <code>INSERT</code>.
                                                                                                                                             </li>
                                                                                                                                             <li>
                                                                                                                                             Пример:
                                                                                                                                             <pre><code>MERGE Ships AS t  -- таблица, которая будет меняться
                                                                                                                                             USING (SELECT ship, year FROM ShipData) AS s
                                                                                                                                             ON (t.name = s.ship)  -- условие слияния
                                                                                                                                                 WHEN MATCHED THEN
UPDATE SET t.launched = s.year  -- обновление
    WHEN NOT MATCHED THEN
INSERT VALUES(s.ship, s.year);  -- вставка</code></pre>
</li>
            </ul>
        </li>
    </ul>

    <h2>Ограничения MERGE</h2>
    <ul>
        <li>
            <span class="highlight">Изменение ключевых полей:</span>
            <ul>
                <li>
                    В секции <code>UPDATE</code> нельзя изменять поля, по которым происходит связывание таблиц.
                                       </li>
                                       </ul>
                                       </li>
                                       <li>
                                       <span class="highlight">Поддержка СУБД:</span>
                                       <ul>
                                       <li>
                                       Не все СУБД поддерживают оператор <code>MERGE</code>. Например, он доступен в Oracle, SQL Server и
                                       PostgreSQL, но отсутствует в MySQL.
                                       </li>
                                       </ul>
                                       </li>
                                       </ul>

                                       <div class="note">
                                       <p>
                                       <span class="highlight">Важно:</span>
                                       <ul>
                                       <li>
                                       <code>MERGE</code> позволяет эффективно объединять данные из двух таблиц, выполняя <code>UPDATE</code> или
                                                                                                                                    <code>INSERT</code> в зависимости от условий.
                                                                                                                                </li>
                                                                                                                                <li>
                                                                                                                                При использовании <code>MERGE</code> важно учитывать ограничения, такие как невозможность изменения
                                                                                                                                ключевых полей в секции <code>UPDATE</code>.
                                                                                                                                                                  </li>
                                                                                                                                                                  </ul>
                                                                                                                                                                  </p>
                                                                                                                                                                  </div>

                                                                                                                                                                  <h2>Пример использования MERGE</h2>
                                                                                                                                                                  <pre><code>MERGE Ships AS t  -- таблица, которая будет меняться
                                                                                                                                                                  USING (SELECT ship, year FROM ShipData) AS s
                                                                                                                                                              ON (t.name = s.ship)  -- условие слияния
                                                                                                                                                                  WHEN MATCHED THEN
UPDATE SET t.launched = s.year  -- обновление
    WHEN NOT MATCHED THEN
INSERT VALUES(s.ship, s.year);  -- вставка</code></pre>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('037d4f8e-f34e-445b-9e7b-7876750445f3', 'Что такое суррогатные ключи?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Суррогатные ключи в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Суррогатные ключи в SQL</h1>
    <p>
        Суррогатный ключ — это дополнительное служебное поле, которое автоматически добавляется к
        таблице и используется в качестве первичного ключа. Он не имеет смысловой нагрузки и
        создаётся исключительно для уникальной идентификации записей в таблице.
    </p>

    <h2>Особенности суррогатных ключей</h2>
    <ul>
        <li>
            <span class="highlight">Автоматическая генерация:</span>
            <ul>
                <li>
                    Суррогатные ключи обычно генерируются автоматически с использованием
                    автоинкремента или других механизмов.
                </li>
                <li>
                    Пример: <code>id INT AUTO_INCREMENT PRIMARY KEY</code>.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Отсутствие смысловой нагрузки:</span>
            <ul>
                <li>
                    Суррогатные ключи не несут смысловой информации и используются только для
                    уникальной идентификации записей.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование в качестве первичного ключа:</span>
            <ul>
                <li>
                    Суррогатные ключи часто используются в качестве первичных ключей, особенно
                    когда естественные ключи отсутствуют или неудобны для использования.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Суррогатные ключи упрощают управление данными, так как они уникальны и не
                    зависят от бизнес-логики.
                </li>
                <li>
                    Они часто используются в реляционных базах данных для обеспечения ссылочной
                    целостности.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования суррогатного ключа</h2>
    <pre><code>CREATE TABLE employees (
                                                                   id INT AUTO_INCREMENT PRIMARY KEY,  -- суррогатный ключ
                                                                   name VARCHAR(50),
                                                                   department VARCHAR(50)
               );</code></pre>

    <p>
        В этом примере столбец <code>id</code> является суррогатным ключом, который автоматически
        увеличивается при добавлении новых записей.
    </p>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('907bd2cf-df10-484c-a0f1-9eecd2c85c25', 'Чем LinkedHashSet отличается от HashSet?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отличия LinkedHashSet и HashSet</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Отличия LinkedHashSet и HashSet</h1>
    <p>
        <code>LinkedHashSet</code> и <code>HashSet</code> – это две реализации интерфейса <code>Set</code> в Java. Основное отличие заключается в том, что <code>LinkedHashSet</code> сохраняет порядок добавления элементов, в то время как <code>HashSet</code> не гарантирует никакого порядка.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Структура данных:</span>
            <ul>
                <li><code>HashSet</code> использует хеш-таблицу для хранения элементов.</li>
                <li><code>LinkedHashSet</code> использует <code>LinkedHashMap</code>, который сочетает хеш-таблицу и связный список для сохранения порядка добавления элементов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Порядок элементов:</span>
            <ul>
                <li><code>HashSet</code> не гарантирует порядок хранения элементов.</li>
                <li><code>LinkedHashSet</code> сохраняет порядок добавления элементов (insertion-order).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Производительность:</span>
            <ul>
                <li><code>HashSet</code> обеспечивает более высокую производительность для операций добавления, удаления и поиска (<code>O(1)</code> в среднем случае).</li>
                <li><code>LinkedHashSet</code> имеет немного меньшую производительность из-за необходимости поддерживать порядок элементов.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования LinkedHashSet</h2>
    <pre>
<code>
Set&lt;Integer&gt; linkedHashSet = new LinkedHashSet&lt;&gt;();
linkedHashSet.add(3);
linkedHashSet.add(1);
linkedHashSet.add(2);

System.out.println(linkedHashSet); // Выведет [3, 1, 2] (порядок добавления)
</code>
    </pre>

    <h2>Пример использования HashSet</h2>
    <pre>
<code>
Set&lt;Integer&gt; hashSet = new HashSet&lt;&gt;();
hashSet.add(3);
hashSet.add(1);
hashSet.add(2);

System.out.println(hashSet); // Порядок вывода может быть любым, например [1, 2, 3] или [3, 1, 2]
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>LinkedHashSet</code> полезен, когда требуется сохранить порядок добавления элементов, в то время как <code>HashSet</code> обеспечивает более высокую производительность, но не гарантирует порядок.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0e7a2947-4c62-4534-b301-b1b46bc05879', 'Что позволяет сделать PriorityQueue?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Возможности PriorityQueue</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Возможности PriorityQueue</h1>
    <p>
        <code>PriorityQueue</code> – это специальная очередь, которая позволяет управлять порядком элементов. Она может быть использована для хранения элементов в определённом порядке, что делает её полезной для решения задач, связанных с приоритетами.
    </p>

    <h2>Основные возможности</h2>
    <ul>
        <li>
            <span class="highlight">Управление порядком элементов:</span>
            <ul>
                <li>По умолчанию элементы сортируются с использованием естественного порядка (<code>natural ordering</code>).</li>
                <li>Порядок может быть изменён с помощью объекта <code>Comparator</code>, который передаётся при создании очереди.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ограничения:</span>
            <ul>
                <li><code>PriorityQueue</code> не поддерживает <code>null</code> в качестве элементов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Применение:</span>
            <ul>
                <li>Используется для реализации алгоритмов, таких как алгоритм Дейкстры для поиска кратчайшего пути в графе.</li>
                <li>Может быть использована для хранения объектов в соответствии с определённым свойством (например, приоритетом).</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования</h2>
    <pre>
<code>
// Создание PriorityQueue с естественным порядком
PriorityQueue&lt;Integer&gt; queue = new PriorityQueue&lt;&gt;();
queue.add(5);
queue.add(1);
queue.add(3);

System.out.println(queue.poll()); // Выведет 1
System.out.println(queue.poll()); // Выведет 3
System.out.println(queue.poll()); // Выведет 5
</code>
    </pre>

    <h2>Пример с Comparator</h2>
    <pre>
<code>
// Создание PriorityQueue с использованием Comparator
PriorityQueue&lt;Integer&gt; queue = new PriorityQueue&lt;&gt;((a, b) -> b - a);
queue.add(5);
queue.add(1);
queue.add(3);

System.out.println(queue.poll()); // Выведет 5
System.out.println(queue.poll()); // Выведет 3
System.out.println(queue.poll()); // Выведет 1
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>PriorityQueue</code> позволяет управлять порядком элементов, что делает её полезной для задач, связанных с приоритетами. Она не поддерживает <code>null</code> и может быть настроена с помощью <code>Comparator</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ab682224-0f16-4e46-a885-d3a19b7e5257', 'Как создать индекс?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Создание индексов в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Создание индексов в SQL</h1>
    <p>
        Индексы в SQL создаются для ускорения операций поиска и извлечения данных. Их можно создать с помощью
        выражения <code>CREATE INDEX</code> или указав ограничения целостности при создании таблицы.
    </p>

    <h2>Способы создания индексов</h2>
    <ul>
    <li>
    <span class="highlight">Использование CREATE INDEX:</span>
    <ul>
    <li>
    Индекс создаётся с помощью команды <code>CREATE INDEX</code>.
    </li>
    <li>
    Пример: <code>CREATE INDEX index_name ON table_name (column_name);</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ограничения целостности:</span>
            <ul>
                <li>
                    Индексы могут быть созданы автоматически при определении ограничений целостности, таких как
                    <code>UNIQUE</code> или <code>PRIMARY KEY</code>, в операторе <code>CREATE TABLE</code>.
    </li>
    <li>
    Пример:
    <pre><code>CREATE TABLE employees (
                                          id INT PRIMARY KEY,  -- автоматически создаёт кластеризованный индекс
                                          email VARCHAR(100) UNIQUE  -- автоматически создаёт уникальный индекс
               );</code></pre>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Индексы, созданные с помощью <code>CREATE INDEX</code>, могут быть некластеризованными, если не
    указано иное.
    </li>
    <li>
    Ограничения <code>PRIMARY KEY</code> и <code>UNIQUE</code> автоматически создают индексы, которые
    обеспечивают уникальность данных.
    </li>
    </ul>
    </p>
    </div>

    <h2>Примеры создания индексов</h2>
    <ul>
    <li>
    <span class="highlight">Создание индекса с помощью CREATE INDEX:</span>
    <pre><code>CREATE INDEX idx_name ON employees (name);</code></pre>
        </li>
        <li>
            <span class="highlight">Создание индекса через ограничения целостности:</span>
            <pre><code>CREATE TABLE employees (
                                                                                                           id INT PRIMARY KEY,  -- автоматически создаёт кластеризованный индекс
                                                                                                           email VARCHAR(100) UNIQUE  -- автоматически создаёт уникальный индекс
                       );</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1635b6c9-6032-41e1-b1b8-7c585084fa0d', 'Чем Runnable отличается от Callable?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между Runnable и Callable</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Разница между Runnable и Callable</h1>
    <p>
        Интерфейсы <code>Runnable</code> и <code>Callable</code> используются для выполнения задач в многопоточной среде, но они имеют
        существенные различия в функциональности и применении.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Время появления:</span>
            <ul>
                <li>
                    <code>Runnable</code> появился в Java 1.0.
                </li>
                <li>
                    <code>Callable</code> был введён в Java 5.0 в составе библиотеки <code>java.util.concurrent</code>.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Методы:</span>
            <ul>
                <li>
                    Классы, реализующие <code>Runnable</code>, должны реализовать метод <code>run()</code>.
                </li>
                <li>
                    Классы, реализующие <code>Callable</code>, должны реализовать метод <code>call()</code>.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Возвращаемое значение:</span>
            <ul>
                <li>
                    Метод <code>run()</code> не возвращает никакого значения (<code>void</code>).
                </li>
                <li>
                    Метод <code>call()</code> возвращает объект типа, указанного при параметризации интерфейса
                    <code>Callable</code>. Если интерфейс не параметризован, возвращается <code>Object</code>.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Исключения:</span>
            <ul>
                <li>
                    Метод <code>run()</code> не может выбрасывать проверяемые исключения.
                </li>
                <li>
                    Метод <code>call()</code> может выбрасывать проверяемые исключения.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>Runnable</code> используется для задач, которые не требуют возврата результата и не выбрасывают
                    проверяемые исключения.
                </li>
                <li>
                    <code>Callable</code> используется для задач, которые могут возвращать результат и выбрасывать
                    проверяемые исключения.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования</h2>
    <ul>
        <li>
            <code>Runnable:</code>
            <pre><code>Runnable task = () -> {
    System.out.println("Выполнение задачи Runnable");
};
new Thread(task).start();</code></pre>
        </li>
        <li>
            <code>Callable:</code>
            <pre><code>Callable&lt;String&gt; task = () -> {
    return "Результат задачи Callable";
};
ExecutorService executor = Executors.newSingleThreadExecutor();
Future&lt;String&gt; future = executor.submit(task);
System.out.println(future.get());</code></pre>
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cbc7163a-f5f5-4e97-bc9f-cacf8d1b5adb', 'Каким условиям должен удовлетворять класс, чтобы являться Entity?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Требования к Entity-классу в JPA</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Требования к Entity-классу в JPA</h1>
    <p>
        <span class="highlight">Entity-класс</span> – это легковесный объект, который представляет собой сущность бизнес-логики и
        сохраняется в базе данных. В JPA (Java Persistence API) Entity-класс должен удовлетворять
        определённым требованиям, чтобы быть корректно отображённым на таблицу в базе данных.
    </p>

    <h2>Основные требования к Entity-классу</h2>
    <p>
        Для того чтобы класс мог быть Entity, он должен соответствовать следующим условиям:
    </p>
    <ul>
        <li>
            <span class="highlight">Аннотация @Entity или XML-описание:</span> Класс должен быть помечен аннотацией
            <code>@Entity</code> или описан в XML-файле конфигурации.
        </li>
        <li>
            <span class="highlight">Конструктор без аргументов:</span> Класс должен содержать <code>public</code> или <code>protected</code>
            конструктор без аргументов. Это необходимо для создания экземпляров класса при
            извлечении данных из базы данных. Также могут быть конструкторы с аргументами.
        </li>
        <li>
            <span class="highlight">Класс верхнего уровня:</span> Класс должен быть классом верхнего уровня (top-level class),
            то есть не может быть вложенным или внутренним классом.
        </li>
        <li>
            <span class="highlight">Не enum и не интерфейс:</span> Класс не может быть <code>enum</code> или интерфейсом.
        </li>
        <li>
            <span class="highlight">Не финальный класс:</span> Класс не может быть объявлен как <code>final</code>.
        </li>
        <li>
            <span class="highlight">Не финальные поля или методы:</span> Поля и методы, участвующие в маппинге (persistent
            fields or methods), не могут быть объявлены как <code>final</code>.
        </li>
        <li>
            <span class="highlight">Реализация Serializable:</span> Если объект Entity-класса будет передаваться по значению
            (например, через удалённый интерфейс), он должен реализовывать интерфейс
            <code>Serializable</code>.
        </li>
        <li>
            <span class="highlight">Инкапсуляция полей:</span> Поля Entity-класса должны быть доступны только через методы
            класса (getter/setter методы или методы бизнес-логики). Прямой доступ к полям из других
            классов не допускается.
        </li>
        <li>
            <span class="highlight">Первичный ключ:</span> Класс должен содержать первичный ключ – атрибут или группу
            атрибутов, которые уникально идентифицируют запись в базе данных. Первичный ключ
            обычно помечается аннотацией <code>@Id</code>.
        </li>
    </ul>

    <h2>Пример Entity-класса</h2>
    <p>
        Рассмотрим пример простого Entity-класса, который соответствует всем требованиям:
    </p>
    <pre><code>
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import java.io.Serializable;

@Entity
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String email;

// Конструктор без аргументов
    public User() {}

    // Конструктор с аргументами
    public User(String name, String email) {
        this.name = name;
        this.email = email;
}

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

    public String getEmail() {
        return email;
}

    public void setEmail(String email) {
        this.email = email;
}
}
    </code></pre>

    <h2>Заключение</h2>
    <p>
        Entity-класс в JPA – это основной элемент для работы с базой данных. Он должен соответствовать
        определённым требованиям, чтобы быть корректно отображённым на таблицу в базе данных.
        Соблюдение этих требований обеспечивает корректную работу с сущностями, их сохранение,
        обновление и извлечение из базы данных.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('50676efa-c5e5-4c53-a0eb-d5dd73a26662', 'Что такое ORM? Что такое JPA? Что такое Hibernate?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ORM, JPA и Hibernate</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>ORM, JPA и Hibernate</h1>
    <p>
        В разработке приложений, работающих с базами данных, часто используются такие технологии, как
        ORM, JPA и Hibernate. Они упрощают взаимодействие с базами данных, позволяя работать с
        объектами вместо прямого написания SQL-запросов.
    </p>

    <h2>Что такое ORM?</h2>
    <p>
        <span class="highlight">ORM (Object Relational Mapping)</span> – это концепция преобразования данных между
        объектно-ориентированным языком программирования и реляционной базой данных. ORM позволяет
        разработчикам работать с объектами в коде, а не писать SQL-запросы вручную.
    </p>
    <ul>
        <li><span class="highlight">Преимущества ORM:</span> Упрощает работу с базой данных, уменьшает количество
            рутинного кода, повышает читаемость и поддерживаемость кода.</li>
        <li><span class="highlight">Недостатки ORM:</span> Может снижать производительность в сложных запросах, требует
            понимания принципов работы ORM.</li>
    </ul>

    <h2>Что такое JPA?</h2>
    <p>
        <span class="highlight">JPA (Java Persistence API)</span> – это стандартная спецификация для Java, которая описывает
        принципы ORM. JPA определяет правила, по которым должны работать провайдеры (например,
        Hibernate, EclipseLink), но сама по себе JPA не реализует функциональность.
    </p>
    <ul>
        <li><span class="highlight">Основные функции JPA:</span> Описание метаданных отображения объектов на таблицы
            базы данных, управление жизненным циклом объектов, выполнение CRUD-операций.</li>
        <li><span class="highlight">Гибкость:</span> Код, написанный с использованием JPA, можно легко перенести на другой
            провайдер, если не используются специфические функции конкретной реализации.</li>
    </ul>

    <h2>Что такое Hibernate?</h2>
    <p>
        <span class="highlight">Hibernate</span> – это библиотека, которая реализует спецификацию JPA. Hibernate предоставляет
        не только стандартные API-интерфейсы JPA, но и дополнительные возможности, такие как
        собственные аннотации, интерфейсы и классы.
    </p>
    <ul>
        <li><span class="highlight">Преимущества Hibernate:</span> Упрощает работу с базой данных, поддерживает кэширование,
            автоматически генерирует SQL-запросы, поддерживает различные базы данных.</li>
        <li><span class="highlight">Недостатки Hibernate:</span> Может быть сложным для понимания, требует настройки и
            оптимизации для сложных запросов.</li>
    </ul>

    <h2>Важные интерфейсы Hibernate</h2>
    <p>
        Hibernate предоставляет несколько ключевых интерфейсов для работы с базой данных:
    </p>
    <ul>
        <li>
            <span class="highlight">Session:</span> Обеспечивает физическое соединение между приложением и базой данных.
            Основная функция – выполнение DML-операций (вставка, обновление, удаление) для
            экземпляров сущностей.
        </li>
        <li>
            <span class="highlight">SessionFactory:</span> Это фабрика для создания объектов <code>Session</code>. Обычно создаётся
            один раз при запуске приложения и используется всеми потоками. Является потокобезопасным.
        </li>
        <li>
            <span class="highlight">Transaction:</span> Однопоточный короткоживущий объект, используемый для атомарных
            операций. Абстрагирует приложение от низкоуровневых JDBC-транзакций.
        </li>
        <li>
            <span class="highlight">Query:</span> Интерфейс для выполнения запросов к базе данных. Запросы могут быть написаны
            на HQL (Hibernate Query Language) или на SQL.
        </li>
    </ul>

    <h2>Пример использования Hibernate</h2>
    <p>
        Рассмотрим пример работы с Hibernate для сохранения объекта в базе данных:
    </p>
    <pre><code>
// Создание SessionFactory
SessionFactory sessionFactory = new Configuration()
    .configure("hibernate.cfg.xml")
    .addAnnotatedClass(User.class)
    .buildSessionFactory();

// Открытие сессии
Session session = sessionFactory.openSession();

// Начало транзакции
session.beginTransaction();

// Создание объекта
User user = new User("John Doe", "john.doe@example.com");

// Сохранение объекта в базе данных
session.save(user);

// Завершение транзакции
session.getTransaction().commit();

// Закрытие сессии
session.close();
</code></pre>

    <h2>Заключение</h2>
    <p>
        ORM, JPA и Hibernate – это мощные инструменты для работы с базами данных в Java-приложениях.
        Они позволяют разработчикам сосредоточиться на бизнес-логике, а не на написании SQL-запросов.
        JPA предоставляет стандартный API, а Hibernate – одну из самых популярных реализаций этого
        стандарта с дополнительными возможностями.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('85de54b3-48c7-45ab-a0ee-e8745e346652', 'Как работает Thread.join()? Для чего он нужен?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Метод Thread.join() в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Метод Thread.join() в Java</h1>
    <p>
        Метод <code>Thread.join()</code> используется для того, чтобы текущий поток дождался завершения другого потока,
        к которому он присоединяется. Это полезно в ситуациях, когда необходимо синхронизировать выполнение
        нескольких потоков.
    </p>

    <h2>Как работает Thread.join()?</h2>
    <ul>
        <li>
            <span class="highlight">Основной функционал:</span>
            <ul>
                <li>
                    Когда поток вызывает метод <code>join()</code>, он переходит в состояние ожидания до тех пор, пока поток,
                    к которому он присоединяется, не завершит своё выполнение.
                </li>
                <li>
                    Если поток, к которому присоединяются, уже завершён, то метод <code>join()</code> возвращается немедленно.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Варианты метода:</span>
            <ul>
                <li>
                    <code>void join()</code> — текущий поток ждёт завершения целевого потока без ограничения по времени.
                </li>
                <li>
                    <code>void join(long millis)</code> — текущий поток ждёт завершения целевого потока, но не более
                    указанного времени в миллисекундах.
                </li>
                <li>
                    <code>void join(long millis, int nanos)</code> — аналогично предыдущему, но с дополнительной точностью
                    в наносекундах.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Для чего нужен Thread.join()?</h2>
    <ul>
        <li>
            <span class="highlight">Синхронизация потоков:</span>
            <ul>
                <li>
                    Метод <code>join()</code> используется, когда необходимо дождаться завершения одного или нескольких
                    потоков перед продолжением выполнения текущего потока.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Пример использования:</span>
            <ul>
                <li>
                    При распараллеливании вычислений, когда нужно дождаться результатов работы всех потоков,
                    чтобы объединить их и продолжить выполнение программы.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Если поток, к которому присоединяются, не завершается в течение указанного времени, метод
                    <code>join()</code> возвращает управление текущему потоку.
                </li>
                <li>
                    Метод <code>join()</code> может выбросить исключение <code>InterruptedException</code>, если текущий поток
                    будет прерван во время ожидания.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования Thread.join()</h2>
    <ul>
        <li>
            <code>Thread thread = new Thread(() -> { ... });</code> — создание потока.
        </li>
        <li>
            <code>thread.start();</code> — запуск потока.
        </li>
        <li>
            <code>thread.join();</code> — ожидание завершения потока.
        </li>
        <li>
            <code>thread.join(1000);</code> — ожидание завершения потока, но не более 1 секунды.
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8ba715c4-a133-4352-9bca-379812820933', 'Какие существуют типы JOIN?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Типы JOIN в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Типы JOIN в SQL</h1>
    <p>
        В SQL оператор <code>JOIN</code> используется для объединения данных из двух или более таблиц. Существует
        несколько типов <code>JOIN</code>, каждый из которых имеет свои особенности и применяется в зависимости от
        задачи.
    </p>

    <h2>Основные типы JOIN</h2>
    <ul>
        <li>
            <span class="highlight">INNER JOIN:</span>
            <ul>
                <li>
                    Возвращает только те строки, для которых есть совпадение в обеих таблицах.
                </li>
                <li>
                    Порядок таблиц не важен, так как оператор симметричен.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Table1 INNER JOIN Table2 ON Table1.id = Table2.id;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">LEFT JOIN (или LEFT OUTER JOIN):</span>
            <ul>
                <li>
                    Возвращает все строки из левой таблицы (Table1) и соответствующие строки из правой таблицы
                    (Table2). Если совпадений нет, то в правой части будут <code>NULL</code>.
                </li>
                <li>
                    Порядок таблиц важен, так как оператор не симметричен.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Table1 LEFT JOIN Table2 ON Table1.id = Table2.id;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">RIGHT JOIN (или RIGHT OUTER JOIN):</span>
            <ul>
                <li>
                    Возвращает все строки из правой таблицы (Table2) и соответствующие строки из левой таблицы
                    (Table1). Если совпадений нет, то в левой части будут <code>NULL</code>.
                </li>
                <li>
                    Порядок таблиц важен, так как оператор не симметричен.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Table1 RIGHT JOIN Table2 ON Table1.id = Table2.id;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">FULL JOIN (или FULL OUTER JOIN):</span>
            <ul>
                <li>
                    Возвращает все строки из обеих таблиц. Если совпадений нет, то в недостающих частях будут
                    <code>NULL</code>.
                </li>
                <li>
                    Порядок таблиц не важен, так как оператор симметричен.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Table1 FULL JOIN Table2 ON Table1.id = Table2.id;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">CROSS JOIN:</span>
            <ul>
                <li>
                    Возвращает декартово произведение строк из обеих таблиц. Каждая строка из первой таблицы
                    объединяется с каждой строкой из второй таблицы.
                </li>
                <li>
                    Порядок таблиц не важен, так как оператор симметричен.
                </li>
                <li>
                    Пример: <code>SELECT * FROM Table1 CROSS JOIN Table2;</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>INNER JOIN</code> используется для получения только совпадающих данных из обеих таблиц.
                </li>
                <li>
                    <code>LEFT JOIN</code> и <code>RIGHT JOIN</code> позволяют получить все строки из одной таблицы и совпадающие
                    строки из другой.
                </li>
                <li>
                    <code>FULL JOIN</code> возвращает все строки из обеих таблиц, даже если нет совпадений.
                </li>
                <li>
                    <code>CROSS JOIN</code> создаёт декартово произведение строк, что может привести к большому количеству
                    результатов.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования JOIN</h2>
    <ul>
        <li>
            <span class="highlight">INNER JOIN:</span>
            <pre><code>SELECT employees.name, departments.department_name
                       FROM employees
                                INNER JOIN departments ON employees.department_id = departments.id;</code></pre>
        </li>
        <li>
            <span class="highlight">LEFT JOIN:</span>
            <pre><code>SELECT employees.name, departments.department_name
                       FROM employees
                                LEFT JOIN departments ON employees.department_id = departments.id;</code></pre>
        </li>
        <li>
            <span class="highlight">RIGHT JOIN:</span>
            <pre><code>SELECT employees.name, departments.department_name
                       FROM employees
                                RIGHT JOIN departments ON employees.department_id = departments.id;</code></pre>
        </li>
        <li>
            <span class="highlight">FULL JOIN:</span>
            <pre><code>SELECT employees.name, departments.department_name
                       FROM employees
                                FULL JOIN departments ON employees.department_id = departments.id;</code></pre>
        </li>
        <li>
            <span class="highlight">CROSS JOIN:</span>
            <pre><code>SELECT employees.name, departments.department_name
                       FROM employees
                                CROSS JOIN departments;</code></pre>
        </li>
    </ul>
</body>
</html>
', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('03b7c201-d631-464c-b5e2-5da5753cde51', 'Что такое FutureTask?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FutureTask в Java</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>FutureTask в Java</h1>
    <p>
        <code>FutureTask</code> — это класс в Java, который представляет собой отменяемое асинхронное вычисление. Он реализует
        интерфейсы <code>Future</code> и <code>Runnable</code>, что позволяет использовать его для выполнения задач в параллельных потоках
        и получения результатов их выполнения.
    </p>

    <h2>Основные особенности FutureTask</h2>
    <ul>
        <li>
            <span class="highlight">Асинхронное вычисление:</span>
            <ul>
                <li>
                    <code>FutureTask</code> позволяет выполнять задачи асинхронно в отдельном потоке.
                </li>
                <li>
                    Результат вычисления можно получить только после завершения задачи.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Отменяемость:</span>
            <ul>
                <li>
                    Задачу можно отменить с помощью метода <code>cancel()</code>, если она ещё не завершена.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Обёртка для Callable и Runnable:</span>
            <ul>
                <li>
                    <code>FutureTask</code> может быть использован для обёртки объектов <code>Callable</code> и <code>Runnable</code>.
                </li>
                <li>
                    Если задача обёрнута в <code>FutureTask</code>, её можно передать в <code>Executor</code> для выполнения.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Блокировка при получении результата:</span>
            <ul>
                <li>
                    Метод <code>get()</code> блокирует выполнение текущего потока до тех пор, пока задача не будет завершена.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>FutureTask</code> предоставляет удобный способ управления асинхронными задачами, включая их
                    запуск, отмену и получение результатов.
                </li>
                <li>
                    Он может быть использован для обёртки как <code>Callable</code>, так и <code>Runnable</code>, что делает его универсальным
                    инструментом для работы с многопоточностью.
                </li>
            </ul>
        </p>
    </div>

    <h2>Пример использования FutureTask</h2>
    <ul>
        <li>
            <code>Callable:</code>
            <pre><code>Callable&lt;String&gt; task = () -> {
    return "Результат задачи Callable";
};
FutureTask&lt;String&gt; futureTask = new FutureTask&lt;&gt;(task);
new Thread(futureTask).start();
System.out.println(futureTask.get());</code></pre>
        </li>
        <li>
            <code>Runnable:</code>
            <pre><code>Runnable task = () -> {
    System.out.println("Выполнение задачи Runnable");
};
FutureTask&lt;Void&gt; futureTask = new FutureTask&lt;&gt;(task, null);
new Thread(futureTask).start();</code></pre>
        </li>
    </ul>
</body>
</html>', 'MULTITHREADING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('09c4404d-39c0-456b-a135-9a772f9c6999', 'Как устроен HashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Как устроен HashMap</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Как устроен HashMap</h1>
    <p>
        <code>HashMap</code> – это структура данных, которая хранит элементы в виде пар «ключ-значение». Она использует хеширование для быстрого доступа к элементам. Вот как устроен <code>HashMap</code>:
    </p>

    <h2>Основные компоненты</h2>
    <ul>
        <li>
            <span class="highlight">Корзины (buckets):</span>
            <ul>
                <li><code>HashMap</code> состоит из массива корзин, где каждая корзина – это элемент массива, хранящий ссылку на список элементов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Хеш-код:</span>
            <ul>
                <li>При добавлении новой пары «ключ-значение» вычисляется хеш-код ключа.</li>
                <li>На основе хеш-кода определяется номер корзины (индекс в массиве), куда будет помещён элемент.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Добавление элемента:</span>
            <ul>
                <li>Если корзина пуста, в неё сохраняется ссылка на новый элемент.</li>
                <li>Если корзина уже содержит элементы, происходит последовательный переход по ссылкам в цепочке элементов до последнего элемента, после чего добавляется ссылка на новый элемент.</li>
                <li>Если в цепочке найден элемент с таким же ключом, он заменяется новым значением.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример работы HashMap</h2>
    <pre>
<code>
Map&lt;String, Integer&gt; map = new HashMap&lt;&gt;();
map.put("A", 1);
map.put("B", 2);

System.out.println(map.get("A")); // Выведет 1
System.out.println(map.get("B")); // Выведет 2
</code>
    </pre>

    <h2>Визуализация структуры HashMap</h2>
    <p>
        Представим, что <code>HashMap</code> состоит из массива корзин:
    </p>
    <pre>
<code>
[0] -> null
[1] -> Entry("A", 1) -> Entry("B", 2)
[2] -> null
...
</code>
    </pre>
    <p>
        В данном примере:
    </p>
    <ul>
        <li>Ключ <code>"A"</code> попал в корзину с индексом 1.</li>
        <li>Ключ <code>"B"</code> также попал в корзину с индексом 1 и был добавлен в цепочку после <code>"A"</code>.</li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>HashMap</code> использует хеширование для быстрого доступа к элементам. При возникновении коллизий (когда несколько ключей попадают в одну корзину) элементы хранятся в виде цепочки. Это обеспечивает эффективное хранение и поиск данных.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('71660af9-4688-4e84-ad44-e4c1be4acfb2', 'Может ли абстрактный класс быть Entity?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Абстрактный класс как Entity в JPA</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Абстрактный класс как Entity в JPA</h1>
    <p>
        В JPA (Java Persistence API) абстрактный класс может быть объявлен как <span class="highlight">Entity</span>. Однако,
        в отличие от обычного Entity-класса, абстрактный класс не может быть непосредственно
        инициализирован. Он сохраняет все свойства Entity, но требует наличия конкретных классов-
        наследников, которые будут использоваться для создания объектов.
    </p>

    <h2>Особенности абстрактного Entity-класса</h2>
    <p>
        Абстрактный класс, объявленный как Entity, должен соответствовать всем требованиям,
        предъявляемым к Entity-классам, за исключением возможности непосредственной инициализации.
        Основные особенности:
    </p>
    <ul>
        <li>
            <span class="highlight">Аннотация @Entity:</span> Абстрактный класс должен быть помечен аннотацией <code>@Entity</code>.
        </li>
        <li>
            <span class="highlight">Конструктор без аргументов:</span> Абстрактный класс должен иметь <code>public</code> или
            <code>protected</code> конструктор без аргументов.
        </li>
        <li>
            <span class="highlight">Наследование:</span> Абстрактный класс может быть унаследован конкретными классами,
            которые будут использоваться для создания объектов.
        </li>
        <li>
            <span class="highlight">Отсутствие инициализации:</span> Абстрактный класс не может быть непосредственно
            инициализирован, так как он является абстрактным.
        </li>
    </ul>

    <h2>Пример абстрактного Entity-класса</h2>
    <p>
        Рассмотрим пример абстрактного Entity-класса и его наследника:
    </p>
    <pre><code>
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import java.io.Serializable;

@Entity
public abstract class Animal implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

// Конструктор без аргументов
    public Animal() {}

    // Конструктор с аргументами
    public Animal(String name) {
        this.name = name;
}

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

    // Абстрактный метод
    public abstract String makeSound();
}

@Entity
public class Dog extends Animal {
    @Override
    public String makeSound() {
        return "Woof!";
}
}

@Entity
public class Cat extends Animal {
    @Override
    public String makeSound() {
        return "Meow!";
}
}
    </code></pre>

    <h2>Использование абстрактного Entity-класса</h2>
    <p>
        Абстрактный Entity-класс может использоваться для создания иерархии сущностей, где общие
        свойства и методы вынесены в абстрактный класс, а конкретные реализации – в классы-наследники.
        Например, в приведённом выше примере класс <code>Animal</code> является абстрактным Entity, а
        <code>Dog</code> и <code>Cat</code> – его конкретными реализациями.
    </p>

    <h2>Заключение</h2>
    <p>
        Абстрактный класс может быть объявлен как Entity в JPA, что позволяет создавать иерархии
        сущностей с общими свойствами и методами. Однако абстрактный Entity-класс не может быть
        непосредственно инициализирован – для этого используются его конкретные классы-наследники.
        Это позволяет гибко проектировать структуру данных и повторно использовать код.
    </p>
</body>
</html>', 'HIBERNATE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2e3f49e5-394c-4afa-b025-ccc916d63f5b', 'Что такое DISTINCT?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оператор DISTINCT в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Оператор DISTINCT в SQL</h1>
    <p>
        Оператор <code>DISTINCT</code> в SQL используется для выборки уникальных значений из столбца или набора
        столбцов. Он удаляет дубликаты из результата запроса, оставляя только уникальные записи.
    </p>

    <h2>Как работает DISTINCT?</h2>
    <ul>
        <li>
            <span class="highlight">Уникальные значения:</span>
            <ul>
                <li>
                    <code>DISTINCT</code> применяется к столбцу или набору столбцов и возвращает только уникальные
                    значения.
                </li>
                <li>
                    Пример: <code>SELECT DISTINCT department FROM employees;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Использование с несколькими столбцами:</span>
            <ul>
                <li>
                    Если <code>DISTINCT</code> применяется к нескольким столбцам, то уникальность определяется
                    комбинацией значений в этих столбцах.
                </li>
                <li>
                    Пример: <code>SELECT DISTINCT department, job_title FROM employees;</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>DISTINCT</code> удаляет дубликаты из результата запроса, что может быть полезно для
                    получения уникальных значений.
                </li>
                <li>
                    Если <code>DISTINCT</code> применяется к нескольким столбцам, то уникальность определяется
                    комбинацией значений в этих столбцах.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования DISTINCT</h2>
    <ul>
        <li>
            <span class="highlight">Уникальные значения одного столбца:</span>
            <pre><code>SELECT DISTINCT department FROM employees;</code></pre>
        </li>
        <li>
            <span class="highlight">Уникальные комбинации нескольких столбцов:</span>
            <pre><code>SELECT DISTINCT department, job_title FROM employees;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cbe44da9-d9ea-45f6-ba9d-00340a6e692a', 'Нюансы работы с NULL в SQL. Как проверить поле на NULL?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Работа с NULL в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Работа с NULL в SQL</h1>
    <p>
        В SQL значение <code>NULL</code> используется для обозначения отсутствия или неизвестности данных. Оно не
        является значением в полном смысле слова и имеет свои особенности при работе с запросами.
    </p>

    <h2>Особенности NULL</h2>
    <ul>
        <li>
            <span class="highlight">NULL — это не значение:</span>
            <ul>
                <li>
                    <code>NULL</code> означает отсутствие данных или неизвестность. Оно не равно ни пустой строке, ни нулю,
                    ни логическому значению <code>FALSE</code>.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Сравнение с NULL:</span>
            <ul>
                <li>
                    При сравнении <code>NULL</code> с любым значением (включая другое <code>NULL</code>) результат будет <code>NULL</code>,
                    а не <code>TRUE</code> или <code>FALSE</code>.
                </li>
                <li>
                    Пример: <code>NULL = NULL</code> возвращает <code>NULL</code>, а не <code>TRUE</code>.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Как проверить поле на NULL?</h2>
    <ul>
        <li>
            <span class="highlight">IS NULL:</span>
            <ul>
                <li>
                    Проверяет, является ли значение поля <code>NULL</code>.
                </li>
                <li>
                    Пример: <code>SELECT * FROM users WHERE email IS NULL;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">IS NOT NULL:</span>
            <ul>
                <li>
                    Проверяет, что значение поля не является <code>NULL</code>.
                </li>
                <li>
                    Пример: <code>SELECT * FROM users WHERE email IS NOT NULL;</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Для проверки на <code>NULL</code> всегда используйте операторы <code>IS NULL</code> или <code>IS NOT NULL</code>.
                    Обычные операторы сравнения (<code>=</code>, <code>!=</code>) не работают с <code>NULL</code>.
                </li>
                <li>
                    <code>NULL</code> не равно <code>NULL</code>, поэтому для сравнения с <code>NULL</code> используйте специальные
                    операторы.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры работы с NULL</h2>
    <ul>
        <li>
            <span class="highlight">Поиск NULL:</span>
            <pre><code>SELECT * FROM employees WHERE department IS NULL;</code></pre>
        </li>
        <li>
            <span class="highlight">Исключение NULL:</span>
            <pre><code>SELECT * FROM employees WHERE department IS NOT NULL;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('15db71c6-c120-4a74-badd-61fe2d14cff8', 'Чем TRUNCATE отличается от DELETE?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между TRUNCATE и DELETE в SQL</title>
    <link rel="stylesheet" href="/css/text.css">
</head>
<body>
    <h1>Разница между TRUNCATE и DELETE в SQL</h1>
    <p>
        В SQL операторы <code>TRUNCATE</code> и <code>DELETE</code> используются для удаления данных из таблицы, но они имеют
        существенные различия в своей работе и применении.
    </p>

    <h2>Оператор DELETE</h2>
    <ul>
        <li>
            <span class="highlight">Тип оператора:</span>
            <ul>
                <li>
                    <code>DELETE</code> — это оператор DML (Data Manipulation Language).
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Удаление данных:</span>
            <ul>
                <li>
                    Удаляет строки из таблицы, которые удовлетворяют условию <code>WHERE</code>.
                </li>
                <li>
                    Пример: <code>DELETE FROM employees WHERE salary < 1000;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Скорость:</span>
            <ul>
                <li>
                    Медленнее, чем <code>TRUNCATE</code>, так как удаляет строки по одной и записывает изменения в журнал
                    транзакций.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Возможность отката:</span>
            <ul>
                <li>
                    Поддерживает откат (<code>ROLLBACK</code>), так как изменения записываются в журнал транзакций.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Оператор TRUNCATE</h2>
    <ul>
        <li>
            <span class="highlight">Тип оператора:</span>
            <ul>
                <li>
                    <code>TRUNCATE</code> — это оператор DDL (Data Definition Language).
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Удаление данных:</span>
            <ul>
                <li>
                    Удаляет все строки из таблицы, не используя условие <code>WHERE</code>.
                </li>
                <li>
                    Пример: <code>TRUNCATE TABLE employees;</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Скорость:</span>
            <ul>
                <li>
                    Быстрее, чем <code>DELETE</code>, так как удаляет данные на уровне таблицы, а не по строкам.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Возможность отката:</span>
            <ul>
                <li>
                    Не поддерживает откат (<code>ROLLBACK</code>), так как изменения не записываются в журнал транзакций.
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    <code>DELETE</code> используется для удаления конкретных строк и поддерживает откат.
                </li>
                <li>
                    <code>TRUNCATE</code> используется для быстрого удаления всех строк из таблицы, но не поддерживает
                    откат.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования</h2>
    <ul>
        <li>
            <span class="highlight">DELETE:</span>
            <pre><code>DELETE FROM employees WHERE salary < 1000;</code></pre>
        </li>
        <li>
            <span class="highlight">TRUNCATE:</span>
            <pre><code>TRUNCATE TABLE employees;</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');