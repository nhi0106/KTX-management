# Sử dụng hình ảnh Maven để build ứng dụng
FROM maven:3.8.4-openjdk-21 AS build
COPY . /app
WORKDIR /app
RUN mvn install -DskipTests
RUN mvn spring-boot:run
# Khai báo cổng mà ứng dụng sẽ chạy
EXPOSE 8080


# Sử dụng hình ảnh OpenJDK để chạy ứng dụng
FROM openjdk:21-jdk-slim
COPY --from=build /app/target/QuanLyKyTucXa-0.0.1-SNAPSHOT.jar /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
