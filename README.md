# REST API with Grails and Swagger
A simple POC with Grails to generate RESTful Web Services

To run this POC, download [grails-rest-poc-v0.3.1.jar](https://github.com/edysegura/grails-rest-poc/releases/download/v0.3.1/grails-rest-poc-v0.3.1.jar) and then execute the command below considering that you have Java environment in your machine:

```java -jar grails-rest-poc-v0.3.1.jar```

If you can't use the default port 8080 you can specify another one as a parameter:

```java -Dserver.port=8090 -jar grails-rest-poc-v0.3.1.jar```

As soon as you get the server is up and running, head to [http://localhost:8080](http://localhost:8080). You're going to see Swagger UI with the REST definitions such as image below:

![Swagger UI](/docs/swagger-ui.png?raw=true "Swagger UI")
