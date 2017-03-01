#git clone https://github.com/RameshThangamuthu/microservice-samplepro.git
#cd microservice-samplepro
docker run --name maven-data -it -v /root/.m2 maven:3-jdk-8 true
docker run -it --rm --volumes-from maven-data -v "$PWD":/usr/src/maven -w /usr/src/maven maven:3-jdk-8 mvn clean package

docker run -p 8083:8080 spring-micro/microservice-demo 

docker build -t "spring-micro/microservice-demo:dockerfile" 
