@rem mvn install:install-file -Dfile=jdonFramework.jar -DgroupId=com.jdon -DartifactId=jdonFramework -Dversion=1.0.0 -Dpackaging=jar
@echo off

:againset /p _jar=����jar���ļ�λ��:
set /p _gid=����groupid:
set /p _aid=����artifactid:
set /p _ver=����version:
set /p _pkg=��������ʽ(1/2):
set /p _confirm=�Ƿ�ִ��mvn install����(y/n/r) :
if %_confirm%==y goto cont
if %_confirm%==Y goto cont
if %_confirm%==n goto end
if %_confirm%==N goto end
goto again

:cont
mvn install:install-file -Dfile=%_jar% -DgroupId=%_gid% -DartifactId=%_aid% -Dversion=%_ver% -Dpackaging=%_pkg%

:end