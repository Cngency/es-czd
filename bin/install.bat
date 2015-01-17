@echo off
echo [INFO] Install es.
cd %~dp0
cd ..
call mvn clean install -pl . -Dmaven.test.skip=true  

echo [INFO] Install es/parent.
cd %~dp0
cd ../parent
call mvn clean install -pl . -Dmaven.test.skip=true

echo [INFO] Install common.
cd %~dp0
cd ../common
call mvn clean install -pl .  -Dmaven.test.skip=true

echo [INFO] Install maven-plugins/maven-db-plugin.
cd %~dp0
cd ../maven-plugins/maven-db-plugin
call mvn clean install -pl .  -Dmaven.test.skip=true

cd ../../bin
pause