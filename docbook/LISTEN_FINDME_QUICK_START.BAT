echo Running xsltproc Listen Quick Start Guide for FindMe
xsltproc -o ..\QuickStartGuides\Listen_FindMe_Quick_Start_Guide.fo ..\..\docbook\stylesheets\interact_pdf_listen2.xsl ..\QuickStartGuides\Listen_FindMe_Quick_Start_Guide.xml
echo Calling sed
sed -e "s/<\/fo:flow>/<fo:block id='END-OF-DOCUMENT'\/><\/fo:flow>/g" -i ..\QuickStartGuides\Listen_FindMe_Quick_Start_Guide.fo
echo Calling FOP
call ..\..\docbook\fop-1.0\fop.bat -c ..\..\docbook\fop-1.0\conf\fop1.xconf -fo ..\QuickStartGuides\Listen_FindMe_Quick_Start_Guide.fo %1\Listen_FindMe_Quick_Start_Guide.pdf
del ..\QuickStartGuides\Listen_FindMe_Quick_Start_Guide.fo