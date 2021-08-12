FROM amazoncorretto:8

# set deployment directory
WORKDIR /jobrunr_demo

# copy over the built artifact from the maven image
COPY build/libs/jobrunr-demo-0.0.1-SNAPSHOT.jar ./jobrunr-demo.jar

# set the startup command to run your binary
CMD ["java", "-jar", "./jobrunr-demo.jar"]