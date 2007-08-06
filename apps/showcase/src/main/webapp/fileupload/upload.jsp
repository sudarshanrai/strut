<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<html>
<head>
    <title>Showcase</title>
</head>

<body>
    <h1>Fileupload sample</h1>

	<s:actionerror />
	<s:fielderror />
    <s:form action="doUpload" method="POST" enctype="multipart/form-data">
        <s:file name="upload" label="File"/>
        <s:textfield name="caption" label="Caption"/>
        <s:submit />
    </s:form>
</body>
</html>

