# Host your spring boot Application with MysQl and Docker in Render.com
Render is a unified cloud to build and run all your apps and websites with free TLS certificates, a global CDN, DDoS protection, private networks, and auto deploys from Git.
## what we need ?
- [requirements](#requirements)
- [Installation](#Installation)
- [Features](#features)

## requirements

### Java Spring-Boot application
First We need A java spring-boot application ,we only need a simple simplication as per your requirment here iam using my e-commerce website.
Version jdk-11 

### MysQl database
Iam going to do this application connect with my sql (relational database) .

### docker
we are also dockarizing our spring boot application.make sure to go with docker site get know about the system requirment 


## Installation 

first iam going to dockarize my project.
? how to download and set up docker

1. Go to google.com and search 'docker mvn jdk 11' take a docker image  -> i took the image ( _maven:3.6.3-jdk-11_)
 
2. Create a (*Dockerfile*) This file have no extention we want to create this file in our root path .
3. Add this line to the docker file (*FROM maven:3.6.3-jdk-11 AS build*) typically we are just open up a image and run , we are not running locally
4. and copy all our code files into that image using (_COPY . ._)
5. and iam add this line (_RUN mvn clean package -DskipTests_) for skiping all the tests
6. 



