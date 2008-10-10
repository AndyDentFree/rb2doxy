Home of a project to combine using XSLT to extract meaning from the XML export of a project,
generating skeletal Java classes, then running them through Doxygen.


to run the converter on a REALbasic program saved as XML format, aproject.xml
using the Saxon processor, freely available from http://saxon.sourceforge.net/

java -jar ~/saxon/saxon8.jar -novw -o todoxy.java ./aproject.xml RB2Doxy.xslt

this produces todoxy.java which can be processed by Doxygen like any other java file


Another way to run is using the RunRB2Doxy.rbp project but as of 2008-10-09 it isn't working,
only partially transforms the sample aproject.xml