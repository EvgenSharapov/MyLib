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
    HIBERNATE : 'HIBERNATE',
    HTTP : 'HTTP',
    ALGORITHMS : 'ALGORITHMS',
    ORM : 'ORM',
    SYSTEM_DESIGN : 'SYSTEM_DESIGN',
    BASIC_CONCEPTS : 'BASIC_CONCEPTS',
    DOCKER : 'DOCKER',
    KUBERNETES : 'KUBERNETES'
};

const translations = {
    en: {
        languageChanged: 'Language changed',
        selectedLanguage: 'Selected language:',
        okButton: 'OK',
        edit: 'Edit',
        save: 'Save',
        delete: 'Delete'
    },
    ru: {
        languageChanged: 'Язык изменён',
        selectedLanguage: 'Выбран язык:',
        okButton: 'ОК',
        edit: 'Редактор',
        save: 'Сохранить',
        delete: 'Удалить',
    },
    de: {
        languageChanged: 'Sprache geändert',
        selectedLanguage: 'Ausgewählte Sprache:',
        okButton: 'OK',
        edit: 'Bearbeiten',
        save: 'Speichern',
        delete: 'Löschen',
    }

};

let selectedDifficulty = localStorage.getItem('difficulty') || 'EASY';

const difficulty = {
    EASY: 'EASY',
    AVERAGE: 'AVERAGE',
    DEVOPS: 'DEVOPS'
};

const dropdownMenu = document.getElementById('dropdown-menu');

const addTestForm = document.getElementById('add-test-form');

const userButton2 = document.getElementById('user-button-2');
userButton2.innerHTML = '<i class="fas fa-user"></i>';
if (userButton2) {
    userButton2.innerHTML = '<i class="fas fa-user"></i>';

    userButton2.addEventListener('click', function(event) {
        event.preventDefault();
        event.stopPropagation();

        console.log('Кнопка профиля нажата');

        const dropdownMenu = document.querySelector('.right-dropdown');
        if (dropdownMenu) {
            dropdownMenu.classList.toggle('show');
            console.log('Меню профиля переключено');
        }

        const otherMenus = document.querySelectorAll('.dropdown-menu:not(.right-dropdown)');
        otherMenus.forEach(menu => menu.classList.remove('show'));
    });

    document.addEventListener('click', function(event) {
        if (!event.target.closest('.right-menu')) {
            const dropdownMenu = document.querySelector('.right-dropdown');
            if (dropdownMenu) {
                dropdownMenu.classList.remove('show');
            }
        }
    });
}

// Обработчик для кнопки "Выход"
document.addEventListener('click', function(event) {
    if (event.target.id === 'logout-button') {
        event.preventDefault(); // Предотвращаем стандартное поведение ссылки
        window.history.back(); // Возвращаемся на предыдущую страницу
    }
});




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



function displayQuestion(questions) {
    // Создаем контейнер для вопросов
    const container = document.createElement('div');
    container.id = 'areas-container';
    container.style.textAlign = 'center'; // Выравниваем текст по центру (для заголовка)
    container.style.cursor = 'pointer'; // Меняем курсор на указатель при наведении


    // Создаем элемент для отображения content (изначально скрыт)
    const contentDiv = document.createElement('div');
    contentDiv.className = 'content';
    contentDiv.innerHTML = `<p>${questions.content}</p>`;
    contentDiv.style.display = 'none'; // Скрываем content изначально
    contentDiv.style.textAlign = 'left'; // Выравниваем текст по левому краю

    contentDiv.style.display = 'block'; // Показываем content

    container.appendChild(contentDiv);

    // Добавляем контейнер на страницу
    document.body.appendChild(container);
}


function displayTitleQuestions(questions) {
    // Создаем HTML для отображения вопроса и ответа
    const html = `
        <div class="question-container">
            <div class="table-of-content">
                <h1>${questions.tableOfContent}</h1>
            </div>
            <div class="content" style="display: none;">
                <p>${questions.content}</p>
            </div>
        </div>
    `;

    return html;
}


// Находим кнопку user-button-6
const userButton6 = document.getElementById('user-button-6');

