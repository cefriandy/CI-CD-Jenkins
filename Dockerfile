FROM openjdk:11
EXPOSE 8080
COPY target/ci-cd-jenkins-pipeline.jar ci-cd-jenkins-pipeline.jar
ENTRYPOINT ["java", "-jar", "/ci-cd-jenkins-pipeline.jar"]