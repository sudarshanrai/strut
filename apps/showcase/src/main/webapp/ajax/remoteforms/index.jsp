<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
/*
 * $Id$
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<html>
<head>
    <title>Ajax Examples</title>
    <sx:head />

    <script language="JavaScript" type="text/javascript">
        dojo.event.topic.subscribe("/beforeSubmit", function(event, widget) {
            alert('you can manipulate the form before it gets submitted. To cancel the submit event set event.cancel=true');
            event.cancel = true;
        });
    </script>

</head>

<body>

<div id='two' style="border: 1px solid yellow;"><b>initial content</b></div>


<br /><br />
Remote form replacing another div:<br/>
<s:form
        id='theForm2'
        cssStyle="border: 1px solid green;"
        action='AjaxRemoteForm'
        method='post'>

    <input type='text' name='data' value='Struts User'>

    <sx:submit value="GO2" targets="two"/>

</s:form>

<br /><br />
Remote form replacing the forms content:<br/>
<s:form
        id='theForm3'
        cssStyle="border: 1px solid green;"
        action='AjaxRemoteForm'
        method='post'>

    <input type='text' name='data' value='Struts User'>

    <sx:submit value="GO3" targets="theForm3"/>

</s:form>

<br /><br />
Remote form evaluating suplied JS on completion:<br/>
<s:form
        id='theForm4'
        cssStyle="border: 1px solid green;"
        action='Test3'
        method='post'>

    <input type='text' name='data' value='Struts User'>

    <sx:submit value="GO4" executeScripts="true"/>

</s:form>

<br /><br />
Submit outside form:<br/>
<s:form
        id='theForm5'
        cssStyle="border: 1px solid green;"
        action='AjaxRemoteForm'
        method='post'>

    <input type='text' name='data' value='Struts User'>
</s:form>
<sx:submit value="GO5" formId="theForm5" targets="two"/>

<br /><br />
<s:url var="remoteUrl" namespace="/remoteforms" action="AjaxRemoteForm"/>
Submit outside form, href in submit tag:<br/>
<s:form
        id='theForm6'
        cssStyle="border: 1px solid green;"
        method='post'>

    <input type='text' name='data' value='Struts User'>
</s:form>
<sx:submit value="GO6" formId="theForm6" targets="two" href="%{#remoteUrl}"/>

<br /><br />
Remote form whose submit is cancelled:<br/>
<s:form
        id='theForm7'
        cssStyle="border: 1px solid green;"
        action='AjaxRemoteForm'
        method='post'>

    <input type='text' name='data' value='Struts User'>

    <sx:submit value="GO7" targets="theForm7" beforeNotifyTopics="/beforeSubmit"/>

</s:form>

<br /><br />
A form with no remote submit (so should not be ajaxified):<br/>
<s:form
        id='theForm8'
        cssStyle="border: 1px solid green;"
        action='AjaxRemoteForm'
        method='post'>

    <input type='text' name='data' value='Struts User'>

    <s:submit value="Go AWAY"  />

</s:form>

</body>
</html>
