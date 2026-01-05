@echo off
echo Campus Guardian - JRE Workaround

echo.
echo ERROR: You need JDK (Java Development Kit) to run this application.
echo Current Java: JRE (Java Runtime Environment) - insufficient
echo.
echo SOLUTIONS:
echo.
echo 1. RECOMMENDED: Install JDK 11 or higher
echo    Download from: https://adoptium.net/
echo    Or: https://www.oracle.com/java/technologies/downloads/
echo.
echo 2. ALTERNATIVE: Use pre-built JAR (if available)
echo    Check if backend/target/ contains a .jar file
echo.

if exist "backend\target\*.jar" (
    echo Found JAR file! Attempting to run...
    cd backend\target
    for %%f in (*.jar) do java -jar "%%f"
) else (
    echo No pre-built JAR found. Please install JDK.
)

pause