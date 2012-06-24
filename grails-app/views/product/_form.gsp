<%@ page import="pauladezinacards.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="product.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${pauladezinacards.Category.list()}" optionKey="id" required="" optionValue="title" value="${productInstance?.category?.title}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="product.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${productInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" required="" value="${productInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField  name="price" step="any" required="" value="${productInstance.price}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'specs', 'error')} ">
	<label for="specs">
		<g:message code="product.specs.label" default="Specs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productInstance?.specs?}" var="s">
    <li><g:link controller="specs" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:textField name="specsTitle" placeHolder="Title"/>
<g:textField name="specsvalue" placeHolder="Value"/>
<a href="#" class="newSpecs">add Spec</a>
<%--<g:link controller="specs" action="create" params="['product.id': productInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'specs.label', default: 'Specs')])}</g:link>--%>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'styles', 'error')} ">
	<label for="styles">
		<g:message code="product.styles.label" default="Styles" />
		
	</label>
	<g:select name="styles" from="${pauladezinacards.Style.list()}" multiple="multiple" optionValue="title" optionKey="id" size="5" value="${productInstance?.styles*.id}" class="many-to-many"/>
</div>

