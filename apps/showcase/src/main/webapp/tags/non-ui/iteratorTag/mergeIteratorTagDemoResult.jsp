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
<title>Showcase - Tags - Non UI Tag - MergeIterator Tag</title>
</head>
<body>

    <s:generator var="iterator1" val="%{iteratorValue1}" separator="," />
    <s:generator var="iterator2" val="%{iteratorValue2}" separator="," />
    
    <s:merge var="mergedIterator">
        <s:param value="%{#attr.iterator1}" />
        <s:param value="%{#attr.iterator2}" />
    </s:merge>
    
    <s:iterator value="%{#mergedIterator}">
        <s:property /><br/>
    </s:iterator>

    <s:url value="%{'/tags/non-ui/'}" var="url" /><s:a href="%{#url}">Back To Non-UI Demo</s:a>
    <s:url value="%{'/'}" var="url" /><s:a href="%{#url}">Back To Showcase</s:a>

</body>
</html>
