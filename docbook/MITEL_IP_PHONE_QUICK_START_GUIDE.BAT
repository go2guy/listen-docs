echo Running xsltproc MITEL IP Phone Quick Start Guide
xsltproc -o ..\QuickStartGuides\Mitel_IP_Phone_Quick_Start_Guide.fo ..\docbook\stylesheets\interact_pdf_listen2.xsl ..\QuickStartGuides\Mitel_IP_Phone_Quick_Start_Guide.xml
echo Calling sed
sed -e "s/<\/fo:flow>/<fo:block id='END-OF-DOCUMENT'\/><\/fo:flow>/g" -i ..\QuickStartGuides\Mitel_IP_Phone_Quick_Start_Guide.fo
echo Calling FOP
call ..\docbook\fop-1.0\fop.bat -c ..\docbook\fop-1.0\conf\fop1.xconf -fo ..\QuickStartGuides\Mitel_IP_Phone_Quick_Start_Guide.fo %1\Mitel_IP_PBX_Quick_Start_Guide.pdf
del ..\QuickStartGuides\Mitel_IP_Phone_Quick_Start_Guide.fo