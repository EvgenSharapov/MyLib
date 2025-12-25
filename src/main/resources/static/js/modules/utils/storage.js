export class StorageManager {
  static setItem(key, value) {
    try {
      localStorage.setItem(key, JSON.stringify(value));
      return true;
    } catch (error) {
      console.error('Error saving to localStorage:', error);
      return false;
    }
  }

  static getItem(key, defaultValue = null) {
    try {
      const item = localStorage.getItem(key);
      return item ? JSON.parse(item) : defaultValue;
    } catch (error) {
      console.error('Error reading from localStorage:', error);
      return defaultValue;
    }
  }

  static removeItem(key) {
    try {
      localStorage.removeItem(key);
      return true;
    } catch (error) {
      console.error('Error removing from localStorage:', error);
      return false;
    }
  }

  static clear() {
    try {
      localStorage.clear();
      return true;
    } catch (error) {
      console.error('Error clearing localStorage:', error);
      return false;
    }
  }

  // Специфичные для приложения методы
  static getLanguage() {
    return this.getItem('language', 'en');
  }

  static setLanguage(language) {
    return this.setItem('language', language);
  }

  static getDifficulty() {
    return this.getItem('difficulty', 'EASY');
  }

  static setDifficulty(difficulty) {
    return this.setItem('difficulty', difficulty);
  }

  static getUserData() {
    return this.getItem('userData', {});
  }

  static setUserData(userData) {
    return this.setItem('userData', userData);
  }

  static getLastSearch() {
    return this.getItem('lastSearch', { query: '', type: 'theme' });
  }

  static setLastSearch(query, type = 'theme') {
    return this.setItem('lastSearch', { query, type });
  }

  static getCurrentArea() {
    return this.getItem('currentArea', null);
  }

  static setCurrentArea(area) {
    return this.setItem('currentArea', area);
  }
}