#docker run --name maven-data -it -v /root/.m2 maven:3-jdk-8 true
#docker run -it --rm --volumes-from maven-data -v "$PWD":/usr/src/maven -w /usr/src/maven maven:3-jdk-8 mvn clean package
FROM frolvlad/alpine-oraclejdk8:slim
ADD microservice-demo-0.0.1.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
