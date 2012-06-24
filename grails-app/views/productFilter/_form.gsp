<%@ page import="pauladezinacards.ProductFilter" %>



<div class="fieldcontain ${hasErrors(bean: productFilterInstance, field: 'style', 'error')} required">
	<label for="style">
		<g:message code="productFilter.style.label" default="Style" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="style" name="style.id" from="${pauladezinacards.Style.list()}" optionKey="id" required="" value="${productFilterInstance?.style?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productFilterInstance, field: 'tag', 'error')} required">
	<label for="tag">
		<g:message code="productFilter.tag.label" default="Tag" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tag" name="tag.id" from="${pauladezinacards.Tag.list()}" optionKey="id" required="" value="${productFilterInstance?.tag?.id}" class="many-to-one"/>
</div>

