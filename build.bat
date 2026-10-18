set JAVA_HOME=%programfiles%\java\jdk-27
set DITA_DIR=d:\work\notebook\dita-ot\
set ANT_OPTS=-Xmx4g %ANT_OPTS%
set ANT_OPTS=%ANT_OPTS% -Djavax.xml.transform.TransformerFactory=net.sf.saxon.TransformerFactoryImpl
set ANT_HOME=%DITA_DIR%
set PATH=%JAVA_HOME%\bin;%DITA_DIR%bin;%PATH%
call %DITA_DIR%set_classpath.bat 

echo %JAVA_HOME%
java -version

ant -S -l log.txt pdf

