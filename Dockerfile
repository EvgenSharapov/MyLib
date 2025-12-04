# Используем ARG для настройки во время сборки
ARG JAVA_VERSION=21
ARG APP_NAME=lib
ARG APP_VERSION=0.0.1-SNAPSHOT

# Этап сборки
FROM maven:3.9.6-eclipse-temurin-${JAVA_VERSION} AS build
ARG APP_NAME
ARG APP_VERSION

WORKDIR /app

# Копируем только pom.xml для кеширования зависимостей
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Копируем исходники и собираем
COPY src ./src
RUN mvn clean package -DskipTests \
    -Dfinal.name=${APP_NAME}

# Этап выполнения
FROM eclipse-temurin:${JAVA_VERSION}-jre-alpine
ARG APP_NAME
ARG APP_VERSION

# Метаданные
LABEL org.opencontainers.image.title="${APP_NAME}"
LABEL org.opencontainers.image.version="${APP_VERSION}"
LABEL org.opencontainers.image.description="Spring Boot Application"

# Создаем пользователя
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

# Копируем приложение
COPY --from=build /app/target/*.war app.jar

# Конфигурация
#COPY config/ /config/

# Права доступа
RUN chown -R appuser:appgroup /app /config
USER appuser:appgroup

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=60s --retries=3 \
    CMD wget -qO- http://localhost:8080/actuator/health | grep -q '"status":"UP"' || exit 1

# Запуск
ENTRYPOINT ["java", \
    "-Djava.security.egd=file:/dev/./urandom", \
    "-XX:+UseContainerSupport", \
    "-XX:MaxRAMPercentage=75.0", \
    "-jar", \
    "app.jar"]

# Аргументы по умолчанию
#CMD ["--spring.config.location=file:/config/application.properties", \
#     "--server.port=${PORT:-8080}"]
CMD ["--server.port=${PORT:-8080}"]