@echo off
echo Starting Campus Guardian Backend (skipping tests)...

cd backend
call mvnw.cmd spring-boot:run -DskipTests

pause