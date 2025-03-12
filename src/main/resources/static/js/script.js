// Добавляем иконку пользователя во вторую кнопку
const userButton2 = document.getElementById('user-button-2');
userButton2.innerHTML = '<i class="fas fa-user"></i>'; // Иконка пользователя из Font Awesome

const TopicArea = {
    OOP: 'OOP',
    JAVA_CORE: 'JAVA_CORE',
    GIT: 'GIT',
    SPRING: 'SPRING',
    DATA_BASE: 'DATA_BASE',
    MULTITHREADING: 'MULTITHREADING',
    OTHER: 'OTHER',
    COLLECTIONS: 'COLLECTIONS',
    TEST : 'TEST',
    STREAM : 'STREAM',
    SQL : 'SQL',
    SERVLET : 'SERVLET',
    JMS : 'JMS',
    HIBERNATE : 'HIBERNATE',
    HTTP : 'HTTP',
    ALGORITHMS : 'ALGORITHMS'


};


// Функция для скрытия меню
function hideDropdownMenu() {
    dropdownMenu.classList.remove('show');
}

// Обработчик для клика вне меню
document.addEventListener('click', function() {
    // Если клик произошел вне меню и не по кнопке, которая открывает меню
    // if (!dropdownMenu.contains(event.target) &&
    //     !event.target.matches('#user-button-1, #user-button-2, #user-button-3')) {
    hideDropdownMenu(); // Скрываем меню
    // }
});

// Общий контейнер для меню
const dropdownMenu = document.getElementById('dropdown-menu');

// Форма для добавления теста
const addTestForm = document.getElementById('add-test-form');

// Содержимое меню для первой кнопки
const menuContent1 = `
    <a href="/test">Пройти тест</a>
    <a href="#" id="show-library-button">Библиотека</a>
`;

// Содержимое меню для второй кнопки
const menuContent2 = `
    <a href="#">Настройки</a>
    <a href="#">Прогресс</a>
    <a href="#" id="logout-button">Выход</a>
`;

const menuContent3 = `
    <a href="#" id="add-test-button">Добавить тест</a>
    <a href="#" id="add-library-button">Добавить тему</a>
`;
// // // Содержимое меню для 4 кнопки
// const menuContent4 = document.getElementById('menu-content-4');

// // Содержимое меню для 5 кнопки
// const menuContent5 = `
//     <a href="#" id="find-by-theme">Поиск тем по названию</a>
//     <a href="#" id="find-by-content">Поиск тем по содержанию</a>
// `;

// Обработчик для кнопки "Выход"
document.addEventListener('click', function(event) {
    if (event.target.id === 'logout-button') {
        event.preventDefault(); // Предотвращаем стандартное поведение ссылки
        window.history.back(); // Возвращаемся на предыдущую страницу
    }
});

// Обработчик для 1 кнопки
const userButton1 = document.getElementById('user-button-1');
userButton1.addEventListener('click', function(event) {
    event.stopPropagation(); // Останавливаем всплытие события
    dropdownMenu.innerHTML = menuContent1; // Устанавливаем содержимое меню
    dropdownMenu.classList.add('show'); // Показываем меню
});

// Обработчик для 2 кнопки
userButton2.addEventListener('click', function(event) {
    event.stopPropagation(); // Останавливаем всплытие события
    dropdownMenu.innerHTML = menuContent2; // Устанавливаем содержимое меню
    dropdownMenu.classList.add('show'); // Показываем меню
});

// Обработчик для 3 кнопки
const userButton3 = document.getElementById('user-button-3');
userButton3.addEventListener('click', function(event) {
    event.stopPropagation(); // Останавливаем всплытие события
    dropdownMenu.innerHTML = menuContent3; // Устанавливаем содержимое меню
    dropdownMenu.classList.add('show'); // Показываем меню
});

// // Обработчик для 4 кнопки
// const userButton4 = document.getElementById('user-button-4');
// userButton4.addEventListener('click', function(event) {
//     event.stopPropagation(); // Останавливаем всплытие события
//     dropdownMenu.innerHTML = menuContent4; // Устанавливаем содержимое меню
//     dropdownMenu.classList.add('show'); // Показываем меню
// });



