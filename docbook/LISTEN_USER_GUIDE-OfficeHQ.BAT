echo Running xsltproc Listen User's Guide - Administrator's Guide
xsltproc -o ..\UserGuides\Listen_User_Guide-For_OfficeHQ.fo ..\..\docbook\stylesheets\interact_pdf_listen.xsl ..\UserGuides\Listen_User_Guide-For_OfficeHQ.xml
echo Calling sed
sed -e "s/<\/fo:flow>/<fo:block id='END-OF-DOCUMENT'\/><\/fo:flow>/g" -i ..\UserGuides\Listen_User_Guide-For_OfficeHQ.fo
echo Calling FOP
call ..\..\docbook\fop-1.0\fop.bat -c ..\..\docbook\fop-1.0\conf\fop1.xconf -fo ..\UserGuides\Listen_User_Guide-For_OfficeHQ.fo %1\Listen_User_Guide-For_OfficeHQ.pdf
del ..\UserGuides\Listen_User_Guide-For_OfficeHQ.fo