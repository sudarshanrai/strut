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
<title>Showcase - Tag - Non Ui Tag - Iterator Generator Tag Demo</title>
<s:head/>
</head>
<body>

    <s:actionerror/>
    <s:actionmessage/>
    
    <s:form action="submitGeneratorTagDemo" namespace="/tags/non-ui/iteratorGeneratorTag" method="POST">
        <s:textfield label="Value" name="value" />
        <s:textfield label="Separator" name="separator" />
        <s:textfield label="Count" name="count" />
        <s:submit />
    </s:form>

</body>
</html>
