<%@ page import="pauladezinacards.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="tag.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${tagInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'productFilters', 'error')} ">
	<label for="productFilters">
		<g:message code="tag.productFilters.label" default="Product Filters" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${tagInstance?.productFilters?}" var="p">
    <li><g:link controller="productFilter" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="productFilter" action="create" params="['tag.id': tagInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'productFilter.label', default: 'ProductFilter')])}</g:link>
</li>
</ul>

</div>

