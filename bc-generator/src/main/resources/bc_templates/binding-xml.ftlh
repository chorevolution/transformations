<?xml version="1.0"?>
<jaxws:bindings xmlns:jaxws="http://java.sun.com/xml/ns/jaxws" 
				xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
				xmlns:jxb="http://java.sun.com/xml/ns/jaxb" 
				xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
				wsdlLocation="${bcData.wsdlname}">
    <!-- <jaxws:enableAsyncMapping>true</jaxws:enableAsyncMapping> -->
    <jaxws:bindings node="wsdl:definitions/wsdl:types/xsd:schema">
        <jxb:globalBindings>
            <jxb:javaType name="java.util.Date" xmlType="xsd:dateTime" parseMethod="org.apache.cxf.xjc.runtime.DataTypeAdapter.parseDateTime" printMethod="org.apache.cxf.xjc.runtime.DataTypeAdapter.printDateTime"/>
            <jxb:javaType name="java.util.Date" xmlType="xsd:date" parseMethod="org.apache.cxf.xjc.runtime.DataTypeAdapter.parseDate" printMethod="org.apache.cxf.xjc.runtime.DataTypeAdapter.printDate"/>
        </jxb:globalBindings>
    </jaxws:bindings>
</jaxws:bindings>
