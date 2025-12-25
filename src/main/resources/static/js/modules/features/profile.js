import { ApiService } from 'static/js/modules/api/requests.js';
import { UIHelper } from 'static/js/modules/ui/elements.js';
import { TopicTableRow } from 'static/js/modules/ui/components.js';
import { Helpers } from 'static/js/modules/utils/helpers.js';
import { StorageManager } from 'static/js/modules/utils/storage.js';

export class EditManager {
  constructor() {
    this.currentPage = 1;
    this.itemsPerPage = 10;
    this.allData = [];
    this.editingRow = null;
    this.isEditTableOpen = false;
  }

  async openEditTable() {
    Helpers.clearAllContainers();
    Helpers.hideAddTestForm();

    const tableContainer = document.getElementById('table-container');
    if (tableContainer) {
      tableContainer.style.display = 'block';
      this.isEditTableOpen = true;

      try {
        this.allData = await ApiService.fetchAllTopics();
        this.displayData();
      } catch (error) {
        console.error('Ошибка:', error);
        UIHelper.showNotification('Ошибка', 'Произошла ошибка при загрузке данных.', 'error');
      }
    }
  }

  displayData(searchQuery = '', searchType = 'theme') {
    const tableBody = document.querySelector('#topics-table tbody');
    if (!tableBody) return;

    tableBody.innerHTML = '';

    // Фильтруем данные
    let filteredData = this.allData;
    if (searchQuery) {
      filteredData = this.allData.filter(topic => {
        if (searchType === 'theme') {
          return topic.tableOfContent.toLowerCase().includes(searchQuery.toLowerCase());
        } else if (searchType === 'content') {
          return topic.content.toLowerCase().includes(searchQuery.toLowerCase());
        }
        return true;
      });
    }

    // Пагинация
    const start = (this.currentPage - 1) * this.itemsPerPage;
    const end = start + this.itemsPerPage;
    const pageData = filteredData.slice(start, end);

    // Отображаем данные
    pageData.forEach(topic => {
      const row = new TopicTableRow(
          topic,
          (topicToEdit) => this.enableEditMode(topicToEdit),
          (updatedTopic) => this.saveChanges(updatedTopic),
          (topicToDelete) => this.confirmDelete(topicToDelete)
      );

      tableBody.appendChild(row.create());
    });

    // Обновляем информацию о странице
    const totalPages = Math.ceil(filteredData.length / this.itemsPerPage);
    document.getElementById('page-info').textContent = `${this.currentPage} ... ${totalPages}`;
  }

  enableEditMode(topic) {
    if (this.editingRow) {
      this.disableEditMode();
    }

    const row = document.querySelector(`tr[data-topic-id="${topic.id}"]`);
    if (!row) return;

    this.editingRow = { row, topic };

    // Включаем редактирование контента
    document.getElementById('content-display').style.display = 'block';
    document.getElementById('content-text').value = topic.content || "Нет данных";
    document.getElementById('content-text').disabled = false;

    // Переключаем строку в режим редактирования
    const editRow = new TopicTableRow(topic, null, null, null);
    const newRow = editRow.create(true);
    row.parentNode.replaceChild(newRow, row);

    this.editingRow.row = newRow;
  }

  disableEditMode() {
    if (!this.editingRow) return;

    this.editingRow = null;
  }

  async saveChanges(updatedTopic) {
    try {
      const result = await ApiService.updateTopic(updatedTopic.id, updatedTopic);

      // Обновляем локальные данные
      const index = this.allData.findIndex(t => t.id === updatedTopic.id);
      if (index !== -1) {
        this.allData[index] = result;
      }

      UIHelper.showNotification(
          Helpers.getTranslation('success'),
          Helpers.getTranslation('topicUpdated'),
          'success'
      );

      this.disableEditMode();
      this.displayData();
    } catch (error) {
      console.error('Ошибка:', error);
      UIHelper.showNotification(
          Helpers.getTranslation('errorTitle'),
          Helpers.getTranslation('saveError'),
          'error'
      );
    }
  }

  async confirmDelete(topic) {
    const result = await UIHelper.showConfirm(
        Helpers.getTranslation('confirmDelete'),
        Helpers.getTranslation('deleteConfirmText'),
        Helpers.getTranslation('deleteButton'),
        Helpers.getTranslation('cancelButton')
    );

    if (result.isConfirmed) {
      try {
        await ApiService.deleteTopic(topic.id);

        // Удаляем из локальных данных
        this.allData = this.allData.filter(item => item.id !== topic.id);

        // Обновляем таблицу
        this.displayData();

        UIHelper.showNotification(
            Helpers.getTranslation('success'),
            Helpers.getTranslation('topicDeleted'),
            'success'
        );
      } catch (error) {
        console.error('Ошибка:', error);
        UIHelper.showNotification(
            'Ошибка',
            'Не удалось удалить запись.',
            'error'
        );
      }
    }
  }

  searchInTable(query, searchType) {
    if (!this.isEditTableOpen) return;

    this.currentPage = 1;
    this.displayData(query, searchType);
  }

  setItemsPerPage(count) {
    this.itemsPerPage = parseInt(count);
    this.currentPage = 1;
    this.displayData();
  }

  nextPage() {
    const totalPages = Math.ceil(this.allData.length / this.itemsPerPage);
    if (this.currentPage < totalPages) {
      this.currentPage++;
      this.displayData();
    }
  }

  prevPage() {
    if (this.currentPage > 1) {
      this.currentPage--;
      this.displayData();
    }
  }
}