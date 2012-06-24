
<%@ page import="pauladezinacards.Tag" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
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
		<div id="show-tag" class="content scaffold-show" role="main">
			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tag">
			
				<g:if test="${tagInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="tag.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${tagInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tagInstance?.productFilters}">
				<li class="fieldcontain">
					<span id="productFilters-label" class="property-label"><g:message code="tag.productFilters.label" default="Product Filters" /></span>
					
						<g:each in="${tagInstance.productFilters}" var="p">
						<span class="property-value" aria-labelledby="productFilters-label"><g:link controller="productFilter" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tagInstance?.id}" />
					<g:link class="edit" action="edit" id="${tagInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</div>
			</div>
		</div>
	</body>
</html>
