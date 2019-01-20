# shorty
Shorty - A URL-shortener web application built on Spring Boot + Redis (For peristant storage).

Setup Docker:
Mac:
```sh
$ brew install maven
```

Linux:
```sh
$ sudo apt get install maven
```

Install Redis:
```sh
$ docker run -d --name redis -p 6379:6379 redis
```

To run the app using docker (http://maven.apache.org):
```sh
$ mvn clean
$ mvn install
$ docker-compose build
$ docker-compose up
```

If the container has connection issues with Redis on your environment use below:

To run it using maven (http://maven.apache.org):
```sh
$ mvn spring-boot:run

or

$ sudo nohup mvn sprint-boot:run (To run in background after command line exit)
```

To test, send POST Request to localhost:8080/shortener with a body of type application/json with body 

Also,

a live version of the app is deployed at 


http://34.216.124.29:8080/shortener


```
{
  'url' : '<INSERT_YOUR_URL>'
}
```

Also attached is an Insomina REST Client workspace. 

Response should be something like below:

<img src = "https://raw.githubusercontent.com/arniesaha/vanhack-shorty/master/img/shorty-insomnia.png?sanitize=true&raw=true" />


## Components

<h3>Common</h3>

<b>IDConverter.java</b> <br/>
A Singleton class responsible for: <br/>
1. Generating ID <br/>
2. Using ID to create unique URL ID <br/>
3. Using unique URL ID to retrieve original ID<br/>

<b>URLValidator.java</b><br/>
A Singleton class responsible for validating URL's validity

<h3>Controller</h3>
<b>URLController.java</b> <br/>
A Spring Boot Controller responsible for: <br/>
1. Serving an endpoint to shorten URL <br/>
2. Redirect shortened URL to the original URL <br/>

<h2>Repsitory</h3>
<b>URLRepository</b> <br/>
A Java class responsible for abstracting Redis(database) read/write logic

<h2>Service</h3>
<b>URLConverterService.java</b> <br/>
A Java class used to abstract URL Shortening and URL Retrieval process
<br/>
<b>URLShortenerApplication.java</b> <br/>
The entry point for the Spring application
<br/><br/>



## To-Dos

- Dockerizing both redis and spring in single container
- Provide UI for seeing existing urls and shortened URLs in Redis
- Debug cases when https URLs are being broken at times




