<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans" 
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
       xmlns:jaxws="http://cxf.apache.org/jaxws" 
       xmlns:cxf="http://cxf.apache.org/core" 
       xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-4.2.xsd 
                           http://cxf.apache.org/core http://cxf.apache.org/schemas/core.xsd 
                           http://cxf.apache.org/jaxws http://cxf.apache.org/schemas/jaxws.xsd">
                           
    <jaxws:endpoint id="${consumerpart.name}HTTP" 
			xmlns:${consumerpart.artifactId}="${wsdlinfo.targetNS}"
		    address="/${consumerpart.artifactId}" 
		    serviceName="${consumerpart.artifactId}:${wsdlinfo.serviceName}"
		    endpointName="${consumerpart.artifactId}:${wsdlinfo.portName}" 
		    implementor="#${wsdlinfo.portName}Impl">
		    
	</jaxws:endpoint>
	
</beans>