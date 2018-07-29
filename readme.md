# RB2Doxy Readme
Home of a project to combine using XSLT to extract meaning from the XML export of a project,
generating skeletal Java classes, then running them through [Doxygen.](http://www.stack.nl/~dimitri/doxygen/)

Retained as an example of doing something interesting with XSLT.

## Background
The original REALBasic, now known as [Xojo](https://www.xojo.com/) is a cross-platform environment using an OO BASIC plus its own cross-platform frameworks. It is a similar experience to VB.Net being driven primarily from a GUI environment to which you add code.

I wanted to be able to document code using Doxygen, so I would get basic class browsing and class diagrams then be able to add my own documentation in Markdown.

## Use
To run the converter on a REALbasic program saved as XML format, `aproject.xml`
using the Saxon processor, freely available from `http://saxon.sourceforge.net/`

`java -jar ~/saxon/saxon8.jar -novw -o todoxy.java ./aproject.xml RB2Doxy.xslt`

This produces `todoxy.java` which can be processed by Doxygen like any other java file. There is a sample configuration file `sample.doxyconfig` which can be opened in `DoxyWizard` and run.

Another way to run is using the RunRB2Doxy.rbp project but as of 2008-10-09 it isn't working,
only partially transforms the sample aproject.xml