// Обработчик для кнопки "Добавить тест"
document.addEventListener('click', function(event) {
    if (event.target.id === 'add-test-button') {
        event.preventDefault(); // Предотвращаем стандартное поведение ссылки
        addTestForm.style.display = 'block'; // Показываем форму
        dropdownMenu.classList.remove('show'); // Скрываем меню
        clearContainersFull();// Очищаем старые контейнеры
    }
});


document.getElementById('test-form').addEventListener('submit', function(event) {
    event.preventDefault(); // Предотвращаем стандартную отправку формы

    // Собираем данные из формы
    const question = document.getElementById('question').value;
    const option1 = document.getElementById('option1').value;
    const option2 = document.getElementById('option2').value;
    const option3 = document.getElementById('option3').value;
    const option4 = document.getElementById('option4').value;
    const correctAnswer = document.querySelector('input[name="correct-answer"]:checked').value;

    // Создаем объект с данными
    const data = {
        text: question,
        options: [option1, option2, option3, option4],
        correctAnswerIndex: parseInt(correctAnswer) - 1 // Преобразуем в индекс (0-based)
    };
    console.log(data);

    // Отправляем данные на сервер
    fetch('/api/topics', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            alert('Вопрос успешно добавлен!');
            console.log(result);
        })
        .catch(error => {
            console.error('Ошибка:', error);
            alert('Произошла ошибка при добавлении вопроса.');
        });
});



function displayQuestions(questions) {
    // Создаем контейнер для вопросов
    const container = document.createElement('div');
    container.id = 'areas-container';
    container.style.textAlign = 'center'; // Выравниваем текст по центру (для заголовка)
    container.style.cursor = 'pointer'; // Меняем курсор на указатель при наведении

    // Создаем элемент для отображения tableOfContent
    const tableOfContentDiv = document.createElement('div');
    tableOfContentDiv.className = 'table-of-content';
    tableOfContentDiv.innerHTML = `<h1>${questions.tableOfContent}</h1>`; // Крупные буквы
    tableOfContentDiv.style.fontSize = '2em'; // Увеличиваем размер текста

    // Создаем элемент для отображения content (изначально скрыт)
    const contentDiv = document.createElement('div');
    contentDiv.className = 'content';
    contentDiv.innerHTML = `<p>${questions.content}</p>`;
    contentDiv.style.display = 'none'; // Скрываем content изначально
    contentDiv.style.textAlign = 'left'; // Выравниваем текст по левому краю

    // Добавляем обработчик события click на tableOfContent
    tableOfContentDiv.addEventListener('click', () => {
        tableOfContentDiv.style.display = 'none'; // Скрываем tableOfContent
        contentDiv.style.display = 'block'; // Показываем content
    });

    // Добавляем элементы в контейнер
    container.appendChild(tableOfContentDiv);
    container.appendChild(contentDiv);

    // Добавляем контейнер на страницу
    document.body.appendChild(container);
}

// Находим кнопку user-button-6
const userButton6 = document.getElementById('user-button-6');

// Добавляем обработчик события click для кнопки user-button-6
userButton6.addEventListener('click', function(event) {
    event.preventDefault(); // Предотвращаем стандартное поведение, если это ссылка
    event.stopPropagation(); // Останавливаем всплытие события

        // Очищаем старые контейнеры
        clearContainersFull()

        // Скрываем форму добавления теста
        hideAddTestForm();


        // Отправляем запрос на сервер для получения случайного вопроса
    fetch('/api/topics/random')
        .then(response => response.json())
        .then(questions => {
            // Отображаем вопрос на странице
            displayQuestions(questions);
        })
        .catch(error => {
            console.error('Ошибка:', error);
            alert('Произошла ошибка при загрузке вопроса.');
        });

});



// Обработчик для кнопки "Библиотека"
    document.addEventListener('click', function (event) {
        if (event.target.id === 'show-library-button') {
            event.preventDefault(); // Предотвращаем стандартное поведение ссылки

            // Очищаем старые контейнеры
            clearContainersFull()

            // Скрываем форму добавления теста
            hideAddTestForm();

            // Создаем выпадающие кнопки для каждой области
            createAreaButtons();


            // Показываем колонки
            showColumns();

            // Загружаем все темы
            loadAllTopics();


        }
    });


// Функция для отображения колонок
    function showColumns() {
        const contentContainer = document.getElementById('topic-content-container');
        const topicsContainer = document.getElementById('topics-list-container');
        contentContainer.style.display = 'block'; // Показываем левую колонку
        topicsContainer.style.display = 'block'; // Показываем правую колонку
    }

