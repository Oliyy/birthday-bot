FROM gradle:4.9.0-jre-slim

WORKDIR /etc/birthdaybot

# Copy dir to the image
COPY ./ ./

# Build jar
RUN gradle build

ENTRYPOINT java -jar ./Server/build/libs/BirthdayBot-all.jar