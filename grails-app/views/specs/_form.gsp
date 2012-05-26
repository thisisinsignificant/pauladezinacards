<%@ page import="pauladezinacards.Specs" %>



<div class="fieldcontain ${hasErrors(bean: specsInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="specs.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${specsInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: specsInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="specs.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="value" required="" value="${specsInstance?.value}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: specsInstance, field: 'product', 'error')} ">
	<label for="product">
		<g:message code="specs.product.label" default="Product" />
		
	</label>
	<g:select id="product" name="product.id" from="${pauladezinacards.Product.list()}" optionKey="id" value="${specsInstance?.product?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