// Функция для загрузки всех тем
    function loadAllTopics() {
        fetch('/api/topics/all')
            .then(response => response.json())
            .then(topics => {
                displayTopic(topics); // Отображаем список тем
            })
            .catch(error => {
                console.error('Ошибка:', error);
                alert('Произошла ошибка при загрузке тем.');
            });
    }

function displayTopic(topics) {
    const container = document.createElement('div');
    container.id = 'areas-container';
    container.style.display = 'flex'; // Используем flexbox для расположения кнопок
    container.style.flexWrap = 'wrap'; // Перенос кнопок на новую строку, если не хватает места
    container.style.gap = '20px'; // Отступы между кнопками
    container.style.padding = '20px'; // Отступы внутри контейнера
    container.style.justifyContent = 'center'; // Центрируем кнопки

    // Получаем все значения Enum (области тем)
    const areas = topics.tableOfContent;

        const areaButton = document.createElement('button');
        areaButton.textContent = areas; // Название области
        areaButton.className = 'area-button'; // Добавляем класс для стилизации
        areaButton.dataset.area = areas; // Сохраняем область в data-атрибуте
        container.appendChild(areaButton);

    // Добавляем контейнер на страницу
    document.body.appendChild(container);
}



// Функция для создания выпадающих кнопок по областям
    function createAreaButtons() {
        const container = document.createElement('div');
        container.id = 'areas-container';
        container.style.display = 'flex'; // Используем flexbox для расположения кнопок
        container.style.flexWrap = 'wrap'; // Перенос кнопок на новую строку, если не хватает места
        container.style.gap = '20px'; // Отступы между кнопками
        container.style.padding = '20px'; // Отступы внутри контейнера
        container.style.justifyContent = 'center'; // Центрируем кнопки

        // Получаем все значения Enum (области тем)
        const areas = Object.values(TopicArea);

        areas.forEach(area => {
            const areaButton = document.createElement('button');
            areaButton.textContent = area; // Название области
            areaButton.className = 'area-button'; // Добавляем класс для стилизации
            areaButton.dataset.area = area; // Сохраняем область в data-атрибуте
            areaButton.addEventListener('click', () => loadTopicsByArea(area)); // Обработчик клика
            container.appendChild(areaButton);
        });

        // Добавляем контейнер на страницу
        document.body.appendChild(container);
    }

// Функция для загрузки тем по области
    function loadTopicsByArea(area) {
        clearContainers()
        fetch(`/api/topics/by-area/${area}`)
            .then(response => response.json())
            .then(topics => {
                displayTopics(topics); // Отображаем темы
            })
            .catch(error => {
                console.error('Ошибка:', error);
                alert('Произошла ошибка при загрузке тем.');
            });
    }


// Функция для отображения тем с пагинацией
    function displayTopics(topics, page = 1, itemsPerPage = 12) {
        const container = document.createElement('div');
        container.id = 'topics-list-container';
        container.className = 'topics-list-container';
        container.innerHTML = '';

        if (topics.length === 0) {
            container.innerHTML = '<p>Темы не найдены.</p>';
            return;
        }

        // Вычисляем начальный и конечный индексы для текущей страницы
        const startIndex = (page - 1) * itemsPerPage;
        const endIndex = startIndex + itemsPerPage;
        const paginatedTopics = topics.slice(startIndex, endIndex);

        // Отображаем темы для текущей страницы
        paginatedTopics.forEach(topic => {
            const topicDiv = document.createElement('div');
            topicDiv.className = 'topic-item';
            topicDiv.innerHTML = `
            <p class="topic-title" data-topic-id="${topic.id}">${topic.tableOfContent}</p>`;
            topicDiv.querySelector('.topic-title').addEventListener('click', () => {
                loadTopicContent(topic.id); // Загружаем содержимое темы
                setActiveTopic(topicDiv); // Выделяем активную тему
            });
            container.appendChild(topicDiv);
        });

        // Очищаем старые контейнеры и добавляем новый
       clearContainersLibrary();
        document.body.appendChild(container);


        // Добавляем пагинацию
        addPagination(topics, page, itemsPerPage);

        // Выделяем первую тему после добавления контейнера в DOM
        if (paginatedTopics.length > 0) {
            const firstTopic = container.querySelector('.topic-item'); // Теперь контейнер в DOM
            if (firstTopic) {
                setActiveTopic(firstTopic); // Выделяем первую тему
            }
        }
    }

