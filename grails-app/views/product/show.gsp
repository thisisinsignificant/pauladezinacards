
<%@ page import="pauladezinacards.Product" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-product" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list product">
			
				<g:if test="${productInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="product.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${productInstance?.category?.id}">${productInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="product.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${productInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="product.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${productInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="product.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${productInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.thumbnailImage}">
				<li class="fieldcontain">
					<span id="thumbnailImage-label" class="property-label"><g:message code="product.thumbnailImage.label" default="Thumbnail Image" /></span>
					
						<span class="property-value" aria-labelledby="thumbnailImage-label"><g:fieldValue bean="${productInstance}" field="thumbnailImage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="product.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${productInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.specs}">
				<li class="fieldcontain">
					<span id="specs-label" class="property-label"><g:message code="product.specs.label" default="Specs" /></span>
					
						<g:each in="${productInstance.specs}" var="s">
						<span class="property-value" aria-labelledby="specs-label"><g:link controller="specs" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productInstance?.id}" />
					<g:link class="edit" action="edit" id="${productInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
