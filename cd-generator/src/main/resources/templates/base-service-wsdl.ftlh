<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<definitions targetNamespace="http://services.chorevolution.eu/" 	
			 name="BaseService" 
			 xmlns="http://schemas.xmlsoap.org/wsdl/" 
			 xmlns:wsp="http://www.w3.org/ns/ws-policy" 
			 xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" 
			 xmlns:wsp1_2="http://schemas.xmlsoap.org/ws/2004/09/policy" 
			 xmlns:tns="http://services.chorevolution.eu/" 
			 xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
			 xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" 
			 xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata">
  <types>
  	<xsd:schema targetNamespace="http://services.chorevolution.eu/">
    	<xsd:element name="setInvocationAddress" type="tns:setInvocationAddress"/>
      	<xsd:element name="setInvocationAddressResponse" type="tns:setInvocationAddressResponse"/>
      	<xsd:complexType name="setInvocationAddress">
        	<xsd:sequence>
          		<xsd:element name="arg0" type="xsd:string" minOccurs="0"/>
          		<xsd:element name="arg1" type="xsd:string" minOccurs="0"/>
          		<xsd:element name="arg2" type="xsd:string" minOccurs="0" maxOccurs="unbounded"/>
        	</xsd:sequence>
      	</xsd:complexType>
      	<xsd:complexType name="setInvocationAddressResponse">
        	<xsd:sequence/>
      	</xsd:complexType>     
	</xsd:schema>
  </types>
  <message name="setInvocationAddress">
	<part name="parameters" element="tns:setInvocationAddress"/>
  </message>
  <message name="setInvocationAddressResponse">
	<part name="parameters" element="tns:setInvocationAddressResponse"/>
  </message>
  <portType name="ConfigurableService">
	<operation name="setInvocationAddress">
      <input wsam:Action="http://services.chorevolution.eu/ConfigurableService/setInvocationAddressRequest" message="tns:setInvocationAddress"/>
      <output wsam:Action="http://services.chorevolution.eu/ConfigurableService/setInvocationAddressResponse" message="tns:setInvocationAddressResponse"/>
    </operation>
  </portType>
  <binding name="ConfigurableServicePortBinding" type="tns:ConfigurableService">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" style="document"/>
    <operation name="setInvocationAddress">
    	<soap:operation soapAction=""/>
      	<input>
        	<soap:body use="literal"/>
      	</input>
      	<output>
        	<soap:body use="literal"/>
      	</output>
    </operation>
  </binding>
  <service name="${cdName}BaseService">
  	<port name="ConfigurableServicePort" binding="tns:ConfigurableServicePortBinding">
    	<soap:address location="http://localhost:8080/ode/processes/${cdName}"/>
    </port>
  </service>
</definitions>

