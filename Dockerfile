FROM debian

RUN apt-get update
RUN apt-get install -y openjdk-11-jdk

COPY OlaMundo.java /root

WORKDIR /root
RUN javac OlaMundo.java

# ENTRYPOINT ["java", "OlaMundo"]
CMD ["java", "OlaMundo"]
