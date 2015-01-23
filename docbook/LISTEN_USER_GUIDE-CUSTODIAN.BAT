echo Running xsltproc Listen User's Guide - Custodian's Guide
xsltproc -o ..\UserGuides\Listen_User_Guide_Custodian.xml --stringparam profile.vendor "Custodian" ..\docbook\docbook-xsl-ns-1.76.1/profiling/profile.xsl ..\UserGuides\Listen_User_Guide.xml
echo Running xsltproc
xsltproc -o ..\UserGuides\Listen_User_Guide_Custodian.fo ..\docbook\stylesheets\interact_pdf_listen.xsl ..\UserGuides\Listen_User_Guide_Custodian.xml
echo Calling sed
sed -e "s/<\/fo:flow>/<fo:block id='END-OF-DOCUMENT'\/><\/fo:flow>/g" -i ..\UserGuides\Listen_User_Guide_Custodian.fo
echo Calling FOP
call ..\docbook\fop-1.0\fop.bat -c ..\docbook\fop-1.0\conf\fop1.xconf -fo ..\UserGuides\Listen_User_Guide_Custodian.fo %1\Listen_User_Guide-For_Custodian.pdf
del ..\UserGuides\Listen_User_Guide_Custodian.fo
del ..\UserGuides\Listen_User_Guide_Custodian.xml