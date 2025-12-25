import { API_ENDPOINTS } from './endpoints.js';

export class ApiService {
  static getCsrfToken() {
    const meta = document.querySelector('meta[name="_csrf"]');
    return meta ? meta.content : '';
  }

  static getCsrfHeader() {
    const meta = document.querySelector('meta[name="_csrf_header"]');
    return meta ? meta.content : 'X-CSRF-TOKEN';
  }

  static async makeRequest(url, options = {}) {
    const defaultOptions = {
      headers: {
        'Content-Type': 'application/json'
      }
    };

    const finalOptions = { ...defaultOptions, ...options };

    // Добавляем CSRF токен для мутирующих запросов
    if (['POST', 'PUT', 'DELETE', 'PATCH'].includes(options.method)) {
      const csrfToken = this.getCsrfToken();
      const csrfHeader = this.getCsrfHeader();
      if (csrfToken) {
        finalOptions.headers[csrfHeader] = csrfToken;
      }
    }

    try {
      const response = await fetch(url, finalOptions);

      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }

      return response.json();
    } catch (error) {
      console.error('API request failed:', error);
      throw error;
    }
  }

  // Темы
  static async fetchAllTopics() {
    return this.makeRequest(API_ENDPOINTS.TOPICS.ALL);
  }

  static async fetchTopicById(id) {
    return this.makeRequest(API_ENDPOINTS.TOPICS.BY_ID(id));
  }

  static async fetchTopicsByArea(area) {
    return this.makeRequest(API_ENDPOINTS.TOPICS.BY_AREA(area));
  }

  static async createTopic(topicData) {
    return this.makeRequest(API_ENDPOINTS.TOPICS.CREATE, {
      method: 'POST',
      body: JSON.stringify(topicData)
    });
  }

  static async updateTopic(id, topicData) {
    return this.makeRequest(API_ENDPOINTS.TOPICS.UPDATE(id), {
      method: 'PUT',
      body: JSON.stringify(topicData)
    });
  }

  static async deleteTopic(id) {
    return this.makeRequest(API_ENDPOINTS.TOPICS.DELETE(id), {
      method: 'DELETE'
    });
  }

  static async fetchRandomQuestion(difficulty) {
    return this.makeRequest(`${API_ENDPOINTS.TOPICS.RANDOM}?difficulty=${difficulty}`);
  }

  static async searchTopics(query, type = 'theme') {
    const endpoint = type === 'theme'
        ? API_ENDPOINTS.TOPICS.SEARCH.THEME
        : API_ENDPOINTS.TOPICS.SEARCH.CONTENT;

    return this.makeRequest(`${endpoint}?query=${encodeURIComponent(query)}`);
  }

  static async fetchTopicCounts() {
    return this.makeRequest(API_ENDPOINTS.TOPICS.STATS.TOPIC_COUNTS);
  }

  static async fetchQuestionCounts() {
    return this.makeRequest(API_ENDPOINTS.TOPICS.STATS.QUESTION_COUNTS);
  }

  // Пользователь
  static async fetchUserProfile() {
    return this.makeRequest(API_ENDPOINTS.USER.PROFILE);
  }

  static async updateUserProfile(userData) {
    return this.makeRequest(API_ENDPOINTS.USER.UPDATE, {
      method: 'PUT',
      body: JSON.stringify(userData)
    });
  }

  static async logout() {
    return this.makeRequest(API_ENDPOINTS.USER.LOGOUT, {
      method: 'POST'
    });
  }

  // Язык
  static async changeLanguage(language) {
    return this.makeRequest(`${API_ENDPOINTS.LANGUAGE}?language=${language}`);
  }
}