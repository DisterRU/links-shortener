FROM disterru/java-win:17

WORKDIR /app

COPY gradle/ gradle
COPY gradlew settings.gradle build.gradle ./
COPY src ./src

RUN dos2unix gradlew && chmod +x gradlew
RUN ./gradlew assemble

CMD ./gradlew bootRun