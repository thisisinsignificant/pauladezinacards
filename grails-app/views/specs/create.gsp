<%@ page import="pauladezinacards.Specs" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'specs.label', default: 'Specs')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="sidebar">
			<div class="nav" role="navigation">
			<div class="box">
			<h3>Menu</h3>
			
				<div class="content">
				<ul class="operations">
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
				</div>
			</div>
			</div>
		</div>
		
		<div id="page-content">
			<div class="box">
			<h3><g:message code="default.create.label" args="[entityName]" /></h3>
		<div id="create-specs" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${specsInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${specsInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
			</div>
		</div>
	</body>
</html>
