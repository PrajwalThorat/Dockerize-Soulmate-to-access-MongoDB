FROM openjdk:11.0.11-jre-slim
WORKDIR /usr/src
ENV MONGO_DATABASE = soulmateDB
ENV MONGO_URL = mongodb://localhost:27017/soulmateDB
ADD ./target/Soulmate-0.0.1-SNAPSHOT.jar /usr/src/Soulmate-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","user/src/Soulmate-0.0.1-SNAPSHOT.jar"]