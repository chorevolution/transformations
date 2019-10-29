/*
  * Copyright 2015 The CHOReVOLUTION project
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
package eu.chorevolution.transformations.generativeapproach.choreographyarchitecturegenerator;

public class ChoreographyArchitectureGeneratorResponse implements java.io.Serializable {
    private static final long serialVersionUID = 7046992133958679562L;

    private byte[] choreographyArchitecture;

    public ChoreographyArchitectureGeneratorResponse() {
        super();
    }

    public ChoreographyArchitectureGeneratorResponse(final byte[] choreographyArchitecture) {
        super();
        this.choreographyArchitecture = choreographyArchitecture;
    }

    public byte[] getChoreographyArchitecture() {
        return choreographyArchitecture;
    }

    public void setChoreographyArchitecture(final byte[] choreographyArchitecture) {
        this.choreographyArchitecture = choreographyArchitecture;
    }

}