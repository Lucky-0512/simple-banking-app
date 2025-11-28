FROM eclipse-temurin:21-jdk-alpine
VOLUME /tmp
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests
ENTRYPOINT ["java","-jar","target/simple-banking-0.0.1-SNAPSHOT.jar"]
