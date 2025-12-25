import { TopicArea, Icons } from 'static/js/modules/config/constants.js';
import { UIHelper } from './elements.js';

export class AreaCard {
  constructor(area, count) {
    this.area = area;
    this.count = count;
  }

  create() {
    const card = UIHelper.createElement('div', 'area-card');
    card.dataset.area = this.area;
    card.dataset.count = this.count;

    card.innerHTML = `
            <div class="area-icon">${this.getIcon()}</div>
            <div class="area-name">${this.formatAreaName()}</div>
            <div class="area-count">${this.getCountText()}</div>
        `;

    return card;
  }

  getIcon() {
    return Icons[this.area] || Icons.DEFAULT;
  }

  formatAreaName() {
    return this.area
    .replace(/_/g, ' ')
    .replace(/\b\w/g, char => char.toUpperCase());
  }

  getCountText() {
    const word = this.getTopicWord(this.count);
    return `${this.count} ${word}`;
  }

  getTopicWord(count) {
    if (count % 10 === 1 && count % 100 !== 11) return 'тема';
    if (count % 10 >= 2 && count % 10 <= 4 &&
        (count % 100 < 10 || count % 100 >= 20)) return 'темы';
    return 'тем';
  }
}

export class TopicCard {
  constructor(topic, onClick = null) {
    this.topic = topic;
    this.onClick = onClick;
  }

  create() {
    const card = UIHelper.createElement('div', 'topic-card');
    card.dataset.topicId = this.topic.id;

    card.innerHTML = `
            <div class="topic-header">
                <h3 class="topic-title">${this.topic.tableOfContent}</h3>
                <span class="difficulty-badge ${this.topic.difficulty.toLowerCase()}">
                    ${this.getDifficultyText()}
                </span>
            </div>
            <div class="topic-preview">
                ${this.getPreviewText()}
            </div>
            <div class="topic-footer">
                <button class="read-more-btn">
                    <i class="fas fa-book-open"></i> Читать
                </button>
            </div>
        `;

    if (this.onClick) {
      card.addEventListener('click', (e) => {
        if (!e.target.closest('.read-more-btn')) {
          this.onClick(this.topic);
        }
      });

      const readMoreBtn = card.querySelector('.read-more-btn');
      readMoreBtn.addEventListener('click', (e) => {
        e.stopPropagation();
        this.onClick(this.topic);
      });
    }

    return card;
  }

  getDifficultyText() {
    const difficultyMap = {
      'EASY': 'Лёгкий',
      'AVERAGE': 'Средний',
      'DEVOPS': 'DevOps'
    };
    return difficultyMap[this.topic.difficulty] || this.topic.difficulty;
  }

  getPreviewText() {
    const maxLength = 150;
    const content = this.topic.content || '';

    if (content.length <= maxLength) {
      return content;
    }

    return content.substring(0, maxLength) + '...';
  }
}

export class TopicTableRow {
  constructor(topic, onEdit, onSave, onDelete) {
    this.topic = topic;
    this.onEdit = onEdit;
    this.onSave = onSave;
    this.onDelete = onDelete;
  }

  create(isEditing = false) {
    const row = UIHelper.createElement('tr');

    if (isEditing) {
      this.createEditRow(row);
    } else {
      this.createViewRow(row);
    }

    return row;
  }

  createViewRow(row) {
    const currentLanguage = localStorage.getItem('language') || 'en';
    const lang = translations[currentLanguage] || translations.en;

    row.innerHTML = `
            <td>${this.topic.tableOfContent}</td>
            <td>${this.topic.topicArea}</td>
            <td>${this.topic.difficulty}</td>
            <td class="action-buttons">
                <button class="edit">${lang.edit}</button>
                <button class="save" style="display: none;">${lang.save}</button>
                <button class="delete">${lang.delete}</button>
            </td>
        `;

    row.querySelector('.edit').addEventListener('click', (e) => {
      e.stopPropagation();
      this.onEdit(this.topic);
    });

    row.querySelector('.delete').addEventListener('click', (e) => {
      e.stopPropagation();
      this.onDelete(this.topic);
    });

    row.addEventListener('click', (e) => {
      if (!e.target.closest('button')) {
        // Показываем контент при клике на строку
        document.getElementById('content-display').style.display = 'block';
        document.getElementById('content-text').value = this.topic.content || "Нет данных";
        document.getElementById('content-text').disabled = true;
      }
    });

    return row;
  }

  createEditRow(row) {
    const currentLanguage = localStorage.getItem('language') || 'en';
    const lang = translations[currentLanguage] || translations.en;

    row.innerHTML = `
            <td><input type="text" class="edit-title" value="${this.topic.tableOfContent}"></td>
            <td>
                <select class="edit-area">
                    ${Object.values(TopicArea).map(area =>
        `<option value="${area}" ${area === this.topic.topicArea ? 'selected' : ''}>
                            ${area}
                        </option>`
    ).join('')}
                </select>
            </td>
            <td>
                <select class="edit-difficulty">
                    <option value="EASY" ${this.topic.difficulty === 'EASY' ? 'selected' : ''}>EASY</option>
                    <option value="AVERAGE" ${this.topic.difficulty === 'AVERAGE' ? 'selected' : ''}>AVERAGE</option>
                    <option value="DEVOPS" ${this.topic.difficulty === 'DEVOPS' ? 'selected' : ''}>DEVOPS</option>
                </select>
            </td>
            <td class="action-buttons">
                <button class="edit" style="display: none;">${lang.edit}</button>
                <button class="save">${lang.save}</button>
                <button class="delete">${lang.delete}</button>
            </td>
        `;

    row.querySelector('.save').addEventListener('click', (e) => {
      e.stopPropagation();
      this.saveChanges(row);
    });

    row.querySelector('.delete').addEventListener('click', (e) => {
      e.stopPropagation();
      this.onDelete(this.topic);
    });

    return row;
  }

  saveChanges(row) {
    const updatedTopic = {
      ...this.topic,
      tableOfContent: row.querySelector('.edit-title').value,
      topicArea: row.querySelector('.edit-area').value,
      difficulty: row.querySelector('.edit-difficulty').value,
      content: document.getElementById('content-text').value
    };

    this.onSave(updatedTopic);
  }
}