// Функция для добавления пагинации
    function addPagination(topics, currentPage, itemsPerPage) {
        const totalPages = Math.ceil(topics.length / itemsPerPage);

        const paginationContainer = document.createElement('div');
        paginationContainer.className = 'pagination-container';

// Кнопка "Назад"
        const prevButton = document.createElement('button');
        clearPagination();
        prevButton.innerHTML = '&larr;'; // Левый стрелка (←)
        prevButton.disabled = currentPage === 1;
        prevButton.classList.add('pagination-button', 'prev-button');
        prevButton.addEventListener('click', () => {
            displayTopics(topics, currentPage - 1, itemsPerPage);
        });
        paginationContainer.appendChild(prevButton);

// Кнопка "Вперед"
        const nextButton = document.createElement('button');
        clearPagination();
        nextButton.innerHTML = '&rarr;'; // Правый стрелка (→)
        nextButton.disabled = currentPage === totalPages;
        nextButton.classList.add('pagination-button', 'next-button');
        nextButton.addEventListener('click', () => {
            displayTopics(topics, currentPage + 1, itemsPerPage);
        });
        paginationContainer.appendChild(nextButton);

// Добавляем пагинацию в DOM
        document.body.appendChild(paginationContainer);
    }



// Функция для выделения активной темы
    function setActiveTopic(activeTopic) {
        const allTopics = document.querySelectorAll('.topic-item');
        allTopics.forEach(topic => topic.classList.remove('active'));
        activeTopic.classList.add('active');
    }


// Функция для загрузки содержимого темы
    function loadTopicContent(topicId) {
        fetch(`/api/topics/${topicId}`)
            .then(response => response.json())
            .then(topic => {
                displayTopicContent(topic); // Отображаем содержимое темы
            })
            .catch(error => {
                console.error('Ошибка:', error);
                alert('Произошла ошибка при загрузке содержимого темы.');
            });
    }


// Функция для отображения содержимого темы
    function displayTopicContent(topic) {
        const container = document.createElement('div');
        container.id = 'topic-content-container';
        container.className = 'topic-content-container';
        container.innerHTML = `
        <p><strong>Название темы:</strong> ${topic.tableOfContent}</p>
        <p>${topic.content}</p>
    `;

        // Очищаем старые контейнеры и добавляем новый
        clearContainers();
        document.body.appendChild(container);
    }


// Функция для очистки старых контейнеров
    function clearContainers() {
        const containers = [
            'questions-container',
            'topics-container',
            'topic-content-container',
            'areas-container',
            'table-container'


        ];

        containers.forEach(id => {
            const container = document.getElementById(id);
            if (container) {
                if (id === 'table-container') {
                    // Для table-container скрываем, а не удаляем
                    container.style.display = 'none';
                } else {
                    // Для остальных контейнеров вызываем remove
                    container.remove();
                }
            }
        });
        hideAddTopicForm();


    }


// Функция для очистки старых контейнеров
    function clearContainersForEdit() {
        const containers = [
            'questions-container',
            'topics-container',
            'topic-content-container',
            'areas-container',
            'topics-list-container',
            'areas-containerEdit',
            'topics-list-containerEdit',


        ];

        containers.forEach(id => {
            const container = document.getElementById(id);
            if (container) {
                container.remove();
            }
        });
        hideAddTopicForm();
        clearPagination()


    }


// Функция для очистки старых контейнеров
function clearContainersFull() {
    const containers = [
        'questions-container',
        'topics-container',
        'topic-content-container',
        'areas-container',
        'topics-list-container',
        'areas-containerEdit',
        'topics-list-containerEdit',
        'table-container', // Добавляем table-container в список
        'content-display'
    ];

    containers.forEach(id => {
        const container = document.getElementById(id);
        if (container) {
            if (id === 'table-container'||'content-display') {
                // Для table-container скрываем, а не удаляем
                container.style.display = 'none';
            } else {
                // Для остальных контейнеров вызываем remove
                container.remove();
            }
        }
    });

    hideAddTopicForm();
    clearPagination();
}


    function clearPagination() {
        const oldPagination = document.querySelector('.pagination-container');
        if (oldPagination) {
            oldPagination.remove();
        }
    }


