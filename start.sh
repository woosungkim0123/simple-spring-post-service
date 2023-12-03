#!/bin/sh

# 프로젝트 루트 디렉토리에서 Gradle 빌드 실행
./gradlew build

# JAR 파일의 경로 (변경 가능)
JAR_PATH="./build/libs/simple_springboot_service-1.0-SNAPSHOT.jar"

# 프로파일 설정
SPRING_PROFILES_ACTIVE="local-real"

# Java 실행 명령
java -jar -Dspring.profiles.active=$SPRING_PROFILES_ACTIVE $JAR_PATH