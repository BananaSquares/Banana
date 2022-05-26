@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  untitled startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and UNTITLED_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\untitled-1.0-SNAPSHOT.jar;%APP_HOME%\lib\Minestom-7b8445d0e2.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.6.21.jar;%APP_HOME%\lib\openwebbeans-gradle-2.0.26.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.6.21.jar;%APP_HOME%\lib\kotlin-reflect-1.6.20.jar;%APP_HOME%\lib\gson-2.4.4.jar;%APP_HOME%\lib\common-2.4.4.jar;%APP_HOME%\lib\antlr-2.4.4.jar;%APP_HOME%\lib\kotlin-stdlib-1.6.21.jar;%APP_HOME%\lib\tinylog-impl-2.4.1.jar;%APP_HOME%\lib\slf4j-tinylog-2.4.1.jar;%APP_HOME%\lib\tinylog-api-2.4.1.jar;%APP_HOME%\lib\jline-3.21.0.jar;%APP_HOME%\lib\jline-terminal-jansi-3.21.0.jar;%APP_HOME%\lib\caffeine-3.0.6.jar;%APP_HOME%\lib\flare-2.0.1.jar;%APP_HOME%\lib\flare-fastutil-2.0.1.jar;%APP_HOME%\lib\jctools-core-3.3.0.jar;%APP_HOME%\lib\MinestomDataGenerator-3e211f3953.jar;%APP_HOME%\lib\fastutil-8.5.8.jar;%APP_HOME%\lib\adventure-text-serializer-legacy-4.10.1.jar;%APP_HOME%\lib\adventure-text-serializer-plain-4.10.1.jar;%APP_HOME%\lib\adventure-api-4.10.1.jar;%APP_HOME%\lib\adventure-key-4.10.1.jar;%APP_HOME%\lib\adventure-text-serializer-gson-4.10.1.jar;%APP_HOME%\lib\gson-2.9.0.jar;%APP_HOME%\lib\hydrazine-path-finding-1.7.2.jar;%APP_HOME%\lib\DependencyGetter-v1.0.1.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.6.21.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.18.jar;%APP_HOME%\lib\data-structures-2.18.jar;%APP_HOME%\lib\shrinkwrap-resolver-impl-maven-archive-3.1.4.jar;%APP_HOME%\lib\shrinkwrap-resolver-impl-maven-embedded-3.1.4.jar;%APP_HOME%\lib\shrinkwrap-resolver-impl-maven-3.1.4.jar;%APP_HOME%\lib\maven-resolver-provider-3.6.3.jar;%APP_HOME%\lib\maven-resolver-impl-1.4.1.jar;%APP_HOME%\lib\maven-resolver-connector-basic-1.4.1.jar;%APP_HOME%\lib\maven-resolver-transport-wagon-1.4.1.jar;%APP_HOME%\lib\wagon-http-lightweight-2.12.jar;%APP_HOME%\lib\wagon-http-shared-2.12.jar;%APP_HOME%\lib\slf4j-api-2.0.0-alpha5.jar;%APP_HOME%\lib\jansi-2.4.0.jar;%APP_HOME%\lib\jline-terminal-3.21.0.jar;%APP_HOME%\lib\checker-qual-3.21.3.jar;%APP_HOME%\lib\error_prone_annotations-2.11.0.jar;%APP_HOME%\lib\examination-string-1.3.0.jar;%APP_HOME%\lib\examination-api-1.3.0.jar;%APP_HOME%\lib\commons-net-3.6.jar;%APP_HOME%\lib\shrinkwrap-resolver-spi-maven-3.1.4.jar;%APP_HOME%\lib\shrinkwrap-resolver-api-maven-archive-3.1.4.jar;%APP_HOME%\lib\shrinkwrap-resolver-api-maven-embedded-3.1.4.jar;%APP_HOME%\lib\shrinkwrap-resolver-spi-maven-archive-3.1.4.jar;%APP_HOME%\lib\shrinkwrap-resolver-spi-3.1.4.jar;%APP_HOME%\lib\shrinkwrap-resolver-api-maven-3.1.4.jar;%APP_HOME%\lib\shrinkwrap-resolver-api-3.1.4.jar;%APP_HOME%\lib\antlr4-runtime-4.8-1.jar;%APP_HOME%\lib\maven-model-builder-3.6.3.jar;%APP_HOME%\lib\maven-model-3.6.3.jar;%APP_HOME%\lib\shrinkwrap-impl-base-1.2.6.jar;%APP_HOME%\lib\shrinkwrap-spi-1.2.6.jar;%APP_HOME%\lib\shrinkwrap-api-1.2.6.jar;%APP_HOME%\lib\maven-repository-metadata-3.6.3.jar;%APP_HOME%\lib\maven-settings-builder-3.6.3.jar;%APP_HOME%\lib\maven-settings-3.6.3.jar;%APP_HOME%\lib\maven-resolver-spi-1.4.1.jar;%APP_HOME%\lib\maven-resolver-util-1.4.1.jar;%APP_HOME%\lib\maven-resolver-api-1.4.1.jar;%APP_HOME%\lib\plexus-interpolation-1.25.jar;%APP_HOME%\lib\plexus-sec-dispatcher-1.4.jar;%APP_HOME%\lib\wagon-file-3.3.4.jar;%APP_HOME%\lib\wagon-provider-api-3.3.4.jar;%APP_HOME%\lib\maven-invoker-3.0.0.jar;%APP_HOME%\lib\maven-artifact-3.6.3.jar;%APP_HOME%\lib\plexus-utils-3.2.1.jar;%APP_HOME%\lib\org.eclipse.sisu.plexus-0.3.4.jar;%APP_HOME%\lib\plexus-compiler-javac-2.7.jar;%APP_HOME%\lib\arquillian-spacelift-1.0.2.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\maven-builder-support-3.6.3.jar;%APP_HOME%\lib\org.eclipse.sisu.inject-0.3.4.jar;%APP_HOME%\lib\plexus-cipher-1.4.jar;%APP_HOME%\lib\commons-io-2.5.jar;%APP_HOME%\lib\plexus-compiler-api-2.7.jar;%APP_HOME%\lib\plexus-component-annotations-1.7.jar;%APP_HOME%\lib\arquillian-spacelift-api-1.0.2.jar;%APP_HOME%\lib\commons-compress-1.8.1.jar;%APP_HOME%\lib\commons-lang3-3.8.1.jar;%APP_HOME%\lib\jsoup-1.7.2.jar


@rem Execute untitled
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %UNTITLED_OPTS%  -classpath "%CLASSPATH%" com.ewanfox.banana.MainKt %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable UNTITLED_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%UNTITLED_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
