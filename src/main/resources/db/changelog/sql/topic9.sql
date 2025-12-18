INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c93260bb-adb9-44de-98ce-5ca69cba8be2', 'Тернарный условный оператор', e'<!DOCTYPE html>
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
    <h1>Тернарный условный оператор в Java</h1>

    <p>
        <span class="note">Тернарный условный оператор</span> – это оператор, которым можно заменить некоторые конструкции операторов <code>if-then-else</code>. Он позволяет сократить код и сделать его более читаемым.
    </p>

    <h2>Синтаксис тернарного оператора</h2>
    <p>
        Выражение записывается в следующей форме:
    </p>
    <pre><code>условие ? выражение1 : выражение2</code></pre>
    <p>
        Если <span class="note">условие</span> выполняется (<code>true</code>), то вычисляется <span class="note">выражение1</span>, и его результат становится результатом выполнения всего оператора. Если же условие равно <code>false</code>, то вычисляется <span class="note">выражение2</span>, и его значение становится результатом работы оператора. Оба операнда <span class="note">выражение1</span> и <span class="note">выражение2</span> должны возвращать значение одинакового (или совместимого) типа.
    </p>

    <h2>Пример использования</h2>
    <p>
        Пример использования тернарного оператора:
    </p>
    <pre><code>int a = 10;
int b = 20;
int max = (a > b) ? a : b; // max будет равно 20</code></pre>
    <p>
        В этом примере, если <code>a > b</code>, то <code>max</code> присваивается значение <code>a</code>, иначе – значение <code>b</code>.
    </p>

    <div class="definition">
        <p>
            <strong>Тернарный оператор</strong> – это компактная замена конструкции <code>if-else</code>, которая возвращает значение в зависимости от выполнения условия.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('914ab5bb-b0b4-4f0d-ae73-a2c3acb87c4b', 'Что такое абстрактные классы? Чем они отличаются от обычных?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Абстрактные классы</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Абстрактные классы</h1>
        <p>
            Абстрактный класс — это обычный класс, но с абстрактными методами. Он не может быть
            инстанцирован (нельзя создать объект абстрактного класса), но может содержать как
            абстрактные, так и обычные методы.
        </p>

        <h2>Особенности абстрактных классов:</h2>
        <ul>
            <li>
                <span class="highlight">Конструктор:</span> Может иметь конструктор, что полезно для паттерна декоратор или для
                вызовов по цепочке из наследников.
            </li>
            <li>
                <span class="highlight">Методы:</span> Может содержать абстрактные методы (без реализации) и обычные методы
                (с реализацией).
            </li>
            <li>
                <span class="highlight">Приватный конструктор:</span> Может иметь приватный конструктор, но тогда должен быть
                еще один конструктор, чтобы класс можно было наследовать.
            </li>
            <li>
                <span class="highlight">Интерфейсы:</span> Может имплементировать интерфейсы, но не обязан реализовывать их
                методы.
            </li>
            <li>
                <span class="highlight">Модификатор final:</span> Не может быть <code>final</code>, так как абстрактный класс предназначен
                для наследования.
            </li>
            <li>
                <span class="highlight">Статические методы:</span> Может содержать статические методы, так как абстрактный класс
                может использоваться без наследования.
            </li>
            <li>
                <span class="highlight">Абстрактные методы:</span> Может содержать хотя бы один абстрактный метод, но может и
                не содержать их.
            </li>
            <li>
                <span class="highlight">Метод main():</span> Может содержать метод <code>main()</code>.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Абстрактные классы используются для создания базовых классов, которые
                определяют общую структуру и поведение, но оставляют реализацию некоторых
                методов на усмотрение наследников.
            </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('095d37b1-16fa-4f89-9448-8ad42358610a', 'Чем отличаются final, finally и finalize()?', e'<!DOCTYPE html>
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
    <h1>Отличия final, finally и finalize()</h1>

    <h2>Модификатор final</h2>
    <p>
        Модификатор <span class="note">final</span> используется для ограничения изменений в коде:
    </p>
    <ul>
        <li>класс не может иметь наследников;</li>
        <li>метод не может быть переопределен в классах-наследниках;</li>
        <li>поле не может изменить свое значение после инициализации;</li>
        <li>локальные переменные не могут быть изменены после присвоения им значения;</li>
        <li>параметры методов не могут изменять свое значение внутри метода.</li>
    </ul>

    <h2>Оператор finally</h2>
    <p>
        Оператор <span class="note">finally</span> гарантирует, что определенный в нем участок кода будет выполнен независимо от того, какие исключения были возбуждены и перехвачены в блоке <code>try-catch</code>.
    </p>

    <h2>Метод finalize()</h2>
    <p>
        Метод <span class="note">finalize()</span> вызывается перед тем, как сборщик мусора будет проводить удаление объекта. Он используется для выполнения очистки ресурсов перед удалением объекта, но его использование не рекомендуется из-за непредсказуемости вызова.
    </p>

    <div class="definition">
        <p>
            <strong>final</strong> – это модификатор, который ограничивает изменения в коде. <strong>finally</strong> – это блок, который гарантированно выполняется после <code>try-catch</code>. <strong>finalize()</strong> – это метод, вызываемый сборщиком мусора перед удалением объекта.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0026ca3b-36e6-4729-bb6f-a8041c6ee6c7', 'Можно ли использовать строки в конструкции switch?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Можно ли использовать строки в конструкции switch?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Можно ли использовать строки в конструкции <code>switch</code>?</h1>
        <p>
            Да, начиная с Java 7 в операторе <code>switch</code> можно использовать строки. Ранние версии Java не
            поддерживают этого. При этом:
        </p>
        <ul>
            <li>
                <span class="highlight">Чувствительность к регистру:</span> Участвующие строки чувствительны к регистру.
            </li>
            <li>
                <span class="highlight">Использование <code>equals()</code>:</span> Для сравнения полученного значения со значениями
                <code>case</code> используется метод <code>equals()</code>. Поэтому во избежание <code>NullPointerException</code>
                стоит предусмотреть проверку на <code>null</code>.
            </li>
            <li>
                <span class="highlight">Эффективность байт-кода:</span> Согласно документации Java 7, для строк в <code>switch</code>
                компилятор Java формирует более эффективный байт-код, чем для сцепленных условий <code>if-else</code>.
            </li>
        </ul>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Использование строк в <code>switch</code> возможно только начиная с Java 7.
                Убедитесь, что ваш проект использует соответствующую версию Java.
            </p>
        </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('aea38767-4638-42be-a024-a2b98f70557b', 'Что такое «статический класс»?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое «статический класс»?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Что такое <span class="highlight">«статический класс»</span>?</h1>
        <p>
            <span class="highlight">Статический класс</span> — это вложенный класс, объявленный с использованием ключевого слова <code>static</code>.
            К классам верхнего уровня модификатор <code>static</code> неприменим.
        </p>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Статические вложенные классы не имеют доступа к нестатическим членам внешнего класса,
                так как они не связаны с конкретным экземпляром внешнего класса. Они используются для
                логической группировки классов, которые связаны с внешним классом, но не требуют доступа
                к его экземплярам.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3d1938b2-1b6d-4c32-92a3-0118407791ca', 'Может ли объект получить доступ к члену класса объявленному как private?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Доступ к приватным членам класса</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Может ли объект получить доступ к члену класса, объявленному как <span class="highlight">private</span>?</h1>
        <p>
            Да, объект может получить доступ к приватному члену класса, но только определенными способами:
        </p>
        <ul>
            <li>
                <span class="highlight">Внутри класса:</span> Доступ к приватной переменной открыт без ограничений.
            </li>
            <li>
                <span class="highlight">Вложенный класс:</span> Имеет полный доступ ко всем (в том числе и приватным) членам
                содержащего его класса.
            </li>
            <li>
                <span class="highlight">Методы доступа:</span> Доступ к приватным переменным извне может быть организован через
                публичные методы, такие как <code>getX()</code> и <code>setX()</code>, предоставленные разработчиком класса.
            </li>
            <li>
                <span class="highlight">Рефлексия (Reflection API):</span> Механизм рефлексии позволяет получить доступ к приватным
                членам класса, хотя это не рекомендуется из-за нарушения инкапсуляции.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Приватные члены класса предназначены для сокрытия внутренней реализации и
                обеспечения инкапсуляции. Использование методов доступа (геттеров и сеттеров) является
                предпочтительным способом работы с приватными данными извне.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fcc3ef3e-4e30-4250-a1e3-6f5487b8cdbd', 'Могут ли классы быть статическими?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Могут ли классы быть статическими?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Могут ли классы быть статическими?</h1>
        <p>
            Классы могут быть статическими, но только в случае вложенных классов. Классы верхнего
            уровня не могут быть объявлены как статические.
        </p>
        <p>
            Такие классы известны как <span class="highlight">«вложенные статические классы»</span> (nested static class). Они
            могут обращаться только к статическим членам внешнего класса и не требуют создания
            экземпляра внешнего класса для своего создания.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Вложенные статические классы полезны для логической группировки классов,
                которые связаны с внешним классом, но не зависят от его экземпляров. Они часто
                используются для реализации вспомогательных или утилитарных классов.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d1775ff9-b2e7-4049-a4c4-3cee2e4e0667', 'Исключение ClassCastException', e'<!DOCTYPE html>
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
    <h1>Исключение ClassCastException в Java</h1>

    <p>
        <span class="note">ClassCastException</span> – это исключение, которое выбрасывается, когда программа пытается привести объект к типу, с которым он не совместим. Это исключение является потомком класса <code>RuntimeException</code>, что означает, что оно относится к непроверяемым исключениям (unchecked exceptions).
    </p>

    <h2>Когда возникает ClassCastException?</h2>
    <p>
        Исключение <span class="note">ClassCastException</span> возникает в следующих случаях:
    </p>
    <ul>
        <li>
            При попытке привести объект к типу, который не является его подтипом. Например:
            <pre><code>Object obj = new Integer(10);
String str = (String) obj; // ClassCastException</code></pre>
        </li>
        <li>
            При неправильном использовании нисходящего приведения (downcasting) в иерархии наследования. Например:
            <pre><code>class Animal {}
class Dog extends Animal {}

Animal animal = new Animal();
Dog dog = (Dog) animal; // ClassCastException</code></pre>
        </li>
    </ul>

    <h2>Как избежать ClassCastException?</h2>
    <p>
        Чтобы избежать <span class="note">ClassCastException</span>, следует использовать оператор <span class="note">instanceof</span> для проверки типа объекта перед приведением:
    </p>
    <pre><code>Object obj = new Integer(10);
if (obj instanceof String) {
    String str = (String) obj; // Безопасное приведение
} else {
    System.out.println("Невозможно привести объект к типу String");
}</code></pre>

    <div class="definition">
        <p>
            <strong>ClassCastException</strong> – это исключение, которое возникает при попытке привести объект к несовместимому типу. Чтобы избежать этого исключения, рекомендуется использовать оператор <code>instanceof</code> для проверки типа перед приведением.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4a855ebe-6a34-4ed5-8017-7217c278c945', 'Особенности использования вложенных классов: статических и внутренних', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Особенности использования вложенных классов</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Особенности использования вложенных классов: статических и внутренних</h1>
        <p>
            Вложенные классы могут обращаться ко всем членам обрамляющего класса, в том числе и
            приватным. Однако между статическими и внутренними вложенными классами есть существенные
            различия:
        </p>
        <ul>
            <li>
                <span class="highlight">Создание объекта:</span>
                <ul>
                    <li>Для создания объекта статического вложенного класса объект внешнего класса не требуется.</li>
                    <li>Для создания объекта внутреннего (нестатического) вложенного класса необходим экземпляр внешнего класса.</li>
                </ul>
            </li>
            <li>
                <span class="highlight">Доступ к членам внешнего класса:</span>
                <ul>
                    <li>Из объекта статического вложенного класса нельзя обращаться к нестатическим членам
                        обрамляющего класса напрямую, а только через ссылку на экземпляр внешнего класса.</li>
                    <li>Внутренние классы имеют прямой доступ к нестатическим членам внешнего класса.</li>
                </ul>
            </li>
            <li>
                <span class="highlight">Статические элементы:</span>
                <ul>
                    <li>Обычные вложенные классы не могут содержать статических методов, блоков
                        инициализации и классов.</li>
                    <li>Статические вложенные классы могут содержать статические методы, блоки и классы.</li>
                </ul>
            </li>
            <li>
                <span class="highlight">Ссылка на внешний класс:</span>
                <ul>
                    <li>В объекте обычного вложенного класса хранится ссылка на объект внешнего класса.</li>
                    <li>Внутри статического вложенного класса такой ссылки нет. Доступ к экземпляру
                        обрамляющего класса осуществляется через указание <code>Outer.this</code>.</li>
                </ul>
            </li>
        </ul>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Статические вложенные классы используются, когда не требуется связь с экземпляром
                внешнего класса, а внутренние классы — когда такая связь необходима. Выбор между ними
                зависит от контекста использования.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2f59dbce-521a-41bb-be29-1e8fedcfe387', 'Какие преимущества и недостатки у ООП?', e'<!DOCTYPE html>
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
    <h1>Преимущества и недостатки ООП</h1>

    <div class="advantages">
        <h2>Какие преимущества у ООП?</h2>
        <p>
            <span class="highlight">Легко читается</span> – не нужно выискивать в коде функции и выяснять, за что они отвечают.
        </p>
        <p>
            <span class="highlight">Быстро пишется</span> – можно быстро создать сущности, с которыми должна работать программа.
        </p>
        <p>
            <span class="highlight">Простота реализации большого функционала</span> – т. к. на написание кода уходит меньше времени, можно гораздо быстрее создать приложение с множеством возможностей.
        </p>
    </div>

    <div class="disadvantages">
        <h2>Какие недостатки у ООП?</h2>
        <p>
            <span class="highlight">Потребление памяти</span> – объекты потребляют больше оперативной памяти, чем примитивные типы данных.
        </p>
        <p>
            <span class="highlight">Снижается производительность</span> – многие вещи технически реализованы иначе, поэтому они используют больше ресурсов.
        </p>
        <p>
            <span class="highlight">Сложно начать</span> – парадигма ООП сложнее функционального программирования, поэтому на старт уходит больше времени.
        </p>
    </div>

    <div class="definition">
        <p>
            <strong>ООП</strong> (Объектно-ориентированное программирование) – это парадигма программирования, основанная на использовании объектов, которые содержат данные и методы для работы с ними.
        </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c54ec543-0e2a-4d70-8c61-5584463d6165', 'Как между собой связаны Iterable, Iterator и «for-each»?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Связь между Iterable, Iterator и for-each</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Связь между Iterable, Iterator и for-each</h1>
    <p>
        Интерфейсы <code>Iterable</code> и <code>Iterator</code>, а также конструкция <code>for-each</code> тесно связаны между собой. Классы, реализующие <code>Iterable</code>, могут использоваться в цикле <code>for-each</code>, который внутренне использует <code>Iterator</code>.
    </p>

    <h2>Основная связь</h2>
    <ul>
        <li>
            <span class="highlight">Iterable:</span>
            <ul>
                <li>Интерфейс <code>Iterable</code> предоставляет метод <code>iterator()</code>, который возвращает объект типа <code>Iterator</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Iterator:</span>
            <ul>
                <li>Интерфейс <code>Iterator</code> используется для обхода элементов коллекции.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">for-each:</span>
            <ul>
                <li>Конструкция <code>for-each</code> автоматически использует итератор, полученный через метод <code>iterator()</code>, для обхода элементов коллекции.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования</h2>
    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

// Использование for-each
for (String element : list) {
    System.out.println(element);
}
</code>
    </pre>
    <p>
        Внутренне цикл <code>for-each</code> работает следующим образом:
    </p>
    <pre>
<code>
Iterator&lt;String&gt; iterator = list.iterator();
while (iterator.hasNext()) {
    String element = iterator.next();
    System.out.println(element);
}
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Классы, реализующие интерфейс <code>Iterable</code>, могут использоваться в цикле <code>for-each</code>, так как он автоматически вызывает метод <code>iterator()</code> и использует <code>Iterator</code> для обхода элементов.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d0dae2f0-4704-43c3-8f8f-24c10f52793a', 'Расскажите про классы-загрузчики и про динамическую загрузку классов', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Классы-загрузчики и динамическая загрузка классов</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Классы-загрузчики и динамическая загрузка классов</h1>
        <p>
            При запуске JVM для загрузки приложения используются следующие загрузчики классов:
        </p>
        <ul>
            <li>
                <span class="highlight">Bootstrap ClassLoader:</span> Главный загрузчик, загружает платформенные классы JDK
                из архива <code>rt.jar</code>.
            </li>
            <li>
                <span class="highlight">AppClassLoader:</span> Системный загрузчик, загружает классы приложения, определенные
                в <code>CLASSPATH</code>.
            </li>
            <li>
                <span class="highlight">SystemClassLoader:</span> Загружает классы приложения, определенные в <code>CLASSPATH</code>.
            </li>
            <li>
                <span class="highlight">Extension ClassLoader:</span> Загрузчик расширений, загружает все необходимые библиотеки
                из директории <code>java.home</code> (обычно это каталог <code>jre/lib/ext</code>).
            </li>
        </ul>
        <p>
            Исключение, которое может возникнуть при загрузке классов, — <code>ClassNotFoundException</code>.
        </p>

        <h2>Динамическая загрузка классов</h2>
        <p>
            Динамическая загрузка классов происходит «на лету» в ходе выполнения программы с помощью
            статического метода <code>Class.forName(имя класса)</code>. Динамическая загрузка полезна, когда
            заранее неизвестно, какой класс понадобится, и решение принимается в ходе выполнения
            программы, передавая имя класса в метод <code>forName()</code>.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Динамическая загрузка классов позволяет гибко управлять загрузкой классов
                в зависимости от условий выполнения программы. Это особенно полезно в приложениях,
                где требуется загружать классы по мере необходимости.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f490bfd3-66d7-4ae8-a1ab-aeeaf90819d9', 'Что такое JRE? Что в него входит?', e'<!DOCTYPE html>
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
    <h1>Что такое JRE?</h1>

    <p>
        <span class="note">JRE</span>, <span class="note">Java Runtime Environment</span> (среда времени выполнения Java) – это минимально необходимая реализация виртуальной машины для исполнения Java-приложений. Состоит из:
    </p>
    <ul>
        <li><span class="note">JVM</span> (виртуальная машина Java),</li>
        <li>стандартного набора библиотек классов Java.</li>
    </ul>

    <div class="definition">
        <p>
            <strong>JRE</strong> – это среда, необходимая для запуска Java-приложений. Она включает в себя JVM и библиотеки, которые обеспечивают выполнение Java-кода.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('20fb05ea-05f0-4381-a576-c9dec9cce970', 'Что такое «локальный класс»? Каковы его особенности?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое «локальный класс»?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Что такое <span class="highlight">«локальный класс»</span>?</h1>
        <p>
            <span class="highlight">Локальный класс (Local inner class)</span> — это вложенный класс, который может быть
            декларирован в любом блоке, в котором разрешается декларировать переменные. Как и
            простые внутренние классы (<code>member inner class</code>), локальные классы имеют имена и могут
            использоваться многократно. Как и анонимные классы, они имеют окружающий их экземпляр
            только тогда, когда применяются в нестатическом контексте.
        </p>

        <h2>Особенности локальных классов:</h2>
        <ul>
            <li>
                <span class="highlight">Видимость:</span> Видны только в пределах блока, в котором объявлены.
            </li>
            <li>
                <span class="highlight">Модификаторы доступа:</span> Не могут быть объявлены как <code>private</code>, <code>public</code>,
                <code>protected</code> или <code>static</code>.
            </li>
            <li>
                <span class="highlight">Статические элементы:</span> Не могут иметь внутри себя статических объявлений
                (полей, методов, классов).
            </li>
            <li>
                <span class="highlight">Доступ к членам внешнего класса:</span> Имеют доступ к полям и методам
                обрамляющего класса.
            </li>
            <li>
                <span class="highlight">Доступ к локальным переменным:</span> Могут обращаться к локальным
                переменным и параметрам метода, если они объявлены с модификатором <code>final</code>
                или являются <code>effectively final</code>.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Локальные классы полезны для создания небольших классов, которые используются
                только в пределах одного метода или блока. Они помогают улучшить читаемость кода,
                ограничивая область их видимости.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e04e605e-a1fd-4816-bf6a-6332c0e6d2c7', 'Может ли статический метод быть переопределен или перегружен?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Может ли статический метод быть переопределен или перегружен?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Может ли статический метод быть переопределен или перегружен?</h1>
        <p>
            <span class="highlight">Перегружен:</span> Да. Статические методы могут быть перегружены так же, как и обычные методы.
            Два статических метода могут иметь одинаковое имя, если количество их параметров или типы
            различаются.
        </p>
        <p>
            <span class="highlight">Переопределен:</span> Нет. Выбор вызываемого статического метода происходит при раннем
            связывании (на этапе компиляции, а не выполнения). Хотя синтаксически переопределение
            статического метода допустимо, выполняться всегда будет метод родительского класса.
        </p>
        <p>
            В целом, к статическим полям и методам рекомендуется обращаться через имя класса, а не
            через объект.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Статические методы не поддерживают полиморфизм, так как их вызов определяется
                на этапе компиляции. Это отличает их от нестатических методов, которые могут быть
                переопределены в подклассах.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('97402309-a07c-44d6-9557-f7334f3b4369', 'Как получить доступ к переопределенным методам родительского класса?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Как получить доступ к переопределенным методам родительского класса?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Как получить доступ к переопределенным методам родительского класса?</h1>
        <p>
            С помощью ключевого слова <code>super</code> мы можем обратиться к любому члену родительского
            класса — методу или полю, если они не определены с модификатором <code>private</code>.
        </p>
        <p>
            Пример использования:
        </p>
        <pre><code>super.method();</code></pre>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Ключевое слово <code>super</code> позволяет вызывать методы и обращаться к полям
                родительского класса, даже если они переопределены в текущем классе. Это полезно,
                например, для расширения функциональности метода родительского класса.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a25a8b6a-2e8e-4f68-9f76-f5d5476cbedc', 'Что можно изменить в сигнатуре метода при переопределении? Можно ли  менять модификаторы (throws и т. п.)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что можно изменить в сигнатуре метода при переопределении?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Что можно изменить в сигнатуре метода при переопределении?</h1>
        <p>
            При переопределении метода:
        </p>
        <ul>
            <li>
                <span class="highlight">Модификатор доступа:</span> Нельзя сузить модификатор доступа (например, с <code>public</code>
                до <code>private</code>), но можно расширить (например, с <code>protected</code> до <code>public</code>). Это
                необходимо для соблюдения принципа подстановки Барбары Лисков.
            </li>
            <li>
                <span class="highlight">Сигнатура метода:</span> Имя и параметры метода нельзя изменять. Они должны оставаться
                такими же, как у метода родительского класса.
            </li>
            <li>
                <span class="highlight">Тип возвращаемого значения:</span> Можно изменить только в сторону сужения типа. Например,
                вместо родительского класса можно вернуть класс-наследник.
            </li>
            <li>
                <span class="highlight">Секция throws:</span> Можно не указывать, но если она уже определена у метода родительского
                класса, то остается действительной. Можно добавлять новые исключения, которые
                являются наследниками уже объявленных или исключения <code>RuntimeException</code>. Порядок
                следования исключений не имеет значения.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> При переопределении метода важно соблюдать правила, чтобы не нарушить
                принцип подстановки Барбары Лисков. Это обеспечивает корректную работу программы
                при замене объектов их подтипами.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b713674a-e093-4fc6-95d1-92f8ac8b97a0', 'Какие побитовые операции вы знаете?', e'<!DOCTYPE html>
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
    <h1>Побитовые операции в Java</h1>

    <p>
        Побитовые операции используются для работы с битами чисел. Они позволяют выполнять операции на уровне битов, что полезно для оптимизации и работы с низкоуровневыми данными.
    </p>

    <h2>Список побитовых операций</h2>
    <div class="operators">
        <div class="operator">~: Побитовый унарный оператор NOT</div>
        <div class="operator">&amp;: Побитовый AND</div>
        <div class="operator">&amp;=: Побитовый AND с присваиванием</div>
        <div class="operator">|: Побитовый OR</div>
        <div class="operator">|=: Побитовый OR с присваиванием</div>
        <div class="operator">^: Побитовый исключающее XOR</div>
        <div class="operator">^=: Побитовый исключающее XOR с присваиванием</div>
        <div class="operator">&gt;&gt;: Сдвиг вправо (деление на 2 в степени сдвига)</div>
        <div class="operator">&gt;&gt;=: Сдвиг вправо с присваиванием</div>
        <div class="operator">&gt;&gt;&gt;: Сдвиг вправо без учета знака</div>
        <div class="operator">&gt;&gt;&gt;=: Сдвиг вправо без учета знака с присваиванием</div>
        <div class="operator">&lt;&lt;: Сдвиг влево (умножение на 2 в степени сдвига)</div>
        <div class="operator">&lt;&lt;=: Сдвиг влево с присваиванием</div>
    </div>

    <div class="definition">
        <p>
            <strong>Побитовые операции</strong> – это операции, которые выполняются над битами чисел. Они используются для оптимизации и работы с низкоуровневыми данными.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('70c469e6-0965-407e-bb26-6b18e7253796', 'Что такое конструктор по умолчанию?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое конструктор по умолчанию?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Что такое <span class="highlight">конструктор по умолчанию</span>?</h1>
        <p>
            Если у какого-либо класса не определить конструктор, то компилятор сгенерирует
            конструктор без аргументов — так называемый <span class="highlight">«конструктор по умолчанию»</span>.
        </p>
        <p>
            Если у класса уже определен какой-либо конструктор, то конструктор по умолчанию создан
            не будет, и, если он необходим, его нужно описывать явно.
        </p>
        <p>
            В классе-наследнике при отсутствии переопределенного конструктора будет использован
            конструктор родителя.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Конструктор по умолчанию автоматически создается только в том случае, если
                в классе не определен ни один конструктор. Если вы добавляете хотя бы один конструктор
                с параметрами, конструктор по умолчанию нужно явно объявить, если он требуется.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ca68b877-f6a3-450e-b3e9-1c24681f9bff', 'К каким конструкциям Java применим модификатор static?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>К каким конструкциям Java применим модификатор static?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>К каким конструкциям Java применим модификатор <span class="highlight">static</span>?</h1>
        <p>
            Модификатор <span class="highlight">static</span> в Java может быть применен к следующим конструкциям:
        </p>
        <ul>
            <li>
                <span class="highlight">Полям:</span> Статические поля принадлежат классу, а не объекту, и существуют в единственном
                экземпляре для всех объектов класса.
            </li>
            <li>
                <span class="highlight">Методам:</span> Статические методы принадлежат классу и могут быть вызваны без создания
                экземпляра класса. Они не могут обращаться к нестатическим членам класса напрямую.
            </li>
            <li>
                <span class="highlight">Вложенным классам:</span> Статические вложенные классы могут обращаться только к статическим
                членам внешнего класса.
            </li>
            <li>
                <span class="highlight">Членам секции import:</span> Статический импорт позволяет использовать статические члены
                другого класса без указания имени класса.
            </li>
            <li>
                <span class="highlight">Блокам инициализации:</span> Статические блоки инициализации выполняются при загрузке
                класса и используются для инициализации статических полей.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Модификатор <code>static</code> используется для создания членов класса, которые
                принадлежат самому классу, а не его экземплярам. Это позволяет управлять данными и
                методами на уровне класса, а не объекта.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7d139c48-1e0a-4ffd-8284-864b5d027acc', 'Логические операторы', e'<!DOCTYPE html>
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
	.operator {
            padding: 5px 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
            font-family: "Courier New", monospace;
            font-size: 14px;
        }
        ul {
            margin-bottom: 15px;
            padding-left: 20px;
        }
        ul li {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Логические операторы в Java</h1>

    <p>
        Логические операторы используются для выполнения операций над логическими значениями (<code>true</code> и <code>false</code>). Они позволяют комбинировать и проверять условия в программе.
    </p>

    <h2>Список логических операторов</h2>
    <div class="operators">
        <div class="operator">&amp;: Логическое AND (И)</div>
        <div class="operator">&amp;&amp;: Сокращенное AND</div>
        <div class="operator">|: Логическое OR (ИЛИ)</div>
        <div class="operator">||: Сокращенное OR</div>
        <div class="operator">^: Логическое XOR (исключающее OR (ИЛИ))</div>
        <div class="operator">!: Логическое унарное NOT (НЕ)</div>
        <div class="operator">&amp;=: AND с присваиванием</div>
        <div class="operator">|=: OR с присваиванием</div>
        <div class="operator">^=: XOR с присваиванием</div>
        <div class="operator">==: Равно</div>
        <div class="operator">!=: Не равно</div>
        <div class="operator">?:: Тернарный (троичный) условный оператор</div>
    </div>

    <div class="definition">
        <p>
            <strong>Логические операторы</strong> – это операторы, которые работают с логическими значениями и используются для проверки и комбинирования условий в программе.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2645e2b8-c863-4f31-826f-7e203a1bc10d', 'Переменные передаются в методы по значению или по ссылке?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Передача переменных в методы</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Передача переменных в методы: по значению или по ссылке?</h1>
        <p>
            В Java параметры всегда передаются только <span class="highlight">по значению</span>, что определяется как
            «скопировать значение и передать копию».
        </p>
        <ul>
            <li>
                <span class="highlight">Примитивные типы:</span> С примитивами передается копия содержимого.
            </li>
            <li>
                <span class="highlight">Ссылочные типы:</span> Со ссылками передается копия ссылки. При этом внутренние
                члены ссылочных типов через такую копию изменить возможно, а вот саму ссылку,
                указывающую на экземпляр — нет.
            </li>
            <li>
                <span class="highlight">Массивы:</span> Массив — это объект, поэтому передается копия ссылки на массив.
            </li>
        </ul>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> В Java нет передачи по ссылке. Передача всегда происходит по значению,
                даже для ссылочных типов. Это означает, что саму ссылку изменить нельзя, но можно
                изменять состояние объекта, на который она указывает.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c9d1ca86-3e0e-4018-b093-9b78a6b813bf', 'Могут ли быть конструкторы у абстрактных классов? Для чего они  нужны?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Конструкторы у абстрактных классов</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Конструкторы у абстрактных классов</h1>
        <p>
            Да, у абстрактных классов могут быть конструкторы. Они необходимы для инициализации
            полей и обеспечения базовой логики, которая будет использоваться в классах-наследниках.
        </p>
        <p>
            В абстрактном классе можно объявить и определить конструкторы. Даже если не объявили
            никакого конструктора, компилятор добавит в абстрактный класс конструктор по умолчанию
            без аргументов.
        </p>
        <p>
            Конструкторы в абстрактных классах часто используются для обеспечения ограничений
            класса или инвариантов, таких как минимальные поля, необходимые для настройки класса.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Конструкторы абстрактных классов не могут быть вызваны напрямую для создания
                экземпляров, но они используются при создании объектов классов-наследников. Это
                позволяет обеспечить правильную инициализацию общих полей и логики.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e7e5da96-5435-4915-9fe3-daf9b11526f5', 'Что означает модификатор final? К чему он может быть применим?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что означает модификатор final?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Что означает модификатор <span class="highlight">final</span>?</h1>
        <p>
            Модификатор <span class="highlight">final</span> может применяться к переменным, параметрам методов, полям, методам
            класса или самим классам. Вот основные особенности:
        </p>
        <ul>
            <li>
                <span class="highlight">Класс:</span> Класс, объявленный как <code>final</code>, не может иметь наследников.
            </li>
            <li>
                <span class="highlight">Метод:</span> Метод, объявленный как <code>final</code>, не может быть переопределен в
                классах-наследниках.
            </li>
            <li>
                <span class="highlight">Поле:</span> Поле, объявленное как <code>final</code>, не может изменить свое значение после
                инициализации.
            </li>
            <li>
                <span class="highlight">Параметры методов:</span> Параметры, объявленные как <code>final</code>, не могут изменять свое
                значение внутри метода.
            </li>
            <li>
                <span class="highlight">Локальные переменные:</span> Для локальных переменных примитивного типа это означает, что
                однажды присвоенное значение не может быть изменено. Для ссылочных переменных
                это означает, что после присвоения объекта нельзя изменить ссылку на данный объект
                (но состояние объекта изменять можно).
            </li>
        </ul>
        <p>
            Следует также отметить, что к <code>abstract</code>-классам нельзя применить модификатор <code>final</code>,
            так как это взаимоисключающие понятия.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Модификатор <code>final</code> используется для создания неизменяемых элементов,
                что помогает повысить безопасность и предсказуемость кода.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('61cad464-c003-4277-b589-4597fdcf237c', 'Какие модификаторы доступа есть в Java? Какие применимы к классам?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Модификаторы доступа в Java</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Модификаторы доступа в Java</h1>
        <p>
            В Java существуют следующие модификаторы доступа:
        </p>
        <ul>
            <li>
                <span class="highlight">private (приватный):</span> Члены класса доступны только внутри класса. Для обозначения
                используется служебное слово <code>private</code>.
            </li>
            <li>
                <span class="highlight">default (package-private, package level):</span> Видимость класса/членов класса только
                внутри пакета. Является модификатором доступа по умолчанию, специальное обозначение
                не требуется.
            </li>
            <li>
                <span class="highlight">protected (защищенный):</span> Члены класса доступны внутри пакета и в наследниках. Для
                обозначения используется служебное слово <code>protected</code>.
            </li>
            <li>
                <span class="highlight">public (публичный):</span> Класс/члены класса доступны всем. Для обозначения используется
                служебное слово <code>public</code>.
            </li>
        </ul>
        <p>
            Последовательность модификаторов по возрастанию уровня закрытости: <code>public</code>,
            <code>protected</code>, <code>default</code>, <code>private</code>.
        </p>
        <p>
            Во время наследования возможно изменение модификаторов доступа в сторону большей
            видимости (для поддержания соответствия принципу подстановки Барбары Лисков).
        </p>
        <p>
            Класс может быть объявлен с модификатором <code>public</code> или <code>default</code>.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Модификаторы доступа позволяют контролировать уровень видимости членов
                класса, что способствует инкапсуляции и защите данных. Выбор модификатора зависит
                от того, насколько широко должен быть доступен тот или иной элемент класса.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('33f1f2b6-5852-47f9-828a-34eb3b4464ab', 'Где и для чего используется модификатор abstract?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Модификатор abstract</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Модификатор <span class="highlight">abstract</span></h1>
        <p>
            Класс, помеченный модификатором <span class="highlight">abstract</span>, называется абстрактным классом. Такие
            классы могут выступать только предками для других классов. Создавать экземпляры
            самого абстрактного класса не разрешается. При этом наследниками абстрактного
            класса могут быть как другие абстрактные классы, так и классы, допускающие создание
            объектов.
        </p>
        <p>
            Метод, помеченный ключевым словом <code>abstract</code>, — это абстрактный метод, то есть метод,
            который не имеет реализации. Если в классе присутствует хотя бы один абстрактный
            метод, то весь класс должен быть объявлен абстрактным.
        </p>
        <p>
            Использование абстрактных классов и методов позволяет описать некий шаблон объекта,
            который должен быть реализован в других классах. В них же самих описывается лишь
            общее для всех потомков поведение.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Абстрактные классы и методы используются для создания базовой структуры,
                которая должна быть реализована в классах-наследниках. Это позволяет обеспечить
                единый интерфейс для всех подклассов, сохраняя гибкость в реализации.
            </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fa81dc92-f331-497d-83b0-e77ecb9a50af', 'Дайте определение понятию «конструктор»', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Определение понятия «конструктор»</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Определение понятия <span class="highlight">«конструктор»</span></h1>
        <p>
            <span class="highlight">Конструктор</span> — это специальный метод, у которого отсутствует возвращаемый тип и который
            имеет то же имя, что и класс, в котором он используется. Конструктор вызывается при
            создании нового объекта класса и определяет действия, необходимые для его инициализации.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Конструкторы могут быть перегружены, то есть в классе может быть несколько
                конструкторов с разными параметрами. Если конструктор не определен явно, компилятор
                автоматически создает конструктор по умолчанию без параметров.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('94412225-c206-4cf3-8e0e-b4fa2c979cc4', 'Как можно конфигурировать Spring без XML?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Конфигурация Spring без XML</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Конфигурация Spring без XML</h1>
    <p>
        Современные Spring приложения всё реже используют XML для конфигурации, предпочитая более гибкие и удобные подходы, такие как Java-конфигурация и аннотации. В этом руководстве мы рассмотрим, как можно конфигурировать Spring приложение без использования XML.
    </p>

    <h2>1. Использование Java-конфигурации</h2>
    <p>
        <span class="highlight">Java-конфигурация</span> позволяет настроить Spring приложение с помощью обычных Java-классов. Для этого используется аннотация <code>@Configuration</code> и методы, аннотированные <code>@Bean</code>.
    </p>

    <h3>Пример Java-конфигурации:</h3>
    <pre><code>
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

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

    <h2>2. Использование аннотаций</h2>
    <p>
        <span class="highlight">Аннотации</span> позволяют настроить Spring приложение прямо в коде, без необходимости создания отдельных конфигурационных файлов. Основные аннотации включают <code>@Component</code>, <code>@Service</code>, <code>@Repository</code>, <code>@Controller</code> и <code>@Autowired</code>.
    </p>

    <h3>Пример использования аннотаций:</h3>
    <pre><code>
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

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

    <h2>3. Использование Spring Boot</h2>
    <p>
        <span class="highlight">Spring Boot</span> значительно упрощает конфигурацию Spring приложений, автоматически настраивая многие аспекты приложения. Spring Boot использует аннотации и конфигурационные файлы в формате <code>application.properties</code> или <code>application.yml</code>.
    </p>

    <h3>Пример конфигурации в Spring Boot:</h3>
    <pre><code>
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
    </code></pre>

    <h3>Пример конфигурационного файла <code>application.properties</code>:</h3>
    <pre><code>
server.port=8080
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=password
    </code></pre>

    <h2>4. Использование профилей (Profiles)</h2>
    <p>
        <span class="highlight">Профили</span> позволяют настраивать приложение для разных сред (например, разработка, тестирование, production). В Spring Boot профили можно активировать с помощью файлов <code>application-{profile}.properties</code> или <code>application-{profile}.yml</code>.
    </p>

    <h3>Пример использования профилей:</h3>
    <pre><code>
# application-dev.properties
server.port=8080
spring.datasource.url=jdbc:h2:mem:testdb

# application-prod.properties
server.port=80
spring.datasource.url=jdbc:mysql://localhost:3306/mydb
    </code></pre>

    <h3>Активация профиля:</h3>
    <pre><code>
java -jar myapp.jar --spring.profiles.active=prod
    </code></pre>

    <h2>Рекомендации по конфигурации Spring без XML</h2>
    <p>
        <span class="highlight">1. Используйте Java-конфигурацию для сложных настроек:</span> Это делает конфигурацию более гибкой и удобной для поддержки.
    </p>
    <p>
        <span class="highlight">2. Используйте аннотации для простых настроек:</span> Аннотации делают код более читаемым и уменьшают количество конфигурационных файлов.
    </p>
    <p>
        <span class="highlight">3. Используйте Spring Boot для автоматической конфигурации:</span> Spring Boot значительно упрощает настройку приложения и уменьшает количество boilerplate-кода.
    </p>
    <p>
        <span class="highlight">4. Используйте профили для разных сред:</span> Это позволяет легко переключаться между конфигурациями для разработки, тестирования и production.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Конфигурация Spring без XML делает приложение более гибким и удобным для поддержки. Используйте современные подходы, такие как Java-конфигурация, аннотации и Spring Boot, чтобы упростить разработку и улучшить качество вашего приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fff6658e-6290-4012-9a48-007bd0c660fa', 'Почему char[] предпочтительнее String для хранения пароля?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему char[] предпочтительнее String для хранения пароля?</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #DCDDE7FF;
            color: #333;
        }
        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 20px;
        }
        .content {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            margin: 0 auto;
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
        <h1>Почему <code>char[]</code> предпочтительнее <code>String</code> для хранения пароля?</h1>
        <p>
            С момента создания строка остается в пуле до тех пор, пока не будет удалена сборщиком мусора.
            Поэтому даже после окончания использования пароля он некоторое время продолжает оставаться доступным
            в памяти, и способа избежать этого не существует. Это представляет определенный риск для безопасности,
            поскольку кто-либо, имеющий доступ к памяти, сможет найти пароль в виде текста.
        </p>
        <p>
            В случае использования массива символов (<code>char[]</code>) для хранения пароля имеется возможность
            очистить его сразу по окончанию работы с паролем, позволяя избежать риска безопасности,
            свойственного строке.
        </p>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Использование <code>char[]</code> позволяет вручную очистить
                данные из памяти, что делает его более безопасным для хранения чувствительной информации,
                такой как пароли.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('da4a2b31-a8f4-4d8e-9c68-3545960c01b4', 'Как проблема ромбовидного наследования решена в java?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Как проблема ромбовидного наследования решена в Java?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Как проблема ромбовидного наследования решена в Java?</h1>
        <p>
            В Java нет поддержки множественного наследования классов. Предположим, что <code>SuperClass</code> — это
            абстрактный класс, описывающий некоторый метод, а классы <code>ClassA</code> и <code>ClassB</code> — обычные
            классы-наследники <code>SuperClass</code>, а класс <code>ClassC</code> наследуется от <code>ClassA</code> и <code>ClassB</code>
            одновременно. Вызов метода родительского класса приведет к неопределенности, так как
            компилятор не знает, метод какого именно суперкласса должен быть вызван. Это и есть
            основная причина, почему в Java нет поддержки множественного наследования классов.
        </p>
        <p>
            Интерфейсы — это только резервирование/описание метода, а реализация самого метода будет
            в конкретном классе, реализующем эти интерфейсы. Таким образом, исключается неопределенность
            при множественном наследовании интерфейсов. В случае, если вызывается <code>default</code>-метод из
            интерфейса, его обязательно нужно будет переопределить.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> В Java проблема ромбовидного наследования решена путем запрета множественного
                наследования классов. Вместо этого используются интерфейсы, которые позволяют
                реализовать множественное наследование без неоднозначности. Если возникает конфликт
                из-за <code>default</code>-методов в интерфейсах, компилятор требует явного переопределения
                метода в классе.
            </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d51b6449-49f6-4055-a63d-dd624b9a5c75', 'Почему строка является популярным ключом в HashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему строка является популярным ключом в HashMap в Java?</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
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
        <h1>Почему строка является популярным ключом в <code>HashMap</code> в Java?</h1>
        <p>
            Поскольку строки неизменяемы, их хеш-код вычисляется и кешируется в момент создания,
            не требуя повторного пересчета при дальнейшем использовании. Поэтому в качестве ключа
            <code>HashMap</code> они будут обрабатываться быстрее.
        </p>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Неизменяемость строки обеспечивает стабильность хеш-кода,
                что делает её идеальным кандидатом для использования в качестве ключа в <code>HashMap</code>.
            </p>
        </div>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('996d9d17-d562-47c3-8f33-99a53a16864d', 'Какие особенности Spring Framework?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Особенности Spring Framework</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Особенности Spring Framework</h1>
    <p>
        <span class="highlight">Spring Framework</span> — это один из самых популярных фреймворков для разработки enterprise-приложений на Java. Он предоставляет множество возможностей для упрощения разработки, повышения производительности и обеспечения гибкости. Вот основные особенности Spring Framework, которые делают его таким мощным инструментом.
    </p>

    <h2>1. Инверсия управления (IoC) и Dependency Injection (DI)</h2>
    <p>
        <span class="highlight">IoC (Inversion of Control):</span> Spring Framework использует принцип инверсии управления, при котором управление объектами и их зависимостями передаётся контейнеру Spring. Это позволяет разработчикам сосредоточиться на бизнес-логике, а не на управлении жизненным циклом объектов.
    </p>
    <p>
        <span class="highlight">DI (Dependency Injection):</span> Spring автоматически внедряет зависимости между объектами, что делает код более модульным и тестируемым.
    </p>

    <h3>Пример использования DI:</h3>
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

    <h2>2. Аспектно-ориентированное программирование (AOP)</h2>
    <p>
        <span class="highlight">AOP (Aspect-Oriented Programming):</span> Spring поддерживает аспектно-ориентированное программирование, что позволяет разделять сквозные задачи (например, логирование, транзакции, безопасность) от основной бизнес-логики.
    </p>

    <h3>Пример использования AOP для логирования:</h3>
    <pre><code>
@Aspect
@Component
public class LoggingAspect {
    @Before("execution(* com.example.service.*.*(..))")
    public void logBefore(JoinPoint joinPoint) {
        System.out.println("Метод вызван: " + joinPoint.getSignature().getName());
    }
}
    </code></pre>

    <h2>3. Поддержка транзакций</h2>
    <p>
        <span class="highlight">Транзакции:</span> Spring предоставляет мощный механизм управления транзакциями, который поддерживает как программное, так и декларативное управление транзакциями.
    </p>

    <h3>Пример декларативного управления транзакциями:</h3>
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

    <h2>4. Интеграция с базами данных</h2>
    <p>
        <span class="highlight">Spring Data:</span> Spring предоставляет удобные инструменты для работы с базами данных, такие как Spring Data JPA, Spring Data MongoDB и другие. Это упрощает доступ к данным и уменьшает количество boilerplate-кода.
    </p>

    <h3>Пример использования Spring Data JPA:</h3>
    <pre><code>
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
    </code></pre>

    <h2>5. Веб-разработка</h2>
    <p>
        <span class="highlight">Spring MVC:</span> Spring предоставляет мощный фреймворк для разработки веб-приложений, который поддерживает RESTful-сервисы, обработку запросов и многое другое.
    </p>

    <h3>Пример REST-контроллера:</h3>
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
}
    </code></pre>

    <h2>6. Безопасность</h2>
    <p>
        <span class="highlight">Spring Security:</span> Spring предоставляет мощный фреймворк для обеспечения безопасности приложений, включая аутентификацию, авторизацию и защиту от атак.
    </p>

    <h3>Пример настройки Spring Security:</h3>
    <pre><code>
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .antMatchers("/public/**").permitAll()
                .anyRequest().authenticated()
            .and()
            .formLogin();
    }
}
    </code></pre>

    <h2>7. Интеграция с другими технологиями</h2>
    <p>
        <span class="highlight">Интеграция:</span> Spring легко интегрируется с другими технологиями, такими как Hibernate, Kafka, RabbitMQ, и многими другими.
    </p>

    <h2>8. Тестирование</h2>
    <p>
        <span class="highlight">Spring Test:</span> Spring предоставляет мощные инструменты для тестирования, такие как поддержка интеграционных тестов, мокирование зависимостей и многое другое.
    </p>

    <h3>Пример интеграционного теста:</h3>
    <pre><code>
@SpringBootTest
public class UserServiceIntegrationTest {
    @Autowired
    private UserService userService;

    @Test
    public void testSaveUser() {
        User user = new User("username", "password");
        userService.saveUser(user);
        assertNotNull(user.getId());
    }
}
    </code></pre>

    <h2>Рекомендации по использованию Spring Framework</h2>
    <p>
        <span class="highlight">1. Используйте DI для управления зависимостями:</span> Это делает код более модульным и тестируемым.
    </p>
    <p>
        <span class="highlight">2. Применяйте AOP для сквозных задач:</span> Это упрощает поддержку и улучшает читаемость кода.
    </p>
    <p>
        <span class="highlight">3. Используйте Spring Data для работы с базами данных:</span> Это уменьшает количество boilerplate-кода и упрощает доступ к данным.
    </p>
    <p>
        <span class="highlight">4. Обеспечьте безопасность с помощью Spring Security:</span> Это защитит ваше приложение от атак.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Spring Framework — это мощный инструмент, который значительно упрощает разработку enterprise-приложений. Используйте его возможности для создания надёжных, масштабируемых и поддерживаемых приложений.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3bc53949-6e2d-4522-9b50-7eba25a185a9', 'Что означает модификатор static?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что означает модификатор static?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Что означает модификатор <span class="highlight">static</span>?</h1>
        <p>
            Модификатор <span class="highlight">static</span> в Java используется для создания членов класса, которые принадлежат
            самому классу, а не его экземплярам. Вот основные особенности:
        </p>
        <ul>
            <li>
                <span class="highlight">Статическая переменная:</span> Это переменная, принадлежащая классу, а не объекту. Она
                существует в единственном экземпляре для всех объектов класса.
            </li>
            <li>
                <span class="highlight">Статический класс:</span> Это вложенный класс, который может обращаться только к
                статическим полям обертывающего его класса.
            </li>
            <li>
                <span class="highlight">Статический метод:</span> Внутри статического метода нельзя вызвать нестатический метод
                по имени класса. Однако можно обратиться к статическому методу через экземпляр класса.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Статические члены класса используются для хранения данных или методов,
                которые должны быть общими для всех экземпляров класса. Они загружаются в память при
                загрузке класса и существуют до завершения работы программы.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a4b01ecb-0243-4331-9845-44c78924a9f4', 'Ключевые слова в java', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ключевые слова в Java</title>
    <style>
        body {
            font-family: Arial, sans-serif;
                        line-height: 1.6;
                        background-color: #DCDDE7FF;
                        color: #333;
        }
        h1, h2, h3 {
            color: #333;
        }
        p {
            margin-bottom: 15px;
        }
        .keywords {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }
        .keyword {
            padding: 5px 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
            font-family: "Courier New", monospace;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <h1>Ключевые слова в Java</h1>

    <p>
        В Java существует набор зарезервированных ключевых слов, которые используются для определения синтаксиса и структуры программы. Эти слова нельзя использовать в качестве идентификаторов (например, имен переменных, методов или классов).
    </p>

    <div class="keywords">
        <div class="keyword">abstract</div>
        <div class="keyword">assert</div>
        <div class="keyword">break</div>
        <div class="keyword">case</div>
        <div class="keyword">catch</div>
        <div class="keyword">class</div>
        <div class="keyword">const*</div>
        <div class="keyword">continue</div>
        <div class="keyword">default</div>
        <div class="keyword">do</div>
        <div class="keyword">else</div>
        <div class="keyword">enum</div>
        <div class="keyword">extends</div>
        <div class="keyword">final</div>
        <div class="keyword">finally</div>
        <div class="keyword">for</div>
        <div class="keyword">goto*</div>
        <div class="keyword">if</div>
        <div class="keyword">implements</div>
        <div class="keyword">import</div>
        <div class="keyword">instanceof</div>
        <div class="keyword">interface</div>
        <div class="keyword">native</div>
        <div class="keyword">new</div>
        <div class="keyword">package</div>
        <div class="keyword">return</div>
        <div class="keyword">static</div>
        <div class="keyword">strictfp</div>
        <div class="keyword">super</div>
        <div class="keyword">switch</div>
        <div class="keyword">synchronized</div>
        <div class="keyword">this</div>
        <div class="keyword">throw</div>
        <div class="keyword">throws</div>
        <div class="keyword">transient</div>
        <div class="keyword">try</div>
        <div class="keyword">void</div>
        <div class="keyword">volatile</div>
        <div class="keyword">while</div>
    </div>

    <div class="definition">
        <p>
            <strong>Ключевые слова</strong> – это зарезервированные слова в языке Java, которые используются для определения синтаксиса и структуры программы. Они не могут быть использованы в качестве идентификаторов.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4637f443-a970-435b-8d66-b442b2f304a2', ' Что такое Heap- и Stack-память в Java?', e'<!DOCTYPE html>
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
    <h1>Heap- и Stack-память в Java</h1>

    <h2>Heap (куча)</h2>
    <p>
        <span class="note">Heap</span> (куча) используется Java Runtime для выделения памяти под объекты и классы. Создание нового объекта также происходит в куче. Она же является областью работы сборщика мусора. Любой объект, созданный в куче, имеет глобальный доступ и на него могут ссылаться из любой части приложения.
    </p>

    <h2>Stack (стек)</h2>
    <p>
        <span class="note">Stack</span> (стек) – это область хранения данных, которая также находится в общей оперативной памяти (RAM). Всякий раз, когда вызывается метод, в памяти стека создается новый блок, который содержит примитивы и ссылки на другие объекты в методе. Как только метод заканчивает работу, блок перестает использоваться, тем самым предоставляя доступ для следующего метода. Размер стековой памяти намного меньше объема памяти в куче. Стек в Java работает по схеме <span class="note">LIFO</span> (последний-зашел-первый-вышел).
    </p>

    <h2>Различия между Heap и Stack памятью</h2>
    <ul>
        <li>куча используется всеми частями приложения, в то время как стек используется только одним потоком исполнения программы;</li>
        <li>всякий раз, когда создается объект, он всегда хранится в куче, а в памяти стека содержится лишь ссылка на него. Память стека содержит только локальные переменные примитивных типов и ссылки на объекты в куче;</li>
        <li>объекты в куче доступны из любой точки программы, в то время как стековая память не может быть доступна для других потоков;</li>
        <li>стековая память существует лишь какое-то время работы программы, а память в куче живет с самого начала до конца работы программы;</li>
        <li>если память стека полностью занята, то Java Runtime бросает исключение <code>java.lang.StackOverflowError</code>, если заполнена память кучи, то бросается исключение <code>java.lang.OutOfMemoryError: Java Heap Space</code>;</li>
        <li>размер памяти стека намного меньше памяти в куче;</li>
        <li>из-за простоты распределения памяти стековая память работает намного быстрее кучи.</li>
    </ul>

    <h2>Настройка памяти</h2>
    <p>
        Для определения начального и максимального размера памяти в куче используются опции JVM <code>-Xms</code> и <code>-Xmx</code>. Для стека определить размер памяти можно с помощью опции <code>-Xss</code>.
    </p>

    <div class="definition">
        <p>
            <strong>Heap</strong> – это область памяти для хранения объектов, доступная всему приложению. <strong>Stack</strong> – это область памяти для хранения локальных переменных и вызовов методов, доступная только текущему потоку исполнения.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d57b6d8f-3666-4357-b8ae-da64bcc79113', 'Принципы ООП', e'<!DOCTYPE html>
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
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Принципы ООП</h1>

        <h2>Инкапсуляция</h2>
        <p>
            <span class="highlight">Инкапсуляция</span> – это свойство системы, позволяющее объединить данные и методы,
            работающие с ними, в классе и скрыть детали реализации от пользователя, открыв только
            то, что необходимо при последующем использовании.
        </p>
        <p>
            Цель инкапсуляции – уйти от зависимости внешнего интерфейса класса (то, что могут
            использовать другие классы) от реализации. Чтобы малейшее изменение в классе не влекло
            за собой изменение внешнего поведения класса.
        </p>

        <h2>Наследование</h2>
        <p>
            <span class="highlight">Наследование</span> – это свойство системы, позволяющее описать новый класс на основе уже
            существующего с частично или полностью заимствующейся функциональностью.
        </p>
        <p>
            Класс, от которого производится наследование, называется <span class="highlight">предком</span>, <span class="highlight">базовым</span> или
            <span class="highlight">родительским</span>. Новый класс – <span class="highlight">потомком</span>, <span class="highlight">наследником</span> или <span class="highlight">производным классом</span>.
        </p>

        <h2>Полиморфизм</h2>
        <p>
            <span class="highlight">Полиморфизм</span> – это свойство системы использовать объекты с одинаковым интерфейсом
            без информации о типе и внутренней структуре объекта.
        </p>
        <p>
            Преимуществом полиморфизма является то, что он помогает снижать сложность программ,
            разрешая использование одного и того же интерфейса для задания единого набора
            действий. Выбор же конкретного действия, в зависимости от ситуации, возлагается на
            компилятор языка программирования. Отсюда следует ключевая особенность
            полиморфизма – использование объекта производного класса вместо объекта базового
            (потомки могут изменять родительское поведение, даже если обращение к ним будет
            производиться по ссылке родительского типа).
        </p>

        <h2>Абстракция</h2>
        <p>
            <span class="highlight">Абстрагирование</span> – это способ выделить набор общих характеристик объекта, исключая из
            рассмотрения частные и незначимые. Соответственно, <span class="highlight">абстракция</span> – это набор всех таких
            характеристик.
        </p>

        <div class="note">
            <p>
                Принципы ООП (инкапсуляция, наследование, полиморфизм и абстракция) являются основой объектно-ориентированного программирования. Они помогают создавать структурированный, гибкий и легко поддерживаемый код.
            </p>
        </div></body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b64d8fdd-3175-4d9b-8380-11c39e47ea8e', ' Расскажите про вложенные классы. В каких случаях они применяются?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вложенные классы в Java</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Вложенные классы в Java</h1>
        <p>
            Класс называется <span class="highlight">вложенным (Nested class)</span>, если он определен внутри другого класса.
            Вложенный класс должен создаваться только для того, чтобы обслуживать обрамляющий его класс.
            Если вложенный класс оказывается полезен в каком-либо ином контексте, он должен стать классом
            верхнего уровня.
        </p>
        <p>
            Вложенные классы имеют доступ ко всем (в том числе приватным) полям и методам внешнего класса,
            но не наоборот. Из-за этого разрешения использование вложенных классов приводит к некоторому
            нарушению инкапсуляции.
        </p>

        <h2>Категории вложенных классов:</h2>
        <ul>
            <li>
                <span class="highlight">Статические вложенные классы (Static nested classes):</span>
                <ul>
                    <li>Есть возможность обращения к внутренним статическим полям и методам класса-обертки.</li>
                    <li>Обрамляющий класс не имеет доступа к статическим полям вложенного класса.</li>
                    <li>Из статического вложенного класса нет доступа к нестатическим полям внешнего класса.</li>
                </ul>
            </li>
            <li>
                <span class="highlight">Внутренние классы (Inner или Non-static Nested):</span>
                <ul>
                    <li>Есть возможность обращения к внутренним полям и методам класса-обертки.</li>
                    <li>Не может иметь статических объявлений.</li>
                    <li>Внутри такого класса нельзя объявить перечисления.</li>
                    <li>Если нужно явно получить <code>this</code> внешнего класса – <code>OuterClass.this</code>.</li>
                </ul>
            </li>
            <li>
                <span class="highlight">Локальные классы:</span>
                <ul>
                    <li>Видны только в пределах блока, в котором объявлены.</li>
                    <li>Не могут быть объявлены как <code>private</code>, <code>public</code>, <code>protected</code> или <code>static</code>.</li>
                    <li>Не могут иметь внутри себя статических объявлений (полей, методов, классов), но могут иметь константы (<code>static final</code>).</li>
                    <li>Имеют доступ к полям и методам обрамляющего класса.</li>
                    <li>Можно обращаться к локальным переменным и параметрам метода, если они объявлены с модификатором <code>final</code> или являются <code>effectively final</code>.</li>
                </ul>
            </li>
            <li>
                <span class="highlight">Анонимные классы:</span>
                <ul>
                    <li>Локальный класс без имени.</li>
                    <li>Создается, чтобы его сразу же применить.</li>
                </ul>
            </li>
        </ul>

        <h2>Применение вложенных классов:</h2>
        <p>
            Вложенный класс – это итератор внутри коллекции. Если связь между объектом внутреннего класса
            и объектом внешнего класса не нужна, можно сделать внутренний класс статическим (<code>static</code>).
            Такой класс называют вложенным (<code>nested</code>).
        </p>
        <p>
            Применение статического внутреннего класса означает следующее:
        </p>
        <ul>
            <li>Для создания объекта статического внутреннего класса не нужен объект внешнего класса.</li>
            <li>Из объекта вложенного класса нельзя обращаться к нестатическим членам внешнего класса.</li>
        </ul>

        <h2>Рекомендации по применению:</h2>
        <ul>
            <li>
                <span class="highlight">Нестатический:</span> Если вложенный класс должен быть виден за пределами одного
                метода или он слишком длинный для того, чтобы его можно было удобно разместить в границах
                одного метода, и если каждому экземпляру такого класса необходима ссылка на включающий
                его экземпляр.
            </li>
            <li>
                <span class="highlight">Статический:</span> Если ссылка на обрамляющий класс не требуется.
            </li>
            <li>
                <span class="highlight">Локальный:</span> Если класс необходим только внутри какого-то метода и требуется
                создавать экземпляры этого класса только в этом методе.
            </li>
            <li>
                <span class="highlight">Анонимный:</span> Если к тому же применение класса сводится к использованию лишь в
                одном месте и уже существует тип, характеризующий этот класс.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Вложенные классы используются для логической группировки классов,
                которые используются только в одном месте, а также для улучшения читаемости и
                поддержки кода. Однако их следует применять с осторожностью, чтобы не нарушать
                принципы инкапсуляции.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9c7f92a1-37ee-46bd-abbc-732f57aa6659', 'Что такое дефолтные методы интерфейсов? Для чего они нужны?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Дефолтные методы интерфейсов</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Дефолтные методы интерфейсов</h1>
        <p>
            В JDK 8 была добавлена функциональность <span class="highlight">дефолтных методов</span> с модификатором
            <code>default</code>. Теперь интерфейсы могут иметь реализацию методов по умолчанию, которая
            используется, если класс, реализующий данный интерфейс, не реализует этот метод.
        </p>

        <h2>Для чего нужны дефолтные методы?</h2>
        <ul>
            <li>
                <span class="highlight">Обратная совместимость:</span> Дефолтные методы позволяют добавлять новые методы в
                интерфейсы без необходимости изменять все классы, которые их реализуют. Это
                особенно полезно для поддержки обратной совместимости.
            </li>
            <li>
                <span class="highlight">Решение проблемы множественного наследования:</span> Если один или несколько методов
                добавляются к интерфейсу, все реализации будут вынуждены их реализовывать.
                Дефолтные методы позволяют избежать этой проблемы, предоставляя реализацию по
                умолчанию.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Дефолтные методы позволяют расширять интерфейсы, не нарушая работу
                существующих классов, которые их реализуют. Это делает их мощным инструментом для
                эволюции API и поддержки обратной совместимости.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7c83d951-3d3f-4a67-ab43-741df94654ed', 'В чем разница между членом экземпляра класса и статическим членом  класса?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между членом экземпляра класса и статическим членом класса</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Разница между членом экземпляра класса и статическим членом класса</h1>
        <p>
            <span class="highlight">Статические члены класса</span> принадлежат самому классу, а не его экземплярам. Доступ к ним
            возможен даже без создания объекта класса. Поля, помеченные <code>static</code>, инициализируются
            при загрузке класса.
        </p>
        <p>
            На методы, объявленные как <code>static</code>, накладываются следующие ограничения:
        </p>
        <ul>
            <li>Могут вызывать только другие статические методы.</li>
            <li>Должны осуществлять доступ только к статическим переменным.</li>
            <li>Не могут ссылаться на члены типа <code>this</code> или <code>super</code>.</li>
        </ul>
        <p>
            В отличие от статических, <span class="highlight">члены экземпляра класса</span> принадлежат конкретному объекту и могут
            иметь разные значения для каждого. Вызов метода экземпляра возможен только после
            предварительного создания объекта класса.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Статические члены используются для данных и методов, которые должны быть общими
                для всех экземпляров класса, а члены экземпляра — для данных и методов, которые
                зависят от конкретного объекта.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a465a919-9ba2-47f3-b927-2fbf1d0120ed', 'Почему в некоторых интерфейсах вообще не определяют методов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Маркерные интерфейсы</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Маркерные интерфейсы</h1>
    <p>
        В некоторых интерфейсах вообще не определяют методов. Это так называемые
        <span class="highlight">маркерные интерфейсы</span>. Они просто указывают, что класс относится к
        определённому типу.
    </p>

    <h2>Для чего нужны маркерные интерфейсы?</h2>
    <ul>
        <li>
            <span class="highlight">Указание типа:</span> Маркерные интерфейсы служат для обозначения того, что класс
            обладает определёнными свойствами или возможностями. Например, интерфейс
            <code>Cloneable</code> указывает, что класс поддерживает механизм клонирования.
        </li>
        <li>
            <span class="highlight">Простота использования:</span> Они не требуют реализации методов, что делает их
            простыми в использовании и интеграции в существующий код.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Маркерные интерфейсы не содержат методов, но они играют важную роль в
            определении поведения классов на уровне типов. Это делает их полезными для
            классификации объектов и управления их поведением в runtime.
        </p>
    </div>

    <h2>Примеры маркерных интерфейсов</h2>
    <ul>
        <li>
            <code>Cloneable</code> — указывает, что объект может быть клонирован с помощью метода
            <code>clone()</code>.
        </li>
        <li>
            <code>Serializable</code> — указывает, что объект может быть сериализован (преобразован в
            последовательность байтов для сохранения или передачи).
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6a2906ef-1dd6-43b8-b101-b99203525acf', 'Может ли быть абстрактный класс без абстрактных методов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Может ли быть абстрактный класс без абстрактных методов?</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Может ли быть абстрактный класс без абстрактных методов?</h1>
        <p>
            Да, класс может быть абстрактным без единого абстрактного метода, если у него указан
            модификатор <code>abstract</code>.
        </p>
        <p>
            Такой класс нельзя инстанцировать (создавать объекты), но он может содержать обычные
            методы с реализацией и поля. Это может быть полезно, если нужно запретить создание
            экземпляров класса, но при этом оставить возможность наследования и использования
            его функциональности.
        </p>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Абстрактный класс без абстрактных методов используется для создания базовых
                классов, которые предоставляют общую функциональность, но не предназначены для
                непосредственного создания объектов.
            </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a507ca8a-4530-49d8-ae9c-5633d91b6ba9', 'Можно ли сузить уровень доступа/тип возвращаемого значения при  переопределении метода?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Можно ли сузить уровень доступа/тип возвращаемого значения при переопределении метода?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Можно ли сузить уровень доступа/тип возвращаемого значения при переопределении метода?</h1>
        <p>
            При переопределении метода:
        </p>
        <ul>
            <li>
                <span class="highlight">Модификатор доступа:</span> Нельзя сузить модификатор доступа к методу (например, с
                <code>public</code> до <code>private</code>), но можно расширить (например, с <code>protected</code> до <code>public</code>).
            </li>
            <li>
                <span class="highlight">Тип возвращаемого значения:</span> Нельзя изменить тип возвращаемого значения, но можно
                сузить возвращаемое значение, если они совместимы. Например, если метод возвращает
                объект класса, а переопределенный метод возвращает класс-наследник.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Эти правила обеспечивают соблюдение принципа подстановки Барбары Лисков,
                который гласит, что объекты в программе должны быть заменяемы экземплярами их
                подтипов без изменения правильности работы программы.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('31deedbe-4927-4045-b1ba-bce1f10946b0', 'Могут ли нестатические методы перегрузить статические?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Могут ли нестатические методы перегрузить статические?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Могут ли нестатические методы перегрузить статические?</h1>
        <p>
            Да, нестатические методы могут перегрузить статические. В итоге получится два разных метода:
        </p>
        <ul>
            <li>
                <span class="highlight">Статический метод:</span> Принадлежит классу и доступен через его имя.
            </li>
            <li>
                <span class="highlight">Нестатический метод:</span> Принадлежит конкретному объекту и доступен через вызов
                метода этого объекта.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Перегрузка статических и нестатических методов возможна, так как они
                считаются разными методами с точки зрения Java. Однако это может привести к путанице,
                поэтому рекомендуется избегать таких ситуаций.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('86a1f048-08cf-49ae-a634-e6a1edf8d1c5', 'Как выполнить тестирование вашего Spring приложения?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Тестирование Spring приложения</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Тестирование Spring приложения</h1>
    <p>
        Тестирование Spring приложения — это важная часть разработки, которая помогает убедиться в корректности работы приложения и предотвратить ошибки. Spring предоставляет мощные инструменты для тестирования, такие как <span class="highlight">Spring TestContext Framework</span>, <span class="highlight">Mockito</span> и <span class="highlight">JUnit</span>. В этом руководстве мы рассмотрим, как выполнить тестирование Spring приложения.
    </p>

    <h2>Основные типы тестов</h2>
    <p>
        <span class="highlight">1. Модульные тесты (Unit Tests):</span> Тестируют отдельные компоненты приложения, такие как сервисы или репозитории, изолированно от других компонентов.
    </p>
    <p>
        <span class="highlight">2. Интеграционные тесты (Integration Tests):</span> Тестируют взаимодействие между несколькими компонентами приложения, включая базы данных, внешние сервисы и другие зависимости.
    </p>
    <p>
        <span class="highlight">3. Сквозные тесты (End-to-End Tests):</span> Тестируют приложение в целом, включая пользовательский интерфейс и взаимодействие с внешними системами.
    </p>

    <h2>Модульные тесты с использованием JUnit и Mockito</h2>
    <p>
        Модульные тесты позволяют тестировать отдельные компоненты приложения, такие как сервисы, изолированно от других компонентов. Для этого используются фреймворки <span class="highlight">JUnit</span> и <span class="highlight">Mockito</span>.
    </p>

    <h3>Пример модульного теста для сервиса:</h3>
    <pre><code>
import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

public class UserServiceTest {

    @Mock
    private UserRepository userRepository;

    @InjectMocks
    private UserService userService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testGetUserById() {
        User user = new User(1L, "John Doe");
        when(userRepository.findById(1L)).thenReturn(java.util.Optional.of(user));

        User result = userService.getUserById(1L);

        assertNotNull(result);
        assertEquals("John Doe", result.getName());
        verify(userRepository).findById(1L);
    }
}
    </code></pre>

    <h2>Интеграционные тесты с использованием Spring TestContext Framework</h2>
    <p>
        Интеграционные тесты позволяют тестировать взаимодействие между несколькими компонентами приложения. Spring предоставляет <span class="highlight">Spring TestContext Framework</span>, который упрощает создание и выполнение интеграционных тестов.
    </p>

    <h3>Пример интеграционного теста:</h3>
    <pre><code>
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@SpringBootTest
public class UserServiceIntegrationTest {

    @Autowired
    private UserService userService;

    @Test
    public void testCreateUser() {
        User user = new User(null, "Jane Doe");
        User savedUser = userService.createUser(user);

        assertNotNull(savedUser.getId());
        assertEquals("Jane Doe", savedUser.getName());
    }
}
    </code></pre>

    <h2>Сквозные тесты с использованием Spring Boot и TestRestTemplate</h2>
    <p>
        Сквозные тесты позволяют тестировать приложение в целом, включая REST API и взаимодействие с базой данных. Spring Boot предоставляет <span class="highlight">TestRestTemplate</span> для выполнения HTTP-запросов.
    </p>

    <h3>Пример сквозного теста:</h3>
    <pre><code>
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class UserControllerEndToEndTest {

    @Autowired
    private TestRestTemplate restTemplate;

    @Test
    public void testGetUserById() {
        ResponseEntity<User> response = restTemplate.getForEntity("/users/1", User.class);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("John Doe", response.getBody().getName());
    }
}
    </code></pre>

    <h2>Рекомендации по тестированию Spring приложения</h2>
    <p>
        <span class="highlight">1. Используйте модульные тесты для изоляции компонентов:</span> Это помогает быстро находить и исправлять ошибки в отдельных частях приложения.
    </p>
    <p>
        <span class="highlight">2. Используйте интеграционные тесты для проверки взаимодействия:</span> Это помогает убедиться, что компоненты приложения корректно работают вместе.
    </p>
    <p>
        <span class="highlight">3. Используйте сквозные тесты для проверки всего приложения:</span> Это помогает убедиться, что приложение работает корректно в целом.
    </p>
    <p>
        <span class="highlight">4. Автоматизируйте тесты:</span> Используйте инструменты, такие как Maven или Gradle, для автоматического выполнения тестов.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Тестирование — это ключевая часть разработки Spring приложений. Используйте различные типы тестов, чтобы обеспечить высокое качество и надёжность вашего приложения.
        </p>
    </div>
</body>
</html>', 'SPRING', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('da3f2990-af5d-4ab1-af0a-a65c35224847', 'Какие преимущества у Java?', e'<!DOCTYPE html>
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
    <h1>Преимущества Java</h1>

    <div class="advantages">
        <h2>Какие преимущества у Java?</h2>
        <p>
            <span class="note">Объектно-ориентированное программирование</span> – структура данных становится объектом, которым можно управлять для создания отношений между различными объектами.
        </p>
        <p>
            <span class="note">Язык высокого уровня с простым синтаксисом и плавной кривой обучения</span> – синтаксис Java основан на C++, поэтому Java похожа на C. Тем не менее, синтаксис Java проще, что позволяет новичкам быстрее учиться и эффективнее использовать код для достижения конкретных результатов.
        </p>
        <p>
            <span class="note">Стандарт для корпоративных вычислительных систем</span> – корпоративные приложения – главное преимущество Java с 90-х годов, когда организации начали искать надежные инструменты программирования не на C.
        </p>
        <p>
            <span class="note">Безопасность</span> – благодаря отсутствию указателей и Security Manager (политика безопасности, в которой можно указать правила доступа, позволяет запускать приложения Java в «песочнице»).
        </p>
        <p>
            <span class="note">Независимость от платформы</span> – можно создать Java-приложение на Windows, скомпилировать его в байт-код и запустить его на любой другой платформе, поддерживающей виртуальную машину Java (JVM). Таким образом, JVM служит уровнем абстракции между кодом и оборудованием.
        </p>
        <p>
            <span class="note">GC – garbage collector (сборщик мусора)</span>.
        </p>
        <p>
            <span class="note">Язык для распределенного программирования и комфортной удаленной совместной работы</span> – специфическая для Java методология распределенных вычислений называется Remote Method Invocation (RMI). RMI позволяет использовать все преимущества Java: безопасность, независимость от платформы и объектно-ориентированное программирование для распределенных вычислений. Кроме того, Java также поддерживает программирование сокетов и методологию распределения CORBA для обмена объектами между программами, написанными на разных языках.
        </p>
        <p>
            <span class="note">Автоматическое управление памятью</span> – разработчикам Java не нужно вручную писать код для управления памятью благодаря автоматическому управлению памятью (AMM).
        </p>
        <p>
            <span class="note">Многопоточность</span> – поток – наименьшая единица обработки в программировании. Чтобы максимально эффективно использовать время процессора, Java позволяет запускать потоки одновременно, что называется многопоточностью.
        </p>
        <p>
            <span class="note">Стабильность и сообщество</span> – сообщество разработчиков Java не имеет себе равных. Около 45% респондентов опроса StackOverflow (2018) используют Java.
        </p>
    </div>

    <div class="definition">
        <p>
            <strong>Java</strong> – это высокоуровневый, объектно-ориентированный язык программирования, который широко используется для создания корпоративных приложений, веб-приложений и мобильных приложений.
        </p>
    </div>
</body>
</html>', 'OTHER', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('563d8679-738f-431b-abbe-5cee361a0153', 'Что такое JIT?', e'<!DOCTYPE html>
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
    <h1>Что такое JIT?</h1>

    <p>
        <span class="note">JIT-компиляция</span> (англ. <span class="note">Just-in-time compilation</span>, компиляция «на лету»), также известная как <span class="note">динамическая компиляция</span> (англ. <span class="note">dynamic translation</span>) – это технология увеличения производительности программных систем, использующих байт-код, путем компиляции байт-кода в машинный код или в другой формат непосредственно во время работы программы.
    </p>

    <div class="definition">
        <p>
            <strong>JIT-компиляция</strong> – это процесс преобразования байт-кода в машинный код во время выполнения программы, что позволяет повысить производительность за счет оптимизации кода под конкретную платформу.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2c9e0a3c-0d7d-4014-9493-1f22a0478f67', 'Что такое интерфейсы? Какие модификаторы по умолчанию имеют поля и  методы интерфейсов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Интерфейсы в Java</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Интерфейсы в Java</h1>
        <p>
            <span class="highlight">Интерфейс</span> — это совокупность методов, определяющих правила взаимодействия элементов
            системы. Другими словами, интерфейс определяет, как элементы будут взаимодействовать
            между собой.
        </p>
        <p>
            Ключевое слово <code>interface</code> используется для создания полностью абстрактных классов.
            Основное предназначение интерфейса — определять, каким образом можно использовать
            класс, который его реализует. Создатель интерфейса определяет имена методов, списки
            аргументов и типы возвращаемых значений, но не реализует их поведение. Все методы
            интерфейса неявно объявляются как <code>public</code>.
        </p>

        <h2>Модификаторы по умолчанию:</h2>
        <ul>
            <li>
                <span class="highlight">Методы:</span> Все методы интерфейса по умолчанию являются <code>public</code> и
                <code>abstract</code>. Если класс реализует интерфейс, он должен реализовать все его методы.
            </li>
            <li>
                <span class="highlight">Поля:</span> Все поля интерфейса по умолчанию являются <code>public</code>, <code>static</code> и
                <code>final</code> (константы).
            </li>
        </ul>

        <h2>Особенности интерфейсов:</h2>
        <ul>
            <li>
                <span class="highlight">Дефолтные методы:</span> Начиная с Java 8, интерфейсы могут содержать методы с
                реализацией по умолчанию (default methods). Это позволяет добавлять новые методы
                в интерфейсы без необходимости изменять все классы, которые их реализуют.
            </li>
            <li>
                <span class="highlight">Статические методы:</span> Интерфейсы могут содержать статические методы, которые
                можно вызывать через имя интерфейса.
            </li>
            <li>
                <span class="highlight">Ромбовидное наследование:</span> Если класс реализует несколько интерфейсов с
                одинаковыми дефолтными методами, необходимо явно переопределить этот метод в
                классе, чтобы избежать неоднозначности.
            </li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Интерфейсы используются для создания гибких и расширяемых архитектур,
                позволяя классам реализовывать несколько интерфейсов и обеспечивая единый
                интерфейс для взаимодействия между компонентами системы.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f53e1e78-4469-4bb2-acbd-818a2a0f63c0', 'Что такое перечисления (enum)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое перечисления (enum)?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Что такое <span class="highlight">перечисления (enum)</span>?</h1>
        <p>
            Перечисления представляют набор логически связанных констант. Перечисление фактически
            представляет новый класс, поэтому можно определить переменную данного типа и использовать ее.
        </p>
        <p>
            Перечисления, как и обычные классы, могут определять конструкторы, поля и методы. При этом
            конструктор по умолчанию приватный. Также можно определять методы для отдельных констант.
        </p>

        <h2>Методы перечислений:</h2>
        <ul>
            <li>
                <span class="highlight">valueOf():</span> Возвращает конкретный элемент перечисления.
            </li>
            <li>
                <span class="highlight">ordinal():</span> Возвращает порядковый номер определенной константы (нумерация начинается с 0).
            </li>
            <li>
                <span class="highlight">values():</span> Возвращает массив всех констант перечисления.
            </li>
            <li>
                <span class="highlight">name():</span> Отличается от <code>toString()</code> тем, что второй можно переопределить.
            </li>
        </ul>

        <h2>Преимущества и недостатки:</h2>
        <ul>
            <li>
                <span class="highlight">Преимущества:</span>
                <ul>
                    <li>Проверка типов данных.</li>
                    <li>Можно использовать в <code>Switch Case</code>.</li>
                    <li>Легко создать потокобезопасный singleton без <code>double check volatile</code> переменных.</li>
                </ul>
            </li>
            <li>
                <span class="highlight">Недостатки:</span>
                <ul>
                    <li>Не применимы операторы <code>></code>, <code><</code>, <code>>=</code>, <code><=</code>.</li>
                    <li>Требует больше памяти для хранения, чем обычная константа.</li>
                </ul>
            </li>
        </ul>

        <h2>Особенности Enum-классов:</h2>
        <ul>
            <li>Конструктор всегда <code>private</code> или <code>default</code>.</li>
            <li>Могут имплементировать интерфейсы.</li>
            <li>Не могут наследовать класс.</li>
            <li>Можно переопределить <code>toString()</code>.</li>
            <li>Нет <code>public</code> конструктора, поэтому нельзя создать экземпляр вне <code>Enum</code>.</li>
            <li>При <code>equals()</code> выполняется <code>==</code>.</li>
            <li><code>ordinal()</code> возвращает порядок элементов.</li>
            <li>Может использоваться в <code>TreeSet</code> и <code>TreeMap</code>, т. к. <code>Enum</code> имплементирует <code>Comparable</code>.</li>
            <li><code>compareTo()</code> имитирует порядок элементов, предоставляемый <code>ordinal()</code>.</li>
        </ul>

        <div class="note">
            <p>
                <span class="highlight">Важно:</span> Перечисления используются для ограничения области допустимых значений,
                например, времена года, дни недели. Они обеспечивают безопасность типов и улучшают
                читаемость кода.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2ce8c172-9dff-4a00-bcb1-8db7fc3cf8e1', 'Что такое сигнатура метода?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Что такое сигнатура метода?</title>
    <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
        <h1>Что такое сигнатура метода?</h1>
        <p>
            Сигнатура метода — это имя метода плюс параметры (порядок параметров имеет значение из-за
            множественной передачи данных через троеточие, которое должно располагаться последним).
            В сигнатуру метода не входит возвращаемое значение, а также бросаемые им исключения.
        </p>
        <p>
            Сигнатура метода в сочетании с типом возвращаемого значения и бросаемыми исключениями
            называется <span class="highlight">контрактом метода</span>.
        </p>
        <div class="note">
            <p>
                <span class="highlight">Важно:</span> От модификатора до выбрасываемого исключения — это контракт метода.
                Контракт определяет, как метод должен использоваться и что он возвращает.
            </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0f5f36ff-c905-497d-90ca-a1eff6304be1', 'Что такое static-метод интерфейса?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Статические методы интерфейса</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Статические методы интерфейса</h1>
    <p>
        <span class="highlight">Статические методы интерфейса</span> похожи на методы по умолчанию, но с одним важным отличием:
        они не могут быть переопределены в классах, которые реализуют данный интерфейс.
        Эти методы принадлежат самому интерфейсу и не связаны с объектами классов,
        реализующих интерфейс.
    </p>

    <h2>Особенности статических методов интерфейса</h2>
    <ul>
        <li>
            <span class="highlight">Отсутствие переопределения:</span> Статические методы интерфейса нельзя переопределить
            в классах, реализующих интерфейс. Они всегда принадлежат интерфейсу и вызываются
            через его имя.
        </li>
        <li>
            <span class="highlight">Независимость от объектов:</span> Эти методы не могут быть вызваны через объект класса,
            реализующего интерфейс. Они вызываются напрямую через имя интерфейса.
        </li>
        <li>
            <span class="highlight">Ограничение на методы Object:</span> Методы класса <code>java.lang.Object</code> нельзя
            переопределить как статические методы интерфейса.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Статические методы интерфейса часто используются для предоставления
            вспомогательных методов, таких как проверка на <code>null</code>, сортировка коллекций
            или другие утилитарные функции.
        </p>
    </div>

    <h2>Пример использования</h2>
    <p>
        Предположим, у нас есть интерфейс <code>Utility</code> со статическим методом <code>isNullOrEmpty</code>,
        который проверяет строку на <code>null</code> или пустоту:
    </p>
    <pre><code>public interface Utility {
    static boolean isNullOrEmpty(String str) {
        return str == null || str.isEmpty();
    }
}</code></pre>
    <p>
        Вызов этого метода будет выглядеть так:
    </p>
    <pre><code>boolean result = Utility.isNullOrEmpty("Пример строки");</code></pre>

    <h2>Преимущества статических методов</h2>
    <ul>
        <li>
            <span class="highlight">Утилитарные функции:</span> Они предоставляют удобные методы для работы с данными,
            которые не зависят от состояния объекта.
        </li>
        <li>
            <span class="highlight">Организация кода:</span> Статические методы помогают организовать код, связанный с
            интерфейсом, в одном месте.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('38f98ea0-95ab-4de5-8e8b-b04514095c62', 'Как вывести на экран количество пустых строк с помощью метода filter()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Подсчёт пустых строк с использованием filter()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Подсчёт пустых строк с использованием filter()</h1>
    <p>
        В Java можно легко подсчитать количество пустых строк в стриме, используя метод
        <code>filter()</code> для фильтрации пустых строк и метод <code>count()</code> для подсчёта их количества.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код выводит на экран количество пустых строк:
    </p>
    <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        System.out.println(
            Stream.of("Hello", "", ", ", "world", "!") // создание стрима из строк
                  .filter(String::isEmpty) // фильтрация пустых строк
                  .count() // подсчёт количества пустых строк
        );
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">Stream.of("Hello", "", ", ", "world", "!"):</span> Создаёт стрим из строк, включая пустые строки.
        </li>
        <li>
            <span class="highlight">filter(String::isEmpty):</span> Фильтрует стрим, оставляя только пустые строки.
        </li>
        <li>
            <span class="highlight">count():</span> Подсчитывает количество элементов в отфильтрованном стриме.
        </li>
        <li>
            <span class="highlight">System.out.println():</span> Выводит результат на экран.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>1</code></pre>

    <h2>Итог</h2>
    <p>
        Использование методов <code>filter()</code> и <code>count()</code> позволяет легко подсчитать количество
        пустых строк в стриме. Этот подход демонстрирует простоту и эффективность работы
        со стримами в Java для обработки данных.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ef392e05-46c8-4cd1-8a38-1a027bf8ed55', 'Как можно вывести на экран уникальные квадраты чисел используя метод  map()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вывод уникальных квадратов чисел с использованием map()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Вывод уникальных квадратов чисел с использованием map()</h1>
    <p>
        В Java можно легко вывести на экран уникальные квадраты чисел, используя стримы и
        методы <code>map()</code> и <code>distinct()</code>. Метод <code>map()</code> преобразует каждый элемент стрима, а
        <code>distinct()</code> удаляет дубликаты.
    </p>

    <h2>Пример кода</h2>
    <p>
        Следующий код выводит на экран уникальные квадраты чисел:
    </p>
    <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Stream.of(1, 2, 3, 2, 1) // создание стрима из чисел
              .map(s -> s * s) // преобразование каждого числа в его квадрат
              .distinct() // удаление дубликатов
              .forEach(System.out::println); // вывод каждого уникального квадрата на экран
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">Stream.of(1, 2, 3, 2, 1):</span> Создаёт стрим из чисел <code>1, 2, 3, 2, 1</code>.
        </li>
        <li>
            <span class="highlight">map(s -> s * s):</span> Преобразует каждое число в его квадрат.
        </li>
        <li>
            <span class="highlight">distinct():</span> Удаляет дубликаты из стрима, оставляя только уникальные значения.
        </li>
        <li>
            <span class="highlight">forEach(System.out::println):</span> Выводит каждый уникальный квадрат на экран.
        </li>
    </ul>

    <h2>Пример вывода</h2>
    <p>
        Пример вывода программы:
    </p>
    <pre><code>1
4
9</code></pre>

    <h2>Итог</h2>
    <p>
        Использование методов <code>map()</code> и <code>distinct()</code> позволяет легко выводить уникальные
        квадраты чисел на экран. Этот подход демонстрирует мощь и удобство работы со
        стримами в Java для обработки данных.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('19a97e68-e82b-4f0d-b196-6c5d69f8b958', 'Что такое «абсолютный путь» и «относительный путь»?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Абсолютный и относительный путь</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Абсолютный и относительный путь</h1>
    <p>
        В файловой системе путь к файлу или каталогу может быть указан как абсолютный или относительный. Эти два типа путей отличаются тем, как они определяют местоположение файла или каталога.
    </p>

    <h2>Абсолютный путь</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> Абсолютный путь — это полный путь к файлу или каталогу, который начинается с корневого каталога файловой системы.
        </li>
        <li>
            <span class="highlight">Пример:</span> В Unix-подобных системах абсолютный путь может выглядеть так: <code>/home/user/documents/file.txt</code>. В Windows: <code>C:\\Users\\user\\documents\\file.txt</code>.
        </li>
        <li>
            <span class="highlight">Особенности:</span> Абсолютный путь всегда указывает на одно и то же место в файловой системе, независимо от текущей рабочей директории.
        </li>
    </ul>

    <h2>Относительный путь</h2>
    <ul>
        <li>
            <span class="highlight">Определение:</span> Относительный путь — это путь к файлу или каталогу, который указывается относительно текущей рабочей директории.
        </li>
        <li>
            <span class="highlight">Пример:</span> Если текущая рабочая директория — <code>/home/user</code>, то относительный путь к файлу может выглядеть так: <code>documents/file.txt</code>.
        </li>
        <li>
            <span class="highlight">Особенности:</span> Относительный путь зависит от текущей рабочей директории. Если рабочая директория изменится, то и путь к файлу будет интерпретироваться по-другому.
        </li>
    </ul>

    <h2>Пример использования абсолютного и относительного путей</h2>
    <pre>
        <code>
import java.io.File;

public class PathExample {
    public static void main(String[] args) {
        // Абсолютный путь
        File absoluteFile = new File("/home/user/documents/file.txt");
        System.out.println("Абсолютный путь: " + absoluteFile.getAbsolutePath());

        // Относительный путь
        File relativeFile = new File("documents/file.txt");
        System.out.println("Относительный путь: " + relativeFile.getPath());
        System.out.println("Абсолютный путь для относительного: " + relativeFile.getAbsolutePath());
    }
}
        </code>
    </pre>
    <p>
        В этом примере демонстрируется использование абсолютного и относительного путей. Метод <code>getAbsolutePath()</code> возвращает абсолютный путь для любого объекта <code>File</code>, даже если он был создан с относительным путем.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование абсолютных путей делает код менее гибким, так как он зависит от конкретной структуры файловой системы. Относительные пути более универсальны, но требуют учета текущей рабочей директории.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            <span class="highlight">Абсолютный путь:</span> Полный путь, начинающийся с корневого каталога. Пример: <code>/home/user/file.txt</code>.
        </li>
        <li>
            <span class="highlight">Относительный путь:</span> Путь, указанный относительно текущей рабочей директории. Пример: <code>documents/file.txt</code>.
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
File absoluteFile = new File("/home/user/file.txt");
File relativeFile = new File("documents/file.txt");
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('204f835b-d0b7-4eb8-99ce-e22ecc5aafc7', 'Какое исключение выбрасывается при возникновении ошибки в блоке  инициализации класса?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Исключения в блоках инициализации</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Исключения в блоках инициализации</h1>
    <p>
        При возникновении ошибки в блоке инициализации класса выбрасываются различные
        исключения в зависимости от типа блока (статический или нестатический) и типа
        исключения (наследник <code>Error</code> или <code>Exception</code>).
    </p>

    <h2>Типы исключений</h2>
    <ul>
        <li>
            <span class="highlight">Для статических блоков:</span>
            <ul>
                <li>
                    Если возникшее исключение — наследник <code>Exception</code>, будет выброшено
                    <code>java.lang.ExceptionInInitializerError</code>.
                </li>
                <li>
                    Если возникшее исключение — наследник <code>Error</code>, будет выброшено
                    <code>java.lang.Error</code>.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Для нестатических блоков:</span>
            <ul>
                <li>
                    Если возникшее исключение — наследник <code>Exception</code>, будет проброшено
                    исключение-источник.
                </li>
                <li>
                    Если возникшее исключение — наследник <code>Error</code>, будет выброшено
                    <code>java.lang.Error</code>.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Особый случай:</span> Если исключение — <code>java.lang.ThreadDeath</code> (смерть потока),
            то в этом случае никакое исключение выброшено не будет.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Исключения в статических блоках инициализации обрабатываются строго, так как
            они влияют на загрузку класса и могут сделать его непригодным для использования.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Пример статического блока с исключением:
    </p>
    <pre><code>class Example {
    static {
        if (условие) {
            throw new RuntimeException("Ошибка в статическом блоке");
        }
    }
}</code></pre>
    <p>
        В этом случае будет выброшено <code>ExceptionInInitializerError</code>.
    </p>

    <p>
        Пример нестатического блока с исключением:
    </p>
    <pre><code>class Example {
    {
        if (условие) {
            throw new IOException("Ошибка в нестатическом блоке");
        }
    }

    Example() throws IOException {
        // Конструктор объявляет исключение
    }
}</code></pre>
    <p>
        В этом случае будет проброшено исключение <code>IOException</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Исключения в блоках инициализации требуют внимательной обработки,
            так как они могут повлиять на загрузку класса или создание объекта.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('34326dd1-5b32-4635-8200-b35959fabe5f', 'Почему нельзя объявить метод интерфейса с модификатором final?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему нельзя объявить метод интерфейса с модификатором final?</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Почему нельзя объявить метод интерфейса с модификатором final?</h1>
    <p>
        В случае интерфейсов указание модификатора <span class="highlight">final</span> бессмысленно, так как все методы
        интерфейсов неявно объявляются как <span class="highlight">абстрактные</span>. Это означает, что их невозможно выполнить,
        не реализовав в классе, который реализует интерфейс. Однако, если бы метод интерфейса
        был объявлен как <code>final</code>, это сделало бы невозможным его переопределение, что
        противоречит самой сути интерфейсов.
    </p>

    <h2>Причины</h2>
    <ul>
        <li>
            <span class="highlight">Абстрактная природа методов интерфейса:</span> Все методы интерфейса по умолчанию являются
            абстрактными, то есть они не имеют реализации и должны быть переопределены в классах,
            которые реализуют интерфейс.
        </li>
        <li>
            <span class="highlight">Конфликт с модификатором final:</span> Модификатор <code>final</code> запрещает переопределение
            метода, что противоречит идее интерфейсов, где методы должны быть реализованы в
            классах.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Интерфейсы предназначены для определения контрактов, которые должны быть
            реализованы классами. Использование <code>final</code> для методов интерфейса нарушило бы эту
            концепцию, сделав интерфейсы бесполезными.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Рассмотрим интерфейс <code>Example</code>:
    </p>
    <pre><code>interface Example {
    void doSomething(); // Абстрактный метод
}</code></pre>
    <p>
        Если бы мы попытались объявить метод как <code>final</code>, это привело бы к ошибке:
    </p>
    <pre><code>interface Example {
    final void doSomething(); // Ошибка компиляции!
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Модификатор <code>final</code> применим только к методам классов, где он
            предотвращает их переопределение в подклассах. В интерфейсах же все методы должны
            быть переопределены, поэтому использование <code>final</code> здесь невозможно.
        </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a17eb309-d167-487f-89ae-f6ac9adcbbd5', 'В чем разница между классами java.util.Collection и java.util.Collections?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между java.util.Collection и java.util.Collections</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Разница между java.util.Collection и java.util.Collections</h1>
    <p>
        В Java <code>java.util.Collection</code> и <code>java.util.Collections</code> представляют собой два разных понятия, хотя их названия могут вызывать путаницу. Они выполняют различные функции в рамках Java Collections Framework.
    </p>

    <h2>java.util.Collection</h2>
    <ul>
        <li>
            <span class="highlight">Интерфейс:</span>
            <ul>
                <li><code>java.util.Collection</code> – это один из основных интерфейсов Java Collections Framework.</li>
                <li>Он представляет собой набор элементов и определяет базовые методы для работы с коллекциями, такие как добавление, удаление, поиск и итерация.</li>
                <li>Интерфейс <code>Collection</code> расширяется другими интерфейсами, такими как <code>List</code>, <code>Set</code> и <code>Queue</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>java.util.Collections</h2>
    <ul>
        <li>
            <span class="highlight">Утилитный класс:</span>
            <ul>
                <li><code>java.util.Collections</code> – это класс, содержащий набор статических методов для работы с коллекциями.</li>
                <li>Он предоставляет удобные методы для сортировки, поиска, синхронизации и других операций с коллекциями.</li>
                <li>Примеры методов: <code>sort()</code>, <code>binarySearch()</code>, <code>synchronizedList()</code>, <code>unmodifiableCollection()</code> и другие.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>java.util.Collection</code> – это интерфейс, который определяет структуру и поведение коллекций, а <code>java.util.Collections</code> – это утилитный класс, предоставляющий методы для работы с коллекциями. Они дополняют друг друга, но выполняют разные роли в Java Collections Framework.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('662af9bd-bd4c-472c-a49d-645ab09f977d', 'Где разрешена инициализация статических/нестатических полей?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Инициализация статических и нестатических полей</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Инициализация статических и нестатических полей</h1>
    <p>
        Инициализация полей класса может происходить в разных местах в зависимости от того,
        являются ли поля статическими или нестатическими. Рассмотрим, где и как можно
        инициализировать такие поля.
    </p>

    <h2>Инициализация статических полей</h2>
    <ul>
        <li>
            <span class="highlight">При объявлении:</span> Статические поля можно инициализировать непосредственно при их
            объявлении.
            <pre><code>static int value = 10;</code></pre>
        </li>
        <li>
            <span class="highlight">В статическом блоке инициализации:</span> Статические блоки используются для выполнения
            сложной логики инициализации.
            <pre><code>static {
    value = 20;
}</code></pre>
        </li>
        <li>
            <span class="highlight">В нестатическом блоке инициализации:</span> Хотя это редко используется, нестатические
            блоки также могут изменять статические поля.
            <pre><code>{
    value = 30; // Возможно, но не рекомендуется
}</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Статические поля инициализируются один раз при загрузке класса, и их
            значения сохраняются между всеми экземплярами класса.
        </p>
    </div>

    <h2>Инициализация нестатических полей</h2>
    <ul>
        <li>
            <span class="highlight">При объявлении:</span> Нестатические поля можно инициализировать непосредственно при их
            объявлении.
            <pre><code>int value = 10;</code></pre>
        </li>
        <li>
            <span class="highlight">В нестатическом блоке инициализации:</span> Нестатические блоки выполняются перед
            вызовом конструктора и могут использоваться для инициализации полей.
            <pre><code>{
    value = 20;
}</code></pre>
        </li>
        <li>
            <span class="highlight">В конструкторе:</span> Конструкторы являются основным местом для инициализации
            нестатических полей, особенно если логика инициализации зависит от параметров.
            <pre><code>Example() {
    value = 30;
}</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Нестатические поля инициализируются каждый раз при создании нового
            объекта класса.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Пример инициализации статических и нестатических полей:
    </p>
    <pre><code>class Example {
    static int staticValue = 10; // Инициализация при объявлении
    int nonStaticValue = 20; // Инициализация при объявлении

    static {
        staticValue = 30; // Инициализация в статическом блоке
    }

    {
        nonStaticValue = 40; // Инициализация в нестатическом блоке
    }

    Example() {
        nonStaticValue = 50; // Инициализация в конструкторе
    }
}</code></pre>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7e4ddd1c-1de3-438e-b00d-ecae15349cd3', 'Что такое «лямбда»? Какова структура и особенности использования  лямбда-выражения?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Лямбда-выражения</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Лямбда-выражения</h1>
    <p>
        <span class="highlight">Лямбда-выражение</span> представляет собой набор инструкций, которые можно выделить в отдельную
        переменную и затем многократно вызывать в различных местах программы. Лямбда-выражения
        являются частью функционального программирования и позволяют писать более компактный и
        читаемый код.
    </p>

    <h2>Структура лямбда-выражения</h2>
    <p>
        Основу лямбда-выражения составляет <span class="highlight">лямбда-оператор</span> (<code>-></code>). Этот оператор разделяет
        лямбда-выражение на две части:
    </p>
    <ul>
        <li>
            <span class="highlight">Левая часть:</span> Содержит список параметров выражения.
        </li>
        <li>
            <span class="highlight">Правая часть:</span> Представляет тело лямбда-выражения, где выполняются все действия.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Лямбда-выражение для сложения двух чисел:
        </p>
        <pre><code>(int x, int y) -> x + y;</code></pre>
    </div>

    <h2>Особенности лямбда-выражений</h2>
    <ul>
        <li>
            <span class="highlight">Функциональный интерфейс:</span> Лямбда-выражение не выполняется само по себе, а образует
            реализацию метода, определенного в функциональном интерфейсе. Функциональный интерфейс
            должен содержать только один абстрактный метод.
        </li>
        <li>
            <span class="highlight">Отложенное выполнение:</span> Лямбда-выражения могут быть определены один раз и вызваны
            при необходимости в любом месте программы.
        </li>
        <li>
            <span class="highlight">Сокращенная форма:</span> Лямбда-выражения являются сокращенной формой внутренних
            анонимных классов, которые ранее использовались в Java.
        </li>
    </ul>

    <h2>Синтаксис лямбда-выражений</h2>
    <ul>
        <li>
            <span class="highlight">Без параметров:</span> Если метод не принимает параметров, используются пустые скобки:
            <pre><code>() -> 30 + 20;</code></pre>
        </li>
        <li>
            <span class="highlight">Один параметр:</span> Если метод принимает один параметр, скобки можно опустить:
            <pre><code>n -> n * n;</code></pre>
        </li>
        <li>
            <span class="highlight">Блочные лямбда-выражения:</span> Если тело лямбда-выражения состоит из нескольких
            инструкций, оно обрамляется фигурными скобками. Для возврата значения используется
            <code>return</code>:
            <pre><code>(int x, int y) -> {
    if (y == 0) {
        return 0;
    } else {
        return x / y;
    }
}</code></pre>
        </li>
    </ul>

    <h2>Пример передачи лямбда-выражения в метод</h2>
    <p>
        Лямбда-выражения могут передаваться в методы как параметры. Например:
    </p>
    <pre><code>interface Condition {
    boolean isAppropriate(int n);
}

private static int sum(int[] numbers, Condition condition) {
    int result = 0;
    for (int i : numbers) {
        if (condition.isAppropriate(i)) {
            result += i;
        }
    }
    return result;
}

public static void main(String[] args) {
    System.out.println(sum(new int[] {0, 1, 0, 3, 0, 5, 0, 7, 0, 9}, (n) -> n != 0));
}</code></pre>

    <h2>Преимущества лямбда-выражений</h2>
    <ul>
        <li>
            <span class="highlight">Компактность:</span> Лямбда-выражения позволяют писать меньше кода.
        </li>
        <li>
            <span class="highlight">Читаемость:</span> Они делают код более понятным и выразительным.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Лямбда-выражения могут быть переданы в методы и использованы
            в различных контекстах.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c3fc6eb7-50cb-4b27-b4a1-c841233e0fa4', 'Может ли один блок catch отлавливать сразу несколько исключений?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Перехват нескольких исключений одним блоком catch</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Перехват нескольких исключений одним блоком catch</h1>
    <p>
        Начиная с Java 7, появилась возможность перехватывать несколько исключений
        одним блоком <span class="highlight">catch</span>. Это позволяет упростить код и избежать дублирования
        логики обработки исключений.
    </p>

    <h2>Синтаксис</h2>
    <p>
        Для перехвата нескольких исключений одним блоком <code>catch</code> используется
        следующий синтаксис:
    </p>
    <pre><code>try {
    // Код, который может вызвать исключения
} catch (IOException | SQLException ex) {
    // Логика обработки исключений
}</code></pre>
    <p>
        В этом примере блок <code>catch</code> перехватывает исключения <code>IOException</code> и
        <code>SQLException</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Исключения, перечисленные в одном блоке <code>catch</code>, должны быть
            непересекающимися (не должны находиться в иерархии наследования). Например,
            нельзя перехватывать <code>IOException</code> и <code>FileNotFoundException</code> вместе, так как
            <code>FileNotFoundException</code> является подклассом <code>IOException</code>.
        </p>
    </div>

    <h2>Пример использования</h2>
    <p>
        Пример перехвата нескольких исключений одним блоком <code>catch</code>:
    </p>
    <pre><code>try {
    // Код, который может вызвать IOException или SQLException
} catch (IOException | SQLException ex) {
    System.out.println("Произошла ошибка: " + ex.getMessage());
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере блок <code>catch</code> обрабатывает как
            <code>IOException</code>, так и <code>SQLException</code>, используя общую логику.
        </p>
    </div>

    <h2>Преимущества</h2>
    <ul>
        <li>
            <span class="highlight">Упрощение кода:</span> Уменьшает дублирование кода, так как несколько
            исключений обрабатываются одним блоком.
        </li>
        <li>
            <span class="highlight">Читаемость:</span> Делает код более читаемым, так как логика обработки
            исключений сосредоточена в одном месте.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример с дублированием кода:</span>
            <pre><code>try {
    // Код, который может вызвать IOException или SQLException
} catch (IOException ex) {
    System.out.println("Ошибка ввода-вывода: " + ex.getMessage());
} catch (SQLException ex) {
    System.out.println("Ошибка базы данных: " + ex.getMessage());
}</code></pre>
            В этом примере логика обработки исключений дублируется, что делает код менее
            читаемым и более сложным для поддержки.
        </p>
    </div>

    <h2>Ограничения</h2>
    <ul>
        <li>
            <span class="highlight">Непересекающиеся исключения:</span> Исключения, перечисленные в одном
            блоке <code>catch</code>, не должны находиться в иерархии наследования.
        </li>
        <li>
            <span class="highlight">Общая переменная:</span> Все исключения, перехватываемые одним блоком
            <code>catch</code>, используют одну переменную (в примере выше — <code>ex</code>). Это
            означает, что нельзя получить доступ к специфическим методам каждого
            исключения, если они не являются общими для всех перехватываемых типов.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример с общими методами:</span>
            <pre><code>try {
    // Код, который может вызвать IOException или SQLException
} catch (IOException | SQLException ex) {
    System.out.println("Ошибка: " + ex.getMessage()); // getMessage() доступен для обоих типов
}</code></pre>
            В этом примере метод <code>getMessage()</code> доступен как для <code>IOException</code>, так и
            для <code>SQLException</code>.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('fe414f39-40e1-462e-9ccd-2e5fdd8808cc', 'Какие виды ссылок на методы вы знаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Виды ссылок на методы</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Виды ссылок на методы</h1>
    <p>
        В Java существует несколько видов <span class="highlight">ссылок на методы</span>, которые позволяют передавать
        существующие методы в качестве аргументов. Эти ссылки делают код более компактным
        и читаемым, особенно при использовании функциональных интерфейсов.
    </p>

    <h2>Основные виды ссылок на методы</h2>
    <p>
        В Java выделяют три основных вида ссылок на методы:
    </p>
    <ul>
        <li>
            <span class="highlight">Ссылка на статический метод:</span> Используется для передачи статического метода
            класса. Синтаксис: <code>имя_класса::имя_статического_метода</code>.
        </li>
        <li>
            <span class="highlight">Ссылка на метод экземпляра:</span> Используется для передачи метода конкретного
            объекта. Синтаксис: <code>объект_класса::имя_метода</code>.
        </li>
        <li>
            <span class="highlight">Ссылка на конструктор:</span> Используется для передачи конструктора класса.
            Синтаксис: <code>название_класса::new</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Примеры:</span>
        </p>
        <pre><code>// Ссылка на статический метод
Function<Integer, String> converter = String::valueOf;

// Ссылка на метод экземпляра
List<String> names = Arrays.asList("Иван", "Анна", "Петр");
names.forEach(System.out::println);

// Ссылка на конструктор
Supplier<String> supplier = String::new;</code></pre>
    </div>

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
        Ссылки на методы — это удобный способ передачи существующих методов в качестве
        аргументов. Они делятся на три вида: ссылки на статические методы, методы
        экземпляра и конструкторы. Использование ссылок на методы делает код более
        компактным и читаемым.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0905dbdc-c7d3-45d3-9178-b0bd77419661', 'Что такое static метод интерфейса?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Статические методы интерфейса</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Статические методы интерфейса</h1>
    <p>
        <span class="highlight">Статические методы интерфейса</span> похожи на методы по умолчанию, за исключением того, что
        для них отсутствует возможность переопределения в классах, реализующих интерфейс.
        Статические методы в интерфейсе являются частью интерфейса без возможности
        использовать их для объектов класса реализации.
    </p>

    <h2>Особенности статических методов интерфейса</h2>
    <ul>
        <li>
            <span class="highlight">Невозможность переопределения:</span> Статические методы интерфейса нельзя переопределить
            в классах, которые реализуют этот интерфейс. Они принадлежат исключительно интерфейсу.
        </li>
        <li>
            <span class="highlight">Использование без создания объекта:</span> Статические методы вызываются напрямую через
            интерфейс, без необходимости создания экземпляра класса.
        </li>
        <li>
            <span class="highlight">Вспомогательные функции:</span> Они часто используются для предоставления утилитарных
            методов, таких как проверка на <code>null</code>, сортировка коллекций и другие служебные операции.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Методы класса <code>java.lang.Object</code> нельзя переопределить как статические
            методы интерфейса. Статические методы интерфейса предназначены для предоставления
            дополнительной функциональности, связанной с интерфейсом, но не с его реализациями.
        </p>
    </div>

    <h2>Пример использования статических методов</h2>
    <p>
        Статические методы интерфейса часто применяются для создания вспомогательных
        методов, которые не зависят от состояния объекта. Например:
    </p>
    <ul>
        <li>
            Проверка на <code>null</code> для входных параметров.
        </li>
        <li>
            Сортировка коллекций или выполнение других операций с данными.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Статические методы интерфейса помогают организовать код, предоставляя
            удобные утилиты, которые логически связаны с интерфейсом, но не требуют
            создания экземпляров классов.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6b65f823-a0ad-4bb1-b914-bdce05b58cbe', 'Что такое «функциональные интерфейсы»?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональные интерфейсы</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональные интерфейсы</h1>
    <p>
        <span class="highlight">Функциональный интерфейс</span> — это интерфейс, который содержит только один
        абстрактный метод. Такие интерфейсы используются в Java для поддержки лямбда-выражений
        и функционального программирования.
    </p>

    <h2>Особенности функциональных интерфейсов</h2>
    <ul>
        <li>
            <span class="highlight">Один абстрактный метод:</span> Функциональный интерфейс должен содержать
            только один абстрактный метод.
        </li>
        <li>
            <span class="highlight">Аннотация @FunctionalInterface:</span> Для обозначения функционального интерфейса
            используется аннотация <code>@FunctionalInterface</code>. Она помогает компилятору проверить, что
            интерфейс действительно является функциональным (т.е. содержит только один
            абстрактный метод).
        </li>
        <li>
            <span class="highlight">Default-методы:</span> Функциональный интерфейс может содержать любое количество
            <code>default</code>-методов, так как они не считаются абстрактными.
        </li>
    </ul>

    <h2>Пример функционального интерфейса</h2>
    <p>
        Пример объявления функционального интерфейса:
    </p>
    <pre><code>@FunctionalInterface
public interface MyFunctionalInterface {
    void execute(); // единственный абстрактный метод

    default void print(String message) {
        System.out.println(message); // default-метод
    }
}</code></pre>

    <h2>Использование функционального интерфейса</h2>
    <p>
        Функциональный интерфейс можно использовать с лямбда-выражениями:
    </p>
    <pre><code>public class Main {
    public static void main(String[] args) {
        MyFunctionalInterface instance = () -> System.out.println("Выполнение метода execute");
        instance.execute(); // Выполнение метода execute
        instance.print("Сообщение"); // Сообщение
    }
}</code></pre>

    <h2>Популярные функциональные интерфейсы в Java</h2>
    <p>
        В Java 8 уже существует несколько встроенных функциональных интерфейсов:
    </p>
    <ul>
        <li>
            <span class="highlight">Runnable:</span> <code>void run()</code> — используется для выполнения задач без параметров и
            возвращаемого значения.
        </li>
        <li>
            <span class="highlight">Supplier&lt;T&gt;:</span> <code>T get()</code> — предоставляет значение типа <code>T</code>.
        </li>
        <li>
            <span class="highlight">Consumer&lt;T&gt;:</span> <code>void accept(T t)</code> — принимает значение типа <code>T</code> и
            выполняет операцию.
        </li>
        <li>
            <span class="highlight">Function&lt;T, R&gt;:</span> <code>R apply(T t)</code> — принимает значение типа <code>T</code> и
            возвращает значение типа <code>R</code>.
        </li>
        <li>
            <span class="highlight">Predicate&lt;T&gt;:</span> <code>boolean test(T t)</code> — принимает значение типа <code>T</code> и
            возвращает <code>boolean</code>.
        </li>
    </ul>

    <h2>Итог</h2>
    <p>
        Функциональные интерфейсы — это ключевая концепция в Java 8, которая позволяет
        использовать лямбда-выражения и функциональное программирование. Они содержат
        только один абстрактный метод и могут быть помечены аннотацией
        <code>@FunctionalInterface</code>. Функциональные интерфейсы могут также содержать
        <code>default</code>-методы, что делает их гибкими и мощными инструментами для
        разработки.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f14485db-fb71-49b2-9544-28a7291aef6c', 'Для чего в стримах предназначен метод limit()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Метод limit() в стримах</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Метод limit() в стримах</h1>
    <p>
        Метод <code>limit()</code> является одной из промежуточных операций в стримах (streams) и используется
        для ограничения количества элементов в стриме. Он возвращает новый стрим, содержащий
        только первые <span class="highlight">n</span> элементов исходного стрима.
    </p>

    <h2>Как работает метод limit()?</h2>
    <p>
        Метод <code>limit()</code> принимает целое число <code>n</code> и возвращает стрим, состоящий из первых <code>n</code> элементов
        исходного стрима. Если исходный стрим содержит меньше элементов, чем указано в <code>limit()</code>,
        возвращаются все доступные элементы.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Ограничение стрима первыми тремя элементами:
        </p>
        <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<String> limitedNames = Stream.of("Иван", "Анна", "Петр", "Мария", "Сергей")
                                          .limit(3) // ограничение первыми тремя элементами
                                          .collect(Collectors.toList());
        System.out.println(limitedNames); // [Иван, Анна, Петр]
    }
}</code></pre>
    </div>

    <h2>Особенности метода limit()</h2>
    <ul>
        <li>
            <span class="highlight">Промежуточная операция:</span> <code>limit()</code> не выполняет никаких действий, пока не будет
            вызвана конечная операция (например, <code>collect()</code>, <code>forEach()</code>).
        </li>
        <li>
            <span class="highlight">Ленивое выполнение:</span> Ограничение элементов происходит только при вызове
            конечной операции.
        </li>
        <li>
            <span class="highlight">Возвращает новый стрим:</span> Исходный стрим остаётся неизменным.
        </li>
    </ul>

    <h2>Пример с числовыми данными</h2>
    <p>
        Пример ограничения стрима чисел первыми пятью элементами:
    </p>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<Integer> numbers = Stream.of(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
                                      .limit(5) // ограничение первыми пятью элементами
                                      .collect(Collectors.toList());
        System.out.println(numbers); // [1, 2, 3, 4, 5]
    }
}</code></pre>

    <h2>Пример с параллельным стримом</h2>
    <p>
        Метод <code>limit()</code> также работает с параллельными стримами:
    </p>
    <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<String> limitedNames = Stream.of("Иван", "Анна", "Петр", "Мария", "Сергей")
                                          .parallel() // параллельный стрим
                                          .limit(2) // ограничение первыми двумя элементами
                                          .collect(Collectors.toList());
        System.out.println(limitedNames); // [Иван, Анна]
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Метод <code>limit()</code> используется для ограничения количества элементов в стриме. Он возвращает
        новый стрим, содержащий только первые <code>n</code> элементов исходного стрима. Этот метод полезен,
        когда нужно работать только с частью данных, например, для выборки первых записей из
        большого набора данных.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5876fb96-6b63-4258-a5d6-66d79e7a7716', 'Какой оператор позволяет принудительно выбросить исключение?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Оператор throw</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Оператор throw</h1>
    <p>
        В Java для принудительного выброса исключения используется оператор
        <span class="highlight">throw</span>. Этот оператор позволяет создать и выбросить исключение в
        любом месте программы.
    </p>

    <h2>Синтаксис оператора throw</h2>
    <p>
        Оператор <code>throw</code> используется следующим образом:
    </p>
    <pre><code>throw new Исключение("Сообщение об ошибке");</code></pre>
    <p>
        Например:
    </p>
    <pre><code>throw new IllegalArgumentException("Некорректный аргумент");</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> После выполнения оператора <code>throw</code> управление
            передаётся ближайшему блоку <code>catch</code>, который может обработать это
            исключение. Если такой блок отсутствует, программа завершится с ошибкой.
        </p>
    </div>

    <h2>Пример использования throw</h2>
    <p>
        Пример использования оператора <code>throw</code> для выброса исключения:
    </p>
    <pre><code>public void checkAge(int age) {
    if (age < 18) {
        throw new IllegalArgumentException("Возраст должен быть не менее 18 лет");
    }
    System.out.println("Возраст корректен");
}</code></pre>
    <p>
        В этом примере, если возраст меньше 18, будет выброшено исключение
        <code>IllegalArgumentException</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Оператор <code>throw</code> часто используется для
            проверки входных данных и выброса исключений в случае их некорректности.
        </p>
    </div>

    <h2>Типы исключений</h2>
    <p>
        С помощью оператора <code>throw</code> можно выбросить как проверяемые (checked), так и
        непроверяемые (unchecked) исключения:
    </p>
    <ul>
        <li>
            <span class="highlight">Проверяемые исключения:</span> Должны быть объявлены в сигнатуре
            метода с помощью <code>throws</code> или обработаны в блоке <code>try-catch</code>.
            <pre><code>throw new IOException("Ошибка ввода-вывода");</code></pre>
        </li>
        <li>
            <span class="highlight">Непроверяемые исключения:</span> Не требуют обязательной обработки.
            <pre><code>throw new NullPointerException("Объект не инициализирован");</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При выбросе проверяемых исключений необходимо либо
            обработать их в блоке <code>try-catch</code>, либо объявить в сигнатуре метода с
            помощью <code>throws</code>.
        </p>
    </div>

    <h2>Пример с проверяемым исключением</h2>
    <p>
        Пример выброса проверяемого исключения:
    </p>
    <pre><code>public void readFile(String path) throws IOException {
    if (path == null) {
        throw new IOException("Путь к файлу не указан");
    }
    // Логика чтения файла
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере исключение <code>IOException</code> объявлено
            в сигнатуре метода, что позволяет вызывающему коду обработать его.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1677cafb-d081-46e0-ad09-00f74a77129f', 'Всегда ли исполняется блок finally?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Блок finally</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Блок finally</h1>
    <p>
        Блок <span class="highlight">finally</span> в Java используется для выполнения кода, который должен быть
        выполнен в любом случае, независимо от того, возникло исключение или нет. Однако,
        существуют ситуации, когда блок <code>finally</code> может не выполниться.
    </p>

    <h2>Когда блок finally не выполняется?</h2>
    <p>
        Блок <code>finally</code> не выполняется в следующих случаях:
    </p>
    <ul>
        <li>
            <span class="highlight">System.exit(0):</span> Если в блоке <code>try</code> вызывается метод
            <code>System.exit(0)</code>, программа завершает работу, и блок <code>finally</code> не выполняется.
        </li>
        <li>
            <span class="highlight">Runtime.getRuntime().exit(0) или halt(0):</span> Аналогично
            <code>System.exit(0)</code>, вызов этих методов завершает работу JVM, и блок
            <code>finally</code> не выполняется.
        </li>
        <li>
            <span class="highlight">Недопустимая операция JVM:</span> Если во время выполнения блока
            <code>try</code> виртуальная машина выполняет недопустимую операцию и завершает
            работу, блок <code>finally</code> не выполняется.
        </li>
        <li>
            <span class="highlight">Бесконечный цикл:</span> Если в блоке <code>try</code> выполняется
            бесконечный цикл, программа никогда не дойдёт до блока <code>finally</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> В большинстве случаев блок <code>finally</code> выполняется всегда,
            даже если в блоке <code>try</code> или <code>catch</code> был выполнен <code>return</code> или выброшено
            исключение.
        </p>
    </div>

    <h2>Пример с System.exit(0)</h2>
    <p>
        Пример, когда блок <code>finally</code> не выполняется из-за вызова <code>System.exit(0)</code>:
    </p>
    <pre><code>try {
    System.out.println("В блоке try");
    System.exit(0); // Программа завершает работу
} finally {
    System.out.println("В блоке finally"); // Этот код не выполнится
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере блок <code>finally</code> не выполнится, так как
            программа завершает работу при вызове <code>System.exit(0)</code>.
        </p>
    </div>

    <h2>Пример с бесконечным циклом</h2>
    <p>
        Пример, когда блок <code>finally</code> не выполняется из-за бесконечного цикла:
    </p>
    <pre><code>try {
    while (true) {
        // Бесконечный цикл
    }
} finally {
    System.out.println("В блоке finally"); // Этот код не выполнится
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере блок <code>finally</code> не выполнится, так как
            программа никогда не выйдет из бесконечного цикла.
        </p>
    </div>

    <h2>Пример с недопустимой операцией JVM</h2>
    <p>
        Пример, когда блок <code>finally</code> не выполняется из-за недопустимой операции JVM:
    </p>
    <pre><code>try {
    int[] array = new int[Integer.MAX_VALUE]; // OutOfMemoryError
} finally {
    System.out.println("В блоке finally"); // Этот код не выполнится
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере блок <code>finally</code> не выполнится, так как
            программа завершает работу из-за ошибки <code>OutOfMemoryError</code>.
        </p>
    </div>

    <h2>Когда блок finally выполняется?</h2>
    <p>
        Блок <code>finally</code> выполняется в следующих случаях:
    </p>
    <ul>
        <li>
            <span class="highlight">Нормальное завершение блока try:</span> Если блок <code>try</code> завершается
            без исключений.
        </li>
        <li>
            <span class="highlight">Возникновение исключения:</span> Если в блоке <code>try</code> возникает
            исключение, блок <code>finally</code> выполняется после блока <code>catch</code> (если он есть).
        </li>
        <li>
            <span class="highlight">Использование return:</span> Если в блоке <code>try</code> или <code>catch</code>
            используется <code>return</code>, блок <code>finally</code> выполняется перед возвратом из метода.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример с return:</span>
            <pre><code>public int example() {
    try {
        return 1;
    } finally {
        System.out.println("Блок finally выполнен");
    }
}</code></pre>
            В этом примере блок <code>finally</code> выполнится перед возвратом значения из метода.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('2adc8a98-cea5-49f0-ad71-21bb5420a74b', 'Что такое стирание типов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Стирание типов в Java</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Стирание типов в Java</h1>
    <p>
        Стирание типов (Type Erasure) — это процесс, при котором информация о параметризованных типах удаляется во время компиляции и становится недоступной во время выполнения программы. Это означает, что в runtime все обобщенные типы заменяются на их "сырые" (raw) аналоги.
    </p>

    <h2>Как работает стирание типов?</h2>
    <ul>
        <li>
            <span class="highlight">На этапе компиляции:</span> Компилятор проверяет типы данных, используемые в обобщенных классах и методах, и обеспечивает безопасность типов.
        </li>
        <li>
            <span class="highlight">На этапе выполнения:</span> Вся информация о параметризованных типах стирается, и обобщенные типы заменяются на их "сырые" аналоги. Например, <code>List&lt;String&gt;</code> становится просто <code>List</code>.
        </li>
    </ul>

    <h2>Пример стирания типов</h2>
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
        После компиляции класс <code>Box&lt;T&gt;</code> будет преобразован в следующий вид:
    </p>
    <pre>
        <code>
public class Box {
    private Object item;

    public void setItem(Object item) {
        this.item = item;
    }

    public Object getItem() {
        return item;
    }
}
        </code>
    </pre>
    <p>
        Здесь параметр типа <code>T</code> заменен на <code>Object</code>, так как <code>Object</code> является базовым типом для всех классов в Java.
    </p>

    <h2>Последствия стирания типов</h2>
    <ul>
        <li>
            <span class="highlight">Невозможность проверки типов в runtime:</span> Поскольку информация о типах стирается, вы не можете проверить, например, является ли объект экземпляром <code>List&lt;String&gt;</code> во время выполнения.
        </li>
        <li>
            <span class="highlight">Ограничения на создание экземпляров обобщенных типов:</span> Вы не можете создать экземпляр параметризованного типа, например, <code>new T()</code>, так как тип <code>T</code> неизвестен во время выполнения.
        </li>
        <li>
            <span class="highlight">Несовместимость с примитивными типами:</span> Generics работают только с объектами, поэтому примитивные типы (например, <code>int</code>, <code>char</code>) не могут быть использованы в качестве параметров типов.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Стирание типов — это механизм, который позволяет сохранить обратную совместимость с кодом, написанным до появления Generics в Java. Однако это также накладывает некоторые ограничения на использование обобщенных типов.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Стирание типов — это процесс удаления информации о параметризованных типах во время компиляции.
        </li>
        <li>
            Пример:
            <pre>
                <code>
public class Box<T> {
    private T item; // После стирания: private Object item;
}
                </code>
            </pre>
        </li>
        <li>
            Последствия: невозможность проверки типов в runtime, ограничения на создание экземпляров, несовместимость с примитивными типами.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ee4ab7a4-a458-49d6-9158-2c1ed7d3fbc3', ' Есть ли какие-либо рекомендации о том, какие поля следует использовать  при подсчете hashCode()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Рекомендации по выбору полей для hashCode()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Рекомендации по выбору полей для hashCode()</h1>
    <p>
        При переопределении метода <span class="highlight">hashCode()</span> важно правильно выбрать поля, которые будут
        использоваться для вычисления хэш-кода. Это необходимо для минимизации коллизий
        (ситуаций, когда разные объекты имеют одинаковый хэш-код) и обеспечения
        эффективной работы коллекций, таких как <code>HashMap</code> или <code>HashSet</code>.
    </p>

    <h2>Какие поля использовать?</h2>
    <ul>
        <li>
            <span class="highlight">Уникальные поля:</span> Используйте поля, которые с большой вероятностью будут
            различаться у разных объектов. Например, уникальные идентификаторы (<code>id</code>,
            <code>uuid</code>).
        </li>
        <li>
            <span class="highlight">Примитивные поля:</span> Предпочтение следует отдавать примитивным полям
            (<code>int</code>, <code>long</code>, <code>boolean</code> и т. д.), так как они проще в обработке и менее
            подвержены ошибкам.
        </li>
        <li>
            <span class="highlight">Согласованность с equals():</span> Если поле используется для вычисления
            <code>hashCode()</code>, оно должно также использоваться в методе <code>equals()</code>. Это
            гарантирует соблюдение контракта между этими методами.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Не рекомендуется использовать для вычисления <code>hashCode()</code> поля,
            которые могут изменяться после создания объекта, так как это может привести к
            некорректной работе коллекций.
        </p>
    </div>

    <h2>Пример выбора полей</h2>
    <p>
        Пример класса, в котором для вычисления <code>hashCode()</code> выбраны уникальные и
        примитивные поля:
    </p>
    <pre><code>class Person {
    private int id; // Уникальное поле
    private String name; // Не используется в hashCode()
    private int age; // Примитивное поле

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Person person = (Person) obj;
        return id == person.id && age == person.age;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, age); // Используются id и age
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере поле <code>name</code> не используется для вычисления
            <code>hashCode()</code>, так как оно не участвует в сравнении объектов в методе
            <code>equals()</code>.
        </p>
    </div>

    <h2>Рекомендации</h2>
    <ul>
        <li>
            <span class="highlight">Минимизация коллизий:</span> Выбирайте поля, которые с большой вероятностью будут
            различаться у разных объектов.
        </li>
        <li>
            <span class="highlight">Производительность:</span> Использование примитивных полей повышает
            производительность вычисления хэш-кода.
        </li>
        <li>
            <span class="highlight">Согласованность:</span> Все поля, используемые в <code>hashCode()</code>, должны также
            использоваться в <code>equals()</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Правильный выбор полей для вычисления <code>hashCode()</code> помогает
            избежать коллизий и обеспечивает корректную работу коллекций.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('10f334cd-7ce3-4f94-85d2-e990933d90d2', 'Как вызывать static метод интерфейса?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вызов статических методов интерфейса</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Вызов статических методов интерфейса</h1>
    <p>
        Статические методы интерфейса вызываются напрямую через имя интерфейса, без необходимости
        создания экземпляра класса. Например:
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Если у вас есть интерфейс <code>Paper</code> со статическим методом <code>show()</code>,
            вы можете вызвать его следующим образом:
        </p>
        <pre><code>Paper.show();</code></pre>
    </div>

    <h2>Особенности вызова статических методов интерфейса</h2>
    <ul>
        <li>
            <span class="highlight">Прямой вызов через интерфейс:</span> Статические методы интерфейса вызываются через имя
            интерфейса, а не через объект класса.
        </li>
        <li>
            <span class="highlight">Невозможность вызова через объект:</span> Статические методы интерфейса нельзя вызвать
            через экземпляр класса, реализующего интерфейс. Например, следующий код вызовет
            ошибку:
            <pre><code>Paper paper = new PaperImpl();
paper.show(); // Ошибка!</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Статические методы интерфейса предназначены для использования на уровне
            интерфейса, а не на уровне объектов. Это делает их удобными для предоставления
            утилитарных функций, связанных с интерфейсом.
        </p>
    </div>

    <h2>Пример использования</h2>
    <p>
        Предположим, у вас есть интерфейс <code>Paper</code> с методом <code>show()</code>:
    </p>
    <pre><code>interface Paper {
    static void show() {
        System.out.println("Это статический метод интерфейса!");
    }
}</code></pre>
    <p>
        Вызов метода будет выглядеть так:
    </p>
    <pre><code>Paper.show(); // Вывод: "Это статический метод интерфейса!"</code></pre>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('17144b86-250a-40c3-96d6-f87d7ee87d9f', 'К каким переменным есть доступ у лямбда-выражений?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Доступ к переменным в лямбда-выражениях</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Доступ к переменным в лямбда-выражениях</h1>
    <p>
        Лямбда-выражения могут обращаться к переменным внешней области действия. Этот доступ
        очень схож с доступом из анонимных объектов. Однако существуют определённые правила и
        ограничения, которые регулируют, к каким переменным лямбда-выражения могут обращаться.
    </p>

    <h2>Переменные, доступные лямбда-выражениям</h2>
    <ul>
        <li>
            <span class="highlight">Неизменяемые локальные переменные:</span> Лямбда-выражения могут ссылаться на
            локальные переменные, которые являются <span class="highlight">effectively final</span> (фактически неизменяемыми).
            Это означает, что переменная не обязательно должна быть помечена как <code>final</code>, но её
            значение не должно изменяться после инициализации.
        </li>
        <li>
            <span class="highlight">Поля класса:</span> Лямбда-выражения могут обращаться к полям класса, в котором они
            определены. Это включает как нестатические, так и статические поля.
        </li>
        <li>
            <span class="highlight">Статические переменные:</span> Лямбда-выражения могут обращаться к статическим
            переменным класса.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Лямбда-выражение, использующее локальную переменную и поле класса:
        </p>
        <pre><code>class Example {
    private int field = 10;

    public void method() {
        int localVar = 5; // effectively final
        Runnable r = () -> {
            System.out.println(localVar + field); // доступ к локальной переменной и полю
        };
        r.run();
    }
}</code></pre>
    </div>

    <h2>Ограничения доступа</h2>
    <ul>
        <li>
            <span class="highlight">Методы по умолчанию интерфейса:</span> Внутри лямбда-выражения запрещено обращаться
            к методам по умолчанию (<code>default</code> methods) функционального интерфейса, который
            реализуется лямбда-выражением.
        </li>
        <li>
            <span class="highlight">Изменяемые локальные переменные:</span> Лямбда-выражения не могут использовать
            локальные переменные, которые изменяются после их инициализации.
        </li>
    </ul>

    <h2>Пример с effectively final переменной</h2>
    <p>
        Лямбда-выражение может использовать локальную переменную, если она effectively final:
    </p>
    <pre><code>public class Main {
    public static void main(String[] args) {
        int effectivelyFinalVar = 42; // effectively final
        Runnable r = () -> System.out.println(effectivelyFinalVar);
        r.run();
    }
}</code></pre>

    <h2>Пример с полем класса</h2>
    <p>
        Лямбда-выражение может обращаться к полям класса:
    </p>
    <pre><code>public class Example {
    private int instanceVar = 10;

    public void method() {
        Runnable r = () -> System.out.println(instanceVar); // доступ к полю класса
        r.run();
    }
}</code></pre>

    <h2>Пример со статической переменной</h2>
    <p>
        Лямбда-выражение может использовать статические переменные:
    </p>
    <pre><code>public class Example {
    private static int staticVar = 20;

    public void method() {
        Runnable r = () -> System.out.println(staticVar); // доступ к статической переменной
        r.run();
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Лямбда-выражения предоставляют удобный способ работы с переменными внешней области
        действия, но с определёнными ограничениями. Они могут обращаться к effectively final
        локальным переменным, полям класса и статическим переменным, но не могут использовать
        методы по умолчанию функционального интерфейса.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('286d86a1-0282-4c67-8e92-a9b0fcd252c1', 'Могут ли у разных объектов быть одинаковые hashCode()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Коллизии в hashCode()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Коллизии в hashCode()</h1>
    <p>
        Метод <span class="highlight">hashCode()</span> не гарантирует уникальность возвращаемого значения. Это означает,
        что у разных объектов могут быть одинаковые хэш-коды. Такая ситуация называется
        <span class="highlight">коллизией</span>.
    </p>

    <h2>Что такое коллизия?</h2>
    <p>
        <span class="highlight">Коллизия</span> — это ситуация, когда два разных объекта возвращают одинаковый хэш-код.
        Вероятность возникновения коллизии зависит от используемого алгоритма генерации
        хэш-кода и количества возможных значений хэш-кода (в Java это 2<sup>32</sup> возможных
        значений).
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Коллизии не являются ошибкой, но они могут снизить производительность
            коллекций, таких как <code>HashMap</code> или <code>HashSet</code>, так как несколько объектов
            будут храниться в одной "корзине".
        </p>
    </div>

    <h2>Почему коллизии возможны?</h2>
    <ul>
        <li>
            <span class="highlight">Ограниченный диапазон:</span> В Java хэш-код представлен типом <code>int</code>, что
            ограничивает количество возможных значений (2<sup>32</sup>). При этом количество
            объектов может быть значительно больше.
        </li>
        <li>
            <span class="highlight">Алгоритм генерации:</span> Вероятность коллизии зависит от алгоритма, используемого
            для вычисления хэш-кода. Хороший алгоритм минимизирует вероятность коллизий,
            но не исключает их полностью.
        </li>
    </ul>

    <h2>Пример коллизии</h2>
    <p>
        Пример двух разных объектов с одинаковым хэш-кодом:
    </p>
    <pre><code>class Person {
    private String name;
    private int age;

    @Override
    public int hashCode() {
        return Objects.hash(name, age);
    }
}

Person person1 = new Person("Alice", 25);
Person person2 = new Person("Bob", 30);

System.out.println(person1.hashCode()); // 123456
System.out.println(person2.hashCode()); // 123456</code></pre>
    <p>
        В этом примере <code>person1</code> и <code>person2</code> имеют одинаковый хэш-код, хотя это разные
        объекты.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Коллизии не влияют на корректность работы программы, но могут
            снизить производительность коллекций. Поэтому важно выбирать хороший алгоритм
            для вычисления хэш-кода.
        </p>
    </div>

    <h2>Как минимизировать коллизии?</h2>
    <ul>
        <li>
            <span class="highlight">Использование уникальных полей:</span> Включайте в вычисление хэш-кода уникальные
            поля, такие как <code>id</code> или <code>uuid</code>.
        </li>
        <li>
            <span class="highlight">Хороший алгоритм:</span> Используйте алгоритмы, которые равномерно распределяют
            хэш-коды, например, метод <code>Objects.hash()</code>.
        </li>
        <li>
            <span class="highlight">Увеличение диапазона:</span> Если возможно, используйте более широкий диапазон
            значений для хэш-кода (например, <code>long</code> вместо <code>int</code> в других языках).
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Даже при использовании хорошего алгоритма коллизии возможны, но их
            вероятность будет значительно снижена.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('75a643f4-e232-4ea1-bd26-a1f8d8796ebe', 'Может ли метод main() выбросить исключение вне метода?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Исключения в методе main()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Исключения в методе main()</h1>
    <p>
        Метод <span class="highlight">main()</span> в Java может выбросить исключение во вне. Если это
        происходит, исключение передаётся в виртуальную машину Java (JVM), которая
        обрабатывает его и завершает выполнение программы.
    </p>

    <h2>Может ли метод main() выбросить исключение?</h2>
    <p>
        Да, метод <code>main()</code> может выбросить исключение, если оно не обрабатывается внутри
        метода. В этом случае исключение передаётся в JVM.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span>
            <pre><code>public class Main {
    public static void main(String[] args) {
        throw new RuntimeException("Исключение в методе main()");
    }
}</code></pre>
            В этом примере метод <code>main()</code> выбрасывает исключение
            <code>RuntimeException</code>, которое не обрабатывается внутри метода.
        </p>
    </div>

    <h2>Где происходит обработка исключения?</h2>
    <p>
        Если метод <code>main()</code> выбрасывает исключение, которое не обрабатывается внутри
        метода, оно передаётся в виртуальную машину Java (JVM). JVM обрабатывает
        исключение следующим образом:
    </p>
    <ul>
        <li>
            <span class="highlight">Вывод стека вызовов:</span> JVM выводит стек вызовов (stack trace)
            исключения в стандартный поток ошибок (<code>System.err</code>).
        </li>
        <li>
            <span class="highlight">Завершение программы:</span> После вывода стека вызовов JVM
            завершает выполнение программы.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример вывода:</span>
            <pre><code>Exception in thread "main" java.lang.RuntimeException: Исключение в методе main()
    at Main.main(Main.java:3)</code></pre>
            В этом примере JVM выводит стек вызовов исключения и завершает программу.
        </p>
    </div>

    <h2>Как обработать исключение в методе main()?</h2>
    <p>
        Чтобы обработать исключение в методе <code>main()</code>, можно использовать блок
        <code>try-catch</code>:
    </p>
    <pre><code>public class Main {
    public static void main(String[] args) {
        try {
            // Код, который может вызвать исключение
            throw new RuntimeException("Исключение в методе main()");
        } catch (RuntimeException e) {
            System.out.println("Обработка исключения: " + e.getMessage());
        }
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере исключение обрабатывается внутри
            метода <code>main()</code>, и программа продолжает работу без завершения.
        </p>
    </div>

    <h2>Рекомендации</h2>
    <ul>
        <li>
            <span class="highlight">Обработка исключений:</span> Рекомендуется обрабатывать исключения
            внутри метода <code>main()</code>, чтобы программа могла корректно завершить
            выполнение или продолжить работу.
        </li>
        <li>
            <span class="highlight">Логирование:</span> Используйте логирование для записи информации
            об исключениях, чтобы упростить диагностику проблем.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример с логированием:</span>
            <pre><code>import java.util.logging.Logger;

public class Main {
    private static final Logger logger = Logger.getLogger(Main.class.getName());

    public static void main(String[] args) {
        try {
            // Код, который может вызвать исключение
            throw new RuntimeException("Исключение в методе main()");
        } catch (RuntimeException e) {
            logger.severe("Ошибка: " + e.getMessage());
        }
    }
}</code></pre>
            В этом примере информация об исключении записывается в лог.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8a10cab4-8994-4373-8974-a813a55acbc6', 'Как исключить поля из сериализации?', e'<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Исключение полей из сериализации</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Исключение полей из сериализации</h1>
    <p>
        В процессе сериализации не всегда требуется сохранять все поля объекта. Некоторые поля могут быть временными или содержать данные, которые не нужно сохранять. Для исключения таких полей из процесса сериализации используется ключевое слово <code>transient</code>.
    </p>

    <h2>Использование ключевого слова transient</h2>
    <ul>
        <li>
            <span class="highlight">Исключение поля:</span> Поля, помеченные ключевым словом <code>transient</code>, не участвуют в процессе сериализации. После десериализации такие поля будут иметь значения по умолчанию (например, <code>null</code> для объектов, <code>0</code> для чисел, <code>false</code> для <code>boolean</code>).
        </li>
        <li>
            <span class="highlight">Пример использования:</span>
            <pre>
                <code>
public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    private String name;
    private transient String password; // Поле password не будет сериализовано

    public User(String name, String password) {
        this.name = name;
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{name=\'" + name + "\', password=\'" + password + "\'}";
    }
}
                </code>
            </pre>
            В этом примере поле <code>password</code> не будет сериализовано, так как оно помечено как <code>transient</code>.
        </li>
    </ul>

    <h2>Когда использовать transient?</h2>
    <ul>
        <li>
            <span class="highlight">Временные данные:</span> Если поле содержит временные данные, которые не нужно сохранять (например, кэш или промежуточные результаты).
        </li>
        <li>
            <span class="highlight">Конфиденциальные данные:</span> Если поле содержит конфиденциальную информацию (например, пароли), которую не следует сохранять в сериализованном виде.
        </li>
        <li>
            <span class="highlight">Несериализуемые объекты:</span> Если поле содержит объекты, которые не поддерживают сериализацию (например, потоки или соединения с базой данных).
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Поля, помеченные как <code>transient</code>, не сохраняются при сериализации, поэтому после десериализации их значения будут потеряны. Убедитесь, что это поведение соответствует вашим требованиям.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Ключевое слово <code>transient</code> используется для исключения полей из процесса сериализации.
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
private transient String password; // Поле password не будет сериализовано
                </code>
            </pre>
        </li>
        <li>
            Применяйте <code>transient</code> для временных, конфиденциальных или несериализуемых данных.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3aa9fda8-97d7-4561-805f-076c63a69983', 'Что такое raw type (сырой тип)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Raw Type (сырой тип) в Java</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Raw Type (сырой тип) в Java</h1>
    <p>
        Raw Type (сырой тип) — это использование обобщенного класса или интерфейса без указания параметризованного типа. В таком случае тип считается "сырым", и компилятор не может обеспечить безопасность типов.
    </p>

    <h2>Пример Raw Type</h2>
    <pre>
        <code>
List list = new ArrayList(); // Raw Type
list.add("Hello");
list.add(123); // Нет проверки типов на этапе компиляции
        </code>
    </pre>
    <p>
        В этом примере <code>List</code> используется без указания типа, что делает его сырым типом. Это позволяет добавлять в список элементы любого типа, но может привести к ошибкам во время выполнения.
    </p>

    <h2>Пример Parameterized Type</h2>
    <pre>
        <code>
List<Integer> listIntgrs = new ArrayList<>(); // Parameterized Type
listIntgrs.add(123);
// listIntgrs.add("Hello"); // Ошибка компиляции: несовместимые типы
        </code>
    </pre>
    <p>
        В этом примере <code>List&lt;Integer&gt;</code> является параметризованным типом. Компилятор проверяет, что в список добавляются только элементы типа <code>Integer</code>, что обеспечивает безопасность типов.
    </p>

    <h2>Проблемы Raw Type</h2>
    <ul>
        <li>
            <span class="highlight">Отсутствие безопасности типов:</span> При использовании сырых типов компилятор не может проверить типы данных, что может привести к ошибкам во время выполнения.
        </li>
        <li>
            <span class="highlight">Потеря преимуществ Generics:</span> Использование сырых типов лишает вас преимуществ обобщений, таких как безопасность типов и улучшенная читаемость кода.
        </li>
        <li>
            <span class="highlight">Предупреждения компилятора:</span> Использование сырых типов вызывает предупреждения компилятора, так как это считается устаревшей практикой.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование сырых типов не рекомендуется. Всегда старайтесь указывать параметризованные типы для обеспечения безопасности типов и предотвращения ошибок.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Raw Type — это использование обобщенного класса или интерфейса без указания параметризованного типа.
        </li>
        <li>
            Пример Raw Type:
            <pre>
                <code>
List list = new ArrayList(); // Raw Type
                </code>
            </pre>
        </li>
        <li>
            Пример Parameterized Type:
            <pre>
                <code>
List<Integer> listIntgrs = new ArrayList<>(); // Parameterized Type
                </code>
            </pre>
        </li>
        <li>
            Проблемы: отсутствие безопасности типов, потеря преимуществ Generics, предупреждения компилятора.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9cc4bd03-1dc8-4f6f-b7b2-ac342404ecd8', 'Каким образом реализованы методы hashCode() и equals() в классе Object?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Реализация hashCode() и equals() в классе Object</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Реализация hashCode() и equals() в классе Object</h1>
    <p>
        Методы <span class="highlight">hashCode()</span> и <span class="highlight">equals()</span> в классе <code>Object</code> имеют стандартную реализацию,
        которая используется по умолчанию, если эти методы не переопределены в дочерних
        классах.
    </p>

    <h2>Реализация метода equals()</h2>
    <p>
        Метод <code>equals()</code> в классе <code>Object</code> сравнивает две ссылки на объекты. Его
        реализация выглядит следующим образом:
    </p>
    <pre><code>public boolean equals(Object obj) {
    return (this == obj);
}</code></pre>
    <p>
        Это означает, что по умолчанию <code>equals()</code> проверяет, ссылаются ли две
        переменные на один и тот же объект в памяти.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Для сравнения объектов по их состоянию (содержимому) необходимо
            переопределить метод <code>equals()</code> в дочернем классе.
        </p>
    </div>

    <h2>Реализация метода hashCode()</h2>
    <p>
        Метод <code>hashCode()</code> в классе <code>Object</code> реализован как <code>native</code>, то есть его
        реализация написана не на Java, а на низкоуровневом языке (например, C++).
        Обычно он возвращает адрес объекта в памяти:
    </p>
    <pre><code>public native int hashCode();</code></pre>
    <p>
        Это означает, что по умолчанию <code>hashCode()</code> возвращает уникальное значение,
        связанное с объектом, но это значение может не иметь отношения к его состоянию.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Для корректной работы с коллекциями, такими как <code>HashMap</code> или
            <code>HashSet</code>, необходимо переопределить метод <code>hashCode()</code> в дочернем классе,
            чтобы он возвращал одинаковые значения для равных объектов.
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
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c26edab6-43c8-4b62-a6bf-f3ed6d21f440', 'Как отсортировать список строк с помощью лямбда-выражения?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сортировка списка строк с помощью лямбда-выражения</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Сортировка списка строк с помощью лямбда-выражения</h1>
    <p>
        В Java можно отсортировать список строк с использованием лямбда-выражения. Лямбда-выражения
        позволяют сделать код более компактным и читаемым, особенно при работе с функциональными
        интерфейсами, такими как <code>Comparator</code>.
    </p>

    <h2>Пример сортировки списка строк</h2>
    <p>
        Для сортировки списка строк можно использовать метод <code>Collections.sort</code>, передав
        в качестве компаратора лямбда-выражение. Лямбда-выражение сравнивает две строки
        с помощью метода <code>compareTo</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Метод для сортировки списка строк:
        </p>
        <pre><code>import java.util.Collections;
import java.util.List;

public class StringSorter {
    public static List<String> sort(List<String> list) {
        Collections.sort(list, (a, b) -> a.compareTo(b));
        return list;
    }
}</code></pre>
    </div>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">Collections.sort:</span> Метод <code>Collections.sort</code> сортирует переданный список
            с использованием компаратора.
        </li>
        <li>
            <span class="highlight">Лямбда-выражение:</span> Лямбда-выражение <code>(a, b) -> a.compareTo(b)</code>
            заменяет создание анонимного класса для интерфейса <code>Comparator</code>. Оно сравнивает
            две строки <code>a</code> и <code>b</code> с помощью метода <code>compareTo</code>.
        </li>
    </ul>

    <h2>Пример использования</h2>
    <p>
        Пример вызова метода <code>sort</code> для сортировки списка строк:
    </p>
    <pre><code>import java.util.Arrays;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<String> names = Arrays.asList("Иван", "Анна", "Петр", "Мария");
        List<String> sortedNames = StringSorter.sort(names);
        System.out.println(sortedNames); // [Анна, Иван, Мария, Петр]
    }
}</code></pre>

    <h2>Преимущества использования лямбда-выражений</h2>
    <ul>
        <li>
            <span class="highlight">Компактность:</span> Лямбда-выражения позволяют писать меньше кода по сравнению
            с использованием анонимных классов.
        </li>
        <li>
            <span class="highlight">Читаемость:</span> Код становится более понятным и выразительным.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Лямбда-выражения могут быть легко изменены или заменены
            в зависимости от задачи.
        </li>
    </ul>

    <h2>Итог</h2>
    <p>
        Использование лямбда-выражений для сортировки списка строк делает код более компактным
        и удобным для чтения. Лямбда-выражения позволяют легко передавать логику сравнения
        в методы, такие как <code>Collections.sort</code>, без необходимости создания анонимных классов.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('c2421514-5b63-4105-96b7-36f398a0c27d', 'Как решается проблема ромбовидного наследования при наследовании  интерфейсов при наличии default-методов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Проблема ромбовидного наследования и default-методы</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Проблема ромбовидного наследования и default-методы</h1>
    <p>
        Проблема ромбовидного наследования возникает, когда класс реализует несколько интерфейсов,
        которые имеют <span class="highlight">default-методы</span> с одинаковой сигнатурой. В этом случае компилятор требует
        обязательного переопределения такого метода в классе, чтобы избежать неоднозначности.
    </p>

    <h2>Решение проблемы</h2>
    <ul>
        <li>
            <span class="highlight">Обязательное переопределение:</span> Если два или более интерфейса содержат default-методы
            с одинаковой сигнатурой, класс, реализующий эти интерфейсы, должен явно переопределить
            этот метод.
        </li>
        <li>
            <span class="highlight">Устранение неоднозначности:</span> Переопределение метода в классе позволяет явно указать,
            какая реализация должна использоваться, либо предоставить собственную реализацию.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если default-метод не переопределён, компилятор выдаст ошибку, так как не сможет
            определить, какую из реализаций использовать.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Рассмотрим два интерфейса с одинаковым default-методом:
    </p>
    <pre><code>interface A {
    default void show() {
        System.out.println("Интерфейс A");
    }
}

interface B {
    default void show() {
        System.out.println("Интерфейс B");
    }
}</code></pre>
    <p>
        Класс, реализующий оба интерфейса, должен переопределить метод <code>show()</code>:
    </p>
    <pre><code>class C implements A, B {
    @Override
    public void show() {
        System.out.println("Класс C");
        // Можно явно вызвать реализацию из одного из интерфейсов:
        A.super.show(); // Вызов метода из интерфейса A
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Переопределение метода в классе позволяет устранить неоднозначность и
            явно указать, какая реализация должна использоваться. Также можно вызвать
            реализацию default-метода из конкретного интерфейса с помощью синтаксиса
            <code>InterfaceName.super.methodName()</code>.
        </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('08d3da9f-4b6b-4391-977a-b4a5b2a2886c', 'В каком порядке следует обрабатывать исключения в catch-блоках?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Порядок обработки исключений в catch-блоках</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Порядок обработки исключений в catch-блоках</h1>
    <p>
        При обработке исключений в Java важно соблюдать правильный порядок
        <span class="highlight">catch-блоков</span>. Исключения должны обрабатываться от наследника к предку,
        то есть от более конкретных исключений к более общим.
    </p>

    <h2>Почему важен порядок catch-блоков?</h2>
    <p>
        Если исключение обрабатывается в блоке <code>catch</code>, который соответствует
        его предку, то более конкретные исключения никогда не будут обработаны. Это
        связано с тем, что Java выбирает первый подходящий блок <code>catch</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример неправильного порядка:</span>
            <pre><code>try {
    // Код, который может вызвать исключение
} catch (Exception e) {
    System.out.println("Обработка общего исключения");
} catch (IOException e) {
    System.out.println("Обработка IOException"); // Этот блок никогда не выполнится
}</code></pre>
            В этом примере блок <code>catch (IOException e)</code> никогда не выполнится, так как
            <code>IOException</code> является подклассом <code>Exception</code>, и исключение будет
            перехвачено первым блоком.
        </p>
    </div>

    <h2>Правильный порядок catch-блоков</h2>
    <p>
        Чтобы исключения обрабатывались корректно, блоки <code>catch</code> должны быть
        расположены в порядке от наследника к предку:
    </p>
    <pre><code>try {
    // Код, который может вызвать исключение
} catch (IOException e) {
    System.out.println("Обработка IOException");
} catch (Exception e) {
    System.out.println("Обработка общего исключения");
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере сначала обрабатывается более конкретное
            исключение <code>IOException</code>, а затем — более общее исключение <code>Exception</code>.
        </p>
    </div>

    <h2>Пример с несколькими исключениями</h2>
    <p>
        Пример обработки нескольких исключений с правильным порядком:
    </p>
    <pre><code>try {
    // Код, который может вызвать FileNotFoundException или IOException
} catch (FileNotFoundException e) {
    System.out.println("Файл не найден: " + e.getMessage());
} catch (IOException e) {
    System.out.println("Ошибка ввода-вывода: " + e.getMessage());
} catch (Exception e) {
    System.out.println("Общее исключение: " + e.getMessage());
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере сначала обрабатывается <code>FileNotFoundException</code>
            (наследник <code>IOException</code>), затем <code>IOException</code>, и, наконец, общее исключение
            <code>Exception</code>.
        </p>
    </div>

    <h2>Рекомендации</h2>
    <ul>
        <li>
            <span class="highlight">От наследника к предку:</span> Всегда располагайте блоки <code>catch</code> в
            порядке от более конкретных исключений к более общим.
        </li>
        <li>
            <span class="highlight">Минимизация использования общего Exception:</span> Старайтесь
            избегать обработки общего исключения <code>Exception</code>, если это возможно.
            Это помогает более точно обрабатывать ошибки.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример с минимизацией общего Exception:</span>
            <pre><code>try {
    // Код, который может вызвать FileNotFoundException или IOException
} catch (FileNotFoundException e) {
    System.out.println("Файл не найден: " + e.getMessage());
} catch (IOException e) {
    System.out.println("Ошибка ввода-вывода: " + e.getMessage());
}</code></pre>
            В этом примере общее исключение <code>Exception</code> не используется, что делает
            обработку ошибок более точной.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a0fc41f1-2b27-421e-8758-f2263be5a852', 'Расскажите про обрабатываемые и необрабатываемые исключения', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Обрабатываемые и необрабатываемые исключения</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Обрабатываемые и необрабатываемые исключения</h1>
    <p>
        В Java исключения делятся на два типа: <span class="highlight">checked</span> (проверяемые) и
        <span class="highlight">unchecked</span> (непроверяемые). Они отличаются по способу обработки и
        требованиям к их использованию.
    </p>

    <h2>Checked исключения (проверяемые)</h2>
    <p>
        <span class="highlight">Checked исключения</span> — это исключения, которые должны быть обработаны в
        программе. Они проверяются на этапе компиляции, и если их не обработать,
        программа не скомпилируется.
    </p>
    <ul>
        <li>
            <span class="highlight">Обработка:</span> Должны быть обработаны с помощью блока <code>try-catch</code> или
            объявлены в сигнатуре метода с помощью ключевого слова <code>throws</code>.
        </li>
        <li>
            <span class="highlight">Примеры:</span> <code>IOException</code>, <code>SQLException</code>,
            <code>ClassNotFoundException</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span>
            <pre><code>try {
    FileReader file = new FileReader("file.txt");
} catch (IOException e) {
    System.out.println("Ошибка при чтении файла: " + e.getMessage());
}</code></pre>
            В этом примере исключение <code>IOException</code> обрабатывается с помощью блока
            <code>catch</code>.
        </p>
    </div>

    <h2>Unchecked исключения (непроверяемые)</h2>
    <p>
        <span class="highlight">Unchecked исключения</span> — это исключения, которые не проверяются на этапе
        компиляции. Они могут быть обработаны, но это не обязательно.
    </p>
    <ul>
        <li>
            <span class="highlight">Обработка:</span> Не требуют обязательной обработки. Могут быть обработаны
            с помощью блока <code>try-catch</code>, но это не обязательно.
        </li>
        <li>
            <span class="highlight">Примеры:</span>
            <ul>
                <li><code>RuntimeException</code> и его подклассы: <code>NullPointerException</code>,
                    <code>ArithmeticException</code>, <code>IndexOutOfBoundsException</code>.</li>
                <li><code>Error</code> и его подклассы: <code>OutOfMemoryError</code>,
                    <code>StackOverflowError</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span>
            <pre><code>int[] array = new int[5];
System.out.println(array[10]); // IndexOutOfBoundsException</code></pre>
            В этом примере исключение <code>IndexOutOfBoundsException</code> не обрабатывается, так как
            оно является непроверяемым.
        </p>
    </div>

    <h2>Различия между checked и unchecked исключениями</h2>
    <ul>
        <li>
            <span class="highlight">Проверка на этапе компиляции:</span> Checked исключения проверяются
            компилятором, unchecked — нет.
        </li>
        <li>
            <span class="highlight">Обязательность обработки:</span> Checked исключения должны быть
            обработаны, unchecked — нет.
        </li>
        <li>
            <span class="highlight">Типы исключений:</span> Checked исключения относятся к классу
            <code>Exception</code>, а unchecked — к <code>RuntimeException</code> и <code>Error</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Обработка исключений помогает сделать программу более устойчивой
            к ошибкам. Однако, unchecked исключения, такие как <code>Error</code>, не рекомендуется
            обрабатывать, так как они связаны с серьёзными проблемами уровня JVM.
        </p>
    </div>

    <h2>Пример использования throws</h2>
    <p>
        Пример объявления checked исключения в сигнатуре метода:
    </p>
    <pre><code>public void readFile() throws IOException {
    FileReader file = new FileReader("file.txt");
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Использование <code>throws</code> позволяет передать
            ответственность за обработку исключения вызывающему методу.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3c6ff800-5b6b-4ec7-89a4-40273633d56b', 'Чем a.getClass().equals(A.class) отличается от a instanceOf A.class?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между getClass() и instanceof</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Разница между getClass() и instanceof</h1>
    <p>
        В Java существуют два способа проверки типа объекта: с помощью метода
        <span class="highlight">getClass()</span> и оператора <span class="highlight">instanceof</span>. Эти подходы имеют разные цели и
        поведение, и важно понимать их различия.
    </p>

    <h2>Метод getClass()</h2>
    <p>
        Метод <code>getClass()</code> возвращает точный класс объекта. Он проверяет, является ли объект
        экземпляром <span class="highlight">конкретного класса</span>, без учёта иерархии наследования.
    </p>
    <div class="note">
        <p>
            <span class="highlight">Пример:</span>
            <pre><code>if (a.getClass().equals(A.class)) {
    // Объект a является экземпляром класса A
}</code></pre>
            В этом примере условие выполнится только если объект <code>a</code> является экземпляром
            класса <code>A</code>, но не его подкласса.
        </p>
    </div>

    <h2>Оператор instanceof</h2>
    <p>
        Оператор <code>instanceof</code> проверяет, является ли объект экземпляром указанного класса
        или его <span class="highlight">подкласса</span>. Он также учитывает реализацию интерфейсов.
    </p>
    <div class="note">
        <p>
            <span class="highlight">Пример:</span>
            <pre><code>if (a instanceof A) {
    // Объект a является экземпляром класса A или его подкласса
}</code></pre>
            В этом примере условие выполнится, если объект <code>a</code> является экземпляром
            класса <code>A</code> или любого его подкласса.
        </p>
    </div>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Точность:</span> Метод <code>getClass()</code> проверяет точный класс объекта, тогда как
            <code>instanceof</code> учитывает всю иерархию наследования.
        </li>
        <li>
            <span class="highlight">Использование:</span> <code>getClass()</code> полезен, когда нужно проверить, что объект
            принадлежит именно указанному классу, а <code>instanceof</code> — когда нужно
            проверить, что объект принадлежит классу или его подклассу.
        </li>
        <li>
            <span class="highlight">Интерфейсы:</span> Оператор <code>instanceof</code> также может проверять, реализует ли
            объект определённый интерфейс.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Для корректной реализации метода <code>equals()</code> рекомендуется
            использовать точное сравнение классов с помощью <code>getClass()</code>, чтобы
            избежать нарушения контракта.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Пример использования <code>getClass()</code> и <code>instanceof</code>:
    </p>
    <pre><code>class A {}
class B extends A {}

A a = new A();
B b = new B();

System.out.println(a.getClass().equals(A.class)); // true
System.out.println(b.getClass().equals(A.class)); // false

System.out.println(a instanceof A); // true
System.out.println(b instanceof A); // true</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере <code>getClass()</code> возвращает <code>false</code> для объекта
            <code>b</code>, так как он принадлежит классу <code>B</code>, а не <code>A</code>. В то же время
            <code>instanceof</code> возвращает <code>true</code>, так как <code>B</code> является подклассом <code>A</code>.
        </p>
    </div>

    <h2>Использование в equals()</h2>
    <p>
        Для корректной реализации метода <code>equals()</code> рекомендуется использовать
        точное сравнение классов с помощью <code>getClass()</code>:
    </p>
    <pre><code>@Override
public boolean equals(Object obj) {
    if (this == obj) return true;
    if (obj == null || getClass() != obj.getClass()) return false;
    MyClass other = (MyClass) obj;
    // Сравнение полей
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование <code>getClass()</code> в <code>equals()</code> гарантирует, что объекты
            разных классов не будут считаться равными, что соответствует контракту метода.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a5e3092b-c7cb-4d4b-bb62-a44f157108aa', 'Что вы знаете о OutOfMemoryError?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ошибка OutOfMemoryError</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Ошибка OutOfMemoryError</h1>
    <p>
        <span class="highlight">OutOfMemoryError</span> — это ошибка, которая возникает, когда виртуальная машина
        Java (JVM) не может выделить достаточно памяти для создания нового объекта, а
        сборщик мусора не может освободить достаточное количество памяти. Эта ошибка
        указывает на серьёзные проблемы с управлением памятью в приложении.
    </p>

    <h2>Типы OutOfMemoryError</h2>
    <p>
        Область памяти, занимаемая Java-процессом, состоит из нескольких частей. Тип
        <code>OutOfMemoryError</code> зависит от того, в какой из этих областей не хватило памяти:
    </p>
    <ul>
        <li>
            <span class="highlight">java.lang.OutOfMemoryError: Java heap space:</span> Возникает, когда не
            хватает места в куче (heap), где хранятся объекты, создаваемые в приложении.
            Обычно проблема связана с утечкой памяти. Размер кучи задаётся параметрами
            <code>-Xms</code> (начальный размер) и <code>-Xmx</code> (максимальный размер).
        </li>
        <li>
            <span class="highlight">java.lang.OutOfMemoryError: PermGen space (до Java 8):</span> Возникает,
            когда не хватает места в Permanent Generation (PermGen), области памяти,
            которая использовалась для хранения метаданных классов и строк до Java 8.
            Размер PermGen задавался параметрами <code>-XX:PermSize</code> и
            <code>-XX:MaxPermSize</code>.
        </li>
        <li>
            <span class="highlight">java.lang.OutOfMemoryError: GC overhead limit exceeded:</span> Возникает,
            когда сборщик мусора (Garbage Collector, GC) тратит слишком много времени на
            попытки освободить память, но не может освободить достаточно места. Эту
            ошибку можно отключить с помощью параметра <code>-XX:-UseGCOverheadLimit</code>.
        </li>
        <li>
            <span class="highlight">java.lang.OutOfMemoryError: unable to create new native thread:</span>
            Возникает, когда JVM не может создать новый поток из-за нехватки ресурсов
            операционной системы.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>OutOfMemoryError</code> указывает на серьёзные проблемы с
            памятью, которые могут привести к аварийному завершению программы.
        </p>
    </div>

    <h2>Примеры OutOfMemoryError</h2>
    <p>
        Пример кода, который может вызвать <code>OutOfMemoryError: Java heap space</code>:
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
            приводит к нехватке памяти в куче и возникновению ошибки
            <code>OutOfMemoryError: Java heap space</code>.
        </p>
    </div>

    <h2>Как предотвратить OutOfMemoryError?</h2>
    <ul>
        <li>
            <span class="highlight">Увеличение размера кучи:</span> Используйте параметры <code>-Xms</code> и
            <code>-Xmx</code> для увеличения размера кучи. Например:
            <pre><code>java -Xms512m -Xmx1024m MyApp</code></pre>
        </li>
        <li>
            <span class="highlight">Оптимизация использования памяти:</span> Убедитесь, что в программе
            нет утечек памяти. Используйте профилировщики памяти, такие как
            <code>VisualVM</code> или <code>Eclipse MAT</code>.
        </li>
        <li>
            <span class="highlight">Управление потоками:</span> Убедитесь, что программа не создаёт
            слишком много потоков. Используйте пулы потоков для управления их
            количеством.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Профилирование и анализ использования памяти помогают
            выявить и устранить причины <code>OutOfMemoryError</code>.
        </p>
    </div>

    <h2>Пример OutOfMemoryError: GC overhead limit exceeded</h2>
    <p>
        Пример кода, который может вызвать <code>OutOfMemoryError: GC overhead limit exceeded</code>:
    </p>
    <pre><code>public void createGarbage() {
    List<String> list = new ArrayList<>();
    while (true) {
        list.add(new String("Garbage"));
    }
}

public static void main(String[] args) {
    new Main().createGarbage();
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере бесконечное создание объектов приводит к
            постоянной работе сборщика мусора и возникновению ошибки
            <code>OutOfMemoryError: GC overhead limit exceeded</code>.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6ccffe60-8028-46e4-8063-b5767e4a00f4', 'Для чего нужен метод hashCode()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Метод hashCode()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Метод hashCode()</h1>
    <p>
        Метод <span class="highlight">hashCode()</span> используется для вычисления хэш-кода объекта. В Java хэш-код
        представляет собой целое число, которое используется для быстрого поиска и хранения
        объектов в коллекциях, таких как <code>HashMap</code>, <code>HashSet</code> и других.
    </p>

    <h2>Для чего нужен hashCode()?</h2>
    <ul>
        <li>
            <span class="highlight">Быстрый поиск:</span> Хэш-код позволяет быстро находить объекты в коллекциях,
            таких как <code>HashMap</code> или <code>HashSet</code>, за счёт использования хэш-таблиц.
        </li>
        <li>
            <span class="highlight">Уникальность:</span> Для одного и того же объекта хэш-код всегда будет одинаковым,
            если состояние объекта не изменилось.
        </li>
        <li>
            <span class="highlight">Ограничения:</span> В Java хэш-код ограничен типом <code>int</code>, что означает
            возможность коллизий (когда разные объекты имеют одинаковый хэш-код).
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если хэш-коды двух объектов разные, то объекты гарантированно разные.
            Однако, если хэш-коды равны, объекты могут быть как равными, так и разными.
        </p>
    </div>

    <h2>Реализация по умолчанию</h2>
    <p>
        Если метод <code>hashCode()</code> не переопределён, используется реализация по умолчанию из
        класса <code>Object</code>, которая возвращает уникальный хэш-код для каждого объекта.
        Однако, для корректной работы коллекций, таких как <code>HashMap</code>, необходимо
        переопределять этот метод.
    </p>

    <h2>Правила переопределения hashCode()</h2>
    <ul>
        <li>
            <span class="highlight">Разные хэш-коды:</span> Если хэш-коды двух объектов разные, то объекты
            гарантированно разные.
        </li>
        <li>
            <span class="highlight">Равные хэш-коды:</span> Если хэш-коды двух объектов равны, это не означает,
            что объекты равны. Они могут быть как равными, так и разными.
        </li>
        <li>
            <span class="highlight">Использование полей:</span> При вычислении хэш-кода следует использовать те же
            поля, которые сравниваются в методе <code>equals()</code>, и которые не вычисляются на
            основе других значений.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Хэш-код может быть отрицательным, так как тип <code>int</code> в Java
            поддерживает отрицательные значения.
        </p>
    </div>

    <h2>Пример переопределения hashCode()</h2>
    <p>
        Пример корректного переопределения метода <code>hashCode()</code>:
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
            <span class="highlight">Важно:</span> Переопределение метода <code>hashCode()</code> должно сопровождаться
            переопределением метода <code>equals()</code>, чтобы соблюсти контракт между
            этими методами.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('671086eb-7039-4ce7-bd81-67f6e0eaf6be', 'Какие существуют способы создания стрима?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Способы создания Stream</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Способы создания Stream</h1>
    <p>
        В Java существует несколько способов создания стримов (streams). Стримы могут быть созданы
        из различных источников, таких как коллекции, массивы, файлы, строки и даже с помощью
        генераторов. Ниже приведены основные способы создания стримов.
    </p>

    <h2>Способы создания Stream</h2>
    <ul>
        <li>
            <span class="highlight">Из коллекции:</span> Стрим можно создать из коллекции с помощью метода <code>stream()</code>.
            <pre><code>Stream<String> fromCollection = Arrays.asList("x", "y", "z").stream();</code></pre>
        </li>
        <li>
            <span class="highlight">Из набора значений:</span> Стрим можно создать из набора значений с помощью метода <code>Stream.of()</code>.
            <pre><code>Stream<String> fromValues = Stream.of("x", "y", "z");</code></pre>
        </li>
        <li>
            <span class="highlight">Из массива:</span> Стрим можно создать из массива с помощью метода <code>Arrays.stream()</code>.
            <pre><code>Stream<String> fromArray = Arrays.stream(new String[]{"x", "y", "z"});</code></pre>
        </li>
        <li>
            <span class="highlight">Из файла:</span> Стрим можно создать из файла, где каждая строка будет отдельным элементом.
            <pre><code>Stream<String> fromFile = Files.lines(Paths.get("input.txt"));</code></pre>
        </li>
        <li>
            <span class="highlight">Из строки:</span> Стрим можно создать из строки, преобразовав её в поток символов.
            <pre><code>IntStream fromString = "0123456789".chars();</code></pre>
        </li>
        <li>
            <span class="highlight">С помощью Stream.builder():</span> Стрим можно создать с использованием <code>Stream.builder()</code>.
            <pre><code>Stream<String> fromBuilder = Stream.builder().add("z").add("y").add("z").build();</code></pre>
        </li>
        <li>
            <span class="highlight">С помощью Stream.iterate():</span> Бесконечный стрим можно создать с помощью метода <code>Stream.iterate()</code>.
            <pre><code>Stream<Integer> fromIterate = Stream.iterate(1, n -> n + 1);</code></pre>
        </li>
        <li>
            <span class="highlight">С помощью Stream.generate():</span> Бесконечный стрим можно создать с помощью метода <code>Stream.generate()</code>.
            <pre><code>Stream<String> fromGenerate = Stream.generate(() -> "0");</code></pre>
        </li>
    </ul>

    <h2>Примеры использования</h2>

    <h3>Создание стрима из коллекции</h3>
    <pre><code>import java.util.Arrays;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Stream<String> fromCollection = Arrays.asList("x", "y", "z").stream();
        fromCollection.forEach(System.out::println); // x, y, z
    }
}</code></pre>

    <h3>Создание стрима из набора значений</h3>
    <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Stream<String> fromValues = Stream.of("x", "y", "z");
        fromValues.forEach(System.out::println); // x, y, z
    }
}</code></pre>

    <h3>Создание стрима из файла</h3>
    <pre><code>import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        try (Stream<String> fromFile = Files.lines(Paths.get("input.txt"))) {
            fromFile.forEach(System.out::println); // каждая строка файла
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}</code></pre>

    <h3>Создание бесконечного стрима с помощью Stream.iterate()</h3>
    <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Stream<Integer> fromIterate = Stream.iterate(1, n -> n + 1);
        fromIterate.limit(5).forEach(System.out::println); // 1, 2, 3, 4, 5
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        В Java существует множество способов создания стримов, включая коллекции, массивы, файлы,
        строки и генераторы. Каждый из этих способов предоставляет гибкость в обработке данных
        и позволяет эффективно работать с последовательностями элементов.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6369fdbe-432d-40a2-b9c4-94befa4e39d8', 'Почему метод clone() объявлен в классе Object, а не в интерфейсе Cloneable?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему метод clone() объявлен в классе Object, а не в интерфейсе Cloneable?</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Почему метод clone() объявлен в классе Object, а не в интерфейсе Cloneable?</h1>
    <p>
        Метод <code>clone()</code> объявлен в классе <code>Object</code>, а не в интерфейсе <code>Cloneable</code>, чтобы обеспечить доступ к стандартному механизму поверхностного копирования объектов. Это решение имеет свои причины и особенности.
    </p>

    <h2>Особенности метода clone()</h2>
    <ul>
        <li>
            <span class="highlight">Модификатор native:</span> Метод <code>clone()</code> объявлен как <code>native</code>, что означает, что его реализация предоставляется JVM. Это позволяет использовать стандартный механизм поверхностного копирования объектов.
        </li>
        <li>
            <span class="highlight">Модификатор protected:</span> Метод <code>clone()</code> объявлен как <code>protected</code>, чтобы предотвратить его вызов у объектов, которые не переопределили этот метод. Это обеспечивает контроль над тем, какие объекты могут быть клонированы.
        </li>
    </ul>

    <h2>Роль интерфейса Cloneable</h2>
    <ul>
        <li>
            <span class="highlight">Маркерный интерфейс:</span> Интерфейс <code>Cloneable</code> является маркерным и не содержит методов. Он используется только для обозначения того, что объект поддерживает клонирование.
        </li>
        <li>
            <span class="highlight">Исключение CloneNotSupportedException:</span> Если метод <code>clone()</code> вызывается у объекта, который не реализует интерфейс <code>Cloneable</code>, выбрасывается исключение <code>CloneNotSupportedException</code>.
        </li>
    </ul>

    <h2>Пример использования</h2>
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
    <p>
        В этом примере класс <code>Person</code> реализует интерфейс <code>Cloneable</code> и переопределяет метод <code>clone()</code>, чтобы обеспечить возможность клонирования.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Метод <code>clone()</code> должен быть переопределен как <code>public</code>, чтобы его можно было вызывать извне. Это позволяет контролировать процесс клонирования и обеспечивать безопасность.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Метод <code>clone()</code> объявлен в классе <code>Object</code> для обеспечения доступа к стандартному механизму поверхностного копирования.
        </li>
        <li>
            Интерфейс <code>Cloneable</code> является маркерным и обозначает, что объект поддерживает клонирование.
        </li>
        <li>
            Пример переопределения метода <code>clone()</code>:
            <pre>
                <code>
@Override
public Person clone() throws CloneNotSupportedException {
    return (Person) super.clone();
}
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ccc2d6a3-cb14-4580-ad20-1381d514c1af', 'Что такое механизм try-with-resources?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Механизм try-with-resources</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Механизм try-with-resources</h1>
    <p>
        <span class="highlight">Механизм try-with-resources</span>, появившийся в Java 7, упрощает работу с
        ресурсами, которые необходимо закрывать после использования. Этот механизм
        автоматически освобождает ресурсы, реализующие интерфейс <code>AutoCloseable</code>,
        без необходимости явного вызова метода <code>close()</code>.
    </p>

    <h2>Как работает try-with-resources?</h2>
    <p>
        В конструкции <code>try-with-resources</code> ресурсы объявляются в скобках сразу после
        ключевого слова <code>try</code>. Компилятор автоматически создаёт неявный блок
        <code>finally</code>, в котором происходит закрытие ресурсов.
    </p>
    <pre><code>try (ResourceType resource = new ResourceType()) {
    // Использование ресурса
} catch (Exception e) {
    // Обработка исключения
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Ресурсы, объявленные в <code>try-with-resources</code>, должны
            реализовывать интерфейс <code>AutoCloseable</code> (или его подынтерфейс
            <code>Closeable</code>), который содержит метод <code>close()</code>.
        </p>
    </div>

    <h2>Пример использования</h2>
    <p>
        Пример использования <code>try-with-resources</code> для работы с файлом:
    </p>
    <pre><code>try (FileReader file = new FileReader("file.txt")) {
    // Чтение файла
} catch (IOException e) {
    System.out.println("Ошибка при чтении файла: " + e.getMessage());
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере файл <code>file.txt</code> автоматически
            закрывается после завершения блока <code>try</code>, даже если возникло исключение.
        </p>
    </div>

    <h2>Преимущества try-with-resources</h2>
    <ul>
        <li>
            <span class="highlight">Автоматическое закрытие ресурсов:</span> Нет необходимости
            явно вызывать метод <code>close()</code> или использовать блок <code>finally</code>.
        </li>
        <li>
            <span class="highlight">Упрощение кода:</span> Код становится более читаемым и
            компактным.
        </li>
        <li>
            <span class="highlight">Безопасность:</span> Ресурсы гарантированно закрываются, даже
            если в блоке <code>try</code> возникает исключение.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример без try-with-resources:</span>
            <pre><code>FileReader file = null;
try {
    file = new FileReader("file.txt");
    // Чтение файла
} catch (IOException e) {
    System.out.println("Ошибка при чтении файла: " + e.getMessage());
} finally {
    if (file != null) {
        try {
            file.close();
        } catch (IOException e) {
            System.out.println("Ошибка при закрытии файла: " + e.getMessage());
        }
    }
}</code></pre>
            В этом примере требуется явное закрытие ресурса в блоке <code>finally</code>, что
            делает код более сложным и подверженным ошибкам.
        </p>
    </div>

    <h2>Порядок выполнения</h2>
    <p>
        При использовании <code>try-with-resources</code> порядок выполнения следующий:
    </p>
    <ol>
        <li>Ресурсы закрываются в неявном блоке <code>finally</code>.</li>
        <li>Если есть блок <code>catch</code>, он выполняется после закрытия ресурсов.</li>
        <li>Если есть явный блок <code>finally</code>, он выполняется после блока <code>catch</code>.</li>
    </ol>

    <div class="note">
        <p>
            <span class="highlight">Пример с явным finally:</span>
            <pre><code>try (FileReader file = new FileReader("file.txt")) {
    // Чтение файла
} catch (IOException e) {
    System.out.println("Ошибка при чтении файла: " + e.getMessage());
} finally {
    System.out.println("Блок finally выполнен");
}</code></pre>
            В этом примере сначала закрывается файл, затем выполняется блок <code>catch</code>,
            и, наконец, блок <code>finally</code>.
        </p>
    </div>

    <h2>Несколько ресурсов</h2>
    <p>
        В <code>try-with-resources</code> можно объявлять несколько ресурсов, разделяя их точкой
        с запятой:
    </p>
    <pre><code>try (FileReader file = new FileReader("file.txt");
         BufferedWriter writer = new BufferedWriter(new FileWriter("output.txt"))) {
    // Использование ресурсов
} catch (IOException e) {
    System.out.println("Ошибка: " + e.getMessage());
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Ресурсы закрываются в порядке, обратном их объявлению.
            То есть сначала закроется <code>writer</code>, а затем <code>file</code>.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('236247f1-6a75-4bf9-806c-e412f02f07c7', 'Какой контракт между hashCode() и equals()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Контракт между hashCode() и equals()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Контракт между hashCode() и equals()</h1>
    <p>
        Контракт между методами <span class="highlight">hashCode()</span> и <span class="highlight">equals()</span> определяет правила, которые
        должны соблюдаться для корректной работы объектов в коллекциях, таких как
        <code>HashMap</code>, <code>HashSet</code> и других. Нарушение этого контракта может привести к
        некорректному поведению программы.
    </p>

    <h2>Основные правила контракта</h2>
    <ul>
        <li>
            <span class="highlight">Разные хэш-коды:</span> Если два объекта возвращают разные значения <code>hashCode()</code>,
            то они <span class="highlight">не могут быть равны</span> по <code>equals()</code>.
        </li>
        <li>
            <span class="highlight">Равные объекты:</span> Если два объекта равны по <code>equals()</code>, то они должны
            возвращать <span class="highlight">одинаковые хэш-коды</span>.
        </li>
        <li>
            <span class="highlight">Переопределение:</span> Если вы переопределяете метод <code>equals()</code>, вы всегда
            должны переопределять метод <code>hashCode()</code>, чтобы соблюсти контракт.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Нарушение контракта может привести к тому, что объекты, которые равны по
            <code>equals()</code>, будут неправильно обрабатываться в коллекциях, таких как
            <code>HashMap</code> или <code>HashSet</code>.
        </p>
    </div>

    <h2>Пример нарушения контракта</h2>
    <p>
        Пример класса, в котором нарушен контракт между <code>equals()</code> и <code>hashCode()</code>:
    </p>
    <pre><code>class Key {
    private int id;

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Key key = (Key) obj;
        return id == key.id;
    }
}

HashMap<Key, String> map = new HashMap<>();
Key key1 = new Key(1);
map.put(key1, "Значение");

Key key2 = new Key(1);
System.out.println(map.get(key2)); // null</code></pre>
    <p>
        В этом примере <code>key1</code> и <code>key2</code> равны по <code>equals()</code>, но <code>hashCode()</code> не
        переопределён, поэтому <code>HashMap</code> не может найти значение по ключу <code>key2</code>.
    </p>

    <h2>Пример соблюдения контракта</h2>
    <p>
        Пример класса, в котором соблюдён контракт между <code>equals()</code> и <code>hashCode()</code>:
    </p>
    <pre><code>class Key {
    private int id;

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Key key = (Key) obj;
        return id == key.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}

HashMap<Key, String> map = new HashMap<>();
Key key1 = new Key(1);
map.put(key1, "Значение");

Key key2 = new Key(1);
System.out.println(map.get(key2)); // Значение</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Переопределение <code>hashCode()</code> гарантирует, что равные объекты
            будут иметь одинаковый хэш-код, что необходимо для корректной работы
            коллекций.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f002493c-2a53-4bab-a059-849c7aed418f', 'Что такое «сериализация» и как она реализована в Java?', e'<!DOCTYPE html>
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
        <span class="highlight">Сериализация</span> — это процесс преобразования структуры данных или объекта в
        линейную последовательность байтов для дальнейшей передачи или сохранения.
        Сериализованные объекты могут быть восстановлены (десериализованы) в исходное
        состояние.
    </p>

    <h2>Как реализована сериализация в Java?</h2>
    <p>
        В Java сериализация реализована с использованием интерфейсов
        <code>java.io.Serializable</code> и <code>java.io.Externalizable</code>:
    </p>
    <ul>
        <li>
            <span class="highlight">Стандартная сериализация:</span> Для сериализации объекта достаточно
            реализовать интерфейс <code>Serializable</code>. Этот интерфейс является маркерным и не
            содержит методов.
        </li>
        <li>
            <span class="highlight">Расширенная сериализация:</span> Интерфейс <code>Externalizable</code>
            предоставляет больше контроля над процессом сериализации и десериализации.
            Он требует реализации методов <code>writeExternal()</code> и <code>readExternal()</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример стандартной сериализации:</span>
            <pre><code>import java.io.Serializable;

class MyClass implements Serializable {
    private int id;
    private String name;

    // Конструкторы, геттеры, сеттеры
}</code></pre>
            В этом примере класс <code>MyClass</code> реализует интерфейс <code>Serializable</code>, что
            позволяет сериализовать его объекты.
        </p>
    </div>

    <h2>Процесс сериализации и десериализации</h2>
    <p>
        Для сериализации и десериализации объектов используются классы
        <code>ObjectOutputStream</code> и <code>ObjectInputStream</code>:
    </p>
    <pre><code>import java.io.*;

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

    <h2>Изменения в классе и обратная совместимость</h2>
    <p>
        Сериализация в Java позволяет в определённых пределах изменять класс без потери
        обратной совместимости:
    </p>
    <ul>
        <li>
            <span class="highlight">Добавление новых полей:</span> Новые поля будут инициализированы
            значениями по умолчанию при десериализации.
        </li>
        <li>
            <span class="highlight">Изменение полей из статических в нестатические:</span> Статические
            поля не сериализуются, поэтому их изменение на нестатические не влияет на
            процесс.
        </li>
        <li>
            <span class="highlight">Изменение полей из транзитных в нетранзитные:</span> Поля,
            помеченные как <code>transient</code>, не сериализуются. Их изменение на нетранзитные
            позволяет включить их в процесс сериализации.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Обратные изменения (например, из нестатических полей в
            статические или из нетранзитных в транзитные) требуют дополнительной
            обработки для обеспечения обратной совместимости.
        </p>
    </div>

    <h2>Пример с transient</h2>
    <p>
        Пример использования модификатора <code>transient</code> для исключения поля из
        сериализации:
    </p>
    <pre><code>class MyClass implements Serializable {
    private int id;
    private transient String name; // Поле не будет сериализовано

    // Конструкторы, геттеры, сеттеры
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере поле <code>name</code> не будет сериализовано, так
            как оно помечено как <code>transient</code>.
        </p>
    </div>

    <h2>Расширенная сериализация с Externalizable</h2>
    <p>
        Пример использования интерфейса <code>Externalizable</code>:
    </p>
    <pre><code>import java.io.*;

class MyClass implements Externalizable {
    private int id;
    private String name;

    public MyClass() {} // Обязательный пустой конструктор

    @Override
    public void writeExternal(ObjectOutput out) throws IOException {
        out.writeInt(id);
        out.writeUTF(name);
    }

    @Override
    public void readExternal(ObjectInput in) throws IOException, ClassNotFoundException {
        id = in.readInt();
        name = in.readUTF();
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере класс <code>MyClass</code> реализует интерфейс
            <code>Externalizable</code>, что позволяет полностью контролировать процесс
            сериализации и десериализации.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ce70a9f1-b521-4725-a4a8-77c7e5667598', 'Что произойдет, если в блоке инициализации возникнет исключительная  ситуация?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Исключения в блоках инициализации</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Исключения в блоках инициализации</h1>
    <p>
        Если в блоке инициализации возникает исключительная ситуация, это может привести к
        различным последствиям в зависимости от типа блока инициализации (статический или
        нестатический) и способа обработки исключения.
    </p>

    <h2>Нестатические блоки инициализации</h2>
    <ul>
        <li>
            <span class="highlight">Явное выбрасывание исключения:</span> Если в нестатическом блоке инициализации
            выбрасывается исключение, оно должно быть явно объявлено в <code>throws</code> всех
            конструкторов класса. В противном случае возникнет ошибка компиляции.
            <pre><code>{
    if (условие) {
        throw new IOException("Ошибка инициализации");
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">Последствия:</span> Если исключение возникает в нестатическом блоке, объект класса
            не будет создан, и программа завершится с ошибкой.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Все конструкторы класса должны объявлять исключения, которые могут быть
            выброшены в нестатическом блоке инициализации.
        </p>
    </div>

    <h2>Статические блоки инициализации</h2>
    <ul>
        <li>
            <span class="highlight">Явное выбрасывание исключения:</span> Если в статическом блоке инициализации
            выбрасывается исключение, это приведёт к ошибке <code>ExceptionInInitializerError</code>
            при загрузке класса.
            <pre><code>static {
    if (условие) {
        throw new RuntimeException("Ошибка статической инициализации");
    }
}</code></pre>
        </li>
        <li>
            <span class="highlight">Последствия:</span> Если исключение возникает в статическом блоке, класс не будет
            инициализирован, и любые попытки использования этого класса приведут к ошибке.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Исключения в статических блоках инициализации обрабатываются
            строго, так как они влияют на загрузку класса и могут сделать его непригодным для
            использования.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Пример нестатического блока с исключением:
    </p>
    <pre><code>class Example {
    {
        if (условие) {
            throw new IOException("Ошибка в нестатическом блоке");
        }
    }

    Example() throws IOException {
        // Конструктор объявляет исключение
    }
}</code></pre>
    <p>
        Пример статического блока с исключением:
    </p>
    <pre><code>class Example {
    static {
        if (условие) {
            throw new RuntimeException("Ошибка в статическом блоке");
        }
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> В статических блоках нельзя выбрасывать проверяемые исключения
            (<code>checked exceptions</code>), так как они не могут быть объявлены в <code>throws</code>.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('61835728-ca0f-462c-b63c-33a6b86451a6', 'О чем говорит ключевое слово throws?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ключевое слово throws</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Ключевое слово throws</h1>
    <p>
        Ключевое слово <span class="highlight">throws</span> используется в сигнатуре метода для указания
        того, что метод может выбросить исключение определённого типа. Оно передаёт
        ответственность за обработку исключения вышестоящему методу.
    </p>

    <h2>Для чего используется throws?</h2>
    <ul>
        <li>
            <span class="highlight">Указание на возможные исключения:</span> Ключевое слово <code>throws</code>
            указывает, что метод может выбросить исключение определённого типа. Это
            особенно важно для проверяемых исключений (checked exceptions).
        </li>
        <li>
            <span class="highlight">Передача обработки исключения:</span> Если метод не обрабатывает
            исключение с помощью блока <code>try-catch</code>, он может передать ответственность
            за обработку исключения вызывающему методу.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Ключевое слово <code>throws</code> используется только для
            проверяемых исключений (checked exceptions). Непроверяемые исключения
            (unchecked exceptions) не требуют его использования.
        </p>
    </div>

    <h2>Синтаксис</h2>
    <p>
        Ключевое слово <code>throws</code> указывается в сигнатуре метода после списка параметров
        и перед телом метода:
    </p>
    <pre><code>public void метод() throws Исключение1, Исключение2 {
    // Логика метода
}</code></pre>
    <p>
        Например:
    </p>
    <pre><code>public void readFile(String path) throws IOException {
    if (path == null) {
        throw new IOException("Путь к файлу не указан");
    }
    // Логика чтения файла
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере метод <code>readFile</code> может выбросить
            исключение <code>IOException</code>, и ответственность за его обработку передаётся
            вызывающему методу.
        </p>
    </div>

    <h2>Где используется throws?</h2>
    <ul>
        <li>
            <span class="highlight">Методы:</span> Ключевое слово <code>throws</code> чаще всего используется в
            методах для указания возможных исключений.
        </li>
        <li>
            <span class="highlight">Конструкторы:</span> Конструкторы также могут использовать
            <code>throws</code> для указания исключений, которые могут возникнуть при создании
            объекта.
        </li>
        <li>
            <span class="highlight">Классы:</span> В некоторых случаях <code>throws</code> может использоваться в
            объявлениях классов, например, в методах интерфейсов.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример в конструкторе:</span>
            <pre><code>public class FileReader {
    public FileReader(String path) throws FileNotFoundException {
        // Логика конструктора
    }
}</code></pre>
            В этом примере конструктор <code>FileReader</code> может выбросить исключение
            <code>FileNotFoundException</code>.
        </p>
    </div>

    <h2>Пример обработки исключения в вызывающем методе</h2>
    <p>
        Пример вызова метода, который использует <code>throws</code>, и обработки исключения:
    </p>
    <pre><code>public void processFile(String path) {
    try {
        readFile(path);
    } catch (IOException e) {
        System.out.println("Ошибка при чтении файла: " + e.getMessage());
    }
}

public void readFile(String path) throws IOException {
    if (path == null) {
        throw new IOException("Путь к файлу не указан");
    }
    // Логика чтения файла
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере метод <code>processFile</code> обрабатывает
            исключение <code>IOException</code>, которое может быть выброшено методом
            <code>readFile</code>.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a015a3a3-1835-460c-a508-90c3843f75ff', 'Для чего в стримах предназначены методы flatMap(), flatMapToInt(),  flatMapToDouble(), flatMapToLong()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Методы flatMap(), flatMapToInt(), flatMapToDouble(), flatMapToLong()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Методы flatMap(), flatMapToInt(), flatMapToDouble(), flatMapToLong()</h1>
    <p>
        Методы <code>flatMap()</code>, <code>flatMapToInt()</code>, <code>flatMapToDouble()</code> и <code>flatMapToLong()</code> являются
        промежуточными операциями в стримах (streams) и используются для преобразования
        элементов стрима. Они позволяют "развернуть" элементы, создавая из одного элемента
        несколько, и возвращают новый стрим с объединёнными результатами.
    </p>

    <h2>Метод flatMap()</h2>
    <p>
        Метод <code>flatMap()</code> принимает функцию, которая преобразует каждый элемент стрима в поток
        (stream) других объектов. Затем все потоки объединяются в один результирующий стрим.
        Это полезно, когда каждый элемент стрима может быть преобразован в несколько элементов.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Разделение строк на слова и создание единого стрима:
        </p>
        <pre><code>import java.util.Arrays;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        String[] words = Stream.of("H e l l o", "w o r l d !")
                               .flatMap((p) -> Arrays.stream(p.split(" "))) // разбиение строк на слова
                               .toArray(String[]::new); // преобразование в массив
        System.out.println(Arrays.toString(words)); // [H, e, l, l, o, w, o, r, l, d, !]
    }
}</code></pre>
    </div>

    <h2>Методы flatMapToInt(), flatMapToDouble(), flatMapToLong()</h2>
    <p>
        Эти методы аналогичны <code>flatMap()</code>, но возвращают специализированные числовые стримы:
    </p>
    <ul>
        <li>
            <span class="highlight">flatMapToInt():</span> Возвращает стрим типа <code>IntStream</code>.
        </li>
        <li>
            <span class="highlight">flatMapToDouble():</span> Возвращает стрим типа <code>DoubleStream</code>.
        </li>
        <li>
            <span class="highlight">flatMapToLong():</span> Возвращает стрим типа <code>LongStream</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Преобразование строк в числа и создание стрима <code>IntStream</code>:
        </p>
        <pre><code>import java.util.stream.IntStream;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        int[] numbers = Stream.of("1 2 3", "4 5 6")
                              .flatMapToInt((p) -> Arrays.stream(p.split(" "))
                                                         .mapToInt(Integer::parseInt)) // преобразование строк в числа
                              .toArray(); // преобразование в массив
        System.out.println(Arrays.toString(numbers)); // [1, 2, 3, 4, 5, 6]
    }
}</code></pre>
    </div>

    <h2>Особенности flatMap() и его аналогов</h2>
    <ul>
        <li>
            <span class="highlight">Промежуточная операция:</span> <code>flatMap()</code> и его аналоги не выполняют никаких
            действий, пока не будет вызвана конечная операция.
        </li>
        <li>
            <span class="highlight">Ленивое выполнение:</span> Преобразование и объединение элементов происходит
            только при вызове конечной операции.
        </li>
        <li>
            <span class="highlight">Возвращает новый стрим:</span> Исходный стрим остаётся неизменным.
        </li>
    </ul>

    <h2>Пример с flatMapToDouble()</h2>
    <p>
        Пример преобразования строк в числа с плавающей точкой:
    </p>
    <pre><code>import java.util.stream.DoubleStream;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        double[] numbers = Stream.of("1.2 2.3", "3.4 4.5")
                                 .flatMapToDouble((p) -> Arrays.stream(p.split(" "))
                                                               .mapToDouble(Double::parseDouble)) // преобразование строк в double
                                 .toArray(); // преобразование в массив
        System.out.println(Arrays.toString(numbers)); // [1.2, 2.3, 3.4, 4.5]
    }
}</code></pre>

    <h2>Пример с flatMapToLong()</h2>
    <p>
        Пример преобразования строк в числа типа <code>long</code>:
    </p>
    <pre><code>import java.util.stream.LongStream;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        long[] numbers = Stream.of("100 200", "300 400")
                               .flatMapToLong((p) -> Arrays.stream(p.split(" "))
                                                            .mapToLong(Long::parseLong)) // преобразование строк в long
                               .toArray(); // преобразование в массив
        System.out.println(Arrays.toString(numbers)); // [100, 200, 300, 400]
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Методы <code>flatMap()</code>, <code>flatMapToInt()</code>, <code>flatMapToDouble()</code> и <code>flatMapToLong()</code> используются для
        преобразования элементов стрима, когда каждый элемент может быть развёрнут в несколько
        других элементов. Они возвращают новый стрим с объединёнными результатами и полезны
        для работы с вложенными структурами данных или преобразования элементов в числовые
        стримы.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('04ae81bd-fa8e-4b52-979d-a13635ae168a', 'Для чего в стримах предназначены методы map() и mapToInt(),  mapToDouble(), mapToLong()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Методы map() и mapToInt(), mapToDouble(), mapToLong()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Методы map() и mapToInt(), mapToDouble(), mapToLong()</h1>
    <p>
        Методы <code>map()</code>, <code>mapToInt()</code>, <code>mapToDouble()</code> и <code>mapToLong()</code> являются промежуточными операциями
        в стримах (streams) и используются для преобразования элементов стрима. Они позволяют
        применить заданную функцию к каждому элементу стрима и получить новый стрим с
        преобразованными данными.
    </p>

    <h2>Метод map()</h2>
    <p>
        Метод <code>map()</code> преобразует каждый элемент стрима с помощью заданной функции и возвращает
        новый стрим с результатами преобразования. Это универсальный метод, который работает
        с любыми типами данных.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Преобразование строк в их длины:
        </p>
        <pre><code>import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        List<Integer> lengths = Stream.of("Иван", "Анна", "Петр")
                                      .map(String::length) // преобразование строк в их длины
                                      .collect(Collectors.toList());
        System.out.println(lengths); // [4, 4, 4]
    }
}</code></pre>
    </div>

    <h2>Методы mapToInt(), mapToDouble(), mapToLong()</h2>
    <p>
        Методы <code>mapToInt()</code>, <code>mapToDouble()</code> и <code>mapToLong()</code> аналогичны методу <code>map()</code>, но возвращают
        специализированные числовые стримы:
    </p>
    <ul>
        <li>
            <span class="highlight">mapToInt():</span> Возвращает стрим типа <code>IntStream</code>.
        </li>
        <li>
            <span class="highlight">mapToDouble():</span> Возвращает стрим типа <code>DoubleStream</code>.
        </li>
        <li>
            <span class="highlight">mapToLong():</span> Возвращает стрим типа <code>LongStream</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Преобразование строк в числа и получение числового стрима:
        </p>
        <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        int[] numbers = Stream.of("12", "22", "4", "444", "123")
                              .mapToInt(Integer::parseInt) // преобразование строк в числа
                              .toArray(); // преобразование в массив
        for (int num : numbers) {
            System.out.print(num + " "); // 12 22 4 444 123
        }
    }
}</code></pre>
    </div>

    <h2>Сравнение map() и mapToInt(), mapToDouble(), mapToLong()</h2>
    <table>
        <thead>
            <tr>
                <th>Метод</th>
                <th>Возвращаемый тип</th>
                <th>Применение</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><code>map()</code></td>
                <td><code>Stream&lt;R&gt;</code></td>
                <td>Преобразует элементы стрима в любой тип.</td>
            </tr>
            <tr>
                <td><code>mapToInt()</code></td>
                <td><code>IntStream</code></td>
                <td>Преобразует элементы стрима в <code>int</code>.</td>
            </tr>
            <tr>
                <td><code>mapToDouble()</code></td>
                <td><code>DoubleStream</code></td>
                <td>Преобразует элементы стрима в <code>double</code>.</td>
            </tr>
            <tr>
                <td><code>mapToLong()</code></td>
                <td><code>LongStream</code></td>
                <td>Преобразует элементы стрима в <code>long</code>.</td>
            </tr>
        </tbody>
    </table>

    <h2>Пример использования mapToDouble()</h2>
    <p>
        Пример преобразования строк в числа с плавающей точкой:
    </p>
    <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        double[] numbers = Stream.of("1.2", "2.2", "3.4")
                                 .mapToDouble(Double::parseDouble) // преобразование строк в double
                                 .toArray(); // преобразование в массив
        for (double num : numbers) {
            System.out.print(num + " "); // 1.2 2.2 3.4
        }
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Методы <code>map()</code>, <code>mapToInt()</code>, <code>mapToDouble()</code> и <code>mapToLong()</code> используются для преобразования
        элементов стрима. Они позволяют применять заданные функции к каждому элементу и
        возвращать новый стрим с результатами. Выбор метода зависит от типа данных, с которыми
        вы работаете: <code>map()</code> для универсальных преобразований, а <code>mapToInt()</code>, <code>mapToDouble()</code> и
        <code>mapToLong()</code> — для работы с числовыми примитивами.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7076d1bd-1bf4-4f87-98cc-db779a423f10', 'Что будет, если переопределить equals(), не переопределяя hashCode()?  Какие могут возникнуть проблемы?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Переопределение equals() без hashCode()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Переопределение equals() без hashCode()</h1>
    <p>
        Если переопределить метод <span class="highlight">equals()</span>, не переопределяя метод <span class="highlight">hashCode()</span>, это может
        привести к некорректной работе классов и методов, которые зависят от контракта
        между этими методами. В частности, это может вызвать проблемы при использовании
        коллекций, таких как <code>HashMap</code> или <code>HashSet</code>.
    </p>

    <h2>Проблемы при использовании HashMap</h2>
    <p>
        Класс <code>HashMap</code> использует хэш-код для быстрого поиска и хранения объектов. Если
        метод <code>hashCode()</code> не переопределён, то два объекта, которые равны по
        <code>equals()</code>, могут иметь разные хэш-коды. Это приведёт к тому, что пара
        «ключ-значение», помещённая в <code>HashMap</code>, не будет найдена при использовании
        нового экземпляра ключа, даже если он равен по <code>equals()</code>.
    </p>
    <div class="note">
        <p>
            <span class="highlight">Пример:</span>
            <pre><code>class Key {
    private int id;

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Key key = (Key) obj;
        return id == key.id;
    }
}

HashMap<Key, String> map = new HashMap<>();
Key key1 = new Key(1);
map.put(key1, "Значение");

Key key2 = new Key(1);
System.out.println(map.get(key2)); // null</code></pre>
            В этом примере <code>key1</code> и <code>key2</code> равны по <code>equals()</code>, но <code>hashCode()</code> не
            переопределён, поэтому <code>HashMap</code> не может найти значение по ключу <code>key2</code>.
        </p>
    </div>

    <h2>Контракт между equals() и hashCode()</h2>
    <p>
        Контракт между методами <code>equals()</code> и <code>hashCode()</code> включает следующие правила:
    </p>
    <ul>
        <li>
            Если два объекта равны по <code>equals()</code>, они должны возвращать одинаковый
            хэш-код.
        </li>
        <li>
            Если два объекта имеют одинаковый хэш-код, они не обязательно должны быть
            равны по <code>equals()</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Нарушение этого контракта может привести к некорректной работе
            коллекций, таких как <code>HashMap</code>, <code>HashSet</code> и других, которые
            используют хэш-коды для хранения и поиска объектов.
        </p>
    </div>

    <h2>Пример корректного переопределения</h2>
    <p>
        Чтобы избежать проблем, необходимо переопределить оба метода:
    </p>
    <pre><code>class Key {
    private int id;

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Key key = (Key) obj;
        return id == key.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Переопределение <code>hashCode()</code> гарантирует, что равные объекты
            будут иметь одинаковый хэш-код, что необходимо для корректной работы
            коллекций.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f642539a-0f1e-4641-a742-6fc6cd47a1bc', 'Какое начальное количество корзин в HashMap?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Начальное количество корзин в HashMap</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Начальное количество корзин в HashMap</h1>
    <p>
        Класс <code>HashMap</code> в Java использует массив корзин для хранения элементов. Начальное количество корзин можно задать при создании объекта <code>HashMap</code>.
    </p>

    <h2>Начальное количество корзин</h2>
    <ul>
        <li>
            <span class="highlight">Конструктор по умолчанию:</span>
            <ul>
                <li>Если используется конструктор по умолчанию, начальное количество корзин равно <code>16</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Конструкторы с параметрами:</span>
            <ul>
                <li>Можно задать произвольное начальное количество корзин, используя конструкторы с параметрами.</li>
                <li>Пример:
                    <pre>
<code>
Map&lt;String, Integer&gt; map = new HashMap&lt;&gt;(32); // Начальное количество корзин = 32
</code>
                    </pre>
                </li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования</h2>
    <pre>
<code>
// Создание HashMap с начальным количеством корзин = 16 (по умолчанию)
Map&lt;String, Integer&gt; defaultMap = new HashMap&lt;&gt;();
defaultMap.put("A", 1);
defaultMap.put("B", 2);

// Создание HashMap с начальным количеством корзин = 32
Map&lt;String, Integer&gt; customMap = new HashMap&lt;&gt;(32);
customMap.put("C", 3);
customMap.put("D", 4);
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Начальное количество корзин в <code>HashMap</code> по умолчанию равно 16. Однако это значение можно изменить, используя конструкторы с параметрами. Это может быть полезно для оптимизации производительности, если известно примерное количество элементов.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e79caef3-cd2d-49b0-9bc7-0b2b1bfef4c6', 'Как не допустить сериализацию?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Как не допустить сериализацию</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Как не допустить сериализацию</h1>
    <p>
        В некоторых случаях может потребоваться запретить сериализацию объекта. Это можно сделать, переопределив специальные методы <code>writeObject</code> и <code>readObject</code>, чтобы они выбрасывали исключение <code>NotSerializableException</code>.
    </p>

    <h2>Запрет сериализации</h2>
    <ul>
        <li>
            <span class="highlight">Переопределение методов:</span> Чтобы запретить сериализацию объекта, можно переопределить методы <code>writeObject</code> и <code>readObject</code> и вызвать в них исключение <code>NotSerializableException</code>.
        </li>
        <li>
            <span class="highlight">Пример реализации:</span>
            <pre>
                <code>
public class NonSerializableObject implements Serializable {
    private static final long serialVersionUID = 1L;

    private void writeObject(ObjectOutputStream out) throws IOException {
        throw new NotSerializableException("Сериализация этого объекта запрещена");
    }

    private void readObject(ObjectInputStream in) throws IOException {
        throw new NotSerializableException("Десериализация этого объекта запрещена");
    }
}
                </code>
            </pre>
            В этом примере любая попытка сериализовать или десериализовать объект <code>NonSerializableObject</code> приведет к выбросу исключения <code>NotSerializableException</code>.
        </li>
    </ul>

    <h2>Когда это полезно?</h2>
    <ul>
        <li>
            <span class="highlight">Безопасность:</span> Если объект содержит конфиденциальные данные, которые не должны быть сохранены или переданы.
        </li>
        <li>
            <span class="highlight">Контроль над сериализацией:</span> Если объект должен быть сериализован только при определенных условиях или через кастомный механизм.
        </li>
        <li>
            <span class="highlight">Ограничение использования:</span> Если объект не предназначен для сериализации, и его сериализация может привести к ошибкам или неожиданному поведению.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование этого подхода полностью запрещает сериализацию объекта. Если вам нужно частично контролировать процесс сериализации, рассмотрите использование других методов, таких как <code>transient</code> или кастомная логика в <code>writeObject</code> и <code>readObject</code>.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Чтобы запретить сериализацию, переопределите методы <code>writeObject</code> и <code>readObject</code> и вызовите в них исключение <code>NotSerializableException</code>.
        </li>
        <li>
            Пример:
            <pre>
                <code>
private void writeObject(ObjectOutputStream out) throws IOException {
    throw new NotSerializableException("Сериализация запрещена");
}

private void readObject(ObjectInputStream in) throws IOException {
    throw new NotSerializableException("Десериализация запрещена");
}
                </code>
            </pre>
        </li>
        <li>
            Этот подход полезен для обеспечения безопасности, контроля над сериализацией или ограничения использования объекта.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5188ff3c-3aba-479b-9015-91fa56caca60', 'Для чего в стримах применяются методы forEach() и forEachOrdered()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Методы forEach() и forEachOrdered() в стримах</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Методы forEach() и forEachOrdered() в стримах</h1>
    <p>
        Методы <code>forEach()</code> и <code>forEachOrdered()</code> используются в стримах для применения функции к каждому
        элементу стрима. Однако они имеют важные различия, особенно при работе с параллельными
        стримами.
    </p>

    <h2>Метод forEach()</h2>
    <p>
        Метод <code>forEach()</code> применяет функцию к каждому элементу стрима. Однако при параллельном
        выполнении порядок обработки элементов <span class="highlight">не гарантируется</span>. Это делает его подходящим
        для операций, где порядок не важен.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Использование <code>forEach()</code>:
        </p>
        <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Stream.of("Иван", "Анна", "Петр")
              .parallel() // параллельный стрим
              .forEach(System.out::println); // порядок вывода не гарантируется
    }
}</code></pre>
    </div>

    <h2>Метод forEachOrdered()</h2>
    <p>
        Метод <code>forEachOrdered()</code> также применяет функцию к каждому элементу стрима, но
        <span class="highlight">гарантирует сохранение порядка элементов</span>, даже при параллельном выполнении. Это
        полезно, когда порядок обработки элементов важен.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Использование <code>forEachOrdered()</code>:
        </p>
        <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Stream.of("Иван", "Анна", "Петр")
              .parallel() // параллельный стрим
              .forEachOrdered(System.out::println); // порядок вывода сохраняется
    }
}</code></pre>
    </div>

    <h2>Сравнение forEach() и forEachOrdered()</h2>
    <table>
        <thead>
            <tr>
                <th>Метод</th>
                <th>Порядок выполнения</th>
                <th>Применение</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><code>forEach()</code></td>
                <td>Не гарантируется (особенно при параллельном выполнении)</td>
                <td>Подходит для операций, где порядок не важен.</td>
            </tr>
            <tr>
                <td><code>forEachOrdered()</code></td>
                <td>Гарантируется (даже при параллельном выполнении)</td>
                <td>Подходит для операций, где порядок элементов важен.</td>
            </tr>
        </tbody>
    </table>

    <h2>Пример с последовательным стримом</h2>
    <p>
        В последовательном стриме оба метода работают одинаково:
    </p>
    <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Stream.of("Иван", "Анна", "Петр")
              .forEach(System.out::println); // Иван, Анна, Петр

        Stream.of("Иван", "Анна", "Петр")
              .forEachOrdered(System.out::println); // Иван, Анна, Петр
    }
}</code></pre>

    <h2>Пример с параллельным стримом</h2>
    <p>
        В параллельном стриме различия становятся очевидными:
    </p>
    <pre><code>import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        Stream.of("Иван", "Анна", "Петр")
              .parallel()
              .forEach(System.out::println); // Порядок не гарантирован

        Stream.of("Иван", "Анна", "Петр")
              .parallel()
              .forEachOrdered(System.out::println); // Порядок сохраняется
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Методы <code>forEach()</code> и <code>forEachOrdered()</code> используются для применения функции к каждому элементу
        стрима. Основное различие заключается в том, что <code>forEachOrdered()</code> гарантирует сохранение
        порядка элементов, даже при параллельном выполнении. Выбор между ними зависит от того,
        важен ли порядок обработки элементов в вашей задаче.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('56b2fc2b-e584-4884-bbac-8c419a7c2cdb', 'Что такое default-методы интерфейса?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Default-методы интерфейса</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Default-методы интерфейса</h1>
    <p>
        Начиная с Java 8, интерфейсы могут содержать методы с реализацией по умолчанию, которые обозначаются ключевым словом <code>default</code>. Это позволяет добавлять новые методы в интерфейсы без необходимости изменения всех классов, которые их реализуют.
    </p>

    <h2>Основные особенности default-методов</h2>
    <ul>
        <li>
            <span class="highlight">Реализация в интерфейсе:</span> Методы с ключевым словом <code>default</code> имеют реализацию прямо в интерфейсе.
        </li>
        <li>
            <span class="highlight">Наследование:</span> Классы, реализующие интерфейс, могут использовать default-методы без необходимости их переопределения.
        </li>
        <li>
            <span class="highlight">Конфликты:</span> Если класс реализует несколько интерфейсов с одинаковыми default-методами, он должен явно переопределить этот метод, чтобы избежать неоднозначности.
        </li>
        <li>
            <span class="highlight">Ограничения:</span> Default-методы не могут переопределять методы класса <code>java.lang.Object</code>.
        </li>
    </ul>

    <h2>Пример default-метода</h2>
    <pre>
        <code>
interface Example {
    int process(int a);

    default void show() {
        System.out.println("default show()");
    }
}

class ExampleImpl implements Example {
    @Override
    public int process(int a) {
        return a * 2;
    }
}

public class DefaultMethodExample {
    public static void main(String[] args) {
        Example example = new ExampleImpl();
        example.show(); // Вызов default-метода
        System.out.println("Результат process: " + example.process(5));
    }
}
        </code>
    </pre>
    <p>
        В этом примере интерфейс <code>Example</code> содержит default-метод <code>show()</code>, который реализован прямо в интерфейсе. Класс <code>ExampleImpl</code> реализует интерфейс и использует default-метод без необходимости его переопределения.
    </p>

    <h2>Преимущества default-методов</h2>
    <ul>
        <li>
            <span class="highlight">Гибкость:</span> Позволяют добавлять новые методы в интерфейсы без нарушения работы существующих классов.
        </li>
        <li>
            <span class="highlight">Упрощение кода:</span> Позволяют избежать создания служебных классов, так как необходимые методы могут быть реализованы прямо в интерфейсах.
        </li>
        <li>
            <span class="highlight">Поддержка лямбда-выражений:</span> Одной из основных причин введения default-методов была возможность использования лямбда-выражений в коллекциях Java 8.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если класс реализует несколько интерфейсов с одинаковыми default-методами, он должен явно переопределить этот метод, чтобы избежать конфликтов.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Default-методы позволяют добавлять реализацию методов в интерфейсы.
        </li>
        <li>
            Пример:
            <pre>
                <code>
interface Example {
    default void show() {
        System.out.println("default show()");
    }
}
                </code>
            </pre>
        </li>
        <li>
            Преимущества:
            <ul>
                <li>Гибкость при добавлении новых методов.</li>
                <li>Упрощение кода и поддержка лямбда-выражений.</li>
            </ul>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f33792fa-857f-4321-ad92-1b12788504cb', 'Как вызывать static метод интерфейса?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вызов статического метода интерфейса</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Вызов статического метода интерфейса</h1>
    <p>
        Для вызова <span class="highlight">статического метода интерфейса</span> используется имя интерфейса, за которым следует
        имя метода. Статические методы интерфейса не связаны с объектами классов, реализующих
        интерфейс, и вызываются напрямую через интерфейс.
    </p>

    <h2>Синтаксис вызова статического метода</h2>
    <p>
        Чтобы вызвать статический метод интерфейса, используйте следующий синтаксис:
    </p>
    <pre><code>ИмяИнтерфейса.имяМетода();</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Если у вас есть интерфейс <code>Paper</code> со статическим методом
            <code>show()</code>, то вызов этого метода будет выглядеть так:
        </p>
        <pre><code>Paper.show();</code></pre>
    </div>

    <h2>Особенности вызова статических методов</h2>
    <ul>
        <li>
            <span class="highlight">Независимость от объектов:</span> Статические методы интерфейса вызываются через
            имя интерфейса, а не через объект класса, реализующего интерфейс.
        </li>
        <li>
            <span class="highlight">Невозможность переопределения:</span> Статические методы интерфейса нельзя
            переопределить в классах, реализующих интерфейс.
        </li>
    </ul>

    <h2>Пример использования</h2>
    <p>
        Предположим, у нас есть интерфейс <code>Paper</code> со статическим методом <code>show()</code>:
    </p>
    <pre><code>public interface Paper {
    static void show() {
        System.out.println("Это статический метод интерфейса Paper.");
    }
}</code></pre>
    <p>
        Вызов этого метода будет выглядеть так:
    </p>
    <pre><code>Paper.show();</code></pre>

    <h2>Преимущества статических методов интерфейса</h2>
    <ul>
        <li>
            <span class="highlight">Удобство:</span> Статические методы предоставляют удобный способ организации
            вспомогательных функций, связанных с интерфейсом.
        </li>
        <li>
            <span class="highlight">Чистота кода:</span> Они помогают избежать дублирования кода и улучшают его
            читаемость.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e2c61df6-545d-4abd-be82-cb39b3226535', 'Что обозначает ключевое слово transient?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ключевое слово transient</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Ключевое слово transient</h1>
    <p>
        Ключевое слово <code>transient</code> в Java используется для указания того, что поле класса не должно быть сериализовано. Это полезно, когда поле содержит данные, которые не нужно сохранять или которые не могут быть сериализованы.
    </p>

    <h2>Назначение transient</h2>
    <ul>
        <li>
            <span class="highlight">Исключение из сериализации:</span> Поля, помеченные как <code>transient</code>, не участвуют в процессе сериализации. После десериализации такие поля будут иметь значения по умолчанию (например, <code>null</code> для объектов, <code>0</code> для чисел, <code>false</code> для <code>boolean</code>).
        </li>
        <li>
            <span class="highlight">Примеры использования:</span>
            <ul>
                <li>Поля, содержащие промежуточное состояние объекта, которое проще вычислить заново.</li>
                <li>Поля, содержащие ссылки на объекты, которые не поддерживают сериализацию (например, потоки или соединения с базой данных).</li>
                <li>Конфиденциальные данные, такие как пароли, которые не следует сохранять.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования transient</h2>
    <pre>
        <code>
public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    private String name;
    private transient String password; // Поле password не будет сериализовано

    public User(String name, String password) {
        this.name = name;
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{name=\'" + name + "\', password=\'" + password + "\'}";
    }
}
        </code>
    </pre>
    <p>
        В этом примере поле <code>password</code> не будет сериализовано, так как оно помечено как <code>transient</code>. После десериализации его значение будет <code>null</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Используйте <code>transient</code> для полей, которые не должны сохраняться при сериализации. Это особенно полезно для временных данных, конфиденциальной информации или объектов, которые не поддерживают сериализацию.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Ключевое слово <code>transient</code> указывает, что поле не должно быть сериализовано.
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
private transient String password; // Поле password не будет сериализовано
                </code>
            </pre>
        </li>
        <li>
            Применяйте <code>transient</code> для временных данных, конфиденциальной информации или несериализуемых объектов.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('7efc1461-c6eb-41bb-a979-b24ed9cf5f81', 'Как написать собственное («пользовательское») исключение?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Создание пользовательского исключения</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Создание пользовательского исключения</h1>
    <p>
        В Java можно создавать собственные (пользовательские) исключения. Для этого
        необходимо унаследоваться от базового класса исключений, такого как
        <code>Exception</code> или <code>RuntimeException</code>, и при необходимости переопределить
        методы.
    </p>

    <h2>Шаги для создания пользовательского исключения</h2>
    <ul>
        <li>
            <span class="highlight">Наследование:</span> Создайте класс, который наследуется от
            <code>Exception</code> (для проверяемых исключений) или <code>RuntimeException</code>
            (для непроверяемых исключений).
        </li>
        <li>
            <span class="highlight">Конструкторы:</span> Добавьте конструкторы для инициализации
            исключения. Обычно достаточно конструктора с сообщением об ошибке.
        </li>
        <li>
            <span class="highlight">Переопределение методов:</span> При необходимости переопределите
            методы базового класса, такие как <code>getMessage()</code> или <code>toString()</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если вы наследуетесь от <code>Exception</code>, ваше исключение будет
            проверяемым (checked). Если от <code>RuntimeException</code> — непроверяемым (unchecked).
        </p>
    </div>

    <h2>Пример пользовательского исключения</h2>
    <p>
        Пример создания пользовательского исключения, наследуемого от <code>Exception</code>:
    </p>
    <pre><code>class MyCustomException extends Exception {
    public MyCustomException(String message) {
        super(message);
    }
}</code></pre>
    <p>
        Пример создания пользовательского исключения, наследуемого от
        <code>RuntimeException</code>:
    </p>
    <pre><code>class MyCustomRuntimeException extends RuntimeException {
    public MyCustomRuntimeException(String message) {
        super(message);
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этих примерах создаются простые пользовательские
            исключения с конструктором, принимающим сообщение об ошибке.
        </p>
    </div>

    <h2>Использование пользовательского исключения</h2>
    <p>
        Пример использования пользовательского исключения:
    </p>
    <pre><code>public void checkValue(int value) throws MyCustomException {
    if (value < 0) {
        throw new MyCustomException("Значение не может быть отрицательным");
    }
    System.out.println("Значение корректно");
}

public static void main(String[] args) {
    try {
        checkValue(-5);
    } catch (MyCustomException e) {
        System.out.println(e.getMessage());
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере метод <code>checkValue</code> выбрасывает
            пользовательское исключение <code>MyCustomException</code>, если значение
            отрицательное. Исключение обрабатывается в блоке <code>catch</code>.
        </p>
    </div>

    <h2>Переопределение методов</h2>
    <p>
        При необходимости можно переопределить методы базового класса, такие как
        <code>getMessage()</code> или <code>toString()</code>:
    </p>
    <pre><code>class MyCustomException extends Exception {
    public MyCustomException(String message) {
        super(message);
    }

    @Override
    public String getMessage() {
        return "Ошибка: " + super.getMessage();
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере метод <code>getMessage()</code> переопределён,
            чтобы добавить префикс "Ошибка: " к сообщению об ошибке.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('b5b6f27a-4541-448e-9244-921b3fc02edb', 'В чем разница между Collection и Stream?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между Collection и Stream</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Разница между Collection и Stream</h1>
    <p>
        <span class="highlight">Коллекции (Collection)</span> и <span class="highlight">стримы (Stream)</span> в Java представляют собой два разных подхода
        к работе с данными. Они имеют различные цели и особенности, которые делают их
        полезными в разных ситуациях.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Работа с элементами:</span>
            <ul>
                <li>
                    <span class="highlight">Коллекции:</span> Позволяют работать с элементами по отдельности. Например, можно добавлять,
                    удалять или изменять элементы в коллекции.
                </li>
                <li>
                    <span class="highlight">Стримы:</span> Не позволяют работать с элементами по отдельности. Вместо этого они предоставляют
                    возможность выполнять операции над данными как над одним целым (например, фильтрация,
                    сортировка, преобразование).
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Концепция:</span>
            <ul>
                <li>
                    <span class="highlight">Коллекции:</span> Это воплощение структуры данных. Например, <code>Set</code> реализует идею множества
                    с уникальными элементами, а <code>List</code> представляет собой упорядоченную последовательность
                    элементов.
                </li>
                <li>
                    <span class="highlight">Стримы:</span> Это абстракция для реализации конвейера вычислений. Стримы не хранят данные,
                    а предоставляют инструменты для их обработки. Результатом работы стрима могут быть
                    структуры данных, результаты проверок, поиска и т. д.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Ленивые вычисления:</span>
            <ul>
                <li>
                    <span class="highlight">Коллекции:</span> Все операции выполняются немедленно.
                </li>
                <li>
                    <span class="highlight">Стримы:</span> Промежуточные операции выполняются лениво, то есть обработка данных начинается
                    только после вызова конечной операции.
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Одноразовость:</span>
            <ul>
                <li>
                    <span class="highlight">Коллекции:</span> Могут использоваться многократно.
                </li>
                <li>
                    <span class="highlight">Стримы:</span> Не могут быть использованы повторно. После вызова конечной операции стрим
                    закрывается.
                </li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования Collection</h2>
    <p>
        Пример работы с коллекцией <code>List</code>:
    </p>
    <pre><code>import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<String> list = new ArrayList<>();
        list.add("Иван");
        list.add("Анна");
        list.add("Петр");

        for (String name : list) {
            System.out.println(name); // Работа с элементами по отдельности
        }
    }
}</code></pre>

    <h2>Пример использования Stream</h2>
    <p>
        Пример работы со стримом:
    </p>
    <pre><code>import java.util.List;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        List<String> names = Arrays.asList("Иван", "Анна", "Петр");
        names.stream() // Создание стрима
             .filter(name -> name.startsWith("А")) // Промежуточная операция
             .forEach(System.out::println); // Конечная операция
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        <span class="highlight">Коллекции</span> и <span class="highlight">стримы</span> служат разным целям. Коллекции предназначены для хранения и
        управления данными, тогда как стримы предоставляют удобный способ обработки данных
        с использованием функциональных операций. Выбор между ними зависит от конкретной
        задачи: если нужно работать с элементами по отдельности, используйте коллекции; если
        требуется выполнить сложные операции над данными, стримы будут более подходящим
        инструментом.
    </p>
</body>
</html>', 'STREAM', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8cac1c2f-84bc-4584-947d-eae35a14e6ac', 'Зачем нужен equals(). Чем он отличается от операции ==?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Метод equals() и операция ==</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Метод equals() и операция ==</h1>
    <p>
        Метод <span class="highlight">equals()</span> и операция <span class="highlight">==</span> используются для сравнения объектов, но они имеют
        разные цели и поведение. Понимание их различий важно для корректной работы с
        объектами в Java.
    </p>

    <h2>Операция ==</h2>
    <p>
        Операция <code>==</code> сравнивает <span class="highlight">ссылки</span> на объекты. Она возвращает <code>true</code>, если две
        переменные ссылаются на один и тот же объект в памяти.
    </p>
    <div class="note">
        <p>
            <span class="highlight">Пример:</span>
            <pre><code>String str1 = new String("Hello");
String str2 = new String("Hello");
System.out.println(str1 == str2); // false</code></pre>
            В этом примере <code>str1</code> и <code>str2</code> ссылаются на разные объекты, поэтому
            результат сравнения — <code>false</code>.
        </p>
    </div>

    <h2>Метод equals()</h2>
    <p>
        Метод <code>equals()</code> используется для сравнения объектов по их <span class="highlight">внутреннему состоянию</span>.
        Он должен быть переопределён в классе, чтобы сравнивать объекты по их содержимому,
        а не по ссылкам.
    </p>
    <div class="note">
        <p>
            <span class="highlight">Пример:</span>
            <pre><code>String str1 = new String("Hello");
String str2 = new String("Hello");
System.out.println(str1.equals(str2)); // true</code></pre>
            В этом примере <code>str1</code> и <code>str2</code> содержат одинаковые данные, поэтому
            результат сравнения — <code>true</code>.
        </p>
    </div>

    <h2>Различия между equals() и ==</h2>
    <ul>
        <li>
            <span class="highlight">Сравнение ссылок:</span> Операция <code>==</code> сравнивает ссылки на объекты, то есть
            проверяет, указывают ли переменные на один и тот же объект в памяти.
        </li>
        <li>
            <span class="highlight">Сравнение состояний:</span> Метод <code>equals()</code> сравнивает объекты по их
            внутреннему состоянию (содержимому), если он переопределён. По умолчанию
            (в классе <code>Object</code>) он также сравнивает ссылки.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Для корректного сравнения объектов по их состоянию необходимо
            переопределить метод <code>equals()</code> в классе.
        </p>
    </div>

    <h2>Пример переопределения equals()</h2>
    <p>
        Пример переопределения метода <code>equals()</code>:
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
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Переопределение метода <code>equals()</code> позволяет корректно
            сравнивать объекты по их состоянию, что особенно важно при работе с коллекциями,
            такими как <code>ArrayList</code>, <code>HashSet</code> или <code>HashMap</code>.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d937d861-7540-4611-9f2f-9e49033479f8', 'Объясните выражение System.out::println', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Выражение System.out::println</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Выражение System.out::println</h1>
    <p>
        Выражение <code>System.out::println</code> является примером использования <span class="highlight">ссылки на метод экземпляра</span>
        (instance method reference) в Java. Оно позволяет передать метод <code>println</code> в качестве аргумента,
        например, в методы, принимающие функциональные интерфейсы.
    </p>

    <h2>Как это работает?</h2>
    <p>
        В Java <code>System.out</code> — это статическое поле класса <code>System</code>, которое представляет собой
        объект типа <code>PrintStream</code>. Метод <code>println</code> является методом экземпляра этого объекта.
        Выражение <code>System.out::println</code> передаёт ссылку на этот метод.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Использование <code>System.out::println</code> в методе <code>forEach</code>:
        </p>
        <pre><code>import java.util.List;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        List<String> names = Arrays.asList("Иван", "Анна", "Петр");
        names.forEach(System.out::println); // ссылка на метод println
    }
}</code></pre>
    </div>

    <h2>Разбор выражения</h2>
    <ul>
        <li>
            <span class="highlight">System.out:</span> Это статическое поле класса <code>System</code>, которое представляет
            собой объект типа <code>PrintStream</code>.
        </li>
        <li>
            <span class="highlight">println:</span> Это метод экземпляра класса <code>PrintStream</code>, который выводит
            переданный аргумент в консоль и переводит строку.
        </li>
        <li>
            <span class="highlight">:::</span> Это синтаксис ссылки на метод. В данном случае он указывает, что нужно
            передать метод <code>println</code> объекта <code>System.out</code>.
        </li>
    </ul>

    <h2>Почему это удобно?</h2>
    <ul>
        <li>
            <span class="highlight">Компактность:</span> Выражение <code>System.out::println</code> заменяет собой лямбда-выражение
            <code>s -> System.out.println(s)</code>, делая код более кратким.
        </li>
        <li>
            <span class="highlight">Читаемость:</span> Код становится более понятным и выразительным.
        </li>
        <li>
            <span class="highlight">Универсальность:</span> Ссылки на методы могут быть переданы в любые методы,
            принимающие функциональные интерфейсы, такие как <code>Consumer</code>, <code>Function</code> и другие.
        </li>
    </ul>

    <h2>Пример с лямбда-выражением</h2>
    <p>
        Для сравнения, тот же код с использованием лямбда-выражения:
    </p>
    <pre><code>import java.util.List;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        List<String> names = Arrays.asList("Иван", "Анна", "Петр");
        names.forEach(s -> System.out.println(s)); // лямбда-выражение
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Выражение <code>System.out::println</code> — это пример использования ссылки на метод экземпляра.
        Оно позволяет передать метод <code>println</code> объекта <code>System.out</code> в качестве аргумента,
        делая код более компактным и читаемым. Этот механизм особенно полезен при работе
        с функциональными интерфейсами, такими как <code>Consumer</code>.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('bd811dcf-9c19-4321-bc89-38cbe861f74d', 'Какие классы позволяют ускорить чтение/запись за счет использования  буфера?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Классы для ускорения чтения/записи с использованием буфера</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Классы для ускорения чтения/записи с использованием буфера</h1>
    <p>
        В Java для ускорения операций чтения и записи данных используются буферизированные классы. Эти классы добавляют буфер к потокам, что позволяет уменьшить количество обращений к источнику данных и повысить производительность.
    </p>

    <h2>Буферизированные классы</h2>
    <ul>
        <li>
            <span class="highlight">BufferedInputStream:</span> Добавляет буфер к байтовому потоку ввода. Конструкторы:
            <ul>
                <li><code>BufferedInputStream(InputStream in)</code> — создает буферизированный поток с размером буфера по умолчанию.</li>
                <li><code>BufferedInputStream(InputStream in, int size)</code> — создает буферизированный поток с указанным размером буфера.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">BufferedOutputStream:</span> Добавляет буфер к байтовому потоку вывода. Конструкторы:
            <ul>
                <li><code>BufferedOutputStream(OutputStream out)</code> — создает буферизированный поток с размером буфера по умолчанию.</li>
                <li><code>BufferedOutputStream(OutputStream out, int size)</code> — создает буферизированный поток с указанным размером буфера.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">BufferedReader:</span> Добавляет буфер к символьному потоку ввода. Конструкторы:
            <ul>
                <li><code>BufferedReader(Reader in)</code> — создает буферизированный поток с размером буфера по умолчанию.</li>
                <li><code>BufferedReader(Reader in, int sz)</code> — создает буферизированный поток с указанным размером буфера.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">BufferedWriter:</span> Добавляет буфер к символьному потоку вывода. Конструкторы:
            <ul>
                <li><code>BufferedWriter(Writer out)</code> — создает буферизированный поток с размером буфера по умолчанию.</li>
                <li><code>BufferedWriter(Writer out, int sz)</code> — создает буферизированный поток с указанным размером буфера.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования BufferedInputStream и BufferedOutputStream</h2>
    <pre>
        <code>
import java.io.*;

public class BufferedByteStreamExample {
    public static void main(String[] args) throws IOException {
        // Чтение данных с использованием BufferedInputStream
        try (InputStream inputStream = new BufferedInputStream(new FileInputStream("input.txt"))) {
            int data;
            while ((data = inputStream.read()) != -1) {
                System.out.print((char) data);
            }
        }

        // Запись данных с использованием BufferedOutputStream
        try (OutputStream outputStream = new BufferedOutputStream(new FileOutputStream("output.txt"))) {
            outputStream.write("Hello, BufferedOutputStream!".getBytes());
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используются <code>BufferedInputStream</code> и <code>BufferedOutputStream</code> для чтения и записи байтовых данных с использованием буфера.
    </p>

    <h2>Пример использования BufferedReader и BufferedWriter</h2>
    <pre>
        <code>
import java.io.*;

public class BufferedCharStreamExample {
    public static void main(String[] args) throws IOException {
        // Чтение данных с использованием BufferedReader
        try (Reader reader = new BufferedReader(new FileReader("input.txt"))) {
            String line;
            while ((line = ((BufferedReader) reader).readLine()) != null) {
                System.out.println(line);
            }
        }

        // Запись данных с использованием BufferedWriter
        try (Writer writer = new BufferedWriter(new FileWriter("output.txt"))) {
            writer.write("Hello, BufferedWriter!");
        }
    }
}
        </code>
    </pre>
    <p>
        В этом примере используются <code>BufferedReader</code> и <code>BufferedWriter</code> для чтения и записи символьных данных с использованием буфера.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование буферизированных классов значительно повышает производительность операций ввода/вывода, особенно при работе с большими объемами данных.
        </p>
    </div>

    <h2>Итог</h2>
    <ul>
        <li>
            Буферизированные классы:
            <ul>
                <li><code>BufferedInputStream</code> — для байтового ввода.</li>
                <li><code>BufferedOutputStream</code> — для байтового вывода.</li>
                <li><code>BufferedReader</code> — для символьного ввода.</li>
                <li><code>BufferedWriter</code> — для символьного вывода.</li>
            </ul>
        </li>
        <li>
            Пример использования:
            <pre>
                <code>
BufferedInputStream bis = new BufferedInputStream(inputStream);
BufferedOutputStream bos = new BufferedOutputStream(outputStream);

BufferedReader br = new BufferedReader(reader);
BufferedWriter bw = new BufferedWriter(writer);
                </code>
            </pre>
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a8e7f32b-713c-4da0-b057-b8f9c155301b', 'Для чего используются статические блоки инициализации?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Статические блоки инициализации</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Статические блоки инициализации</h1>
    <p>
        <span class="highlight">Статические блоки инициализации</span> используются для выполнения кода, который должен
        выполняться один раз при инициализации класса загрузчиком классов. Это происходит в
        момент, предшествующий созданию объектов этого класса с помощью конструктора.
        Такой блок принадлежит только самому классу.
    </p>

    <h2>Для чего используются статические блоки?</h2>
    <ul>
        <li>
            <span class="highlight">Инициализация статических переменных:</span> Статические блоки часто используются для
            инициализации статических полей класса, если для этого требуется выполнение
            сложной логики.
        </li>
        <li>
            <span class="highlight">Выполнение кода один раз:</span> Код внутри статического блока выполняется только один
            раз при загрузке класса, что делает его полезным для настройки ресурсов или
            выполнения других однократных действий.
        </li>
        <li>
            <span class="highlight">Принадлежность классу:</span> Статический блок принадлежит классу, а не его объектам,
            что позволяет выполнять действия на уровне класса, а не экземпляра.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Статические блоки выполняются до создания любых объектов класса и до вызова
            любого статического метода или доступа к статическому полю.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Пример использования статического блока инициализации:
    </p>
    <pre><code>class Example {
    static int value;

    static {
        // Инициализация статической переменной
        value = 10;
        System.out.println("Статический блок инициализации выполнен");
    }
}</code></pre>
    <p>
        При загрузке класса <code>Example</code> будет выведено:
    </p>
    <pre><code>Статический блок инициализации выполнен</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Статические блоки инициализации полезны для выполнения кода, который
            должен быть выполнен один раз при загрузке класса, например, для настройки
            статических переменных или регистрации ресурсов.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('adb636b8-66c8-4f86-b938-4118c935d6be', 'Почему хеш-код в виде 31 * x + y предпочтительнее чем x + y?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему 31 * x + y предпочтительнее чем x + y</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Почему 31 * x + y предпочтительнее чем x + y</h1>
    <p>
        При вычислении хэш-кода часто используется формула <span class="highlight">31 * x + y</span>, где <code>x</code> и <code>y</code> —
        значения полей объекта. Эта формула предпочтительнее, чем простое сложение
        (<code>x + y</code>), по нескольким причинам.
    </p>

    <h2>Преимущества формулы 31 * x + y</h2>
    <ul>
        <li>
            <span class="highlight">Зависимость от порядка полей:</span> Множитель <code>31</code> создаёт зависимость
            значения хэш-кода от порядка обработки полей. Это делает хэш-функцию более
            уникальной и уменьшает вероятность коллизий.
        </li>
        <li>
            <span class="highlight">Побитовый сдвиг:</span> Число <code>31</code> можно легко представить как
            <code>2<sup>5</sup> - 1</code>, что позволяет оптимизировать вычисления с использованием
            побитовых операций. Например, <code>31 * x</code> можно заменить на <code>(x << 5) - x</code>, что
            повышает производительность.
        </li>
        <li>
            <span class="highlight">Согласованность с equals():</span> В хэш-коде должны участвовать те же поля,
            которые используются в методе <code>equals()</code>. Формула <code>31 * x + y</code> позволяет
            легко комбинировать несколько полей, сохраняя их значимость.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование множителя <code>31</code> помогает создать более равномерное
            распределение хэш-кодов, что уменьшает вероятность коллизий и улучшает
            производительность коллекций, таких как <code>HashMap</code> или <code>HashSet</code>.
        </p>
    </div>

    <h2>Пример использования</h2>
    <p>
        Пример вычисления хэш-кода с использованием формулы <code>31 * x + y</code>:
    </p>
    <pre><code>class Person {
    private String name;
    private int age;

    @Override
    public int hashCode() {
        int result = 31 * name.hashCode() + age;
        return result;
    }
}</code></pre>
    <p>
        В этом примере хэш-код вычисляется на основе полей <code>name</code> и <code>age</code>, что
        обеспечивает хорошее распределение значений.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Формула <code>31 * x + y</code> является стандартной практикой в Java
            для вычисления хэш-кода, так как она обеспечивает баланс между простотой и
            эффективностью.
        </p>
    </div>

    <h2>Почему не x + y?</h2>
    <p>
        Простое сложение (<code>x + y</code>) имеет следующие недостатки:
    </p>
    <ul>
        <li>
            <span class="highlight">Низкая уникальность:</span> Сложение не учитывает порядок полей, что увеличивает
            вероятность коллизий.
        </li>
        <li>
            <span class="highlight">Плохое распределение:</span> Хэш-коды, вычисленные как <code>x + y</code>, могут
            плохо распределяться, что снижает производительность коллекций.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование формулы <code>31 * x + y</code> помогает избежать этих
            проблем и создаёт более эффективную хэш-функцию.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1687d8ab-0eb8-4506-bf3a-4e64e9e03d26', 'Зачем нужны и какие бывают блоки инициализации?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Блоки инициализации</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Блоки инициализации</h1>
    <p>
        <span class="highlight">Блоки инициализации</span> представляют собой код, заключённый в фигурные скобки и размещаемый
        внутри класса вне объявления методов или конструкторов. Они используются для выполнения
        кода, который должен выполняться при инициализации класса или создании объекта.
    </p>

    <h2>Типы блоков инициализации</h2>
    <ul>
        <li>
            <span class="highlight">Статические блоки инициализации:</span> Выполняются один раз при загрузке класса.
            Используются для инициализации статических переменных или выполнения других
            действий, которые должны быть выполнены только один раз.
        </li>
        <li>
            <span class="highlight">Нестатические блоки инициализации:</span> Выполняются каждый раз при создании объекта
            класса, перед вызовом конструктора. Используются для инициализации нестатических
            переменных или выполнения кода, который должен выполняться при каждом создании
            объекта.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если в классе несколько блоков инициализации, они выполняются в порядке их
            следования в коде класса.
        </p>
    </div>

    <h2>Особенности блоков инициализации</h2>
    <ul>
        <li>
            <span class="highlight">Порядок выполнения:</span> Статические блоки выполняются при загрузке класса, а
            нестатические — перед вызовом конструктора.
        </li>
        <li>
            <span class="highlight">Генерация исключений:</span> Блоки инициализации могут генерировать исключения, если их
            объявления перечислены в <code>throws</code> всех конструкторов класса.
        </li>
        <li>
            <span class="highlight">Использование в анонимных классах:</span> Блоки инициализации могут быть созданы и в
            анонимных классах.
        </li>
    </ul>

    <h2>Пример</h2>
    <p>
        Пример использования статического и нестатического блоков инициализации:
    </p>
    <pre><code>class Example {
    static {
        System.out.println("Статический блок инициализации");
    }

    {
        System.out.println("Нестатический блок инициализации");
    }

    Example() {
        System.out.println("Конструктор");
    }
}</code></pre>
    <p>
        При создании объекта класса <code>Example</code> вывод будет следующим:
    </p>
    <pre><code>Статический блок инициализации
Нестатический блок инициализации
Конструктор</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Блоки инициализации полезны для выполнения кода, который должен
            выполняться один раз при инициализации класса или при каждом создании объекта.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ed1d94e1-564a-44ff-83e7-5b34bd2172ae', 'Как вызывать default-метод интерфейса в реализующем этот интерфейс классе?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Вызов default-метода интерфейса</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Вызов default-метода интерфейса</h1>
    <p>
        В Java, если интерфейс содержит <span class="highlight">default-метод</span>, и вам нужно вызвать этот метод
        в классе, который реализует данный интерфейс, вы можете использовать ключевое слово
        <code>super</code> вместе с именем интерфейса.
    </p>

    <h2>Синтаксис вызова default-метода</h2>
    <p>
        Для вызова default-метода интерфейса в реализующем классе используется следующий синтаксис:
    </p>
    <pre><code>ИмяИнтерфейса.super.имяМетода();</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span> Если у вас есть интерфейс <code>Paper</code> с default-методом
            <code>show()</code>, то вызов этого метода в классе будет выглядеть так:
        </p>
        <pre><code>Paper.super.show();</code></pre>
    </div>

    <h2>Зачем это нужно?</h2>
    <ul>
        <li>
            <span class="highlight">Переопределение метода:</span> Если вы хотите переопределить default-метод, но
            при этом вызвать его оригинальную реализацию, этот подход будет полезен.
        </li>
        <li>
            <span class="highlight">Множественное наследование:</span> В случае, если класс реализует несколько
            интерфейсов с одинаковыми default-методами, использование <code>super</code> позволяет
            явно указать, метод какого интерфейса нужно вызвать.
        </li>
    </ul>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('07d41a30-bec9-4e41-a97d-87c28ca48c26', 'Возможно ли использование блока try-finally (без catch)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Блок try-finally</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Блок try-finally</h1>
    <p>
        В Java допустимо использование блока <span class="highlight">try-finally</span> без блока <code>catch</code>. Однако,
        такая конструкция имеет ограниченное применение и обычно используется для
        гарантированного выполнения завершающих действий, таких как освобождение
        ресурсов.
    </p>

    <h2>Особенности try-finally</h2>
    <ul>
        <li>
            <span class="highlight">Без обработки исключений:</span> Блок <code>try-finally</code> не перехватывает
            исключения. Если в блоке <code>try</code> возникает исключение, оно передаётся
            вызывающему методу, но блок <code>finally</code> всё равно выполняется.
        </li>
        <li>
            <span class="highlight">Гарантированное выполнение:</span> Блок <code>finally</code> выполняется всегда,
            независимо от того, было ли выброшено исключение в блоке <code>try</code>.
        </li>
        <li>
            <span class="highlight">Ограниченное применение:</span> Использование <code>try-finally</code> без
            <code>catch</code> имеет смысл только в случаях, когда исключения не нужно
            обрабатывать на текущем уровне, но необходимо выполнить завершающие
            действия.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Блок <code>finally</code> выполняется даже если в блоке <code>try</code> был
            выполнен <code>return</code> или выброшено исключение.
        </p>
    </div>

    <h2>Пример использования try-finally</h2>
    <p>
        Пример использования блока <code>try-finally</code> для освобождения ресурсов:
    </p>
    <pre><code>FileReader file = null;
try {
    file = new FileReader("file.txt");
    // Логика чтения файла
} finally {
    if (file != null) {
        try {
            file.close();
        } catch (IOException e) {
            System.out.println("Ошибка при закрытии файла: " + e.getMessage());
        }
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере блок <code>finally</code> гарантирует, что файл будет
            закрыт, даже если при чтении возникло исключение. Однако, само исключение
            не обрабатывается и передаётся вызывающему методу.
        </p>
    </div>

    <h2>Когда использовать try-finally?</h2>
    <ul>
        <li>
            <span class="highlight">Освобождение ресурсов:</span> Если необходимо гарантировать освобождение
            ресурсов (например, закрытие файлов или соединений с базой данных), но
            обработка исключений не требуется на текущем уровне.
        </li>
        <li>
            <span class="highlight">Завершающие действия:</span> Если нужно выполнить определённые действия
            (например, логирование) независимо от того, возникло исключение или нет.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> В большинстве случаев рекомендуется использовать блок
            <code>catch</code> для обработки исключений, чтобы избежать неожиданного
            завершения программы.
        </p>
    </div>

    <h2>Пример с исключением</h2>
    <p>
        Пример, когда в блоке <code>try</code> возникает исключение:
    </p>
    <pre><code>try {
    int result = 10 / 0; // ArithmeticException
} finally {
    System.out.println("Блок finally выполнен");
}</code></pre>
    <p>
        В этом примере блок <code>finally</code> выполнится, но исключение
        <code>ArithmeticException</code> не будет обработано и передастся вызывающему методу.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Использование <code>try-finally</code> без <code>catch</code> может быть
            полезным в специфических сценариях, но в большинстве случаев лучше
            добавлять блок <code>catch</code> для обработки исключений.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1b95327d-80ff-4614-adf2-0e41443baeab', 'Каков порядок вызова конструкторов инициализации с учетом иерархии  классов?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Порядок вызова конструкторов и блоков инициализации</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Порядок вызова конструкторов и блоков инициализации</h1>
    <p>
        При создании объекта производного класса порядок вызова конструкторов и блоков
        инициализации определяется иерархией наследования. Этот процесс включает
        выполнение статических блоков, нестатических блоков и конструкторов в строго
        определённой последовательности.
    </p>

    <h2>Этапы инициализации</h2>
    <ul>
        <li>
            <span class="highlight">Статические блоки:</span> Сначала выполняются все статические блоки инициализации,
            начиная с корневого предка и заканчивая самим классом. Статические блоки
            выполняются только один раз при загрузке класса.
        </li>
        <li>
            <span class="highlight">Нестатические блоки и конструкторы:</span> После выполнения статических блоков
            вызываются нестатические блоки инициализации и конструкторы. Они выполняются
            в порядке от корневого предка до производного класса.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Конструкторы вызываются в порядке "сверху вниз" по иерархии наследования.
            Сначала выполняется конструктор самого базового класса, затем его наследников и
            так далее до конструктора производного класса.
        </p>
    </div>

    <h2>Пример</h2>
    <p>
        Рассмотрим иерархию классов:
    </p>
    <pre><code>class A {
    static {
        System.out.println("Статический блок A");
    }
    {
        System.out.println("Нестатический блок A");
    }
    A() {
        System.out.println("Конструктор A");
    }
}

class B extends A {
    static {
        System.out.println("Статический блок B");
    }
    {
        System.out.println("Нестатический блок B");
    }
    B() {
        System.out.println("Конструктор B");
    }
}</code></pre>
    <p>
        При создании объекта класса <code>B</code> порядок вывода будет следующим:
    </p>
    <pre><code>Статический блок A
Статический блок B
Нестатический блок A
Конструктор A
Нестатический блок B
Конструктор B</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Статические блоки выполняются только один раз при загрузке класса,
            тогда как нестатические блоки и конструкторы выполняются каждый раз при создании
            нового объекта.
        </p>
    </div>
</body>
</html>', 'OOP', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ce8c1b0d-2883-4699-9166-72c90d5575f7', 'Правила переопределения метода Object.equals()', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Правила переопределения метода equals()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Правила переопределения метода equals()</h1>
    <p>
        Переопределение метода <span class="highlight">equals()</span> требует соблюдения определённых правил, чтобы
        обеспечить корректное сравнение объектов. Эти правила гарантируют, что метод
        будет работать правильно и соответствовать ожидаемому поведению.
    </p>

    <h2>Основные правила переопределения equals()</h2>
    <ul>
        <li>
            <span class="highlight">Проверка на ссылку:</span> Используйте оператор <code>==</code>, чтобы проверить, является ли
            аргумент ссылкой на текущий объект. Если да, верните <code>true</code>. Если аргумент
            равен <code>null</code>, верните <code>false</code>.
            <pre><code>if (this == obj) return true;
if (obj == null) return false;</code></pre>
        </li>
        <li>
            <span class="highlight">Проверка типа:</span> Используйте оператор <code>instanceof</code> или метод <code>getClass()</code>, чтобы
            убедиться, что аргумент имеет правильный тип. Если тип не совпадает, верните
            <code>false</code>.
            <pre><code>if (!(obj instanceof MyClass)) return false;</code></pre>
        </li>
        <li>
            <span class="highlight">Приведение типа:</span> Приведите аргумент к правильному типу. Эта операция безопасна,
            так как предварительно выполнена проверка типа.
            <pre><code>MyClass other = (MyClass) obj;</code></pre>
        </li>
        <li>
            <span class="highlight">Сравнение полей:</span> Сравните все значимые поля текущего объекта и аргумента. Если
            все поля совпадают, верните <code>true</code>, иначе — <code>false</code>.
            <pre><code>return this.field1.equals(other.field1) &&
       this.field2 == other.field2;</code></pre>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> После переопределения метода <code>equals()</code> убедитесь, что он удовлетворяет
            следующим свойствам:
            <ul>
                <li><span class="highlight">Рефлексивность:</span> <code>x.equals(x)</code> всегда возвращает <code>true</code>.</li>
                <li><span class="highlight">Симметричность:</span> Если <code>x.equals(y)</code> возвращает <code>true</code>, то и
                    <code>y.equals(x)</code> должно возвращать <code>true</code>.</li>
                <li><span class="highlight">Транзитивность:</span> Если <code>x.equals(y)</code> и <code>y.equals(z)</code> возвращают
                    <code>true</code>, то и <code>x.equals(z)</code> должно возвращать <code>true</code>.</li>
                <li><span class="highlight">Непротиворечивость:</span> Многократный вызов <code>x.equals(y)</code> должен
                    возвращать одинаковый результат, если состояние объектов не изменилось.</li>
            </ul>
        </p>
    </div>

    <h2>Пример переопределения equals()</h2>
    <p>
        Пример корректного переопределения метода <code>equals()</code>:
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
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Переопределение метода <code>equals()</code> должно сопровождаться
            переопределением метода <code>hashCode()</code>, чтобы соблюсти контракт между
            этими методами.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('f86efe0c-6ec1-4e4d-ba26-06579477103f', 'Можно ли обработать необрабатываемые исключения?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Обработка необрабатываемых исключений</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Обработка необрабатываемых исключений</h1>
    <p>
        Необрабатываемые исключения (unchecked exceptions) в Java, такие как
        <code>RuntimeException</code> и его подклассы, могут быть обработаны с помощью блока
        <code>try-catch</code>. Это позволяет предотвратить аварийное завершение программы в
        некоторых случаях.
    </p>

    <h2>Можно ли обработать необрабатываемые исключения?</h2>
    <p>
        Да, необрабатываемые исключения можно обработать с помощью блока <code>try-catch</code>.
        Хотя это не является обязательным, обработка таких исключений может быть полезной
        для повышения устойчивости программы.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span>
            <pre><code>try {
    int[] array = new int[5];
    System.out.println(array[10]); // IndexOutOfBoundsException
} catch (IndexOutOfBoundsException e) {
    System.out.println("Ошибка: выход за пределы массива");
}</code></pre>
            В этом примере исключение <code>IndexOutOfBoundsException</code> обрабатывается, и
            программа продолжает работу вместо аварийного завершения.
        </p>
    </div>

    <h2>Почему обрабатывать необрабатываемые исключения?</h2>
    <ul>
        <li>
            <span class="highlight">Предотвращение аварийного завершения:</span> Обработка исключений
            позволяет программе продолжить работу даже в случае ошибок.
        </li>
        <li>
            <span class="highlight">Логирование ошибок:</span> Можно зафиксировать информацию об
            ошибке для последующего анализа.
        </li>
        <li>
            <span class="highlight">Улучшение пользовательского опыта:</span> Пользователь может
            получить понятное сообщение об ошибке вместо аварийного завершения программы.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Обработка необрабатываемых исключений не всегда является
            хорошей практикой. Например, ошибки типа <code>Error</code> (например,
            <code>OutOfMemoryError</code>) не рекомендуется обрабатывать, так как они связаны с
            серьёзными проблемами уровня JVM.
        </p>
    </div>

    <h2>Пример обработки RuntimeException</h2>
    <p>
        Пример обработки исключения <code>NullPointerException</code>:
    </p>
    <pre><code>try {
    String str = null;
    System.out.println(str.length()); // NullPointerException
} catch (NullPointerException e) {
    System.out.println("Ошибка: объект не инициализирован");
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Обработка <code>NullPointerException</code> позволяет
            избежать аварийного завершения программы и предоставить пользователю
            информативное сообщение об ошибке.
        </p>
    </div>

    <h2>Когда не стоит обрабатывать необрабатываемые исключения?</h2>
    <ul>
        <li>
            <span class="highlight">Ошибки уровня JVM:</span> Исключения типа <code>Error</code> (например,
            <code>OutOfMemoryError</code>) не следует обрабатывать, так как они указывают на
            серьёзные проблемы, которые программа не может исправить.
        </li>
        <li>
            <span class="highlight">Ошибки в логике программы:</span> Вместо обработки
            <code>NullPointerException</code> или <code>IndexOutOfBoundsException</code> лучше
            исправить код, чтобы избежать таких ошибок.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Обработка необрабатываемых исключений должна быть
            обоснованной. В некоторых случаях лучше исправить ошибку в коде, чем
            обрабатывать её.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4ef0d410-d616-4aed-8ce3-ee97fd7298ac', 'Что такое исключение?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Исключения в Java</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
    <style>
        .hierarchy {
            margin: 20px 0;
            padding: 10px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            font-family: Arial, sans-serif;
        }
        .hierarchy ul {
            list-style-type: none;
            padding-left: 20px;
        }
        .hierarchy ul ul {
            padding-left: 30px;
        }
        .hierarchy li {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <h1>Исключения в Java</h1>
    <p>
        <span class="highlight">Исключение</span> — это ошибка, возникающая во время выполнения программы. В Java
        исключения являются объектами, которые представляют собой различные типы ошибок.
    </p>

    <h2>Иерархия исключений</h2>
    <p>
        Все исключения в Java имеют общего предка — класс <code>Throwable</code>. Его потомками являются
        классы <code>Exception</code> и <code>Error</code>, которые представляют разные типы ошибок.
    </p>

    <div class="hierarchy">
        <ul>
            <li><strong>Throwable</strong>
                <ul>
                    <li><strong>Error</strong>
                        <ul>
                            <li>OutOfMemoryError</li>
                            <li>StackOverflowError</li>
                            <li>VirtualMachineError</li>
                        </ul>
                    </li>
                    <li><strong>Exception</strong>
                        <ul>
                            <li><strong>RuntimeException</strong>
                                <ul>
                                    <li>NullPointerException</li>
                                    <li>ArithmeticException</li>
                                    <li>IndexOutOfBoundsException</li>
                                </ul>
                            </li>
                            <li><strong>Checked Exceptions</strong>
                                <ul>
                                    <li>IOException</li>
                                    <li>SQLException</li>
                                    <li>ClassNotFoundException</li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
    </div>

    <h2>Классы исключений</h2>
    <ul>
        <li>
            <span class="highlight">Error:</span> Ошибки уровня JVM, которые не следует обрабатывать в программе.
            Например:
            <ul>
                <li><code>OutOfMemoryError</code> — закончилась память, доступная виртуальной машине.</li>
                <li><code>StackOverflowError</code> — переполнение стека.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Exception:</span> Исключения, которые можно обрабатывать в программе. Делятся на:
            <ul>
                <li><span class="highlight">RuntimeException:</span> Непроверяемые исключения, возникающие из-за
                    ошибок в коде. Например:
                    <ul>
                        <li><code>NullPointerException</code> — попытка обращения к объекту по ссылке <code>null</code>.</li>
                        <li><code>ArithmeticException</code> — деление на ноль.</li>
                    </ul>
                </li>
                <li><span class="highlight">Checked Exceptions:</span> Проверяемые исключения, которые необходимо
                    обрабатывать. Например:
                    <ul>
                        <li><code>IOException</code> — ошибки ввода-вывода.</li>
                        <li><code>SQLException</code> — ошибки при работе с базой данных.</li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Исключения типа <code>Error</code> не следует обрабатывать в программе, так как
            они связаны с проблемами уровня JVM. Исключения типа <code>Exception</code> можно и нужно
            обрабатывать для повышения устойчивости программы.
        </p>
    </div>

    <h2>Пример обработки исключений</h2>
    <p>
        Пример обработки проверяемого исключения <code>IOException</code>:
    </p>
    <pre><code>try {
    FileReader file = new FileReader("file.txt");
} catch (IOException e) {
    System.out.println("Ошибка при чтении файла: " + e.getMessage());
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Использование блоков <code>try-catch</code> позволяет корректно
            обрабатывать исключения и предотвращать аварийное завершение программы.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('ea68f58a-6d11-4529-aad3-59ec81454b3b', ' Почему нельзя реализовать hashcode(), который будет гарантированно  уникальным для каждого объекта?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему hashCode() не может быть уникальным</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Почему hashCode() не может быть уникальным</h1>
    <p>
        Метод <span class="highlight">hashCode()</span> в Java не может гарантировать уникальность возвращаемого значения
        для каждого объекта. Это связано с ограничениями типа данных и бесконечным
        множеством возможных объектов.
    </p>

    <h2>Ограничения типа int</h2>
    <p>
        В Java хэш-код представлен типом <code>int</code>, что ограничивает количество возможных
        значений до 2<sup>32</sup> (от -2<sup>31</sup> до 2<sup>31</sup>-1). Это означает, что существует
        конечное количество уникальных хэш-кодов.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Количество объектов в программе может быть значительно больше, чем
            количество возможных хэш-кодов. Это делает неизбежным возникновение коллизий
            (ситуаций, когда разные объекты имеют одинаковый хэш-код).
        </p>
    </div>

    <h2>Бесконечное множество объектов</h2>
    <p>
        Множество объектов в программе ничем не ограничено. Новые объекты могут создаваться
        в процессе выполнения программы, и каждый из них должен получить хэш-код. Однако,
        из-за ограниченного количества возможных хэш-кодов, рано или поздно разные объекты
        начнут получать одинаковые хэш-коды.
    </p>

    <h2>Пример</h2>
    <p>
        Рассмотрим пример, где два разных объекта имеют одинаковый хэш-код:
    </p>
    <pre><code>class Person {
    private String name;
    private int age;

    @Override
    public int hashCode() {
        return Objects.hash(name, age);
    }
}

Person person1 = new Person("Alice", 25);
Person person2 = new Person("Bob", 30);

System.out.println(person1.hashCode()); // 123456
System.out.println(person2.hashCode()); // 123456</code></pre>
    <p>
        В этом примере <code>person1</code> и <code>person2</code> имеют одинаковый хэш-код, хотя это разные
        объекты.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> Коллизии не являются ошибкой, но они могут снизить
            производительность коллекций, таких как <code>HashMap</code> или <code>HashSet</code>, так как
            несколько объектов будут храниться в одной "корзине".
        </p>
    </div>

    <h2>Как минимизировать коллизии?</h2>
    <ul>
        <li>
            <span class="highlight">Использование уникальных полей:</span> Включайте в вычисление хэш-кода
            уникальные поля, такие как <code>id</code> или <code>uuid</code>.
        </li>
        <li>
            <span class="highlight">Хороший алгоритм:</span> Используйте алгоритмы, которые равномерно
            распределяют хэш-коды, например, метод <code>Objects.hash()</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Даже при использовании хорошего алгоритма коллизии возможны, но их
            вероятность будет значительно снижена.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3e07ed70-a045-46a4-b0f6-b85853e4f315', 'Опишите работу блока try-catch-finally', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Блок try-catch-finally</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Блок try-catch-finally</h1>
    <p>
        Блок <span class="highlight">try-catch-finally</span> используется в Java для обработки исключений. Он позволяет
        безопасно выполнять код, который может вызвать ошибку, и корректно обрабатывать
        исключения, если они возникают.
    </p>

    <h2>Компоненты блока try-catch-finally</h2>
    <ul>
        <li>
            <span class="highlight">try:</span> Ключевое слово, которое отмечает начало блока кода, который
            потенциально может привести к исключению. Код внутри блока <code>try</code>
            выполняется до тех пор, пока не возникнет исключение.
        </li>
        <li>
            <span class="highlight">catch:</span> Ключевое слово, которое отмечает начало блока кода,
            предназначенного для перехвата и обработки исключений. В скобках указывается
            тип исключения, которое может быть перехвачено.
        </li>
        <li>
            <span class="highlight">finally:</span> Ключевое слово, которое отмечает начало блока кода,
            который выполняется в любом случае, независимо от того, было выброшено
            исключение или нет. Этот блок используется для освобождения ресурсов или
            выполнения завершающих действий.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Блок <code>finally</code> выполняется всегда, даже если в блоке <code>try</code>
            было выброшено исключение или если в блоке <code>catch</code> было выполнено
            возвращение из метода с помощью <code>return</code>.
        </p>
    </div>

    <h2>Общий вид конструкции</h2>
    <p>
        Общий вид конструкции <code>try-catch-finally</code>:
    </p>
    <pre><code>try {
    // Код, который потенциально может привести к исключению
} catch (SomeException e) {
    // Код обработки исключения
} finally {
    // Код, который выполняется в любом случае
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Пример:</span>
            <pre><code>try {
    int result = 10 / 0; // ArithmeticException
} catch (ArithmeticException e) {
    System.out.println("Ошибка: деление на ноль");
} finally {
    System.out.println("Блок finally выполнен");
}</code></pre>
            В этом примере блок <code>catch</code> перехватывает исключение
            <code>ArithmeticException</code>, а блок <code>finally</code> выполняется в любом случае.
        </p>
    </div>

    <h2>Пример использования finally</h2>
    <p>
        Пример использования блока <code>finally</code> для освобождения ресурсов:
    </p>
    <pre><code>FileReader file = null;
try {
    file = new FileReader("file.txt");
    // Логика чтения файла
} catch (IOException e) {
    System.out.println("Ошибка при чтении файла: " + e.getMessage());
} finally {
    if (file != null) {
        try {
            file.close();
        } catch (IOException e) {
            System.out.println("Ошибка при закрытии файла: " + e.getMessage());
        }
    }
}</code></pre>

    <div class="note">
        <p>
            <span class="highlight">Примечание:</span> В этом примере блок <code>finally</code> гарантирует, что файл будет
            закрыт, даже если при чтении возникло исключение.
        </p>
    </div>

    <h2>Особенности работы finally</h2>
    <ul>
        <li>
            <span class="highlight">Всегда выполняется:</span> Блок <code>finally</code> выполняется всегда, даже если
            в блоке <code>try</code> или <code>catch</code> был выполнен <code>return</code>.
        </li>
        <li>
            <span class="highlight">Освобождение ресурсов:</span> Блок <code>finally</code> часто используется для
            освобождения ресурсов, таких как закрытие файлов, соединений с базой данных
            и т. д.
        </li>
        <li>
            <span class="highlight">Исключения в finally:</span> Если в блоке <code>finally</code> возникает исключение,
            оно переопределяет исключение, выброшенное в блоке <code>try</code> или <code>catch</code>.
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Блок <code>finally</code> является необязательным, но его использование
            рекомендуется для обеспечения корректного завершения работы программы.
        </p>
    </div>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('622e9770-2736-454c-8408-3266e86fa3fd', ' Для чего нужны функциональные интерфейсы Consumer<T>,  DoubleConsumer, IntConsumer и LongConsumer?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональные интерфейсы Consumer, DoubleConsumer, IntConsumer и LongConsumer</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональные интерфейсы Consumer, DoubleConsumer, IntConsumer и LongConsumer</h1>
    <p>
        В Java 8 функциональные интерфейсы <code>Consumer&lt;T&gt;</code>, <code>DoubleConsumer</code>,
        <code>IntConsumer</code> и <code>LongConsumer</code> используются для реализации функций, которые
        принимают входные данные, выполняют над ними действия и ничего не возвращают. Эти
        интерфейсы полезны для выполнения операций, таких как вывод данных, модификация
        объектов или вызов других методов.
    </p>

    <h2>Consumer&lt;T&gt;</h2>
    <p>
        Интерфейс <code>Consumer&lt;T&gt;</code> представляет потребителя, который принимает объект типа
        <code>T</code>, выполняет над ним действие и ничего не возвращает.
    </p>
    <pre><code>import java.util.function.Consumer;

public class Main {
    public static void main(String[] args) {
        Consumer<String> greet = name -> System.out.println("Hello, " + name); // вывод приветствия
        greet.accept("world"); // Hello, world
    }
}</code></pre>

    <h2>DoubleConsumer</h2>
    <p>
        Интерфейс <code>DoubleConsumer</code> представляет потребителя, который принимает значение типа
        <code>double</code> и выполняет над ним действие.
    </p>
    <pre><code>import java.util.function.DoubleConsumer;

public class Main {
    public static void main(String[] args) {
        DoubleConsumer printSquare = d -> System.out.println(d * d); // вывод квадрата числа
        printSquare.accept(3.14); // 9.8596
    }
}</code></pre>

    <h2>IntConsumer</h2>
    <p>
        Интерфейс <code>IntConsumer</code> представляет потребителя, который принимает значение типа
        <code>int</code> и выполняет над ним действие.
    </p>
    <pre><code>import java.util.function.IntConsumer;

public class Main {
    public static void main(String[] args) {
        IntConsumer printIncremented = i -> System.out.println(i + 1); // вывод увеличенного числа
        printIncremented.accept(5); // 6
    }
}</code></pre>

    <h2>LongConsumer</h2>
    <p>
        Интерфейс <code>LongConsumer</code> представляет потребителя, который принимает значение типа
        <code>long</code> и выполняет над ним действие.
    </p>
    <pre><code>import java.util.function.LongConsumer;

public class Main {
    public static void main(String[] args) {
        LongConsumer printDecremented = l -> System.out.println(l - 1); // вывод уменьшенного числа
        printDecremented.accept(10L); // 9
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональные интерфейсы <code>Consumer&lt;T&gt;</code>, <code>DoubleConsumer</code>,
        <code>IntConsumer</code> и <code>LongConsumer</code> предоставляют удобный способ выполнения
        действий над входными данными без возврата результата. Они полезны для задач,
        связанных с выводом данных, модификацией объектов или вызовом других методов.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('5c4dc756-d2f2-4e7f-a66a-f9a0e9eb5ada', 'Для чего нужны функциональные интерфейсы Supplier<T>, BooleanSupplier,  DoubleSupplier, IntSupplier и LongSupplier?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональные интерфейсы Supplier, BooleanSupplier, DoubleSupplier, IntSupplier и LongSupplier</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональные интерфейсы Supplier, BooleanSupplier, DoubleSupplier, IntSupplier и LongSupplier</h1>
    <p>
        В Java 8 функциональные интерфейсы <code>Supplier&lt;T&gt;</code>, <code>BooleanSupplier</code>,
        <code>DoubleSupplier</code>, <code>IntSupplier</code> и <code>LongSupplier</code> используются для реализации
        функций, которые ничего не принимают на вход, но возвращают результат. Эти
        интерфейсы полезны для ленивого вычисления значений, генерации данных или
        предоставления констант.
    </p>

    <h2>Supplier&lt;T&gt;</h2>
    <p>
        Интерфейс <code>Supplier&lt;T&gt;</code> представляет поставщика, который ничего не принимает на
        вход, но возвращает объект типа <code>T</code>.
    </p>
    <pre><code>import java.time.LocalDateTime;
import java.util.function.Supplier;

public class Main {
    public static void main(String[] args) {
        Supplier<LocalDateTime> now = LocalDateTime::now; // поставщик текущего времени
        System.out.println(now.get()); // 2023-10-05T14:30:45.123456789
    }
}</code></pre>

    <h2>BooleanSupplier</h2>
    <p>
        Интерфейс <code>BooleanSupplier</code> представляет поставщика, который возвращает значение
        типа <code>boolean</code>.
    </p>
    <pre><code>import java.util.function.BooleanSupplier;

public class Main {
    public static void main(String[] args) {
        BooleanSupplier isEven = () -> 10 % 2 == 0; // проверка, что число чётное
        System.out.println(isEven.getAsBoolean()); // true
    }
}</code></pre>

    <h2>DoubleSupplier</h2>
    <p>
        Интерфейс <code>DoubleSupplier</code> представляет поставщика, который возвращает значение
        типа <code>double</code>.
    </p>
    <pre><code>import java.util.function.DoubleSupplier;

public class Main {
    public static void main(String[] args) {
        DoubleSupplier randomValue = Math::random; // поставщик случайного числа
        System.out.println(randomValue.getAsDouble()); // например, 0.123456789
    }
}</code></pre>

    <h2>IntSupplier</h2>
    <p>
        Интерфейс <code>IntSupplier</code> представляет поставщика, который возвращает значение
        типа <code>int</code>.
    </p>
    <pre><code>import java.util.function.IntSupplier;

public class Main {
    public static void main(String[] args) {
        IntSupplier nextInt = () -> 42; // поставщик числа 42
        System.out.println(nextInt.getAsInt()); // 42
    }
}</code></pre>

    <h2>LongSupplier</h2>
    <p>
        Интерфейс <code>LongSupplier</code> представляет поставщика, который возвращает значение
        типа <code>long</code>.
    </p>
    <pre><code>import java.util.function.LongSupplier;

public class Main {
    public static void main(String[] args) {
        LongSupplier currentTime = System::currentTimeMillis; // поставщик текущего времени в миллисекундах
        System.out.println(currentTime.getAsLong()); // например, 1696523445123
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональные интерфейсы <code>Supplier&lt;T&gt;</code>, <code>BooleanSupplier</code>,
        <code>DoubleSupplier</code>, <code>IntSupplier</code> и <code>LongSupplier</code> предоставляют удобный
        способ получения значений без необходимости передачи входных данных. Они полезны
        для ленивого вычисления, генерации данных или предоставления констант.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('88c588d0-84be-46cf-b08b-f58fe10164ea', 'Для чего нужны функциональные интерфейсы BinaryOperator<T>,  DoubleBinaryOperator, IntBinaryOperator и LongBinaryOperator?', e'
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональные интерфейсы BinaryOperator, DoubleBinaryOperator, IntBinaryOperator и LongBinaryOperator</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональные интерфейсы BinaryOperator, DoubleBinaryOperator, IntBinaryOperator и LongBinaryOperator</h1>
    <p>
        В Java 8 функциональные интерфейсы <code>BinaryOperator&lt;T&gt;</code>, <code>DoubleBinaryOperator</code>,
        <code>IntBinaryOperator</code> и <code>LongBinaryOperator</code> используются для реализации бинарных
        операций, которые принимают два аргумента и возвращают результат того же типа.
        Эти интерфейсы упрощают выполнение операций над парой значений.
    </p>

    <h2>BinaryOperator&lt;T&gt;</h2>
    <p>
        Интерфейс <code>BinaryOperator&lt;T&gt;</code> представляет бинарный оператор, который принимает
        два объекта типа <code>T</code>, выполняет над ними операцию и возвращает результат того же типа.
    </p>
    <pre><code>import java.util.function.BinaryOperator;

public class Main {
    public static void main(String[] args) {
        BinaryOperator<Integer> sum = (a, b) -> a + b; // операция сложения
        System.out.println(sum.apply(1, 2)); // 3
    }
}</code></pre>

    <h2>DoubleBinaryOperator</h2>
    <p>
        Интерфейс <code>DoubleBinaryOperator</code> представляет бинарный оператор, который принимает
        два значения типа <code>double</code> и возвращает результат типа <code>double</code>.
    </p>
    <pre><code>import java.util.function.DoubleBinaryOperator;

public class Main {
    public static void main(String[] args) {
        DoubleBinaryOperator multiply = (a, b) -> a * b; // операция умножения
        System.out.println(multiply.applyAsDouble(2.5, 3.5)); // 8.75
    }
}</code></pre>

    <h2>IntBinaryOperator</h2>
    <p>
        Интерфейс <code>IntBinaryOperator</code> представляет бинарный оператор, который принимает
        два значения типа <code>int</code> и возвращает результат типа <code>int</code>.
    </p>
    <pre><code>import java.util.function.IntBinaryOperator;

public class Main {
    public static void main(String[] args) {
        IntBinaryOperator subtract = (a, b) -> a - b; // операция вычитания
        System.out.println(subtract.applyAsInt(10, 4)); // 6
    }
}</code></pre>

    <h2>LongBinaryOperator</h2>
    <p>
        Интерфейс <code>LongBinaryOperator</code> представляет бинарный оператор, который принимает
        два значения типа <code>long</code> и возвращает результат типа <code>long</code>.
    </p>
    <pre><code>import java.util.function.LongBinaryOperator;

public class Main {
    public static void main(String[] args) {
        LongBinaryOperator divide = (a, b) -> a / b; // операция деления
        System.out.println(divide.applyAsLong(20L, 5L)); // 4
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональные интерфейсы <code>BinaryOperator&lt;T&gt;</code>, <code>DoubleBinaryOperator</code>,
        <code>IntBinaryOperator</code> и <code>LongBinaryOperator</code> предоставляют удобный способ
        выполнения бинарных операций над парой значений. Они принимают два аргумента и
        возвращают результат того же типа, что делает их полезными для задач, связанных с
        вычислениями и преобразованиями.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('9056faa1-d48d-4ac7-b5aa-df286dc5bacb', 'Для чего нужны функциональные интерфейсы UnaryOperator<T>,  DoubleUnaryOperator, IntUnaryOperator и LongUnaryOperator?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональные интерфейсы UnaryOperator, DoubleUnaryOperator, IntUnaryOperator и LongUnaryOperator</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональные интерфейсы UnaryOperator, DoubleUnaryOperator, IntUnaryOperator и LongUnaryOperator</h1>
    <p>
        В Java 8 функциональные интерфейсы <code>UnaryOperator&lt;T&gt;</code>, <code>DoubleUnaryOperator</code>,
        <code>IntUnaryOperator</code> и <code>LongUnaryOperator</code> используются для реализации унарных
        операций, которые принимают один аргумент и возвращают результат того же типа.
        Эти интерфейсы упрощают выполнение операций над данными.
    </p>

    <h2>UnaryOperator&lt;T&gt;</h2>
    <p>
        Интерфейс <code>UnaryOperator&lt;T&gt;</code> представляет унарный оператор, который принимает
        объект типа <code>T</code>, выполняет над ним операцию и возвращает результат того же типа.
    </p>
    <pre><code>import java.util.function.UnaryOperator;

public class Main {
    public static void main(String[] args) {
        UnaryOperator<Integer> square = x -> x * x; // операция возведения в квадрат
        System.out.println(square.apply(5)); // 25
    }
}</code></pre>

    <h2>DoubleUnaryOperator</h2>
    <p>
        Интерфейс <code>DoubleUnaryOperator</code> представляет унарный оператор, который принимает
        значение типа <code>double</code> и возвращает результат типа <code>double</code>.
    </p>
    <pre><code>import java.util.function.DoubleUnaryOperator;

public class Main {
    public static void main(String[] args) {
        DoubleUnaryOperator squareRoot = x -> Math.sqrt(x); // операция извлечения квадратного корня
        System.out.println(squareRoot.applyAsDouble(16.0)); // 4.0
    }
}</code></pre>

    <h2>IntUnaryOperator</h2>
    <p>
        Интерфейс <code>IntUnaryOperator</code> представляет унарный оператор, который принимает
        значение типа <code>int</code> и возвращает результат типа <code>int</code>.
    </p>
    <pre><code>import java.util.function.IntUnaryOperator;

public class Main {
    public static void main(String[] args) {
        IntUnaryOperator increment = x -> x + 1; // операция увеличения на 1
        System.out.println(increment.applyAsInt(5)); // 6
    }
}</code></pre>

    <h2>LongUnaryOperator</h2>
    <p>
        Интерфейс <code>LongUnaryOperator</code> представляет унарный оператор, который принимает
        значение типа <code>long</code> и возвращает результат типа <code>long</code>.
    </p>
    <pre><code>import java.util.function.LongUnaryOperator;

public class Main {
    public static void main(String[] args) {
        LongUnaryOperator decrement = x -> x - 1; // операция уменьшения на 1
        System.out.println(decrement.applyAsLong(10L)); // 9
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональные интерфейсы <code>UnaryOperator&lt;T&gt;</code>, <code>DoubleUnaryOperator</code>,
        <code>IntUnaryOperator</code> и <code>LongUnaryOperator</code> предоставляют удобный способ
        выполнения унарных операций над данными. Они принимают один аргумент и
        возвращают результат того же типа, что делает их полезными для задач, связанных с
        преобразованием или вычислением значений.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3b4e5b81-99d0-4ece-838f-a8e384dac54e', 'Приведите примеры итераторов, реализующих поведение fail-safe', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Примеры итераторов fail-safe</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Примеры итераторов fail-safe</h1>
    <p>
        Итераторы, реализующие поведение <span class="highlight">fail-safe</span>, не выбрасывают исключений при изменении коллекции во время итерации. Они работают с клоном коллекции или её снимком, что делает их безопасными для использования в многопоточных средах. Вот примеры таких итераторов:
    </p>

    <h2>Примеры fail-safe итераторов</h2>
    <ul>
        <li>
            <span class="highlight">CopyOnWriteArrayList:</span>
            <ul>
                <li>Итератор коллекции <code>CopyOnWriteArrayList</code> работает с копией списка, созданной на момент создания итератора.</li>
                <li>Изменения в оригинальной коллекции не влияют на итератор.</li>
                <li>Пример:
                    <pre>
<code>
CopyOnWriteArrayList&lt;String&gt; list = new CopyOnWriteArrayList&lt;&gt;();
list.add("A");
list.add("B");

Iterator&lt;String&gt; iterator = list.iterator();
list.add("C"); // Модификация коллекции после создания итератора

while (iterator.hasNext()) {
    System.out.println(iterator.next()); // Выведет "A", "B"
}
</code>
                    </pre>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">ConcurrentHashMap:</span>
            <ul>
                <li>Итератор представления <code>keySet</code> коллекции <code>ConcurrentHashMap</code> также является fail-safe.</li>
                <li>Он работает с снимком данных на момент создания итератора.</li>
                <li>Пример:
                    <pre>
<code>
ConcurrentHashMap&lt;String, Integer&gt; map = new ConcurrentHashMap&lt;&gt;();
map.put("A", 1);
map.put("B", 2);

Iterator&lt;String&gt; iterator = map.keySet().iterator();
map.put("C", 3); // Модификация коллекции после создания итератора

while (iterator.hasNext()) {
    System.out.println(iterator.next()); // Выведет "A", "B"
}
</code>
                    </pre>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Итераторы fail-safe, такие как в <code>CopyOnWriteArrayList</code> и <code>ConcurrentHashMap</code>, обеспечивают безопасную работу с коллекциями в многопоточных средах, избегая исключений при изменении коллекции.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('6edd188b-a01b-4490-9ace-943e1efcc396', 'Для чего нужны функциональные интерфейсы Predicate<T>, DoublePredicate,  IntPredicate и LongPredicate?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональные интерфейсы Predicate, DoublePredicate, IntPredicate и LongPredicate</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональные интерфейсы Predicate, DoublePredicate, IntPredicate и LongPredicate</h1>
    <p>
        В Java 8 функциональные интерфейсы <code>Predicate&lt;T&gt;</code>, <code>DoublePredicate</code>,
        <code>IntPredicate</code> и <code>LongPredicate</code> используются для реализации предикатов, которые
        принимают входные данные и возвращают логическое значение (<code>boolean</code>). Эти интерфейсы
        полезны для проверки условий и фильтрации данных.
    </p>

    <h2>Predicate&lt;T&gt;</h2>
    <p>
        Интерфейс <code>Predicate&lt;T&gt;</code> представляет предикат, который принимает объект типа <code>T</code>
        и возвращает <code>true</code> или <code>false</code>. Он также предоставляет методы по умолчанию для
        построения сложных условий.
    </p>
    <pre><code>import java.util.function.Predicate;

public class Main {
    public static void main(String[] args) {
        Predicate<String> isNotEmpty = s -> s.length() > 0; // проверка, что строка не пустая
        System.out.println(isNotEmpty.test("foo")); // true
        System.out.println(isNotEmpty.negate().test("foo")); // false (инвертированный результат)
    }
}</code></pre>

    <h3>Методы по умолчанию</h3>
    <ul>
        <li>
            <span class="highlight">and():</span> Объединяет два предиката с помощью логического И.
            <pre><code>Predicate<String> isNotEmptyAndStartsWithF = isNotEmpty.and(s -> s.startsWith("f"));
System.out.println(isNotEmptyAndStartsWithF.test("foo")); // true</code></pre>
        </li>
        <li>
            <span class="highlight">or():</span> Объединяет два предиката с помощью логического ИЛИ.
            <pre><code>Predicate<String> isNotEmptyOrStartsWithF = isNotEmpty.or(s -> s.startsWith("f"));
System.out.println(isNotEmptyOrStartsWithF.test("bar")); // true</code></pre>
        </li>
        <li>
            <span class="highlight">negate():</span> Инвертирует результат предиката.
            <pre><code>Predicate<String> isEmpty = isNotEmpty.negate();
System.out.println(isEmpty.test("")); // true</code></pre>
        </li>
    </ul>

    <h2>DoublePredicate</h2>
    <p>
        Интерфейс <code>DoublePredicate</code> представляет предикат, который принимает значение типа
        <code>double</code> и возвращает <code>boolean</code>.
    </p>
    <pre><code>import java.util.function.DoublePredicate;

public class Main {
    public static void main(String[] args) {
        DoublePredicate isPositive = d -> d > 0; // проверка, что число положительное
        System.out.println(isPositive.test(3.14)); // true
    }
}</code></pre>

    <h2>IntPredicate</h2>
    <p>
        Интерфейс <code>IntPredicate</code> представляет предикат, который принимает значение типа
        <code>int</code> и возвращает <code>boolean</code>.
    </p>
    <pre><code>import java.util.function.IntPredicate;

public class Main {
    public static void main(String[] args) {
        IntPredicate isEven = i -> i % 2 == 0; // проверка, что число чётное
        System.out.println(isEven.test(10)); // true
    }
}</code></pre>

    <h2>LongPredicate</h2>
    <p>
        Интерфейс <code>LongPredicate</code> представляет предикат, который принимает значение типа
        <code>long</code> и возвращает <code>boolean</code>.
    </p>
    <pre><code>import java.util.function.LongPredicate;

public class Main {
    public static void main(String[] args) {
        LongPredicate isGreaterThanTen = l -> l > 10; // проверка, что число больше 10
        System.out.println(isGreaterThanTen.test(15L)); // true
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональные интерфейсы <code>Predicate&lt;T&gt;</code>, <code>DoublePredicate</code>,
        <code>IntPredicate</code> и <code>LongPredicate</code> предоставляют удобный способ проверки
        условий и фильтрации данных. Они принимают входные данные и возвращают
        логическое значение, что делает их полезными для задач, связанных с проверкой
        условий и принятием решений.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('13962393-f4d0-414c-b726-21449e52be7d', 'Для чего нужен функциональный интерфейс BiConsumer<T, U>?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональный интерфейс BiConsumer</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональный интерфейс BiConsumer</h1>
    <p>
        В Java 8 функциональный интерфейс <code>BiConsumer&lt;T, U&gt;</code> используется для реализации
        операций, которые принимают два аргумента типов <code>T</code> и <code>U</code>, выполняют над ними
        действия и ничего не возвращают. Этот интерфейс полезен для задач, связанных с
        обработкой пар значений, таких как модификация объектов или вывод данных.
    </p>

    <h2>Пример использования BiConsumer</h2>
    <p>
        Следующий код демонстрирует, как использовать <code>BiConsumer</code> для вывода пары значений:
    </p>
    <pre><code>import java.util.function.BiConsumer;

public class Main {
    public static void main(String[] args) {
        BiConsumer<String, Integer> printPair = (name, age) ->
            System.out.println("Имя: " + name + ", Возраст: " + age); // вывод пары значений
        printPair.accept("Иван", 30); // Имя: Иван, Возраст: 30
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">BiConsumer&lt;T, U&gt;:</span> Интерфейс, который принимает два аргумента типов <code>T</code> и <code>U</code>.
        </li>
        <li>
            <span class="highlight">accept(T t, U u):</span> Метод, который выполняет действие над переданными аргументами.
        </li>
    </ul>

    <h2>Пример с модификацией объектов</h2>
    <p>
        Пример использования <code>BiConsumer</code> для модификации объектов:
    </p>
    <pre><code>import java.util.function.BiConsumer;
import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main(String[] args) {
        Map<String, Integer> map = new HashMap<>();
        BiConsumer<String, Integer> addToMap = map::put; // добавление пары в Map

        addToMap.accept("Иван", 30);
        addToMap.accept("Анна", 25);

        System.out.println(map); // {Иван=30, Анна=25}
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональный интерфейс <code>BiConsumer&lt;T, U&gt;</code> предоставляет удобный способ
        выполнения операций над двумя аргументами без возврата результата. Он полезен для
        задач, связанных с обработкой пар значений, таких как вывод данных, модификация
        объектов или вызов других методов.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('a5d635a9-18f3-4eda-a63c-7cd665eeb267', 'Для чего нужен функциональный интерфейс BiFunction<T, U, R>?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональный интерфейс BiFunction</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональный интерфейс BiFunction</h1>
    <p>
        В Java 8 функциональный интерфейс <code>BiFunction&lt;T, U, R&gt;</code> используется для реализации
        операций, которые принимают два аргумента типов <code>T</code> и <code>U</code> и возвращают результат
        типа <code>R</code>. Этот интерфейс полезен для задач, связанных с преобразованием или
        вычислением значений на основе двух входных данных.
    </p>

    <h2>Пример использования BiFunction</h2>
    <p>
        Следующий код демонстрирует, как использовать <code>BiFunction</code> для сложения двух чисел:
    </p>
    <pre><code>import java.util.function.BiFunction;

public class Main {
    public static void main(String[] args) {
        BiFunction<Integer, Integer, Integer> sum = (a, b) -> a + b; // сложение двух чисел
        System.out.println(sum.apply(5, 3)); // 8
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">BiFunction&lt;T, U, R&gt;:</span> Интерфейс, который принимает два аргумента типов <code>T</code> и <code>U</code> и возвращает результат типа <code>R</code>.
        </li>
        <li>
            <span class="highlight">apply(T t, U u):</span> Метод, который выполняет операцию над переданными аргументами и возвращает результат.
        </li>
    </ul>

    <h2>Пример с преобразованием строк</h2>
    <p>
        Пример использования <code>BiFunction</code> для объединения строк:
    </p>
    <pre><code>import java.util.function.BiFunction;

public class Main {
    public static void main(String[] args) {
        BiFunction<String, String, String> concat = (s1, s2) -> s1 + " " + s2; // объединение строк
        System.out.println(concat.apply("Hello", "world")); // Hello world
    }
}</code></pre>

    <h2>Пример с вычислением площади прямоугольника</h2>
    <p>
        Пример использования <code>BiFunction</code> для вычисления площади прямоугольника:
    </p>
    <pre><code>import java.util.function.BiFunction;

public class Main {
    public static void main(String[] args) {
        BiFunction<Double, Double, Double> area = (length, width) -> length * width; // площадь прямоугольника
        System.out.println(area.apply(5.0, 3.0)); // 15.0
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональный интерфейс <code>BiFunction&lt;T, U, R&gt;</code> предоставляет удобный способ
        выполнения операций над двумя аргументами и возврата результата. Он полезен для
        задач, связанных с преобразованием или вычислением значений на основе двух входных
        данных, таких как математические операции, объединение строк или работа с объектами.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('27ff94c7-7edb-4ade-9f16-69098c020d9b', 'Для чего нужен функциональный интерфейс BiPredicate<T, U>?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Функциональный интерфейс BiPredicate</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Функциональный интерфейс BiPredicate</h1>
    <p>
        В Java 8 функциональный интерфейс <code>BiPredicate&lt;T, U&gt;</code> используется для реализации
        операций, которые принимают два аргумента типов <code>T</code> и <code>U</code> и возвращают
        логическое значение (<code>boolean</code>). Этот интерфейс полезен для задач, связанных с
        проверкой условий на основе двух входных данных.
    </p>

    <h2>Пример использования BiPredicate</h2>
    <p>
        Следующий код демонстрирует, как использовать <code>BiPredicate</code> для проверки, что
        первая строка длиннее второй:
    </p>
    <pre><code>import java.util.function.BiPredicate;

public class Main {
    public static void main(String[] args) {
        BiPredicate<String, String> isFirstLonger = (s1, s2) -> s1.length() > s2.length(); // проверка длины строк
        System.out.println(isFirstLonger.test("Hello", "world")); // true
    }
}</code></pre>

    <h2>Как это работает?</h2>
    <ul>
        <li>
            <span class="highlight">BiPredicate&lt;T, U&gt;:</span> Интерфейс, который принимает два аргумента типов <code>T</code> и <code>U</code> и возвращает <code>boolean</code>.
        </li>
        <li>
            <span class="highlight">test(T t, U u):</span> Метод, который проверяет условие на основе переданных аргументов и возвращает результат.
        </li>
    </ul>

    <h2>Пример с проверкой равенства</h2>
    <p>
        Пример использования <code>BiPredicate</code> для проверки равенства двух строк:
    </p>
    <pre><code>import java.util.function.BiPredicate;

public class Main {
    public static void main(String[] args) {
        BiPredicate<String, String> areEqual = (s1, s2) -> s1.equals(s2); // проверка равенства строк
        System.out.println(areEqual.test("Hello", "Hello")); // true
    }
}</code></pre>

    <h2>Пример с проверкой чисел</h2>
    <p>
        Пример использования <code>BiPredicate</code> для проверки, что первое число больше второго:
    </p>
    <pre><code>import java.util.function.BiPredicate;

public class Main {
    public static void main(String[] args) {
        BiPredicate<Integer, Integer> isFirstGreater = (a, b) -> a > b; // проверка, что a > b
        System.out.println(isFirstGreater.test(10, 5)); // true
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Функциональный интерфейс <code>BiPredicate&lt;T, U&gt;</code> предоставляет удобный способ
        проверки условий на основе двух аргументов. Он полезен для задач, связанных с
        фильтрацией данных, проверкой равенства или сравнением значений.
    </p>
</body>
</html>', 'JAVA_CORE', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('59fe2f3b-c3db-454b-8047-113ebcfd85b4', 'Stack считается «устаревшим». Чем его рекомендуют заменять? Почему?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему Stack считается устаревшим</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Почему Stack считается устаревшим</h1>
    <p>
        Класс <code>Stack</code> был добавлен в Java 1.0 как реализация стека LIFO (last-in-first-out). Он является расширением коллекции <code>Vector</code>, что вносит определённые ограничения и проблемы в его использование. В частности, <code>Stack</code> наследует методы из <code>Vector</code>, которые нарушают строгую логику стека, например, возможность доступа к элементам по индексу.
    </p>

    <h2>Проблемы класса Stack</h2>
    <ul>
        <li>
            <span class="highlight">Наследование от Vector:</span>
            <ul>
                <li><code>Stack</code> расширяет класс <code>Vector</code>, что позволяет использовать методы, не соответствующие концепции стека, такие как доступ к элементам по индексу (<code>get()</code>, <code>remove()</code> и другие).</li>
                <li>Это нарушает принцип инкапсуляции и делает использование <code>Stack</code> менее безопасным и предсказуемым.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Синхронизация:</span>
            <ul>
                <li><code>Stack</code> является частично синхронизированной коллекцией (кроме метода <code>push()</code>), что может негативно сказываться на производительности в однопоточных сценариях.</li>
                <li>Синхронизация в <code>Stack</code> избыточна для большинства случаев использования, так как современные приложения часто используют другие механизмы управления потоками.</li>
            </ul>
        </li>
    </ul>

    <h2>Рекомендуемая замена</h2>
    <p>
        Начиная с Java 1.6, рекомендуется использовать реализации интерфейса <code>Deque</code> (например, <code>ArrayDeque</code>) для работы со стеком. <code>Deque</code> предоставляет более гибкую и современную альтернативу.
    </p>
    <ul>
        <li>
            <span class="highlight">Преимущества Deque:</span>
            <ul>
                <li><code>Deque</code> поддерживает операции как стека (LIFO), так и очереди (FIFO), что делает его более универсальным.</li>
                <li>Реализации <code>Deque</code>, такие как <code>ArrayDeque</code>, не являются синхронизированными, что повышает производительность в однопоточных приложениях.</li>
                <li><code>ArrayDeque</code> обеспечивает более предсказуемую и эффективную работу со стеком, чем <code>Stack</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование <code>Stack</code> в новых проектах считается устаревшим из-за его ограничений и проблем с производительностью. Вместо него рекомендуется использовать <code>ArrayDeque</code> или другие реализации интерфейса <code>Deque</code>, которые лучше соответствуют современным требованиям.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('1aa482db-cf4b-41ee-b2ff-b9789f8451c5', 'Почему Map не в Collection', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Map не входит в Collection</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Map не входит в Collection</h1>
    <p>
        Интерфейс <code>Map</code> не является частью интерфейса <code>Collection</code>, так как он представляет собой коллекцию пар «ключ-значение», а не просто набор элементов. В Java интерфейс <code>Map</code> реализован несколькими классами, каждый из которых имеет свои особенности и предназначение.
    </p>

    <h2>Реализации интерфейса Map</h2>
    <ul>
        <li>
            <span class="highlight">Hashtable:</span>
            <ul>
                <li>Хеш-таблица, методы которой синхронизированы.</li>
                <li>Не позволяет использовать <code>null</code> в качестве значения или ключа.</li>
                <li>Не является упорядоченной.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">HashMap:</span>
            <ul>
                <li>Хеш-таблица, которая позволяет использовать <code>null</code> в качестве значения или ключа.</li>
                <li>Не является упорядоченной.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">LinkedHashMap:</span>
            <ul>
                <li>Упорядоченная реализация хеш-таблицы.</li>
                <li>Сохраняет порядок добавления элементов или порядок доступа к ним (в зависимости от настроек).</li>
            </ul>
        </li>
        <li>
            <span class="highlight">TreeMap:</span>
            <ul>
                <li>Реализация, основанная на красно-черных деревьях.</li>
                <li>Является упорядоченной и предоставляет возможность управлять порядком элементов с помощью объекта <code>Comparator</code> или использовать «natural ordering».</li>
            </ul>
        </li>
        <li>
            <span class="highlight">WeakHashMap:</span>
            <ul>
                <li>Реализация хеш-таблицы, которая использует weak references для ключей.</li>
                <li>Сборщик мусора автоматически удалит элемент из коллекции при следующей сборке мусора, если на ключ этого элемента нет жёстких ссылок.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Интерфейс <code>Map</code> предназначен для работы с парами «ключ-значение», что делает его уникальным и отличным от интерфейса <code>Collection</code>. Выбор конкретной реализации <code>Map</code> зависит от требований к порядку элементов, производительности и необходимости использования <code>null</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('3753c9d6-2b5c-4781-af63-fa247d59aa5c', 'Какая разница между fail-fast и fail-safe?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Разница между fail-fast и fail-safe</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Разница между fail-fast и fail-safe</h1>
    <p>
        В Java существуют два подхода к обработке изменений коллекции во время итерации: <span class="highlight">fail-fast</span> и <span class="highlight">fail-safe</span>. Они отличаются поведением при модификации коллекции.
    </p>

    <h2>Fail-fast поведение</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Итераторы, работающие по принципу fail-fast, выбрасывают исключение <code>ConcurrentModificationException</code>, если коллекция изменяется после создания итератора.</li>
                <li>Этот подход используется в коллекциях, таких как <code>ArrayList</code>, <code>HashMap</code> и других.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Реализация:</span>
            <ul>
                <li>Коллекция поддерживает счётчик модификаций (<code>modification count</code>).</li>
                <li>Итератор сравнивает сохранённое значение счётчика с текущим. Если значения не совпадают, выбрасывается исключение.</li>
            </ul>
        </li>
    </ul>

    <h2>Fail-safe поведение</h2>
    <ul>
        <li>
            <span class="highlight">Описание:</span>
            <ul>
                <li>Итераторы, работающие по принципу fail-safe, не выбрасывают исключений при изменении коллекции.</li>
                <li>Они работают с клоном коллекции или её снимком (snapshot), что позволяет избежать ошибок, связанных с модификацией.</li>
                <li>Этот подход используется в коллекциях, таких как <code>CopyOnWriteArrayList</code> и <code>ConcurrentHashMap</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Реализация:</span>
            <ul>
                <li>Итератор создаёт копию коллекции или работает с её снимком на момент создания итератора.</li>
                <li>Изменения в оригинальной коллекции не влияют на итератор.</li>
            </ul>
        </li>
    </ul>

    <h2>Сравнение</h2>
    <ul>
        <li>
            <span class="highlight">Fail-fast:</span>
            <ul>
                <li>Быстрое обнаружение ошибок.</li>
                <li>Подходит для однопоточных приложений.</li>
                <li>Может выбрасывать исключения при изменении коллекции.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Fail-safe:</span>
            <ul>
                <li>Безопасная работа с коллекцией в многопоточных приложениях.</li>
                <li>Не выбрасывает исключений при изменении коллекции.</li>
                <li>Может использовать больше памяти из-за создания копии коллекции.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между fail-fast и fail-safe зависит от требований к приложению. Fail-fast подходит для однопоточных сценариев, а fail-safe – для многопоточных, где важна безопасность и стабильность.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('bde5850b-4e49-488f-9a7d-6a4da7c0d672', 'Как перебрать элементы LinkedList в обратном порядке, не используя  медленный get(index)?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Перебор элементов LinkedList в обратном порядке</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Перебор элементов LinkedList в обратном порядке</h1>
    <p>
        Для перебора элементов <code>LinkedList</code> в обратном порядке можно использовать специальный итератор, предоставляемый классом. Это позволяет избежать медленного доступа по индексу с помощью метода <code>get(index)</code>.
    </p>

    <h2>Использование обратного итератора</h2>
    <ul>
        <li>
            <span class="highlight">Метод descendingIterator():</span>
            <ul>
                <li>Метод <code>descendingIterator()</code> возвращает итератор, который проходит элементы списка в обратном порядке.</li>
                <li>Этот итератор работает за константное время <code>O(1)</code> для каждого элемента, что делает его более эффективным, чем использование <code>get(index)</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример использования</h2>
    <pre>
<code>
LinkedList&lt;String&gt; list = new LinkedList&lt;&gt;();
list.add("A");
list.add("B");
list.add("C");

Iterator&lt;String&gt; descendingIterator = list.descendingIterator();
while (descendingIterator.hasNext()) {
    String element = descendingIterator.next();
    System.out.println(element);
}
</code>
    </pre>
    <p>
        В результате выполнения этого кода элементы будут выведены в порядке: <code>C</code>, <code>B</code>, <code>A</code>.
    </p>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Использование <code>descendingIterator()</code> позволяет эффективно перебирать элементы <code>LinkedList</code> в обратном порядке, избегая медленного доступа по индексу.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cc8566c1-f244-4b45-814c-27c4e16c869f', 'Какое худшее время работы метода contains() для элемента, который есть  в ArrayList?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Время работы метода contains() в ArrayList</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Время работы метода contains() в ArrayList</h1>
    <p>
        Метод <code>contains()</code> в <code>ArrayList</code> используется для проверки наличия элемента в списке. В худшем случае время выполнения этого метода зависит от количества элементов в списке.
    </p>

    <h2>Худшее время работы метода contains()</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span>
            <ul>
                <li>В худшем случае время работы метода <code>contains()</code> для элемента, который есть в <code>ArrayList</code>, составляет <code>O(N)</code>.</li>
                <li>Это означает, что время поиска элемента линейно пропорционально количеству элементов в списке.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Причина:</span>
            <ul>
                <li>Хотя <code>ArrayList</code> предоставляет быстрый доступ к элементам по индексу (<code>O(1)</code>), метод <code>contains()</code> должен проверить каждый элемент списка, чтобы найти искомый.</li>
                <li>В худшем случае, если элемент находится в конце списка или отсутствует, метод выполнит полный перебор всех элементов.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Несмотря на то, что <code>ArrayList</code> обеспечивает быстрый доступ по индексу, метод <code>contains()</code> работает за линейное время <code>O(N)</code>, так как требует последовательного перебора элементов для поиска.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('881fa029-950c-4fc1-8921-52d455439db2', 'Что такое коллекция?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Коллекции в Java</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Коллекции в Java</h1>
    <p>
        <span class="highlight">Коллекция</span> — это структура данных, которая представляет собой набор объектов.
        Эти объекты могут быть числами, строками, объектами пользовательских классов и
        другими типами данных. Коллекции используются для хранения, обработки и
        управления группами объектов.
    </p>

    <h2>Основные характеристики коллекций</h2>
    <ul>
        <li>
            <span class="highlight">Хранение данных:</span> Коллекции позволяют хранить множество объектов в одной
            структуре.
        </li>
        <li>
            <span class="highlight">Управление данными:</span> Коллекции предоставляют методы для добавления, удаления,
            поиска и сортировки элементов.
        </li>
        <li>
            <span class="highlight">Гибкость:</span> Коллекции могут содержать объекты разных типов, включая примитивы
            (через классы-обёртки) и пользовательские классы.
        </li>
    </ul>

    <h2>Примеры коллекций</h2>
    <p>
        В Java существует множество типов коллекций, каждый из которых предназначен для
        определённых задач:
    </p>
    <ul>
        <li>
            <span class="highlight">List (список):</span> Упорядоченная коллекция, которая позволяет хранить дубликаты.
            Примеры: <code>ArrayList</code>, <code>LinkedList</code>.
        </li>
        <li>
            <span class="highlight">Set (множество):</span> Коллекция, которая не позволяет хранить дубликаты.
            Примеры: <code>HashSet</code>, <code>TreeSet</code>.
        </li>
        <li>
            <span class="highlight">Map (словарь):</span> Коллекция, которая хранит пары "ключ-значение".
            Примеры: <code>HashMap</code>, <code>TreeMap</code>.
        </li>
        <li>
            <span class="highlight">Queue (очередь):</span> Коллекция, которая работает по принципу FIFO (первый вошёл,
            первый вышел). Примеры: <code>LinkedList</code>, <code>PriorityQueue</code>.
        </li>
    </ul>

    <h2>Пример использования коллекции</h2>
    <p>
        Пример использования коллекции <code>ArrayList</code> для хранения строк:
    </p>
    <pre><code>import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<String> names = new ArrayList<>(); // создание списка
        names.add("Иван"); // добавление элемента
        names.add("Анна");
        names.add("Петр");

        System.out.println(names); // [Иван, Анна, Петр]
    }
}</code></pre>

    <h2>Итог</h2>
    <p>
        Коллекции в Java — это мощный инструмент для работы с наборами данных. Они
        предоставляют удобные методы для хранения, обработки и управления объектами.
        Выбор конкретного типа коллекции зависит от задачи, которую необходимо решить.
    </p>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cdce6f9d-4f10-4878-a0a8-938252a278d9', 'Для ArrayList или для LinkedList операция добавления элемента в середину  (list.add(list.size()/2, newElement)) медленнее?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сравнение операции добавления в середину ArrayList и LinkedList</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Сравнение операции добавления в середину ArrayList и LinkedList</h1>
    <p>
        Операция добавления элемента в середину списка (<code>list.add(list.size()/2, newElement)</code>) имеет разную сложность для <code>ArrayList</code> и <code>LinkedList</code>. Рассмотрим, как она выполняется в каждой из этих структур.
    </p>

    <h2>ArrayList</h2>
    <ul>
        <li>
            <span class="highlight">Проверка вместимости:</span>
            <ul>
                <li>Если массив заполнен, происходит увеличение его размера и копирование всех элементов в новый массив. Время выполнения: <code>O(N)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Сдвиг элементов:</span>
            <ul>
                <li>Все элементы, расположенные правее позиции вставки, сдвигаются на одну позицию вправо. Время выполнения: <code>O(N)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Вставка элемента:</span>
            <ul>
                <li>Непосредственная вставка элемента в указанную позицию. Время выполнения: <code>O(1)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Итоговая сложность:</span>
            <ul>
                <li>В худшем случае: <code>O(N)</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>LinkedList</h2>
    <ul>
        <li>
            <span class="highlight">Поиск позиции вставки:</span>
            <ul>
                <li>Для нахождения позиции вставки требуется перебор элементов до середины списка. Время выполнения: <code>O(N)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Вставка элемента:</span>
            <ul>
                <li>Непосредственная вставка элемента в указанную позицию. Время выполнения: <code>O(1)</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Итоговая сложность:</span>
            <ul>
                <li>В худшем случае: <code>O(N)</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Сравнение</h2>
    <ul>
        <li>
            <span class="highlight">В худшем случае:</span>
            <ul>
                <li>Для <code>ArrayList</code> и <code>LinkedList</code> сложность операции добавления в середину списка составляет <code>O(N)</code>.</li>
                <li>Однако <code>LinkedList</code> может быть эффективнее, так как не требует сдвига элементов массива.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">На практике:</span>
            <ul>
                <li>Для <code>ArrayList</code> сдвиг элементов выполняется с помощью быстрого системного метода <code>System.arraycopy()</code>, что делает операцию добавления в середину списка достаточно быстрой.</li>
                <li>Для <code>LinkedList</code> поиск позиции вставки может быть медленнее из-за необходимости перебора элементов.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> В худшем случае вставка в середину списка эффективнее для <code>LinkedList</code>, но на практике <code>ArrayList</code> может быть быстрее благодаря оптимизированным операциям копирования.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('4539916a-adf7-426b-a468-a2cfbe8229f8', 'Почему Map – это не Collection, в то время как List и Set являются Collection?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему Map – это не Collection</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Почему Map – это не Collection</h1>
    <p>
        Интерфейс <code>Collection</code> представляет собой совокупность отдельных элементов, которые можно добавлять, удалять и обрабатывать. В то же время интерфейс <code>Map</code> представляет собой совокупность пар «ключ-значение», где каждый элемент состоит из двух частей: ключа и связанного с ним значения.
    </p>

    <h2>Основные различия</h2>
    <ul>
        <li>
            <span class="highlight">Структура данных:</span>
            <ul>
                <li><code>Collection</code> (включая <code>List</code> и <code>Set</code>) работает с отдельными элементами. Например, в <code>List</code> элементы хранятся в виде последовательности, а в <code>Set</code> – в виде уникальных значений.</li>
                <li><code>Map</code> работает с парами «ключ-значение». Каждый элемент в <code>Map</code> состоит из ключа, который уникален, и связанного с ним значения.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Методы и операции:</span>
            <ul>
                <li>Интерфейс <code>Collection</code> предоставляет методы для работы с отдельными элементами, такие как <code>add()</code>, <code>remove()</code>, <code>contains()</code> и другие.</li>
                <li>Интерфейс <code>Map</code> предоставляет методы для работы с парами, такие как <code>put()</code> (добавление пары), <code>get()</code> (получение значения по ключу), <code>containsKey()</code> (проверка наличия ключа) и другие.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Назначение:</span>
            <ul>
                <li><code>Collection</code> используется для хранения и управления набором элементов, где каждый элемент является самостоятельной единицей.</li>
                <li><code>Map</code> используется для хранения и управления ассоциативными данными, где доступ к значениям осуществляется по уникальным ключам.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Хотя <code>Map</code> и <code>Collection</code> являются частью Java Collection Framework, они решают разные задачи. <code>Collection</code> работает с отдельными элементами, а <code>Map</code> – с парами «ключ-значение». Это разделение позволяет более точно моделировать данные и выбирать подходящую структуру для конкретной задачи.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('73c673aa-f8ec-4f29-baa5-9016fc4cc828', 'Какое худшее время работы метода add() для LinkedList?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Время работы метода add() в LinkedList</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Время работы метода add() в LinkedList</h1>
    <p>
        Метод <code>add()</code> в <code>LinkedList</code> используется для добавления элементов в список. Время выполнения этого метода зависит от места вставки элемента.
    </p>

    <h2>Худшее время работы метода add()</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span>
            <ul>
                <li>В худшем случае время работы метода <code>add()</code> для <code>LinkedList</code> составляет <code>O(N)</code>.</li>
                <li>Это происходит, когда элемент добавляется в произвольное место списка, не в начало или конец.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Причина:</span>
            <ul>
                <li><code>LinkedList</code> – это двусвязный список, где каждый элемент хранит ссылки на предыдущий и следующий узлы.</li>
                <li>Добавление в начало или конец списка выполняется за константное время <code>O(1)</code>, так как не требуется перебор элементов.</li>
                <li>Однако вставка в произвольное место требует перебора элементов до нужной позиции, что занимает линейное время <code>O(N)</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Вставка в начало или конец <code>LinkedList</code> выполняется за <code>O(1)</code>, но вставка в произвольное место требует <code>O(N)</code> времени из-за необходимости перебора элементов.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0d896dc7-25bd-43b6-abe9-1565e74bc7a2', 'Сколько необходимо дополнительной памяти при вызове ArrayList.add()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Дополнительная память при вызове ArrayList.add()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Дополнительная память при вызове ArrayList.add()</h1>
    <p>
        При вызове метода <code>add()</code> в <code>ArrayList</code> необходимо учитывать, сколько дополнительной памяти может потребоваться для добавления нового элемента. Это зависит от текущей ёмкости массива и необходимости его расширения.
    </p>

    <h2>Когда дополнительная память не требуется?</h2>
    <ul>
        <li>
            <span class="highlight">Достаточная ёмкость:</span>
            <ul>
                <li>Если в массиве достаточно места для размещения нового элемента, дополнительная память не требуется.</li>
                <li>В этом случае добавление элемента выполняется за константное время <code>O(1)</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Когда требуется дополнительная память?</h2>
    <ul>
        <li>
            <span class="highlight">Расширение массива:</span>
            <ul>
                <li>Если массив заполнен, происходит создание нового массива с увеличенным размером.</li>
                <li>Начиная с JDK 1.7, новый массив создаётся размером в 1,5 раза больше существующего.</li>
                <li>В более ранних версиях JDK размер увеличения может отличаться.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Копирование элементов:</span>
            <ul>
                <li>Все элементы из старого массива копируются в новый массив.</li>
                <li>Это требует дополнительной памяти и времени, пропорционального количеству элементов <code>O(N)</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Дополнительная память при вызове <code>ArrayList.add()</code> требуется только в случае расширения массива. Если в массиве достаточно места, добавление элемента происходит без выделения дополнительной памяти.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('25c801f5-7a07-4b64-a17e-973a58fc5342', 'Чем отличается ArrayList от LinkedList? В каких случаях лучше  использовать первый, а в каких второй?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ArrayList vs. LinkedList</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>ArrayList vs. LinkedList</h1>
    <p>
        <code>ArrayList</code> и <code>LinkedList</code> – это две популярные реализации интерфейса <code>List</code> в Java. Они имеют разные внутренние структуры данных и, как следствие, различаются по производительности и использованию памяти. Выбор между ними зависит от конкретных задач и требований к операциям.
    </p>

    <h2>ArrayList</h2>
    <ul>
        <li>
            <span class="highlight">Реализация:</span>
            <ul>
                <li><code>ArrayList</code> – это список, реализованный на основе динамического массива.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Доступ к произвольному элементу по индексу за константное время <code>O(1)</code>.</li>
                <li>Вставка в конец списка в среднем выполняется за константное время <code>O(1)</code>.</li>
                <li>Минимум накладных расходов при хранении данных.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Доступ к элементам по значению занимает линейное время <code>O(N)</code>.</li>
                <li>Удаление или вставка элемента в произвольное место списка занимает значительное время, так как все элементы, находящиеся «правее», смещаются на одну ячейку (время <code>O(N)</code>).</li>
            </ul>
        </li>
    </ul>

    <h2>LinkedList</h2>
    <ul>
        <li>
            <span class="highlight">Реализация:</span>
            <ul>
                <li><code>LinkedList</code> – это классический двусвязный список, где каждый элемент хранит ссылки на предыдущий и следующий элементы.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Добавление и удаление элементов в начало или конец списка выполняется за константное время <code>O(1)</code>.</li>
                <li>Подходит для частых операций вставки и удаления в произвольных местах списка.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Недостатки:</span>
            <ul>
                <li>Доступ к элементу по индексу или значению занимает линейное время <code>O(N)</code>.</li>
                <li>Требует больше памяти для хранения элементов, так как каждый элемент хранит ссылки на предыдущий и следующий узлы.</li>
            </ul>
        </li>
    </ul>

    <h2>Когда использовать ArrayList, а когда LinkedList?</h2>
    <ul>
        <li>
            <span class="highlight">ArrayList:</span>
            <ul>
                <li>Когда требуется частый доступ к элементам по индексу.</li>
                <li>Когда операции вставки и удаления происходят преимущественно в конце списка.</li>
                <li>Когда важна экономия памяти.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">LinkedList:</span>
            <ul>
                <li>Когда требуется частое добавление и удаление элементов в начале или середине списка.</li>
                <li>Когда важна гарантированная скорость вставки и удаления элементов.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> В абсолютных величинах <code>LinkedList</code> обычно проигрывает <code>ArrayList</code> по потребляемой памяти и скорости выполнения операций. Однако <code>LinkedList</code> предпочтителен в случаях, когда требуется частое изменение структуры списка.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('0a9cd8de-cd5f-45ab-9cc2-037edc220bb2', 'Как происходит удаление элементов из ArrayList? Как меняется в этом  случае размер ArrayList?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Удаление элементов из ArrayList</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Удаление элементов из ArrayList</h1>
    <p>
        При удалении элементов из <code>ArrayList</code> происходят определённые изменения в структуре списка. В частности, меняется порядок элементов, но реальный размер массива (его ёмкость, <code>capacity</code>) остаётся неизменным.
    </p>

    <h2>Как происходит удаление элементов?</h2>
    <ul>
        <li>
            <span class="highlight">Смещение элементов:</span>
            <ul>
                <li>При удалении произвольного элемента из списка все элементы, находящиеся «правее» удаляемого, смещаются на одну ячейку влево.</li>
                <li>Это необходимо для заполнения пустого пространства, образовавшегося после удаления элемента.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Изменение размера списка:</span>
            <ul>
                <li>Логический размер списка (количество элементов, <code>size</code>) уменьшается на единицу.</li>
                <li>Реальный размер массива (ёмкость, <code>capacity</code>) остаётся неизменным.</li>
            </ul>
        </li>
    </ul>

    <h2>Механизм сжатия массива</h2>
    <ul>
        <li>
            <span class="highlight">Отсутствие автоматического сжатия:</span>
            <ul>
                <li>В <code>ArrayList</code> существует механизм автоматического расширения массива при добавлении элементов, но автоматического сжатия при удалении элементов нет.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Явное сжатие:</span>
            <ul>
                <li>Для уменьшения ёмкости массива до текущего количества элементов можно использовать метод <code>trimToSize()</code>.</li>
                <li>Этот метод создаёт новый массив меньшего размера и копирует в него все элементы текущего списка.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Удаление элементов из <code>ArrayList</code> приводит к смещению оставшихся элементов и уменьшению логического размера списка, но не изменяет реальный размер массива. Для освобождения неиспользуемой памяти можно использовать метод <code>trimToSize()</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('355521ca-984a-4202-8202-f073ecb2e985', 'Какое худшее время работы метода contains() для элемента, который есть  в LinkedList?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Время работы метода contains() в LinkedList</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Время работы метода contains() в LinkedList</h1>
    <p>
        Метод <code>contains()</code> в <code>LinkedList</code> используется для проверки наличия элемента в списке. В худшем случае время выполнения этого метода зависит от количества элементов в списке.
    </p>

    <h2>Худшее время работы метода contains()</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span>
            <ul>
                <li>В худшем случае время работы метода <code>contains()</code> для элемента, который есть в <code>LinkedList</code>, составляет <code>O(N)</code>.</li>
                <li>Это означает, что время поиска элемента линейно пропорционально количеству элементов в списке.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Причина:</span>
            <ul>
                <li><code>LinkedList</code> – это двусвязный список, который не поддерживает прямой доступ к элементам по индексу.</li>
                <li>Для поиска элемента метод <code>contains()</code> проходит по всем элементам списка, начиная с первого, пока не найдет искомый элемент.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Если элемент находится в конце списка или отсутствует в нём, метод <code>contains()</code> выполнит максимальное количество итераций, что и определяет худшее время работы <code>O(N)</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('8ef78de7-ca77-4d33-939d-b824a20f6c43', 'Сколько выделяется дополнительно памяти при вызове LinkedList.add()?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Дополнительная память при вызове LinkedList.add()</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Дополнительная память при вызове LinkedList.add()</h1>
    <p>
        При вызове метода <code>add()</code> в <code>LinkedList</code> выделяется дополнительная память для создания нового узла (Node), который будет хранить добавляемый элемент.
    </p>

    <h2>Сколько памяти выделяется?</h2>
    <ul>
        <li>
            <span class="highlight">Создание нового узла:</span>
            <ul>
                <li>Каждый раз при добавлении элемента в <code>LinkedList</code> создаётся новый экземпляр вложенного класса <code>Node</code>.</li>
                <li>Узел (<code>Node</code>) содержит:
                    <ul>
                        <li>Добавляемый элемент.</li>
                        <li>Ссылку на предыдущий узел.</li>
                        <li>Ссылку на следующий узел.</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Объём памяти:</span>
            <ul>
                <li>Память выделяется только для одного нового узла, независимо от текущего размера списка.</li>
                <li>Это делает добавление элементов в <code>LinkedList</code> эффективным по памяти, так как не требуется выделение большого блока памяти, как в случае с <code>ArrayList</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> При вызове <code>LinkedList.add()</code> выделяется память только для одного нового узла (<code>Node</code>), что делает эту операцию эффективной и предсказуемой по объёму используемой памяти.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('cf27356a-bcde-4e14-b154-c2c58dc0e31d', 'Почему LinkedList реализует и List, и Deque?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Почему LinkedList реализует List и Deque</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Почему LinkedList реализует List и Deque</h1>
    <p>
        Класс <code>LinkedList</code> в Java реализует два интерфейса: <code>List</code> и <code>Deque</code>. Это связано с тем, что <code>LinkedList</code> предоставляет функциональность, которая соответствует требованиям обоих интерфейсов.
    </p>

    <h2>Реализация интерфейса List</h2>
    <ul>
        <li>
            <span class="highlight">Упорядоченная коллекция:</span>
            <ul>
                <li><code>LinkedList</code> поддерживает хранение элементов в определённом порядке, что соответствует требованиям интерфейса <code>List</code>.</li>
                <li>Элементы могут быть доступны по индексу, хотя это требует линейного времени <code>O(N)</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Реализация интерфейса Deque</h2>
    <ul>
        <li>
            <span class="highlight">Добавление и удаление элементов:</span>
            <ul>
                <li><code>LinkedList</code> позволяет добавлять и удалять элементы как в начало, так и в конец списка за константное время <code>O(1)</code>.</li>
                <li>Это соответствует поведению интерфейса <code>Deque</code>, который представляет собой двустороннюю очередь.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Гибкость:</span>
            <ul>
                <li>Реализация <code>Deque</code> делает <code>LinkedList</code> универсальной структурой данных, которая может использоваться как стек, очередь или двусторонняя очередь.</li>
            </ul>
        </li>
    </ul>

    <h2>Преимущества реализации обоих интерфейсов</h2>
    <ul>
        <li>
            <span class="highlight">Универсальность:</span>
            <ul>
                <li><code>LinkedList</code> может использоваться как для задач, требующих работы с упорядоченными списками, так и для задач, связанных с очередями и стеками.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Эффективность:</span>
            <ul>
                <li>Добавление и удаление элементов в начало и конец списка выполняется за константное время, что делает <code>LinkedList</code> эффективным для реализации <code>Deque</code>.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>LinkedList</code> реализует интерфейсы <code>List</code> и <code>Deque</code>, так как его структура данных (двусвязный список) позволяет эффективно поддерживать операции как для списков, так и для двусторонних очередей.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('672b6124-342e-479d-be00-e20435a1c4c3', ' В реализации класса ArrayList есть следующие поля: Object[] elementData, int  size. Объясните, зачем хранить отдельно size, если всегда можно взять  elementData.length?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Зачем хранить size в ArrayList</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Зачем хранить size в ArrayList</h1>
    <p>
        В реализации класса <code>ArrayList</code> используются два ключевых поля: <code>Object[] elementData</code> и <code>int size</code>. Эти поля выполняют разные функции, и хранение <code>size</code> отдельно от <code>elementData.length</code> необходимо для корректной работы списка.
    </p>

    <h2>Разница между size и elementData.length</h2>
    <ul>
        <li>
            <span class="highlight">elementData.length:</span>
            <ul>
                <li>Это вместимость (<code>capacity</code>) массива, то есть общее количество элементов, которое может храниться в массиве без его расширения.</li>
                <li>Вместимость может быть больше, чем фактическое количество элементов в списке.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">size:</span>
            <ul>
                <li>Это реальное количество элементов, хранящихся в <code>ArrayList</code>.</li>
                <li>Оно всегда меньше или равно <code>elementData.length</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Зачем хранить size отдельно?</h2>
    <ul>
        <li>
            <span class="highlight">Эффективность:</span>
            <ul>
                <li>Массив <code>elementData</code> может быть больше, чем необходимо, чтобы избежать частого расширения массива при добавлении элементов.</li>
                <li>Хранение <code>size</code> позволяет быстро определить, сколько элементов фактически содержится в списке, без необходимости проверки всего массива.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Гибкость:</span>
            <ul>
                <li>При удалении элементов из списка <code>size</code> уменьшается, но <code>elementData.length</code> остаётся неизменным.</li>
                <li>Это позволяет эффективно управлять памятью и избежать лишних операций копирования массива.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Автоматическое расширение:</span>
            <ul>
                <li>Когда <code>size</code> достигает <code>elementData.length</code>, массив автоматически расширяется (обычно в 1.5–2 раза).</li>
                <li>Хранение <code>size</code> позволяет отслеживать момент, когда необходимо расширение.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Поле <code>size</code> в <code>ArrayList</code> необходимо для отслеживания реального количества элементов, в то время как <code>elementData.length</code> определяет вместимость массива. Это позволяет эффективно управлять памятью и производительностью списка.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('d1b3394b-7d30-48c6-977e-684bca96bb4c', 'LinkedList – это односвязный, двусвязный или четырехсвязный список?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Тип списка в LinkedList</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Тип списка в LinkedList</h1>
    <p>
        Класс <code>LinkedList</code> в Java реализует структуру данных, известную как двусвязный список. Это означает, что каждый элемент списка содержит ссылки как на предыдущий, так и на следующий элементы.
    </p>

    <h2>Особенности двусвязного списка</h2>
    <ul>
        <li>
            <span class="highlight">Структура узла:</span>
            <ul>
                <li>Каждый элемент (<code>Node</code>) в <code>LinkedList</code> содержит:
                    <ul>
                        <li>Данные (<code>item</code>).</li>
                        <li>Ссылку на предыдущий элемент (<code>prev</code>).</li>
                        <li>Ссылку на следующий элемент (<code>next</code>).</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">Преимущества:</span>
            <ul>
                <li>Двусвязный список позволяет эффективно добавлять и удалять элементы как в начало, так и в конец списка за константное время <code>O(1)</code>.</li>
                <li>Также поддерживается эффективный обход списка в обоих направлениях.</li>
            </ul>
        </li>
    </ul>

    <h2>Почему не односвязный или четырёхсвязный?</h2>
    <ul>
        <li>
            <span class="highlight">Односвязный список:</span>
            <ul>
                <li>В односвязном списке каждый элемент хранит только ссылку на следующий элемент.</li>
                <li>Это ограничивает возможности обхода списка только в одном направлении и усложняет удаление элементов из конца списка.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Четырёхсвязный список:</span>
            <ul>
                <li>Четырёхсвязный список избыточен для большинства задач, так как требует хранения дополнительных ссылок, что увеличивает объём используемой памяти.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> <code>LinkedList</code> в Java реализован как двусвязный список, что обеспечивает баланс между эффективностью операций и использованием памяти.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('549456bb-eed8-4a05-9c60-21fff1342c75', 'List vs. Set', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List vs. Set</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>List vs. Set</h1>
    <p>
        В Java интерфейсы <code>List</code> и <code>Set</code> представляют собой две основные категории коллекций, которые используются для хранения и управления данными. Однако они имеют существенные различия в своей структуре и поведении.
    </p>

    <h2>Основные различия между List и Set</h2>
    <ul>
        <li>
            <span class="highlight">Упорядоченность:</span>
            <ul>
                <li><code>List</code> – это упорядоченная последовательность элементов. Порядок элементов определяется их индексом, и он сохраняется при добавлении или удалении элементов.</li>
                <li><code>Set</code> – это неупорядоченная коллекция элементов. Порядок элементов не гарантируется и может изменяться при добавлении или удалении элементов.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Дублирование элементов:</span>
            <ul>
                <li><code>List</code> допускает дублирование элементов. Один и тот же элемент может быть добавлен в список несколько раз.</li>
                <li><code>Set</code> не допускает дублирование элементов. Каждый элемент в множестве уникален.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Нулевые значения:</span>
            <ul>
                <li><code>List</code> разрешает любое количество нулевых значений в своей коллекции.</li>
                <li><code>Set</code> разрешает только одно нулевое значение в своей коллекции.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Итерация:</span>
            <ul>
                <li><code>List</code> может быть проитерирован как в прямом, так и в обратном направлении с помощью <code>ListIterator</code>.</li>
                <li><code>Set</code> можно просматривать только в прямом направлении с помощью итератора.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Выбор между <code>List</code> и <code>Set</code> зависит от требований к данным. Если важен порядок элементов и допустимы дубликаты, используйте <code>List</code>. Если требуется уникальность элементов и порядок не важен, используйте <code>Set</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('55f93f88-614d-48cc-8c14-c1e1c1c2f4ad', 'Какое худшее время работы метода add() для ArrayList?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Время работы метода add() в ArrayList</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Время работы метода add() в ArrayList</h1>
    <p>
        Метод <code>add()</code> в <code>ArrayList</code> используется для добавления элементов в список. Время выполнения этого метода зависит от текущей вместимости массива и места вставки элемента.
    </p>

    <h2>Худшее время работы метода add()</h2>
    <ul>
        <li>
            <span class="highlight">Сложность:</span>
            <ul>
                <li>В худшем случае время работы метода <code>add()</code> для <code>ArrayList</code> составляет <code>O(N)</code>.</li>
                <li>Это происходит, когда вместимость массива недостаточна, и требуется создание нового массива с увеличенным размером и копирование всех элементов из старого массива в новый.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Причина:</span>
            <ul>
                <li><code>ArrayList</code> – это список, реализованный на основе динамического массива.</li>
                <li>Вставка элемента в конец списка обычно выполняется за константное время <code>O(1)</code>, если в массиве достаточно места.</li>
                <li>Однако, если массив заполнен, происходит увеличение его размера (обычно в 1.5–2 раза), что требует копирования всех элементов в новый массив. Это занимает линейное время <code>O(N)</code>.</li>
                <li>Вставка элемента в произвольное место списка также требует сдвига всех последующих элементов, что занимает <code>O(N)</code> времени.</li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Вставка в конец <code>ArrayList</code> обычно выполняется за <code>O(1)</code>, но в худшем случае (при увеличении размера массива) или при вставке в произвольное место время работы составляет <code>O(N)</code>.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('e931cfe4-6388-4507-a727-2419accb32d6', 'Что такое «fail-fast поведение»?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fail-fast поведение</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Fail-fast поведение</h1>
    <p>
        <span class="highlight">Fail-fast поведение</span> – это подход, при котором система немедленно прекращает выполнение и уведомляет об ошибке, если возникает состояние, которое может привести к некорректной работе. Это позволяет избежать недетерминированного поведения программы.
    </p>

    <h2>Fail-fast в Java Collections API</h2>
    <ul>
        <li>
            <span class="highlight">Итераторы:</span>
            <ul>
                <li>Некоторые итераторы в Java Collections API ведут себя как fail-fast.</li>
                <li>Если коллекция модифицируется после создания итератора (например, добавление или удаление элементов напрямую, а не через методы итератора), выбрасывается исключение <code>ConcurrentModificationException</code>.</li>
            </ul>
        </li>
        <li>
            <span class="highlight">Реализация:</span>
            <ul>
                <li>Каждая коллекция поддерживает счётчик модификаций (<code>modification count</code>).</li>
                <li>При изменении коллекции (добавление, удаление элементов) счётчик увеличивается.</li>
                <li>При создании итератора ему передаётся текущее значение счётчика.</li>
                <li>При каждом обращении к итератору сохранённое значение счётчика сравнивается с текущим. Если значения не совпадают, выбрасывается исключение <code>ConcurrentModificationException</code>.</li>
            </ul>
        </li>
    </ul>

    <h2>Пример fail-fast поведения</h2>
    <pre>
<code>
List&lt;String&gt; list = new ArrayList&lt;&gt;();
list.add("A");
list.add("B");

Iterator&lt;String&gt; iterator = list.iterator();
list.add("C"); // Модификация коллекции после создания итератора

while (iterator.hasNext()) {
    System.out.println(iterator.next()); // Выбросит ConcurrentModificationException
}
</code>
    </pre>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span> Fail-fast поведение помогает быстро обнаружить ошибки, связанные с изменением коллекции во время итерации, что делает код более надёжным и предсказуемым.
        </p>
    </div>
</body>
</html>', 'COLLECTIONS', 'EASY');
INSERT INTO public.topic_library (topic_library_id, themes, content, topic_area, difficulty) VALUES ('616c2514-02cc-4709-816b-ce4f0b4274db', 'Что такое ограничения (constraints)? Какие вы знаете?', e'<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ограничения (Constraints) в SQL</title>
   <style>

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #DCDDE7FF;
    color: #333;
}

h1 {
    color: #2c3e50;
    text-align: center;
    margin-bottom: 20px;
}

.content {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    margin: 0 auto;
}

h2 {
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
}

p {
    margin-bottom: 15px;
}
code{
    color: #2980b9;
    margin-top: 20px;
    margin-bottom: 10px;
    font-size: 160%;
}

.highlight {
    color: #e74c3c;
    font-weight: bold;
}

.note {
    background: #ecf0f1;
    padding: 5px;
    border-left: 5px solid #bdc3c7;
    margin: 10px 0;
    color: #333;
}
.definition {
    margin-left: 20px;
    font-style: italic;
    color: #555;
}

ul {
    margin-bottom: 15px;
    padding-left: 20px;
}

ul li {
    margin-bottom: 10px;
}

</style>
</head>
<body>
    <h1>Ограничения (Constraints) в SQL</h1>
    <p>
        Ограничения (constraints) в SQL используются для установки правил, которые определяют допустимые
        значения в столбцах таблицы. Они помогают поддерживать целостность данных в базе данных.
    </p>

    <h2>Основные ограничения</h2>
    <ul>
        <li>
            <span class="highlight">NOT NULL:</span>
            <ul>
                <li>
                    Указывает, что столбец не может содержать пустые значения (<code>NULL</code>).
                </li>
                <li>
                    Пример: <code>CREATE TABLE employees (id INT NOT NULL, name VARCHAR(50) NOT NULL);</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">UNIQUE:</span>
            <ul>
                <li>
                    Гарантирует, что все значения в столбце уникальны (не повторяются).
                </li>
                <li>
                    Пример: <code>CREATE TABLE employees (id INT UNIQUE, email VARCHAR(100) UNIQUE);</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">PRIMARY KEY:</span>
            <ul>
                <li>
                    Комбинация <code>NOT NULL</code> и <code>UNIQUE</code>. Уникально идентифицирует каждую запись в таблице.
                </li>
                <li>
                    Пример: <code>CREATE TABLE employees (id INT PRIMARY KEY, name VARCHAR(50));</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">CHECK:</span>
            <ul>
                <li>
                    Проверяет, что значения в столбце соответствуют определённому условию.
                </li>
                <li>
                    Пример: <code>CREATE TABLE employees (id INT CHECK (id > 0), age INT CHECK (age >= 18));</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">FOREIGN KEY:</span>
            <ul>
                <li>
                    Создаёт связь между двумя таблицами. Значение в столбце должно соответствовать значению
                    <code>PRIMARY KEY</code> в другой таблице.
                </li>
                <li>
                    Пример: <code>CREATE TABLE orders (order_id INT PRIMARY KEY, employee_id INT, FOREIGN KEY (employee_id) REFERENCES employees(id));</code>
                </li>
            </ul>
        </li>
        <li>
            <span class="highlight">DEFAULT:</span>
            <ul>
                <li>
                    Устанавливает значение по умолчанию для столбца, если значение не указано.
                </li>
                <li>
                    Пример: <code>CREATE TABLE employees (id INT, name VARCHAR(50) DEFAULT \'noname\');</code>
                </li>
            </ul>
        </li>
    </ul>

    <div class="note">
        <p>
            <span class="highlight">Важно:</span>
            <ul>
                <li>
                    Ограничения помогают поддерживать целостность данных, предотвращая ввод некорректных
                    значений.
                </li>
                <li>
                    <code>PRIMARY KEY</code> и <code>FOREIGN KEY</code> используются для создания связей между таблицами и
                    обеспечения ссылочной целостности.
                </li>
            </ul>
        </p>
    </div>

    <h2>Примеры использования ограничений</h2>
    <ul>
        <li>
            <span class="highlight">NOT NULL и UNIQUE:</span>
            <pre><code>CREATE TABLE employees (
    id INT NOT NULL,
    email VARCHAR(100) UNIQUE
);</code></pre>
        </li>
        <li>
            <span class="highlight">PRIMARY KEY и FOREIGN KEY:</span>
            <pre><code>CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);</code></pre>
        </li>
        <li>
            <span class="highlight">CHECK и DEFAULT:</span>
            <pre><code>CREATE TABLE employees (
    id INT CHECK (id > 0),
    age INT CHECK (age >= 18),
    name VARCHAR(50) DEFAULT \'noname\'
);</code></pre>
        </li>
    </ul>
</body>
</html>', 'SQL', 'EASY');