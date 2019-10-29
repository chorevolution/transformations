/*
* Copyright 2017 The CHOReVOLUTION project
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
package eu.chorevolution.transformations.generativeapproach.bcgenerator.model;

public class BC {

	private String name;
	private byte[] artifact;
	private byte[] wsdl;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte[] getArtifact() {
		return artifact;
	}

	public void setArtifact(byte[] artifact) {
		this.artifact = artifact;
	}

	public byte[] getWsdl() {
		return wsdl;
	}

	public void setWsdl(byte[] wsdl) {
		this.wsdl = wsdl;
	}
	
}
