echo Running xsltproc Listen Setup Guide
xsltproc -o ..\InstallConfigAndOpsGuide\Listen_Setup_Guide.fo ..\docbook\stylesheets\interact_pdf_listen.xsl ..\InstallConfigAndOpsGuide\Listen_Setup_Guide.xml
echo Calling sed
sed -e "s/<\/fo:flow>/<fo:block id='END-OF-DOCUMENT'\/><\/fo:flow>/g" -i ..\InstallConfigAndOpsGuide\Listen_Setup_Guide.fo
echo Calling FOP
call ..\docbook\fop-1.0\fop.bat -c ..\docbook\fop-1.0\conf\fop1.xconf -fo ..\InstallConfigAndOpsGuide\Listen_Setup_Guide.fo %1\Listen_Setup_Guide.pdf
del ..\InstallConfigAndOpsGuide\Listen_Setup_Guide.fo