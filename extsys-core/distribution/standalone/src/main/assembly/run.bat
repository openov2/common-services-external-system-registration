@REM
@REM
@REM Copyright 2016 [ZTE] and others.
@REM
@REM Licensed under the Apache License, Version 2.0 (the "License");
@REM you may not use this file except in compliance with the License.
@REM You may obtain a copy of the License at
@REM
@REM     http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing, software
@REM distributed under the License is distributed on an "AS IS" BASIS,
@REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@REM See the License for the specific language governing permissions and
@REM limitations under the License.
@REM

@echo off
title extsys-service

set RUNHOME=%~dp0
echo ### RUNHOME: %RUNHOME%
echo ### Starting extsys-service

set JAVA="%JAVA_HOME%\bin\java.exe"
set port=8312
set jvm_opts=-Xms50m -Xmx128m
rem set jvm_opts=%jvm_opts% -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=%port%,server=y,suspend=n
set class_path=%RUNHOME%;%RUNHOME%extsys-service.jar
echo ### jvm_opts: %jvm_opts%
echo ### class_path: %class_path%

%JAVA% -classpath %class_path% %jvm_opts% org.openo.commonservice.extsys.ExtsysApp server %RUNHOME%conf/extsys.yml

IF ERRORLEVEL 1 goto showerror
exit
:showerror
echo WARNING: Error occurred during startup or Server abnormally stopped by way of killing the process,Please check!
echo After checking, press any key to close 
pause
exit