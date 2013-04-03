@rem mvn install:install-file -Dfile=jdonFramework.jar -DgroupId=com.jdon -DartifactId=jdonFramework -Dversion=1.0.0 -Dpackaging=jar
@echo off

:againset /p _jar=输入jar的文件位置:
set /p _gid=输入groupid:
set /p _aid=输入artifactid:
set /p _ver=输入version:
set /p _pkg=输入打包方式(1/2):
set /p _confirm=是否执行mvn install命令(y/n/r) :
if %_confirm%==y goto cont
if %_confirm%==Y goto cont
if %_confirm%==n goto end
if %_confirm%==N goto end
goto again

:cont
mvn install:install-file -Dfile=%_jar% -DgroupId=%_gid% -DartifactId=%_aid% -Dversion=%_ver% -Dpackaging=%_pkg%

:end