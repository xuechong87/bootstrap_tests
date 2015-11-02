import sys
import os
import re

modeStr = len(sys.argv)>1 and str(sys.argv[1]) or "development"

xmlConfigReplace = "<context-param>\r\n\
		<param-name>spring.profiles.default</param-name>\r\n\
		<param-value>${mode}</param-value>\r\n\
	</context-param>".replace("${mode}",modeStr)

cwd = os.getcwd()
xmlPath = cwd + os.sep + "WebRoot" + os.sep + "WEB-INF" + os.sep + "web.xml"

webxml = open(xmlPath,"r+")
webxmlStr = webxml.read()

regStr = "<context-param>\s*<param-name>spring.profiles.default</param-name>\s*<param-value>\S*</param-value>\s*</context-param>"

reg = re.compile(regStr)

resultXml = webxmlStr.replace(reg.search(webxmlStr).group(),xmlConfigReplace)
webxml.close()
targetXml = open(xmlPath,"w+")
targetXml.write(resultXml)
targetXml.close()

