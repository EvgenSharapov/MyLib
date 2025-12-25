// Этот файл обеспечивает обратную совместимость со старым кодом

import { Helpers } from 'static/js/modules/utils/helpers';

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