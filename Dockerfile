FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY . .
CMD ["java", "-Xmx2048M", "-Xms2048M", "-jar", "server.jar", "nogui"]
