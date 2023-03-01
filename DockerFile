FROM openjdk:11
EXPOSE 8080
ADD target/ci-cd-jenkins.jar ci-cd-jenkins.jar
ENTRYPOINT ["java", "-jar", "/ci-cd-jenkins.jar"]