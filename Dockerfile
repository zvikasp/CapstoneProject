FROM openjdk:11

EXPOSE 8080

ADD target/MyMoviePlan.war MyMoviePlan.war

ENTRYPOINT ["java", "-jar", "MyMoviePlan.war"]