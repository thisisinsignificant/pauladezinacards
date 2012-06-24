<%@ page import="pauladezinacards.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="tag.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${tagInstance?.title}"/>
</div>


