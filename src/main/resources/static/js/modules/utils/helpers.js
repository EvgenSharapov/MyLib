import { translations } from 'static/js/modules/config/constants.js';

export class Helpers {
  static formatAreaName(area) {
    return area
    .replace(/_/g, ' ')
    .replace(/\b\w/g, char => char.toUpperCase());
  }

  static getTopicWord(count) {
    if (count % 10 === 1 && count % 100 !== 11) return 'тема';
    if (count % 10 >= 2 && count % 10 <= 4 &&
        (count % 100 < 10 || count % 100 >= 20)) return 'темы';
    return 'тем';
  }

  static getDifficultyText(difficulty) {
    const texts = {
      'EASY': 'Лёгкий',
      'AVERAGE': 'Средний',
      'DEVOPS': 'DevOps'
    };
    return texts[difficulty] || difficulty;
  }

  static getCurrentLanguage() {
    return localStorage.getItem('language') || 'en';
  }

  static getTranslation(key) {
    const lang = this.getCurrentLanguage();
    const langTranslations = translations[lang] || translations.en;
    return langTranslations[key] || key;
  }

  static getSelectedDifficulty() {
    return localStorage.getItem('difficulty') || 'EASY';
  }

  static clearAllContainers() {
    const containerIds = [
      'areas-container',
      'topics-area-container',
      'questions-container',
      'topics-container',
      'topic-content-container',
      'topics-list-container',
      'areas-containerEdit',
      'topics-list-containerEdit',
      'content-display',
      'areas-grid',
      'topics-grid',
      'search-results-container'
    ];

    containerIds.forEach(id => {
      const container = document.getElementById(id);
      if (container) {
        container.remove();
      }
    });

    const classSelectors = [
      '.areas-container',
      '.topics-area-container',
      '.topics-list-container',
      '.topic-content-container',
      '.areas-grid',
      '.topics-grid',
      '.area-card',
      '.topic-card'
    ];

    classSelectors.forEach(selector => {
      document.querySelectorAll(selector).forEach(element => {
        element.remove();
      });
    });

    // Скрываем формы
    this.hideAddTestForm();
    this.hideAddTopicForm();
  }

  static hideAddTestForm() {
    const form = document.getElementById('add-test-form');
    if (form) form.style.display = 'none';
  }

  static hideAddTopicForm() {
    const form = document.getElementById('add-topic-form');
    if (form) form.style.display = 'none';
  }

  static removeTopicsAreaContainer() {
    const container = document.querySelector('#topics-area-container, .topics-area-container');
    if (container) {
      container.remove();
    }

    document.querySelectorAll('.topic-card, .topics-grid, .topic-item').forEach(el => {
      el.remove();
    });
  }

  static highlightSelectedLanguage() {
    const currentLanguage = localStorage.getItem('language') || 'en';
    const languageButtons = document.querySelectorAll('.language-option');

    languageButtons.forEach(button => {
      if (button.getAttribute('data-lang') === currentLanguage) {
        button.classList.add('active');
      } else {
        button.classList.remove('active');
      }
    });
  }

  static highlightSelectedDifficulty() {
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

  static debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
      const later = () => {
        clearTimeout(timeout);
        func(...args);
      };
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
    };
  }
}