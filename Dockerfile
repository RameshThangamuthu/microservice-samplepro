FROM maven:3.3-jdk-8-onbuild
CMD ["java","-jar","/usr/src/app/target/microservice-demo-0.0.1.jar"]

