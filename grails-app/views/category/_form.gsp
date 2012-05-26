<%@ page import="pauladezinacards.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="category.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${categoryInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'parentCategory', 'error')} ">
	<label for="parentCategory">
		<g:message code="category.parentCategory.label" default="Parent Category" />
		
	</label>
	<g:textField name="parentCategory" value="${categoryInstance?.parentCategory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="category.products.label" default="Products" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.products?}" var="p">
    <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="product" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
</li>
</ul>

</div>

