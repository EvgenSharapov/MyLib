export const API_ENDPOINTS = {
  // Темы
  TOPICS: {
    ALL: '/api/topics/all',
    BY_ID: (id) => `/api/topics/${id}`,
    BY_AREA: (area) => `/api/topics/by-area/${area}`,
    CREATE: '/api/topics',
    UPDATE: (id) => `/api/topics/${id}`,
    DELETE: (id) => `/api/topics/${id}`,
    RANDOM: '/api/topics/random',
    SEARCH: {
      THEME: '/api/topics/search/theme',
      CONTENT: '/api/topics/search/content'
    },
    STATS: {
      TOPIC_COUNTS: '/api/topics/topic-counts',
      QUESTION_COUNTS: '/api/stats/question-counts'
    }
  },

  // Пользователь
  USER: {
    PROFILE: '/profile',
    UPDATE: '/update',
    LOGOUT: '/logout'
  },

  // Язык
  LANGUAGE: '/change-language'
};