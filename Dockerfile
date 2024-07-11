FROM openjdk:8
EXPOSE 8080
ADD target/dockins-1.0-SNAPSHOT.jar dockins-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/dockins-1.0-SNAPSHOT.jar"]