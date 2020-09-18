FROM openjdk:14-alpine
COPY build/libs/pedal-build-pipeline-*-all.jar pedal-build-pipeline.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "pedal-build-pipeline.jar"]