FROM openjdk:14-alpine
COPY build/libs/prime-*-all.jar prime.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "prime.jar"]