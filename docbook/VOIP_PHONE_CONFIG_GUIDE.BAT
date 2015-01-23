echo Running xsltproc VoIP_Phone_Configuration_Guide
xsltproc -o ..\QuickStartGuides\VoIP_Phone_Configuration_Guide.fo ..\docbook\stylesheets\interact_pdf_listen.xsl ..\QuickStartGuides\VoIP_Phone_Configuration_Guide.xml
echo Calling sed
sed -e "s/<\/fo:flow>/<fo:block id='END-OF-DOCUMENT'\/><\/fo:flow>/g" -i ..\QuickStartGuides\VoIP_Phone_Configuration_Guide.fo
echo Calling FOP
call ..\docbook\fop-1.0\fop.bat -c ..\docbook\fop-1.0\conf\fop1.xconf -fo ..\QuickStartGuides\VoIP_Phone_Configuration_Guide.fo %1\VoIP_Phone_Configuration_Guide.pdf
del ..\QuickStartGuides\VoIP_Phone_Configuration_Guide.fo