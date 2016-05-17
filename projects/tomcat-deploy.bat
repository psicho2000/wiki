@prompt $_

REM ###### Cleanup Liferay temp & work [& webapps] ######
set targetdir="C:\Program Files (x86)\liferay\tomcat-7.0.27\temp"
del /q %targetdir%\*
for /d %%x in (%targetdir%\*) do @rd /s /q ^"%%x^"
set targetdir="C:\Program Files (x86)\liferay\tomcat-7.0.27\work\Catalina\localhost"
for /d %%x in (%targetdir%\project.*) do @rd /s /q ^"%%x^"
set targetdir="C:\Program Files (x86)\liferay\tomcat-7.0.27\webapps"
del /q %targetdir%\project.*
for /d %%x in (%targetdir%\project.*) do @rd /s /q ^"%%x^"

REM ###### Cleanup Tomcat 7 work & webapps ######
set targetdir="C:\Program Files (x86)\tomcat 7\work\Catalina\localhost"
for /d %%x in (%targetdir%\project.*) do @rd /s /q ^"%%x^"
set targetdir="C:\Program Files (x86)\tomcat 7\webapps"
del /q %targetdir%\project.*
for /d %%x in (%targetdir%\project.*) do @rd /s /q ^"%%x^"

REM ###### Deploy Frontend ######
set targetdir="C:\Program Files (x86)\liferay\deploy\"
set sourcedir="C:\Workspaces\project"
copy %sourcedir%\project.war %targetdir%

REM ###### Deploy Backend ######
set targetdir="C:\Program Files (x86)\tomcat 7\webapps"
set sourcedir="C:\Workspaces\project"
copy %sourcedir%\project.war %targetdir%

@prompt $P$G
@pause