@echo off

nuget restore -Verbosity normal
if %errorlevel% neq 0 exit /b %errorlevel%

echo "...build commencing..."
msbuild -p:Configuration=Release ^
        -p:WarningLevel=0
if %errorlevel% neq 0 exit /b %errorlevel%
echo "...build ended..."

pwd

echo "...test commencing..."
dotnet.exe test DatDotNet.csproj --configuration Release --no-build -v n
if %errorlevel% neq 0 exit /b %errorlevel%
echo "...test ended..."