// Функция для очистки старых контейнеров
    function clearContainersLibrary() {
        const containers = [
            'questions-container',
            'topics-container',
            'areas-container',
            'topics-list-container',

        ];

        containers.forEach(id => {
            const container = document.getElementById(id);
            if (container) {
                container.remove();
            }
        });
        hideAddTopicForm();

    }


// Функция для скрытия формы добавления теста
    function hideAddTestForm() {
        addTestForm.style.display = 'none';
    }

// Обработчик для кнопки "Добавить тему"
    document.addEventListener('click', function (event) {
        if (event.target.id === 'add-library-button') {
            event.preventDefault();// Предотвращаем стандартное поведение ссылки

            clearContainersFull()
            hideAddTestForm();

            // Показываем форму добавления темы
            showAddTopicForm();

            // Заполняем выпадающий список областей
            populateTopicAreas();
        }
    });

// Функция для отображения формы добавления темы
    function showAddTopicForm() {
        const addTopicForm = document.getElementById('add-topic-form');
        addTopicForm.style.display = 'block'; // Показываем форму
    }

// Функция для заполнения выпадающего списка областей
    function populateTopicAreas() {
        const topicAreaSelect = document.getElementById('topic-area');
        topicAreaSelect.innerHTML = ''; // Очищаем старые опции

        // Получаем все значения Enum (области тем)
        const areas = Object.values(TopicArea);

        // Добавляем опции в выпадающий список
        areas.forEach(area => {
            const option = document.createElement('option');
            option.value = area;
            option.textContent = area;
            topicAreaSelect.appendChild(option);
        });
    }

// Функция для очистки формы добавления темы
    function clearAddTopicForm() {
        document.getElementById('topic-title').value = ''; // Очищаем поле "Заголовок"
        document.getElementById('topic-content').value = ''; // Очищаем поле "Содержание"
        document.getElementById('topic-area').selectedIndex = 0; // Сбрасываем выбор области
    }

// Обработчик для формы добавления темы
    document.getElementById('topic-form').addEventListener('submit', function (event) {
        event.preventDefault(); // Предотвращаем стандартную отправку формы

        // Собираем данные из формы
        const tableOfContent = document.getElementById('topic-title').value;
        const content = document.getElementById('topic-content').value;
        const topicArea = document.getElementById('topic-area').value;

        // Создаем объект с данными
        const data = {
            topicArea: topicArea,
            content: content,
            tableOfContent: tableOfContent
        };
        console.log(data);

        // Отправляем данные на сервер
        fetch('/api/topics', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        })
            .then(response => response.json())
            .then(result => {
                alert('Тема успешно добавлена!');
                console.log(result);
                hideAddTopicForm(); // Скрываем форму после успешного добавления
                clearAddTopicForm(); // Очищаем поля формы
                // loadAllTopics(); // Обновляем список тем
            })
            .catch(error => {
                console.error('Ошибка:', error);
                alert('Произошла ошибка при добавлении темы.');
            });
    });

// Функция для скрытия формы добавления темы
    function hideAddTopicForm() {
        const addTopicForm = document.getElementById('add-topic-form');
        addTopicForm.style.display = 'none';
    }

// Обработчик для кнопки "Отмена"
    document.getElementById('cancel-topic-button').addEventListener('click', function () {
        hideAddTopicForm(); // Скрываем форму
        clearAddTopicForm(); // Очищаем поля формы
    });



document.addEventListener('DOMContentLoaded', function() {
    const searchInput = document.getElementById('search-input');
    const searchThemeButton = document.getElementById('search-theme-button');
    const searchContentButton = document.getElementById('search-content-button');

    let searchType = 'theme'; // По умолчанию выбран поиск по темам
    searchThemeButton.classList.add('active'); // Подсвечиваем кнопку поиска по темам

    // Обработчик для кнопки "Поиск по темам"
    searchThemeButton.addEventListener('click', function() {
        if (!searchThemeButton.classList.contains('active')) {
            searchThemeButton.classList.add('active');
            searchContentButton.classList.remove('active');
            searchType = 'theme'; // Устанавливаем тип поиска
        }
    });

    // Обработчик для кнопки "Поиск по содержанию"
    searchContentButton.addEventListener('click', function() {
        if (!searchContentButton.classList.contains('active')) {
            searchContentButton.classList.add('active');
            searchThemeButton.classList.remove('active');
            searchType = 'content'; // Устанавливаем тип поиска
        }
    });

    // Обработчик нажатия Enter в поле поиска
    searchInput.addEventListener('keypress', function(event) {
        if (event.key === 'Enter') {
            const searchText = searchInput.value.trim();
            if (searchText) {
                loadTopicsBySearch(searchText, searchType); // Выполняем поиск
            }
            searchInput.value = ''; // Очищаем поле ввода
        }
    });
});

