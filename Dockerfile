FROM frolvlad/alpine-oraclejdk8:slim
RUN echo $PATH
# Install maven
RUN bash apt-get update 
# Install maven
RUN bash apt-get install -y maven
#RUN docker --name maven-data -it -v /root/.m2 maven:3-jdk-8 true  
#RUN docker run -it --rm --volumes-from maven-data -v "$PWD":/usr/src/maven -w /usr/src/maven maven:3-jdk-8 mvn clean package

ADD target/microservice-demo-0.0.1.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

