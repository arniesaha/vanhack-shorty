FROM java:8
EXPOSE 8080
ADD /target/com.vanhack-0.0.1.jar com.vanhack-0.0.1.jar
ENTRYPOINT ["java", "-jar", "com.vanhack-0.0.1.jar"]