// Функция для загрузки тем по поисковому запросу
function loadTopicsBySearch(query, searchType) {
    clearContainers(); // Очищаем контейнеры перед загрузкой новых данных
    const addTestForm = document.getElementById('add-test-form');
    addTestForm.style.display = 'none'; // Скрываем форму

    // Определяем URL в зависимости от типа поиска
    const url = searchType === 'theme'
        ? `/api/topics/search/theme?query=${encodeURIComponent(query)}`
        : `/api/topics/search/content?query=${encodeURIComponent(query)}`;

    fetch(url) // Отправляем запрос на сервер
        .then(response => response.json())
        .then(topics => {
            displayTopics(topics); // Отображаем темы
        })
        .catch(error => {
            console.error('Ошибка:', error);
            alert('Произошла ошибка при загрузке тем.');
        });
}






let currentPage = 1;
let itemsPerPage = 10;
let allData = [];
let editingRow = null; // Текущая строка в режиме редактирования

// Функция для отображения данных на текущей странице
function displayData() {
    const tableBody = document.querySelector('#topics-table tbody');
    tableBody.innerHTML = '';

    const start = (currentPage - 1) * itemsPerPage;
    const end = start + itemsPerPage;
    const pageData = allData.slice(start, end);

    pageData.forEach((topic, index) => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${topic.tableOfContent}</td>
            <td>${topic.topicArea}</td>
            <td class="action-buttons">
                <button class="edit">Edit</button>
                <button class="save" style="display: none;">Save</button>
                <button class="delete">Delete</button>
            </td>
        `;

        // Обработчик для отображения content при нажатии на строку
        row.addEventListener('click', (e) => {
            // Проверяем, был ли клик по кнопке
            if (e.target.tagName === 'BUTTON') {
                return; // Игнорируем клик по кнопке
            }

            // Отображаем поле content-display
            document.getElementById('content-display').style.display = 'block';

            // Устанавливаем значение content
            document.getElementById('content-text').value = topic.content || "Нет данных";
        });

        // Обработчик для кнопки редактирования
        row.querySelector('.edit').addEventListener('click', (e) => {
            e.stopPropagation(); // Останавливаем всплытие события

            // Отображаем поле content-display
            document.getElementById('content-display').style.display = 'block';

            // Устанавливаем значение content
            document.getElementById('content-text').value = topic.content || "Нет данных";

            // Делаем поле content-text редактируемым
            document.getElementById('content-text').disabled = false;

            // Включаем режим редактирования для строки
            enableEditMode(row, topic);
        });

        // Обработчик для кнопки сохранения
        row.querySelector('.save').addEventListener('click', (e) => {
            e.stopPropagation();

            // Сохраняем изменения
            saveChanges(row, topic);

            // Блокируем поле content-text после сохранения
            document.getElementById('content-text').disabled = true;
        });

        // Обработчик для кнопки удаления
        row.querySelector('.delete').addEventListener('click', (e) => {
            e.stopPropagation();
            confirmDelete(topic);

            // Скрываем поле content-display при удалении
            document.getElementById('content-display').style.display = 'none';
        });

        tableBody.appendChild(row);
    });

    // Обновление информации о странице
    document.getElementById('page-info').textContent = `Страница ${currentPage} из ${Math.ceil(allData.length / itemsPerPage)}`;

}




// Включение режима редактирования
function enableEditMode(row, topic) {
    if (editingRow) {
        disableEditMode(editingRow);
    }

    editingRow = { row, topic };

    const cells = row.querySelectorAll('td');

    // Создаем input с стилями
    const input = document.createElement('input');
    input.type = 'text';
    input.value = topic.tableOfContent;
    input.style.width = '100%';
    input.style.padding = '8px'; // Добавляем внутренний отступ
    input.style.border = '1px solid #ccc'; // Устанавливаем границу
    input.style.borderRadius = '4px'; // Закругляем углы
    input.style.fontSize = '14px'; // Устанавливаем размер шрифта

    cells[0].innerHTML = ''; // Очищаем ячейку перед добавлением input
    cells[0].appendChild(input); // Добавляем input в ячейку

    // Создаем <select> с оставшимися опциями
    const select = document.createElement('select');
    select.style.width = '100%';
    select.style.padding = '8px';
    select.style.border = '1px solid #ccc';
    select.style.borderRadius = '4px';
    select.style.fontSize = '14px';

    const options = [
        'OOP',
        'JAVA_CORE',
        'GIT',
        'SPRING',
        'DATA_BASE',
        'MULTITHREADING',
        'OTHER',
        'COLLECTIONS',
        'TEST',
        'STREAM',
        'SQL',
        'SERVLET',
        'JMS',
        'HIBERNATE',
        'HTTP',
        'ALGORITHMS'
    ];

    options.forEach(optionValue => {
        const option = document.createElement('option');
        option.value = optionValue;
        option.textContent = optionValue;
        if (optionValue === topic.topicArea) {
            option.selected = true; // Устанавливаем выбранным элемент, если он соответствует
        }
        select.appendChild(option);
    });

    // Очищаем ячейку перед добавлением <select>
    cells[1].innerHTML = '';
    cells[1].appendChild(select); // Добавляем динамический <select> в ячейку

    // Показываем кнопку "Сохранить" и скрываем "Редактировать"
    row.querySelector('.edit').style.display = 'none';
    row.querySelector('.save').style.display = 'inline-block';
}




// Отключение режима редактирования
function disableEditMode() {
    if (!editingRow) return;

    const { row, topic } = editingRow;
    const cells = row.querySelectorAll('td');
    cells[0].innerHTML = topic.tableOfContent;
    cells[1].innerHTML = topic.topicArea;

    // Показываем кнопку "Редактировать" и скрываем "Сохранить"
    row.querySelector('.edit').style.display = 'inline-block';
    row.querySelector('.save').style.display = 'none';

    editingRow = null;
}

// Сохранение изменений
async function saveChanges(row, topic) {
    const cells = row.querySelectorAll('td');
    topic.tableOfContent = cells[0].querySelector('input').value;
    topic.topicArea = cells[1].querySelector('select').value;
    topic.content = document.getElementById('content-text').value;

    try {
        const response = await fetch(`/api/topics/${topic.id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(topic),
        });

        if (!response.ok) {
            throw new Error('Ошибка при сохранении изменений');
        }

        disableEditMode();
        alert('Изменения сохранены!');
    } catch (error) {
        console.error('Ошибка:', error);
        alert('Не удалось сохранить изменения');
    }
}


