echo Running xsltproc Linksys_Phone_Configuration_Guide
xsltproc -o ..\QuickStartGuides\Linksys_Phone_Configuration_Guide.fo ..\..\docbook\stylesheets\interact_pdf_listen.xsl ..\QuickStartGuides\Linksys_Phone_Configuration_Guide.xml
echo Calling sed
sed -e "s/<\/fo:flow>/<fo:block id='END-OF-DOCUMENT'\/><\/fo:flow>/g" -i ..\QuickStartGuides\Linksys_Phone_Configuration_Guide.fo
echo Calling FOP
call ..\..\docbook\fop-1.0\fop.bat -c ..\..\docbook\fop-1.0\conf\fop1.xconf -fo ..\QuickStartGuides\Linksys_Phone_Configuration_Guide.fo %1\Linksys_Phone_Configuration_Guide.pdf
del ..\QuickStartGuides\Linksys_Phone_Configuration_Guide.fo