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
<%@taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<title>Showcase - JSF Integration</title>
</head>
<body>
<h1> JavaServer Faces Integration </h1>

<p>
The following pages show how Struts and JSF components can work together,
each doing what they do best.
</p>

<p>
    <ul>
        <li><s:url var="url" namespace="/jsf/employee" action="list"/><s:a href="%{url}">List available Employees</s:a></li>
        <li><s:url var="url" namespace="/jsf/employee" action="edit"/><s:a href="%{url}">Create/Edit Employee</s:a></li>
    </ul>
</p>


</body>
</html>
