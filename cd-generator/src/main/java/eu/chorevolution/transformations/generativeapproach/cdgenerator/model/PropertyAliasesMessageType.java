/*
* Copyright 2016 The CHOReVOLUTION project
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
package eu.chorevolution.transformations.generativeapproach.cdgenerator.model;

public class PropertyAliasesMessageType {

	private String messageTypeName;
	private String messageTypePart;
	
	public PropertyAliasesMessageType() {
		super();
	}

	public PropertyAliasesMessageType(String messageTypeName, String messageTypePart) {
		super();
		this.messageTypeName = messageTypeName;
		this.messageTypePart = messageTypePart;
	}

	public String getMessageTypeName() {
		return messageTypeName;
	}

	public void setMessageTypeName(String messageTypeName) {
		this.messageTypeName = messageTypeName;
	}

	public String getMessageTypePart() {
		return messageTypePart;
	}

	public void setMessageTypePart(String messageTypePart) {
		this.messageTypePart = messageTypePart;
	}
	
}