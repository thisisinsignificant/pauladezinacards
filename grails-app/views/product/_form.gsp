<%@ page import="pauladezinacards.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="product.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${pauladezinacards.Category.list()}" optionKey="id" required="" value="${productInstance?.category?.id}" class="many-to-one"/>
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
	<g:textField name="description" required="" value="${productInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="product.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="image" required="" value="${productInstance?.image}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'thumbnailImage', 'error')} required">
	<label for="thumbnailImage">
		<g:message code="product.thumbnailImage.label" default="Thumbnail Image" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="thumbnailImage" required="" value="${productInstance?.thumbnailImage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="price" required="" value="${fieldValue(bean: productInstance, field: 'price')}"/>
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
<g:link controller="specs" action="create" params="['product.id': productInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'specs.label', default: 'Specs')])}</g:link>
</li>
</ul>

</div>

