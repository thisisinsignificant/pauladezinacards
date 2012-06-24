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



