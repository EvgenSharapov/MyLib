import { ApiService } from 'static/js/modules/api/requests.js';
import { UIHelper } from 'static/js/modules/ui/elements.js';
import { AreaCard, TopicCard } from 'static/js/modules/ui/components.js';
import { ModalManager } from '../ui/modals.js';
import { Helpers } from '../utils/helpers.js';
import { StorageManager } from '../utils/storage.js';

export class LibraryManager {
  constructor() {
    this.currentArea = null;
  }

  async createAreaButtons() {
    // Удаляем старые контейнеры
    Helpers.removeTopicsAreaContainer();
    Helpers.clearAllContainers();

    // Создаем новый контейнер
    const container = UIHelper.createContainer('areas-container', 'areas-container');

    const title = UIHelper.createElement('h2', 'areas-title');
    title.textContent = 'Выберите раздел';
    container.appendChild(title);

    const grid = UIHelper.createElement('div', 'areas-grid');
    container.appendChild(grid);

    // Показываем loader
    const loader = UIHelper.createLoader('Загрузка областей...');
    container.appendChild(loader);

    document.body.appendChild(container);

    try {
      const counts = await ApiService.fetchTopicCounts();
      loader.remove();
      this.renderAreaCards(grid, counts);
    } catch (error) {
      console.error('Ошибка загрузки статистики областей:', error);
      loader.remove();
      this.renderFallbackAreas(grid);
    }
  }

  renderAreaCards(grid, counts) {
    Object.keys(counts).forEach(area => {
      const topicCount = counts[area] || 0;
      const areaCard = new AreaCard(area, topicCount);
      const cardElement = areaCard.create();

      cardElement.addEventListener('click', () => {
        this.loadTopicsByArea(area);
        this.currentArea = area;
        StorageManager.setCurrentArea(area);

        // Добавляем визуальное выделение активной области
        document.querySelectorAll('.area-card').forEach(card => {
          card.classList.remove('active');
        });
        cardElement.classList.add('active');
      });

      grid.appendChild(cardElement);
    });
  }

  renderFallbackAreas(grid) {
    const areas = ['OOP', 'JAVA_CORE', 'GIT', 'SPRING', 'DATA_BASE', 'MULTITHREADING'];
    areas.forEach(area => {
      const areaCard = new AreaCard(area, 0);
      const cardElement = areaCard.create();

      cardElement.addEventListener('click', () => {
        this.loadTopicsByArea(area);
      });

      grid.appendChild(cardElement);
    });
  }

  async loadTopicsByArea(area) {
    const libraryContainer = document.getElementById('areas-container');
    if (libraryContainer) {
      libraryContainer.style.display = 'none';
    }

    Helpers.clearAllContainers();

    const loader = UIHelper.createLoader('Загрузка тем...');
    document.body.appendChild(loader);

    try {
      const topics = await ApiService.fetchTopicsByArea(area);
      loader.remove();
      this.displayAreaTopics(topics, area);
    } catch (error) {
      loader.remove();
      UIHelper.showNotification('Ошибка', 'Произошла ошибка при загрузке тем.', 'error');
    }
  }

  displayAreaTopics(topics, area) {
    const container = UIHelper.createContainer('topics-area-container', 'topics-area-container');

    // Кнопка "Назад"
    const backButton = UIHelper.createButton('<i class="fas fa-arrow-left"></i> Назад к разделам', 'back-button');
    backButton.addEventListener('click', () => {
      container.remove();
      const libraryContainer = document.getElementById('areas-container');
      if (libraryContainer) {
        libraryContainer.style.display = 'flex';
      }
    });

    // Заголовок
    const title = UIHelper.createElement('h2', 'area-topics-title');
    title.textContent = `${area.replace('_', ' ')} (${topics.length} ${Helpers.getTopicWord(topics.length)})`;

    // Сетка тем
    const grid = UIHelper.createElement('div', 'topics-grid');

    if (topics.length === 0) {
      grid.innerHTML = '<div class="no-topics">Темы не найдены</div>';
    } else {
      topics.forEach(topic => {
        const topicCard = new TopicCard(topic, (selectedTopic) => {
          ModalManager.showTopicContent(selectedTopic);
        });
        grid.appendChild(topicCard.create());
      });
    }

    container.appendChild(backButton);
    container.appendChild(title);
    container.appendChild(grid);
    document.body.appendChild(container);
  }

  async refreshAreaCounts() {
    try {
      const counts = await ApiService.fetchTopicCounts();

      Object.keys(counts).forEach(area => {
        const areaCard = document.querySelector(`.area-card[data-area="${area}"]`);
        if (areaCard) {
          const count = counts[area] || 0;
          const countElement = areaCard.querySelector('.area-count');
          if (countElement) {
            areaCard.dataset.count = count;
            countElement.textContent = `${count} ${Helpers.getTopicWord(count)}`;
          }
        }
      });

      return true;
    } catch (error) {
      console.error('Ошибка обновления счетчиков:', error);
      return false;
    }
  }
}