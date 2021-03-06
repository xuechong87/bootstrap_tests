#coding:utf-8
'''
author xuechong
2015-11-02
'''
import sys
import os
import re
import codecs

modeStr = len(sys.argv)>1 and str(sys.argv[1]) or "development"
cwd = os.getcwd()

# spring config
xmlConfigReplace = "<context-param>\r\n\
		<param-name>spring.profiles.default</param-name>\r\n\
		<param-value>${mode}</param-value>\r\n\
	</context-param>".replace("${mode}",modeStr)


xmlPath = cwd + os.sep + "WebRoot" + os.sep + "WEB-INF" + os.sep + "web.xml"

webxml = codecs.open(xmlPath,"r+","utf-8")
webxmlStr = webxml.read()

regStr = "<context-param>\s*<param-name>spring.profiles.default</param-name>\s*<param-value>\S*</param-value>\s*</context-param>"

reg = re.compile(regStr)

resultXml = webxmlStr.replace(reg.search(webxmlStr).group(),xmlConfigReplace)
webxml.close()
targetXml = codecs.open(xmlPath,"w+","utf-8")
targetXml.write(resultXml)
targetXml.close()
# spring config end




# redis product config


# redis product config end



