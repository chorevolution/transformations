<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>${adapterData.groupId}</groupId>
  <artifactId>${adapterData.artifactId}</artifactId>
  <version>0.0.1-SNAPSHOT</version>
  <packaging>war</packaging>

  <properties>
  		<json.version>20171018</json.version>
		<cxf.version>3.2.0</cxf.version>
		<cxf.xjc-utils.version>3.2.0</cxf.xjc-utils.version>
		<spring.version>4.3.11.RELEASE</spring.version>
		<spring.integration.version>4.3.12.RELEASE</spring.integration.version>
		<project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
  </properties>

  	<dependencies>
  		<dependency>
			<groupId>org.json</groupId>
			<artifactId>json</artifactId>
			<version><#noparse>${json.version}</#noparse></version>
		</dependency>
  		<dependency>
			<groupId>org.apache.cxf</groupId>
			<artifactId>cxf-rt-frontend-jaxws</artifactId>
			<version><#noparse>${cxf.version}</#noparse></version>
		</dependency>
		<dependency>
			<groupId>org.apache.cxf</groupId>
			<artifactId>cxf-rt-transports-http</artifactId>
			<version><#noparse>${cxf.version}</#noparse></version>
		</dependency>
		<dependency>
			<groupId>org.apache.cxf.xjc-utils</groupId>
			<artifactId>cxf-xjc-runtime</artifactId>
			<version><#noparse>${cxf.xjc-utils.version}</#noparse></version>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-web</artifactId>
			<version><#noparse>${spring.version}</#noparse></version>
		</dependency>
		<dependency>
	      	<groupId>org.springframework.integration</groupId>
	      	<artifactId>spring-integration-core</artifactId>
	      	<version><#noparse>${spring.integration.version}</#noparse></version>
	    </dependency>
	    <dependency>
	      	<groupId>org.springframework.integration</groupId>
	      	<artifactId>spring-integration-stream</artifactId>
	      	<version><#noparse>${spring.integration.version}</#noparse></version>
	    </dependency>
        <dependency>
			<groupId>org.springframework.integration</groupId>
			<artifactId>spring-integration-ws</artifactId>
			<version><#noparse>${spring.integration.version}</#noparse></version>
	    </dependency>
		<dependency>
			<groupId>org.springframework.integration</groupId>
			<artifactId>spring-integration-xml</artifactId>
			<version><#noparse>${spring.integration.version}</#noparse></version>
		</dependency>
		<dependency>
			<groupId>commons-lang</groupId>
			<artifactId>commons-lang</artifactId>
			<version>2.6</version>
		</dependency>
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-api</artifactId>
			<version>1.7.12</version>
		</dependency>
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-log4j12</artifactId>
			<version>1.7.25</version>
			<scope>runtime</scope>
		</dependency>
		<dependency>
			<groupId>log4j</groupId>
			<artifactId>log4j</artifactId>
			<version>1.2.17</version>
			<scope>runtime</scope>
		</dependency>
	</dependencies>
	<build>
		<defaultGoal>install</defaultGoal>
		<plugins>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-compiler-plugin</artifactId>
				<version>3.7.0</version>
				<configuration>
					<source>1.8</source>
					<target>1.8</target>
					<encoding><#noparse>${project.build.sourceEncoding}</#noparse></encoding>
				</configuration>
			</plugin>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-resources-plugin</artifactId>
				<version>3.0.2</version>
				<configuration>
					<encoding><#noparse>${project.build.sourceEncoding}</#noparse></encoding>
				</configuration>
			</plugin>
			<plugin>
				<groupId>org.apache.cxf</groupId>
				<artifactId>cxf-codegen-plugin</artifactId>
				<version><#noparse>${cxf.version}</#noparse></version>
				<executions>
					<execution>
						<id>generate-sources</id>
						<phase>generate-sources</phase>
						<configuration>
							<wsdlOptions>
								<wsdlOption>
									<wsdl>src/main/resources/BaseService.wsdl</wsdl>
									<faultSerialVersionUID>1</faultSerialVersionUID>
									<extraargs>
										<extraarg>-verbose</extraarg>
										<extraarg>-p</extraarg>
										<extraarg>${adapterData.packagename}.baseservice</extraarg>
									</extraargs>
								</wsdlOption>
							</wsdlOptions>
						</configuration>
						<goals>
							<goal>wsdl2java</goal>
						</goals>
					</execution>
				</executions>
			</plugin>
		</plugins>
		<finalName>${adapterData.name}</finalName>
	</build>
</project>
