@echo off
echo Campus Guardian - Quick Start

echo.
echo Checking Java installation...
java -version
echo.

echo Starting Backend (Spring Boot)...
echo Note: Make sure you have JDK (not just JRE) installed
echo.

cd backend
call mvnw.cmd clean compile spring-boot:run

pause