// Подтверждение удаления
async function confirmDelete(topic) {
    if (confirm('Вы уверены, что хотите удалить эту запись?')) {
        try {
            const response = await fetch(`/api/topics/${topic.id}`, {
                method: 'DELETE',
            });

            if (!response.ok) {
                throw new Error('Ошибка при удалении записи');
            }

            // Удаляем запись из локального массива и обновляем таблицу
            allData = allData.filter(item => item.id !== topic.id);
            displayData();
            alert('Запись удалена!');
        } catch (error) {
            console.error('Ошибка:', error);
            alert('Не удалось удалить запись');
        }
    }
}



document.getElementById('user-button-4').addEventListener('click', async () => {
    clearContainersForEdit();
    // Скрываем форму добавления теста
    hideAddTestForm();


    const tableContainer = document.getElementById('table-container');
    tableContainer.style.display = 'block';

    try {
        const response = await fetch('/api/topics/all');
        if (!response.ok) throw new Error('Ошибка при загрузке данных');
        allData = await response.json();
        displayData();
    } catch (error) {
        console.error('Ошибка:', error);
    }
});


// Обработчик для выбора количества элементов на странице
document.getElementById('items-per-page').addEventListener('change', (e) => {
    itemsPerPage = parseInt(e.target.value);
    currentPage = 1;
    displayData();
});

// Обработчики для кнопок пагинации
document.getElementById('prev-page').addEventListener('click', () => {
    if (currentPage > 1) {
        currentPage--;
        displayData();
    }
});

document.getElementById('next-page').addEventListener('click', () => {
    if (currentPage < Math.ceil(allData.length / itemsPerPage)) {
        currentPage++;
        displayData();
    }
});



