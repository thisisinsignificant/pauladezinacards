
<%@ page import="pauladezinacards.Style" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'style.label', default: 'Style')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-style" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-style" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list style">
			
				<g:if test="${styleInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="style.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${styleInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${styleInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="style.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${styleInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${styleInstance?.thumbnailImage}">
				<li class="fieldcontain">
					<span id="thumbnailImage-label" class="property-label"><g:message code="style.thumbnailImage.label" default="Thumbnail Image" /></span>
					
						<span class="property-value" aria-labelledby="thumbnailImage-label"><g:fieldValue bean="${styleInstance}" field="thumbnailImage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${styleInstance?.productFilter}">
				<li class="fieldcontain">
					<span id="productFilter-label" class="property-label"><g:message code="style.productFilter.label" default="Product Filter" /></span>
					
						<g:each in="${styleInstance.productFilter}" var="p">
						<span class="property-value" aria-labelledby="productFilter-label"><g:link controller="productFilter" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${styleInstance?.id}" />
					<g:link class="edit" action="edit" id="${styleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