// Добавляем обработчик события click для кнопки user-button-6
userButton6.addEventListener('click', function(event) {
    event.preventDefault(); // Предотвращаем стандартное поведение, если это ссылка
    event.stopPropagation(); // Останавливаем всплытие события
    // Очищаем старые контейнеры
    clearContainersFull();

    // Скрываем форму добавления теста
    hideAddTestForm();

    // Отправляем запрос на сервер для получения случайного вопроса с учётом сложности
    fetch(`/api/topics/random?difficulty=${selectedDifficulty}`)
        .then(response => response.json())
        .then(questions => {
            // Получаем HTML для отображения вопроса и ответа
            const questionHtml = displayTitleQuestions(questions);

            // Отображаем вопрос в SweetAlert2
            Swal.fire({
                title: 'Случайный вопрос',
                html: questionHtml, // Вставляем HTML с вопросом
                icon: 'question', // Иконка вопроса
                confirmButtonText: 'Посмотреть ответ', // Текст кнопки
                showCancelButton: false, // Скрываем кнопку "Отмена"
                customClass: {
                    popup: 'custom-swal-popup', // Класс для кастомного стиля
                },
                didOpen: () => {
                    // Добавляем стили динамически
                    const style = document.createElement('style');
                    style.textContent = `
                    
                        .swal2-popup {
                            font-family: 'Montserrat', sans-serif !important;
                        }
                        .question-container {
                            border: 2px solid #4CAF50;
                            border-radius: 10px;
                            padding: 20px;
                            background-color: #f9f9f9;
                            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                            max-width: 600px;
                            margin: 0 auto;
                        }
                        .table-of-content h1 {
                            font-size: 1.5em;
                            color: #333;
                            margin-bottom: 15px;
                            text-align: center;
                        }
                        .content p {
                            font-size: 1.2em;
                            color: #555;
                            line-height: 1.6;
                            text-align: justify;
                        }
                    `;
                    document.head.appendChild(style);

                    // Добавляем обработчик для кнопки "Посмотреть ответ"
                    const confirmButton = Swal.getConfirmButton();
                    confirmButton.addEventListener('click', () => {
                        displayQuestion(questions);
                    });
                },
            });
        })
        .catch(error => {
            console.error('Ошибка:', error);
            Swal.fire({
                title: 'Ошибка',
                text: 'Произошла ошибка при загрузке вопроса.',
                icon: 'error', // Иконка ошибки
                confirmButtonText: 'OK',
            });
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
let currentArea = null; // Для хранения текущей выбранной области

// Функция для создания выпадающих кнопок по областям
function createAreaButtons() {
    const container = document.createElement('div');
    container.id = 'areas-container';
    container.className = 'areas-container';

    const title = document.createElement('h2');
    title.textContent = 'Выберите раздел';
    title.className = 'areas-title';
    container.appendChild(title);

    const grid = document.createElement('div');
    grid.className = 'areas-grid';

    const areas = Object.values(TopicArea);

    areas.forEach(area => {
        const areaCard = document.createElement('div');
        areaCard.className = 'area-card';
        areaCard.dataset.area = area;

        const areaIcon = document.createElement('div');
        areaIcon.className = 'area-icon';

        switch(area) {
            case 'OOP':
                areaIcon.innerHTML = '<i class="fas fa-shapes"></i>';
                break;
            case 'JAVA_CORE':
                areaIcon.innerHTML = '<i class="fas fa-coffee"></i>';
                break;
            case 'GIT':
                areaIcon.innerHTML = '<i class="fas fa-code-branch"></i>';
                break;
            case 'SPRING':
                areaIcon.innerHTML = '<i class="fas fa-leaf"></i>';
                break;
            case 'DATA_BASE':
                areaIcon.innerHTML = '<i class="fas fa-database"></i>';
                break;
            case 'MULTITHREADING':
                areaIcon.innerHTML = '<i class="fas fa-tasks"></i>';
                break;
            case 'COLLECTIONS':
                areaIcon.innerHTML = '<i class="fas fa-layer-group"></i>';
                break;
            case 'TEST':
                areaIcon.innerHTML = '<i class="fas fa-vial"></i>';
                break;
            case 'STREAM':
                areaIcon.innerHTML = '<i class="fas fa-stream"></i>';
                break;
            case 'SQL':
                areaIcon.innerHTML = '<i class="fas fa-table"></i>';
                break;
            case 'HIBERNATE':
                areaIcon.innerHTML = '<i class="fas fa-hippo"></i>';
                break;
            case 'HTTP':
                areaIcon.innerHTML = '<i class="fas fa-globe"></i>';
                break;
            case 'ALGORITHMS':
                areaIcon.innerHTML = '<i class="fas fa-sort-amount-down"></i>';
                break;
            case 'ORM':
                areaIcon.innerHTML = '<i class="fas fa-project-diagram"></i>';
                break;
            case 'SYSTEM_DESIGN':
                areaIcon.innerHTML = '<i class="fas fa-sitemap"></i>';
                break;
            case 'DOCKER':
                areaIcon.innerHTML = '<i class="fab fa-docker"></i>';
                break;
            case 'KUBERNETES':
                areaIcon.innerHTML = '<i class="fas fa-ship"></i>';
                break;
            default:
                areaIcon.innerHTML = '<i class="fas fa-book"></i>';
        }

        const areaName = document.createElement('div');
        areaName.className = 'area-name';
        areaName.textContent = area.replace('_', ' ');

        const areaCount = document.createElement('div');
        areaCount.className = 'area-count';
        areaCount.textContent = '0 тем';

        areaCard.appendChild(areaIcon);
        areaCard.appendChild(areaName);
        areaCard.appendChild(areaCount);

        areaCard.addEventListener('click', () => {
            loadTopicsByArea(area);
            currentArea = area;
        });

        grid.appendChild(areaCard);
    });

    container.appendChild(grid);
    document.body.appendChild(container);
}

// Функция для загрузки тем по области
function loadTopicsByArea(area) {
    clearContainers();
    clearContainersFull();

    const loader = document.createElement('div');
    loader.className = 'loader';
    loader.innerHTML = '<div class="spinner"></div><p>Загрузка тем...</p>';
    document.body.appendChild(loader);

    fetch(`/api/topics/by-area/${area}`)
    .then(response => response.json())
    .then(topics => {
        loader.remove();
        displayAreaTopics(topics, area);
    })
    .catch(error => {
        console.error('Ошибка:', error);
        loader.remove();
        Swal.fire({
            icon: 'error',
            title: 'Ошибка',
            text: 'Произошла ошибка при загрузке тем.',
        });
    });
}

// Функция для отображения тем в выбранной области
function displayAreaTopics(topics, area) {
    const container = document.createElement('div');
    container.id = 'topics-area-container';
    container.className = 'topics-area-container';

    const backButton = document.createElement('button');
    backButton.className = 'back-button';
    backButton.innerHTML = '<i class="fas fa-arrow-left"></i> Назад к разделам';
    backButton.addEventListener('click', () => {
        container.remove();
        createAreaButtons();
    });

    const title = document.createElement('h2');
    title.className = 'area-topics-title';
    title.textContent = `${area.replace('_', ' ')} (${topics.length} тем)`;

    const grid = document.createElement('div');
    grid.className = 'topics-grid';

    if (topics.length === 0) {
        grid.innerHTML = '<div class="no-topics">Темы не найдены</div>';
    } else {
        topics.forEach(topic => {
            const topicCard = document.createElement('div');
            topicCard.className = 'topic-card';
            topicCard.dataset.topicId = topic.id;

            const topicHeader = document.createElement('div');
            topicHeader.className = 'topic-header';

            const topicTitle = document.createElement('h3');
            topicTitle.className = 'topic-title';
            topicTitle.textContent = topic.tableOfContent;

            const difficultyBadge = document.createElement('span');
            difficultyBadge.className = `difficulty-badge ${topic.difficulty.toLowerCase()}`;
            difficultyBadge.textContent = getDifficultyText(topic.difficulty);

            topicHeader.appendChild(topicTitle);
            topicHeader.appendChild(difficultyBadge);

            const topicPreview = document.createElement('div');
            topicPreview.className = 'topic-preview';
            const previewText = topic.content.length > 150
                ? topic.content.substring(0, 150) + '...'
                : topic.content;
            topicPreview.textContent = previewText;

            const topicFooter = document.createElement('div');
            topicFooter.className = 'topic-footer';

            const readMoreBtn = document.createElement('button');
            readMoreBtn.className = 'read-more-btn';
            readMoreBtn.innerHTML = '<i class="fas fa-book-open"></i> Читать';
            readMoreBtn.addEventListener('click', (e) => {
                e.stopPropagation();
                showTopicContent(topic);
            });

            topicFooter.appendChild(readMoreBtn);

            topicCard.appendChild(topicHeader);
            topicCard.appendChild(topicPreview);
            topicCard.appendChild(topicFooter);

            topicCard.addEventListener('click', () => {
                showTopicContent(topic);
            });

            grid.appendChild(topicCard);
        });
    }

    container.appendChild(backButton);
    container.appendChild(title);
    container.appendChild(grid);
    document.body.appendChild(container);
}

// Функция для отображения содержания темы
function showTopicContent(topic) {
    Swal.fire({
        title: topic.tableOfContent,
        html: `
            <div class="topic-content-modal">
                <div class="topic-content-header">
                    <span class="topic-area-badge">${topic.topicArea.replace('_', ' ')}</span>
                    <span class="topic-difficulty-badge ${topic.difficulty.toLowerCase()}">
                        ${getDifficultyText(topic.difficulty)}
                    </span>
                </div>
                <div class="topic-content-body">
                    ${topic.content}
                </div>
            </div>
        `,
        width: '90%',
        maxWidth: '900px',
        showCloseButton: true,
        showConfirmButton: false,
        customClass: {
            popup: 'topic-content-popup',
            container: 'topic-content-container-modal'
        },
        didOpen: () => {
            // Добавляем стили для форматирования контента из вашего HTML шаблона
            const style = document.createElement('style');
            style.textContent = `
                .topic-content-modal {
                    text-align: left;
                    max-height: 70vh;
                    overflow-y: auto;
                    padding: 10px;
                }
                .topic-content-header {
                    display: flex;
                    gap: 10px;
                    margin-bottom: 20px;
                    align-items: center;
                    flex-wrap: wrap;
                }
                .topic-area-badge {
                    background: #4CAF50;
                    color: white;
                    padding: 5px 10px;
                    border-radius: 15px;
                    font-size: 14px;
                    font-weight: 500;
                }
                .topic-difficulty-badge {
                    padding: 5px 10px;
                    border-radius: 15px;
                    font-size: 14px;
                    font-weight: bold;
                }
                .topic-difficulty-badge.easy {
                    background: #4CAF50;
                    color: white;
                }
                .topic-difficulty-badge.average {
                    background: #FF9800;
                    color: white;
                }
                .topic-difficulty-badge.devops {
                    background: #F44336;
                    color: white;
                }
                
                /* Стили из вашего HTML шаблона */
                .topic-content-body {
                    font-family: Arial, sans-serif;
                    line-height: 1.6;
                    color: #333;
                }
                
                .topic-content-body h1,
                .topic-content-body h2,
                .topic-content-body h3 {
                    color: #2563eb;
                    margin: 25px 0 15px 0;
                    font-weight: 600;
                    display: flex;
                    align-items: center;
                    gap: 10px;
                }
                
                .topic-content-body h1 {
                    font-size: 2.5em;
                    background: linear-gradient(90deg, #2563eb, #1d4ed8);
                    -webkit-background-clip: text;
                    -webkit-text-fill-color: transparent;
                    background-clip: text;
                    text-align: center;
                    margin-bottom: 40px;
                }
                
                .topic-content-body h2 {
                    font-size: 1.4em;
                }
                
                .topic-content-body h2::before {
                    content: "▸";
                    color: #3b82f6;
                    font-size: 1.2em;
                }
                
                .topic-content-body p {
                    margin-bottom: 15px;
                    color: #4a5568;
                    font-size: 16px;
                    line-height: 1.6;
                }
                
                .topic-content-body ul {
                    margin: 0;
                    padding-left: 25px;
                    margin-bottom: 15px;
                }
                
                .topic-content-body li {
                    margin: 12px 0;
                    padding-left: 10px;
                    color: #4a5568;
                    position: relative;
                    list-style-type: none;
                }
                
                .topic-content-body li::before {
                    content: "•";
                    color: #3b82f6;
                    font-weight: bold;
                    display: inline-block;
                    width: 1em;
                    margin-left: -1em;
                }
                
                .topic-content-body .keyword {
                    display: inline-block;
                    background: #dbeafe;
                    color: #1e40af;
                    padding: 4px 12px;
                    border-radius: 20px;
                    font-weight: 500;
                    font-size: 0.9em;
                    margin-right: 8px;
                    border: 1px solid #bfdbfe;
                }
                
                .topic-content-body code {
                    font-family: 'JetBrains Mono', 'Fira Code', monospace;
                    background: #1e293b;
                    color: #e2e8f0;
                    padding: 3px 8px;
                    border-radius: 6px;
                    font-size: 0.95em;
                    border: 1px solid #334155;
                    display: inline-block;
                    margin: 4px 0;
                }
                
                .topic-content-body .example-container {
                    background: #1e293b;
                    border-radius: 12px;
                    padding: 25px;
                    margin: 25px 0;
                    border: 1px solid #334155;
                }
                
                .topic-content-body .example-title {
                    color: #60a5fa;
                    font-weight: 500;
                    margin-bottom: 15px;
                    display: flex;
                    align-items: center;
                    gap: 10px;
                    font-size: 1.1em;
                }
                
                .topic-content-body .example-title::before {
                    content: "💡";
                }
                
                .topic-content-body .highlight-box {
                    background: linear-gradient(135deg, #f0f9ff, #e0f2fe);
                    border: 2px solid #bae6fd;
                    border-radius: 12px;
                    padding: 25px;
                    margin: 30px 0;
                    position: relative;
                }
                
                .topic-content-body .highlight-box::before {
                    content: "⚠️ Важно";
                    position: absolute;
                    top: -12px;
                    left: 25px;
                    background: white;
                    padding: 0 15px;
                    color: #0369a1;
                    font-weight: 600;
                    font-size: 0.9em;
                }
                
                .topic-content-body .type-grid {
                    display: grid;
                    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
                    gap: 15px;
                    margin: 20px 0;
                }
                
                .topic-content-body .type-card {
                    background: white;
                    border-radius: 12px;
                    padding: 20px;
                    text-align: center;
                    border: 2px solid #e2e8f0;
                    transition: all 0.3s ease;
                }
                
                .topic-content-body .type-card:hover {
                    border-color: #3b82f6;
                    transform: translateY(-3px);
                }
                
                .topic-content-body .type-card h3 {
                    margin: 0 0 10px 0;
                    color: #2563eb;
                    font-size: 1.1em;
                }
                
                .topic-content-body .type-card p {
                    margin: 0;
                    color: #64748b;
                    font-size: 0.9em;
                }
                
                /* Адаптивность */
                @media (max-width: 768px) {
                    .topic-content-body h1 {
                        font-size: 2em;
                    }
                    
                    .topic-content-body .type-grid {
                        grid-template-columns: 1fr;
                    }
                    
                    .topic-content-body .highlight-box {
                        padding: 20px;
                    }
                }
            `;
            document.head.appendChild(style);
        }
    });
}

// Функция для форматирования контента
function formatContent(content) {
    return content
}

// Функция для получения текста сложности
function getDifficultyText(difficulty) {
    switch(difficulty) {
        case 'EASY': return 'Лёгкий';
        case 'AVERAGE': return 'Средний';
        case 'DEVOPS': return 'DevOps';
        default: return difficulty;
    }
}


// // Функция для создания выпадающих кнопок по областям
//     function createAreaButtons() {
//         const container = document.createElement('div');
//         container.id = 'areas-container';
//         container.style.display = 'flex'; // Используем flexbox для расположения кнопок
//         container.style.flexWrap = 'wrap'; // Перенос кнопок на новую строку, если не хватает места
//         container.style.gap = '20px'; // Отступы между кнопками
//         container.style.padding = '20px'; // Отступы внутри контейнера
//         container.style.justifyContent = 'center'; // Центрируем кнопки
//
//         // Получаем все значения Enum (области тем)
//         const areas = Object.values(TopicArea);
//
//         areas.forEach(area => {
//             const areaButton = document.createElement('button');
//             areaButton.textContent = area; // Название области
//             areaButton.className = 'area-button'; // Добавляем класс для стилизации
//             areaButton.dataset.area = area; // Сохраняем область в data-атрибуте
//             areaButton.addEventListener('click', () => loadTopicsByArea(area)); // Обработчик клика
//             container.appendChild(areaButton);
//         });
//
//         // Добавляем контейнер на страницу
//         document.body.appendChild(container);
//     }

// // Функция для загрузки тем по области
//     function loadTopicsByArea(area) {
//         clearContainers();
//         clearContainersFull();
//         fetch(`/api/topics/by-area/${area}`)
//             .then(response => response.json())
//             .then(topics => {
//                 displayTopics(topics); // Отображаем темы
//             })
//             .catch(error => {
//                 console.error('Ошибка:', error);
//                 alert('Произошла ошибка при загрузке тем.');
//             });
//     }


// // Функция для отображения тем с пагинацией
//     function displayTopics(topics, page = 1, itemsPerPage = 12) {
//         const container = document.createElement('div');
//         container.id = 'topics-list-container';
//         container.className = 'topics-list-container';
//         container.innerHTML = '';
//
//         if (topics.length === 0) {
//             container.innerHTML = '<p>Темы не найдены.</p>';
//             return;
//         }
//
//         // Вычисляем начальный и конечный индексы для текущей страницы
//         const startIndex = (page - 1) * itemsPerPage;
//         const endIndex = startIndex + itemsPerPage;
//         const paginatedTopics = topics.slice(startIndex, endIndex);
//
//         // Отображаем темы для текущей страницы
//         paginatedTopics.forEach(topic => {
//             const topicDiv = document.createElement('div');
//             topicDiv.className = 'topic-item';
//             topicDiv.innerHTML = `
//             <p class="topic-title" data-topic-id="${topic.id}">${topic.tableOfContent}</p>`;
//             topicDiv.querySelector('.topic-title').addEventListener('click', () => {
//                 loadTopicContent(topic.id); // Загружаем содержимое темы
//                 setActiveTopic(topicDiv); // Выделяем активную тему
//             });
//             container.appendChild(topicDiv);
//         });
//
//         // Очищаем старые контейнеры и добавляем новый
//        clearContainersLibrary();
//         document.body.appendChild(container);
//
//
//         // Добавляем пагинацию
//         addPagination(topics, page, itemsPerPage);
//
//         // Выделяем первую тему после добавления контейнера в DOM
//         if (paginatedTopics.length > 0) {
//             const firstTopic = container.querySelector('.topic-item'); // Теперь контейнер в DOM
//             if (firstTopic) {
//                 setActiveTopic(firstTopic); // Выделяем первую тему
//             }
//         }
//     }

// // Функция для добавления пагинации
//     function addPagination(topics, currentPage, itemsPerPage) {
//         const totalPages = Math.ceil(topics.length / itemsPerPage);
//
//         const paginationContainer = document.createElement('div');
//         paginationContainer.className = 'pagination-container';
//
// // Кнопка "Назад"
//         const prevButton = document.createElement('button');
//         clearPagination();
//         prevButton.innerHTML = '&larr;'; // Левый стрелка (←)
//         prevButton.disabled = currentPage === 1;
//         prevButton.classList.add('pagination-button', 'prev-button');
//         prevButton.addEventListener('click', () => {
//             displayTopics(topics, currentPage - 1, itemsPerPage);
//         });
//         paginationContainer.appendChild(prevButton);
//
// // Кнопка "Вперед"
//         const nextButton = document.createElement('button');
//         clearPagination();
//         nextButton.innerHTML = '&rarr;'; // Правый стрелка (→)
//         nextButton.disabled = currentPage === totalPages;
//         nextButton.classList.add('pagination-button', 'next-button');
//         nextButton.addEventListener('click', () => {
//             displayTopics(topics, currentPage + 1, itemsPerPage);
//         });
//         paginationContainer.appendChild(nextButton);
//
// // Добавляем пагинацию в DOM
//         document.body.appendChild(paginationContainer);
//     }



// // Функция для выделения активной темы
//     function setActiveTopic(activeTopic) {
//         const allTopics = document.querySelectorAll('.topic-item');
//         allTopics.forEach(topic => topic.classList.remove('active'));
//         activeTopic.classList.add('active');
//     }

//
// // Функция для загрузки содержимого темы
//     function loadTopicContent(topicId) {
//         fetch(`/api/topics/${topicId}`)
//             .then(response => response.json())
//             .then(topic => {
//                 displayTopicContent(topic); // Отображаем содержимое темы
//             })
//             .catch(error => {
//                 console.error('Ошибка:', error);
//                 alert('Произошла ошибка при загрузке содержимого темы.');
//             });
//     }

//
// // Функция для отображения содержимого темы
//     function displayTopicContent(topic) {
//         const container = document.createElement('div');
//         container.id = 'topic-content-container';
//         container.className = 'topic-content-container';
//         container.innerHTML = `<p>${topic.content}</p>`;
//
//         // Очищаем старые контейнеры и добавляем новый
//         clearContainers();
//         document.body.appendChild(container);
//     }


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
    isEditTableOpen = false;
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
            if (id === 'table-container'||id === 'content-display') {
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
        event.preventDefault(); // Предотвращаем стандартное поведение ссылки

        clearContainersFull();
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
    const topicDifficulty = document.getElementById('topic-difficulty').value; // Получаем выбранную сложность

    // Создаем объект с данными
    const data = {
        topicArea: topicArea,
        content: content,
        tableOfContent: tableOfContent,
        difficulty: topicDifficulty // Добавляем сложность в данные
    };
    console.log(data);

    // Извлекаем CSRF-токен и имя заголовка из мета-тегов
    const csrfToken = document.querySelector('meta[name="_csrf"]').content;
    const csrfHeader = document.querySelector('meta[name="_csrf_header"]').content;

    // Отправляем данные на сервер
    fetch('/api/topics', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            [csrfHeader]: csrfToken // Добавляем CSRF-токен в заголовки
        },
        body: JSON.stringify(data)
    })
        .then(response => {
            if (!response.ok) {
                throw new Error('Ошибка сети или сервера');
            }
            return response.json();
        })
        .then(result => {
            Swal.fire({
                icon: 'success',
                title: 'Успех!',
                text: 'Тема успешно добавлена!',
            });
            console.log(result);
            hideAddTopicForm(); // Скрываем форму после успешного добавления
            clearAddTopicForm(); // Очищаем поля формы
            // loadAllTopics(); // Обновляем список тем
        })
        .catch(error => {
            console.error('Ошибка:', error);
            Swal.fire({
                icon: 'error',
                title: 'Ошибка',
                text: 'Произошла ошибка при добавлении темы.',
            });
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


let isEditTableOpen = false; // По умолчанию таблица для редактирования закрыта






//
// Функция для загрузки тем по поисковому запросу
function loadTopicsBySearchs(query, searchType) {
    clearContainers(); // Очищаем контейнеры перед загрузкой новых данных
    clearContainersFull();
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



function loadTopicsBySearch(query, searchType) {
    if (isEditTableOpen) {
        // Если открыта таблица для редактирования, применяем поиск к ней
        searchLibrary(query, searchType);
    } else {
        // Если таблица для редактирования закрыта, применяем поиск к библиотеке
        loadTopicsBySearchs(query, searchType);
    }
}

// Функция для поиска в таблице для редактирования
function searchLibrary(query, searchType) {
    const editTableBody = document.querySelector('#topics-table tbody');
    editTableBody.innerHTML = ''; // Очищаем таблицу перед загрузкой новых данных

    // Определяем URL в зависимости от типа поиска
    const url = searchType === 'theme'
        ? `/api/topics/search/theme?query=${encodeURIComponent(query)}`
        : `/api/topics/search/content?query=${encodeURIComponent(query)}`;

    fetch(url) // Отправляем запрос на сервер
        .then(response => response.json())
        .then(topics => {
            allData = topics; // Обновляем глобальный массив allData
            displayData(); // Отображаем данные в таблице для редактирования
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



function displayData(searchQuery = '', searchType = 'theme') {
    const tableBody = document.querySelector('#topics-table tbody');
    tableBody.innerHTML = '';
    currentLanguage = localStorage.getItem('language') || 'en';

    // Фильтруем данные на основе поискового запроса
    let filteredData = allData;
    if (searchQuery) {
        filteredData = allData.filter(topic => {
            if (searchType === 'theme') {
                // Поиск по теме (tableOfContent)
                return topic.tableOfContent.toLowerCase().includes(searchQuery.toLowerCase());
            } else if (searchType === 'content') {
                // Поиск по содержанию (content)
                return topic.content.toLowerCase().includes(searchQuery.toLowerCase());
            }
            return true; // Если тип поиска не указан, возвращаем все данные
        });
    }

    // Пагинация для отфильтрованных данных
    const start = (currentPage - 1) * itemsPerPage;
    const end = start + itemsPerPage;
    const pageData = filteredData.slice(start, end);
    const lang = translations[currentLanguage] || translations.en;

    // Отображаем отфильтрованные данные
    pageData.forEach((topic, index) => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${topic.tableOfContent}</td>
            <td>${topic.topicArea}</td>
            <td>${topic.difficulty}</td> <!-- Отображаем сложность -->
            <td class="action-buttons">
                <button class="edit">${lang.edit}</button>
                <button class="save" style="display: none;">${lang.save}</button>
                <button class="delete">${lang.delete}</button>
            </td>
        `;

        // Обработчик для отображения content при нажатии на строку
        row.addEventListener('click', (e) => {
            if (e.target.tagName === 'BUTTON') return;

            document.getElementById('content-display').style.display = 'block';
            document.getElementById('content-text').value = topic.content || "Нет данных";
        });

        // Обработчик для кнопки редактирования
        row.querySelector('.edit').addEventListener('click', (e) => {
            e.stopPropagation();
            document.getElementById('content-display').style.display = 'block';
            document.getElementById('content-text').value = topic.content || "Нет данных";
            document.getElementById('content-text').disabled = false;
            enableEditMode(row, topic);
        });

        // Обработчик для кнопки сохранения
        row.querySelector('.save').addEventListener('click', (e) => {
            e.stopPropagation();
            saveChanges(row, topic);
            document.getElementById('content-text').disabled = true;
        });

        // Обработчик для кнопки удаления
        row.querySelector('.delete').addEventListener('click', (e) => {
            e.stopPropagation();
            confirmDelete(topic);
            document.getElementById('content-display').style.display = 'none';
        });

        tableBody.appendChild(row);
    });

    // Обновляем информацию о странице
    document.getElementById('page-info').textContent = `${currentPage} ... ${Math.ceil(filteredData.length / itemsPerPage)}`;
}




// Включение режима редактирования
function enableEditMode(row, topic) {
    if (editingRow) {
        disableEditMode(editingRow);
    }

    editingRow = { row, topic };

    const cells = row.querySelectorAll('td');

    // Редактирование названия темы
    const titleInput = document.createElement('input');
    titleInput.type = 'text';
    titleInput.value = topic.tableOfContent;
    titleInput.style.width = '100%';
    titleInput.style.padding = '8px';
    titleInput.style.border = '1px solid #ccc';
    titleInput.style.borderRadius = '4px';
    titleInput.style.fontSize = '14px';

    cells[0].innerHTML = '';
    cells[0].appendChild(titleInput);

    // Редактирование области темы
    const areaSelect = document.createElement('select');
    areaSelect.style.width = '100%';
    areaSelect.style.padding = '8px';
    areaSelect.style.border = '1px solid #ccc';
    areaSelect.style.borderRadius = '4px';
    areaSelect.style.fontSize = '14px';

    const areaOptions = [
        'OOP', 'JAVA_CORE', 'GIT', 'SPRING', 'DATA_BASE', 'MULTITHREADING', 'OTHER',
        'COLLECTIONS', 'TEST', 'STREAM', 'SQL', 'HIBERNATE', 'HTTP', 'ALGORITHMS', 'ORM', 'SYSTEM_DESIGN','BASIC_CONCEPTS','DOCKER','KUBERNETES'
    ];

    areaOptions.forEach(optionValue => {
        const option = document.createElement('option');
        option.value = optionValue;
        option.textContent = optionValue;
        if (optionValue === topic.topicArea) {
            option.selected = true;
        }
        areaSelect.appendChild(option);
    });

    cells[1].innerHTML = '';
    cells[1].appendChild(areaSelect);

    // Редактирование сложности
    const difficultySelect = document.createElement('select');
    difficultySelect.style.width = '100%';
    difficultySelect.style.padding = '8px';
    difficultySelect.style.border = '1px solid #ccc';
    difficultySelect.style.borderRadius = '4px';
    difficultySelect.style.fontSize = '14px';

    const difficultyOptions = ['EASY', 'AVERAGE', 'DEVOPS']; // Варианты сложности
    difficultyOptions.forEach(optionValue => {
        const option = document.createElement('option');
        option.value = optionValue;
        option.textContent = optionValue;
        if (optionValue === topic.difficulty) {
            option.selected = true;
        }
        difficultySelect.appendChild(option);
    });

    cells[2].innerHTML = '';
    cells[2].appendChild(difficultySelect);

    // Показываем кнопку "Сохранить" и скрываем "Редактировать"
    row.querySelector('.edit').style.display = 'none';
    row.querySelector('.save').style.display = 'inline-block';

    editingRow = null;
}

const language = {
    en: 'en',
    ru: 'ru',
    de: 'de'
};

let currentLanguage = localStorage.getItem('language') || 'en'; // По умолчанию 'EASY'

// Объект с переводами для сохранения изменений
const saveTranslations = {
    en: {
        changesSaved: 'Changes saved!',
        saveError: 'Failed to save changes',
        errorTitle: 'Error',
    },
    ru: {
        changesSaved: 'Изменения сохранены!',
        saveError: 'Не удалось сохранить изменения',
        errorTitle: 'Ошибка',
    },
    de: {
        changesSaved: 'Änderungen gespeichert!',
        saveError: 'Änderungen konnten nicht gespeichert werden',
        errorTitle: 'Fehler',
    }
};


// Функция для сохранения изменений
function saveChanges(row, topic) {
    const cells = row.querySelectorAll('td');

    // Получаем новые значения из полей редактирования
    topic.tableOfContent = cells[0].querySelector('input').value;
    topic.topicArea = cells[1].querySelector('select').value; // Новая область темы
    topic.difficulty = cells[2].querySelector('select').value; // Новая сложность
    topic.content = document.getElementById('content-text').value;


    // Извлекаем CSRF-токен и имя заголовка из мета-тегов
    const csrfToken = document.querySelector('meta[name="_csrf"]').content;
    const csrfHeader = document.querySelector('meta[name="_csrf_header"]').content;

    // Отправляем изменения на сервер
    fetch(`/api/topics/${topic.id}`, {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json',
            [csrfHeader]: csrfToken // Добавляем CSRF-токен в заголовки
        },
        body: JSON.stringify(topic) // Отправляем обновлённые данные темы
    })
        .then(response => {
            if (!response.ok) {
                throw new Error('Ошибка сети или сервера');
            }
            return response.json(); // Ожидаем JSON-ответ от сервера
        })
        .then(updatedTopic => {
            // Уведомляем пользователя об успешном обновлении
            Swal.fire({
                icon: 'success',
                title: 'Успех!',
                text: 'Тема успешно обновлена!',
            });

            // Выходим из режима редактирования
            disableEditMode();

            // Обновляем таблицу с данными
            displayData();
        })
        .catch(error => {
            console.error('Ошибка:', error);

            // Уведомляем пользователя об ошибке
            Swal.fire({
                icon: 'error',
                title: 'Ошибка',
                text: 'Произошла ошибка при обновлении темы.',
            });
        });
}

function disableEditMode() {
    if (!editingRow) return;

    const { row, topic } = editingRow;
    const cells = row.querySelectorAll('td');
    cells[0].innerHTML = topic.tableOfContent;
    cells[1].innerHTML = topic.topicArea;
    cells[2].innerHTML = topic.difficulty; // Отображаем сложность

    row.querySelector('.edit').style.display = 'inline-block';
    row.querySelector('.save').style.display = 'none';

    editingRow = null;
}


// Подтверждение удаления
async function confirmDelete(topic) {
    const result = await Swal.fire({
        title: 'Вы уверены?',
        text: 'Вы действительно хотите удалить эту запись?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#225e9f',
        cancelButtonColor: '#730611',
        confirmButtonText: 'Да, удалить!',
        cancelButtonText: 'Отмена'
    });

    if (result.isConfirmed) {
        try {
            // Извлекаем CSRF-токен и имя заголовка из мета-тегов
            const csrfToken = document.querySelector('meta[name="_csrf"]').content;
            const csrfHeader = document.querySelector('meta[name="_csrf_header"]').content;

            // Отправляем запрос на удаление с CSRF-токеном
            const response = await fetch(`/api/topics/${topic.id}`, {
                method: 'DELETE',
                headers: {
                    [csrfHeader]: csrfToken // Добавляем CSRF-токен в заголовки
                }
            });

            if (!response.ok) {
                throw new Error('Ошибка при удалении записи');
            }

            // Удаляем запись из локального массива
            allData = allData.filter(item => item.id !== topic.id);

            // Обновляем таблицу
            displayData();

            // Показываем уведомление об успешном удалении
            await Swal.fire({
                title: 'Успех!',
                text: 'Запись успешно удалена.',
                icon: 'success',
                confirmButtonText: 'OK'
            });
        } catch (error) {
            console.error('Ошибка:', error);

            // Показываем уведомление об ошибке
            await Swal.fire({
                title: 'Ошибка',
                text: 'Не удалось удалить запись.',
                icon: 'error',
                confirmButtonText: 'OK'
            });
        }
    }
}



// document.getElementById('user-button-4').addEventListener('click', async () => {
//     clearContainersForEdit(); // Очищаем контейнеры
//     hideAddTestForm(); // Скрываем форму добавления теста
//
//     // Открываем таблицу для редактирования
//     const tableContainer = document.getElementById('table-container');
//     tableContainer.style.display = 'block';
//
//     // Устанавливаем флаг, что таблица для редактирования открыта
//     isEditTableOpen = true;
//
//     try {
//         // Загружаем данные для таблицы редактирования
//         const response = await fetch('/api/topics/all');
//         if (!response.ok) throw new Error('Ошибка при загрузке данных');
//
//         allData = await response.json(); // Сохраняем данные в глобальный массив
//         displayData(); // Отображаем данные в таблице
//     } catch (error) {
//         console.error('Ошибка:', error);
//         alert('Произошла ошибка при загрузке данных.');
//     }
// });
//

const editButton = document.getElementById('user-button-4');
if (editButton) {
    editButton.addEventListener('click', async (event) => {
        event.preventDefault();
        event.stopPropagation();

        console.log('Кнопка "Редактировать темы" нажата');

        clearContainersForEdit();

        hideAddTestForm();

        const tableContainer = document.getElementById('table-container');
        if (tableContainer) {
            tableContainer.style.display = 'block';

            isEditTableOpen = true;

            try {
                const response = await fetch('/api/topics/all');
                if (!response.ok) throw new Error('Ошибка при загрузке данных');

                allData = await response.json();
                displayData();

                console.log('Таблица для редактирования успешно загружена');
            } catch (error) {
                console.error('Ошибка:', error);
                Swal.fire({
                    icon: 'error',
                    title: 'Ошибка',
                    text: 'Произошла ошибка при загрузке данных.',
                });
            }
        }
    });
} else {
    console.log('Кнопка "Редактировать темы" не найдена (пользователь не админ)');
}

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

document.addEventListener('DOMContentLoaded', () => {
    const modal = document.getElementById('user-menu-modal');
    const selectLanguageButton = document.getElementById('select-language-button');
    const editProfileButton = document.getElementById('edit-profile-button');
    const difficultyProfileButton = document.getElementById('difficulty-profile-button');
    const languageSelectionForm = document.getElementById('language-selection-form');
    const editProfileForm = document.getElementById('edit-profile-form');
    const difficultyProfileForm = document.getElementById('difficulty-selection-form');

    // Обработчик клика на кнопку "Редактировать профиль"
    editProfileButton.addEventListener('click', () => {
        editProfileForm.classList.toggle('hidden'); // Показываем/скрываем форму редактирования
        languageSelectionForm.classList.add('hidden'); // Скрываем меню выбора языка
        difficultyProfileForm.classList.add('hidden'); // Скрываем форму редактирования
    });

    // Обработчик клика на кнопку "Выбрать язык"
    selectLanguageButton.addEventListener('click', () => {
        languageSelectionForm.classList.toggle('hidden'); // Показываем/скрываем меню выбора языка
        difficultyProfileForm.classList.add('hidden'); // Скрываем форму редактирования
        editProfileForm.classList.add('hidden'); // Скрываем форму редактирования
    });

    // Обработчик клика на кнопку "Выбрать сложность"
    difficultyProfileButton.addEventListener('click', () => {
        difficultyProfileForm.classList.toggle('hidden'); // Показываем/скрываем меню выбора языка
        languageSelectionForm.classList.add('hidden'); // Скрываем меню выбора языка
        editProfileForm.classList.add('hidden'); // Скрываем форму редактирования
    });

    // Обработка выбора языка
    document.querySelectorAll('.language-option').forEach(button => {
        button.addEventListener('click', () => {
            const selectedLanguage = button.getAttribute('data-lang');
            // Получаем переводы для выбранного языка
            const lang = translations[selectedLanguage];
            changeLanguage(selectedLanguage);

            // Используем SweetAlert2 для красивого уведомления
            Swal.fire({
                title: lang.languageChanged, // Заголовок на выбранном языке
                text: `${lang.selectedLanguage} ${selectedLanguage}`, // Текст на выбранном языке
                icon: 'success', // Иконка (success, error, warning, info, question)
                confirmButtonText: lang.okButton, // Текст кнопки на выбранном языке
                timer: null, // Отключаем автоматическое закрытие
                customClass: {
                    popup: 'custom-swal-popup', // Класс для кастомного стиля
                },
            }).then((result) => {
                // Если пользователь нажал "OK", перезагружаем страницу
                if (result.isConfirmed) {
                    window.location.reload();
                }
            });
            // Здесь можно добавить логику для изменения языка
            languageSelectionForm.classList.add('hidden'); // Скрываем меню выбора языка
        });
    });

    function changeLanguage(language) {
        localStorage.setItem('language', language); // Сохраняем язык
        currentLanguage = language; // Обновляем переменную
        highlightSelectedLanguage();
    }

    // Закрытие модального окна при клике на крестик
    modal.querySelector('.close').addEventListener('click', () => {
        modal.style.display = 'none';
    });

    // Закрытие модального окна при клике вне его области
    window.addEventListener('click', (event) => {
        if (event.target === modal) {
            modal.style.display = 'none';
        }
    });

    // Обработчик клика на элемент с id="user-profile"
    document.addEventListener('click', async (event) => {
        if (event.target.id === 'user-profile') {
            event.preventDefault(); // Предотвращаем переход по ссылке

            try {
                const response = await fetch('/profile'); // Замените на ваш API-эндпоинт
                if (!response.ok) {
                    throw new Error('Ошибка при получении данных');
                }
                const userData = await response.json();

                // Отображаем меню с данными пользователя
                showUserMenu(userData);
            } catch (error) {
                console.error('Ошибка:', error);
            }
        }

        // Обработчик клика на элемент с id="logout-button"
        if (event.target.id === 'logout-button') {
            event.preventDefault();
            fetch('/logout', { method: 'POST' }) // Замените на ваш эндпоинт для выхода
                .then(() => {
                    window.location.href = '/login'; // Перенаправление на страницу входа
                })
                .catch((error) => {
                    console.error('Ошибка при выходе:', error);
                });
        }
    });

    // Функция для отображения меню с данными пользователя
    function showUserMenu(userData) {
        const registrationDate = new Date(userData.registrationDate).toLocaleDateString();

        if (!modal) {
            console.error('Модальное окно не найдено');
            return;
        }

        // Заполняем данные пользователя
        modal.querySelector('#user-first-name').textContent = userData.firstName;
        modal.querySelector('#user-last-name').textContent = userData.lastName;
        modal.querySelector('#user-email').textContent = userData.email;
        modal.querySelector('#user-registration-date').textContent = registrationDate;

        // Очищаем поля формы редактирования
        modal.querySelector('#edit-first-name').value = "";
        modal.querySelector('#edit-last-name').value = "";
        modal.querySelector('#edit-password').value = "";

        // Показываем модальное окно
        modal.style.display = 'block';
    }
});

function changeLanguage(lang) {
    // Отправляем запрос на сервер для изменения языка
    fetch(`/change-language?language=${lang}`, {
        method: 'GET'
    }).then(response => {
        if (response.ok) {
            // После успешной смены языка обновляем страницу
            // window.location.reload();
            console.log(`Language changed to ${lang}`);
        } else {
            console.error('Failed to change language');
        }
    });
}

document.querySelectorAll('.language-option').forEach(button => {
    button.addEventListener('click', () => {
        const selectedLanguage = button.getAttribute('data-lang');
        changeLanguage(selectedLanguage); // Меняем язык
        document.getElementById('language-selection-form').classList.add('hidden'); // Скрываем меню выбора языка
    });
});

function highlightSelectedDifficulty() {
    const selectedDifficulty = localStorage.getItem('difficulty') || 'EASY';
    const difficultyButtons = document.querySelectorAll('.difficulty-option');

    difficultyButtons.forEach(button => {
        if (button.getAttribute('data-difficulty') === selectedDifficulty) {
            button.classList.add('active');
        } else {
            button.classList.remove('active');
        }
    });
}

// Функция для подсветки выбранного языка
function highlightSelectedLanguage() {
    currentLanguage = localStorage.getItem('language') || 'en';
    const languageButtons = document.querySelectorAll('.language-option');
    console.log(currentLanguage)

    languageButtons.forEach(button => {
        if (button.getAttribute('data-lang') === currentLanguage) {
            button.classList.add('active');
        } else {
            button.classList.remove('active');
        }
    });
}

// Обработчики для кнопок выбора языка
document.querySelectorAll('.language-option').forEach(button => {
    button.addEventListener('click', () => {
        // Получаем выбранный язык из атрибута data-language
        const currentLanguage = button.getAttribute('data-language');

        // Сохраняем выбранный язык в localStorage
        localStorage.setItem('language', currentLanguage);

        // Подсвечиваем выбранный язык
        highlightSelectedLanguage();

        // Показываем уведомление
        Swal.fire({
            title: `Выбран язык: ${currentLanguage === 'en' ? 'Английский' : 'Русский'}`,
            icon: 'success', // Иконка успеха
            confirmButtonText: 'OK',
            timer: null, // Отключаем автоматическое закрытие
            customClass: {
                popup: 'custom-swal-popup', // Класс для кастомного стиля
            },
        });
    });
});


// Обработчики для кнопок выбора сложности
document.querySelectorAll('.difficulty-option').forEach(button => {
    button.addEventListener('click', () => {
        // Получаем выбранную сложность из атрибута data-difficulty
        selectedDifficulty = button.getAttribute('data-difficulty');

        // Сохраняем выбранную сложность в localStorage
        localStorage.setItem('difficulty', selectedDifficulty);

        // Подсвечиваем выбранную сложность
        highlightSelectedDifficulty();

        // Показываем уведомление
        Swal.fire({
            title: `Выбрана сложность: ${selectedDifficulty}`,
            icon: 'success', // Иконка успеха
            confirmButtonText: 'OK',
            timer: null, // Отключаем автоматическое закрытие
            customClass: {
                popup: 'custom-swal-popup', // Класс для кастомного стиля
            },
        });
    });
});


// Инициализация при загрузке страницы
document.addEventListener('DOMContentLoaded', () => {
    if (!localStorage.getItem('language')) {
        localStorage.setItem('language', 'en');
    }

    highlightSelectedLanguage();
    highlightSelectedDifficulty();

});



//СОХРАНЕНИЕ ИЗМЕНЕНИЙ В ПРОФИЛЕ
document.getElementById('save-profile-button').addEventListener('click', function () {
    // Собираем данные из полей формы
    const firstName = document.getElementById('edit-first-name').value;
    const lastName = document.getElementById('edit-last-name').value;
    const password = document.getElementById('edit-password').value;

    // Проверка на пустые поля (опционально)
    if (!firstName || !lastName || !password) {
        Swal.fire({
            icon: 'error',
            title: 'Ошибка',
            text: 'Все поля должны быть заполнены!',
        });
        return;
    }

    // Создаем объект с данными для отправки
    const data = {
        firstName: firstName,
        lastName: lastName,
        password: password
    };

    // Отправляем данные на сервер
    fetch('/update', {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json',
            // Добавляем CSRF-токен, если используется Spring Security
            'X-CSRF-TOKEN': document.querySelector('meta[name="_csrf"]').content
        },
        body: JSON.stringify(data)
    })
        .then(response => {
            if (response.ok) {
                return response.text(); // Получаем текстовый ответ от сервера
            } else {
                throw new Error('Ошибка при обновлении профиля');
            }
        })
        .then(message => {
            // Уведомляем пользователя об успешном обновлении
            Swal.fire({
                icon: 'success',
                title: 'Успех!',
                text: message,
            });
            // Скрываем форму редактирования
            document.getElementById('edit-profile-form').classList.add('hidden');
        })
        .catch(error => {
            console.error('Ошибка:', error);
            // Уведомляем пользователя об ошибке
            Swal.fire({
                icon: 'error',
                title: 'Ошибка',
                text: 'Произошла ошибка при обновлении профиля.',
            });
        });
});
