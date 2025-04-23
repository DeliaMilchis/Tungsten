<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>11.5.0.5</version>
    </saved-by-versions>
    <file-type>robot</file-type>
    <comment/>
    <icon/>
    <tags/>
    <typed-variables>
      <typed-variable name="interval" type-name="interval"/>
    </typed-variables>
    <parameters>
      <parameter name="interval" type-name="interval"/>
    </parameters>
    <requires-simple-input>false</requires-simple-input>
    <return-variables/>
    <store-in-database-variables/>
    <referenced-types>
      <type name="interval"/>
    </referenced-types>
    <triggers/>
    <sub-robots/>
    <device-mappings/>
    <referenced-snippets/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">interval</property>
      <property name="parameter" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">interval</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="duration" class="AttributeAssignment">
            <property name="attributeValue" class="String">2</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class" id="0">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
          <property name="iterations" class="AttributeAssignment">
            <property name="attributeValue" class="String">3</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="0"/>
          </property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" class="Boolean">false</property>
  <property name="privateHTTPCacheEnabled" class="Boolean">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="tags" class="RobotTagList"/>
  <property name="humanProcessingTime">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">FULL</property>
  </property>
  <property name="avoidExternalReExecution" class="Boolean">false</property>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="1"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="2">
        <property name="name" class="String">Repeat</property>
        <property name="stepAction" class="Repeat"/>
        <property name="elementFinders" class="ElementFinders" id="3"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" class="Boolean">true</property>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="4">
        <property name="name" class="String">Test Value</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">iteration()==interval.iterations</property>
          </property>
          <property name="mode" class="Integer">1</property>
        </property>
        <property name="elementFinders" idref="3"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$BreakLoop"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" class="Boolean">true</property>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="5">
        <property name="name" class="String">Wait</property>
        <property name="stepAction" class="Wait2">
          <property name="seconds" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">interval.duration</property>
            </property>
          </property>
        </property>
        <property name="elementFinders" idref="3"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" class="Boolean">true</property>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="6">
        <property name="name" class="String">Next</property>
        <property name="stepAction" class="Next"/>
        <property name="elementFinders" idref="3"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" class="Boolean">true</property>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="7"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="1"/>
        <to idref="2"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="2"/>
        <to idref="4"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="5"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="6"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="7"/>
        <name/>
        <comment/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="27"/>
</object>
