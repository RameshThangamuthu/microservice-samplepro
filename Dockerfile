FROM frolvlad/alpine-oraclejdk8:slim

# Install maven
RUN --name maven-data -it -v /root/.m2 maven:3-jdk-8 true  
#RUN apt-get install -y maven

WORKDIR /microservice-samplepro

# Prepare by downloading dependencies
ADD pom.xml /microservice-samplepro/pom.xml  
RUN ["mvn", "dependency:resolve"]  
RUN ["mvn", "verify"]

# Adding source, compile and package into a fat jar
ADD src /microservice-samplepro/src  
RUN ["mvn", "package"]

EXPOSE 4567  
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "target/microservice-demo-0.0.1.jar"]  
