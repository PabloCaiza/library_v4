#!/bin/bash
git clone https://github.com/PabloCaiza/library_v4
cd library_v4
#book microservice
cd app-books
./gradlew jar
./gradlew copyLibs
docker build -t jaimesalvador/app-books:1.0.0
cd ..
#author microservice 
cd app-authors
./gradlew quarkusBuild
docker build -t jaimesalvador/app-authors:1.0.0
cd ..
#run docker compose 
docker compose up




