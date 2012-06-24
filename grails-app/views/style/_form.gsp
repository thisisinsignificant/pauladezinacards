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

<div class="fieldcontain ${hasErrors(bean: styleInstance, field: 'image', 'error')} required">
	<label for="product">
		<g:message code="product.title.label" default="Product" />
	</label>
	<g:select id="product" name="product?.id" from="${pauladezinacards.Product.list()}" optionKey="id" optionValue="title" value="${categoryInstance?.product?.id}" noSelection="['null': '']"/>
</div>



