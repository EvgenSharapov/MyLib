// import { LibraryManager } from './modules/features/library.js';
// import { EditManager } from './modules/features/editing.js';
// import { SearchManager } from './modules/features/search.js';
// import { ProfileManager } from './modules/features/profile.js';
// import { EventManager } from './event-handlers.js';
// import { Helpers } from './modules/utils/helpers.js';
// import { StorageManager } from './modules/utils/storage.js';
//
// class App {
//   constructor() {
//     this.library = new LibraryManager();
//     this.editor = new EditManager();
//     this.search = new SearchManager();
//     this.profile = new ProfileManager();
//     this.events = new EventManager(this);
//
//     this.init();
//   }
//
//   init() {
//     this.restoreState();
//     this.setupInitialUI();
//   }
//
//   restoreState() {
//     // Восстанавливаем язык и сложность
//     Helpers.highlightSelectedLanguage();
//     Helpers.highlightSelectedDifficulty();
//
//     // Восстанавливаем последний поиск
//     const lastSearch = StorageManager.getLastSearch();
//     if (lastSearch.query) {
//       // Восстанавливаем состояние поиска
//       const searchInput = document.getElementById('search-input');
//       if (searchInput) {
//         searchInput.value = lastSearch.query;
//       }
//
//       // Устанавливаем тип поиска
//       if (lastSearch.type === 'content') {
//         const searchContentButton = document.getElementById('search-content-button');
//         if (searchContentButton) {
//           searchContentButton.classList.add('active');
//         }
//         const searchThemeButton = document.getElementById('search-theme-button');
//         if (searchThemeButton) {
//           searchThemeButton.classList.remove('active');
//         }
//         this.search.searchType = 'content';
//       }
//     }
//
//     // Восстанавливаем текущую область
//     const currentArea = StorageManager.getCurrentArea();
//     if (currentArea) {
//       this.library.currentArea = currentArea;
//     }
//   }
//
//   setupInitialUI() {
//     // Инициализация выпадающего меню пользователя
//     this.initUserDropdown();
//
//     // Проверяем, нужно ли показать библиотеку по умолчанию
//     if (window.location.hash === '#library' || !window.location.hash) {
//       this.library.createAreaButtons();
//     }
//   }
//
//   initUserDropdown() {
//     const userButton2 = document.getElementById('user-button-2');
//     if (userButton2) {
//       userButton2.innerHTML = '<i class="fas fa-user"></i>';
//
//       userButton2.addEventListener('click', (e) => {
//         e.preventDefault();
//         e.stopPropagation();
//
//         const dropdownMenu = document.querySelector('.right-dropdown');
//         if (dropdownMenu) {
//           dropdownMenu.classList.toggle('show');
//         }
//
//         const otherMenus = document.querySelectorAll('.dropdown-menu:not(.right-dropdown)');
//         otherMenus.forEach(menu => menu.classList.remove('show'));
//       });
//     }
//   }
// }
//
// // Инициализация приложения при загрузке DOM
// document.addEventListener('DOMContentLoaded', () => {
//   window.app = new App();
//
//   // Глобальные обработчики для совместимости со старым кодом
//   window.clearContainersFull = () => {
//     Helpers.clearAllContainers();
//   };
//
//   window.removeTopicsAreaContainer = () => {
//     Helpers.removeTopicsAreaContainer();
//   };
//
//   console.log('Приложение инициализировано');
// });

// Этот файл обеспечивает обратную совместимость со старым кодом

import { Helpers } from 'static/js/modules/utils/helpers.js';

// Экспортируем глобальные функции для обратной совместимости
window.clearContainersFull = () => {
  Helpers.clearAllContainers();
};

window.removeTopicsAreaContainer = () => {
  Helpers.removeTopicsAreaContainer();
};

window.highlightSelectedLanguage = () => {
  Helpers.highlightSelectedLanguage();
};

// Запускаем инициализацию
document.addEventListener('DOMContentLoaded', () => {
  Helpers.highlightSelectedLanguage();
  Helpers.highlightSelectedDifficulty();

  console.log('Legacy adapter loaded');
});