
<%@ page import="pauladezinacards.Specs" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'specs.label', default: 'Specs')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="sidebar">
			<div class="nav" role="navigation">
			<div class="box">
			<h3>Menu</h3>
			
				<div class="content">
				<ul class="operations">
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
				</div>
			</div>
			</div>
		</div>
		
		<div id="page-content">
			<div class="box">
			<h3><g:message code="default.show.label" args="[entityName]" /></h3>
		<div id="show-specs" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list specs">
			
				<g:if test="${specsInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="specs.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${specsInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${specsInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="specs.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${specsInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${specsInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="specs.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${specsInstance?.product?.id}">${specsInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${specsInstance?.id}" />
					<g:link class="edit" action="edit" id="${specsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
			</div>
		</div>
	</body>
</html>
