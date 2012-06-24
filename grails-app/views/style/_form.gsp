<%@ page import="pauladezinacards.Style" %>



<div class="fieldcontain ${hasErrors(bean: styleInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="style.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${styleInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: styleInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="style.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="image" required="" value="${styleInstance?.image}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: styleInstance, field: 'thumbnailImage', 'error')} required">
	<label for="thumbnailImage">
		<g:message code="style.thumbnailImage.label" default="Thumbnail Image" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="thumbnailImage" required="" value="${styleInstance?.thumbnailImage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: styleInstance, field: 'productFilter', 'error')} ">
	<label for="productFilter">
		<g:message code="style.productFilter.label" default="Product Filter" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${styleInstance?.productFilter?}" var="p">
    <li><g:link controller="productFilter" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="productFilter" action="create" params="['style.id': styleInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'productFilter.label', default: 'ProductFilter')])}</g:link>
</li>
</ul>

</div>

