
<%@ page import="pauladezinacards.Category" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	
		<div id="sidebar">
			<div class="nav" role="navigation">
			<div class="box">
			<h3>Menu</h3>
			
				<div class="content">
				<ul class="operations">
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
				</div>
			</div>
			</div>
		</div>
		
		<div id="page-content">
			<div class="box">
			<h3><g:message code="default.list.label" args="[entityName]" /></h3>
				<div id="list-category" class="content scaffold-list" role="main">
					
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
					<table>
						<thead>
							<tr>
							
								<g:sortableColumn property="title" title="${message(code: 'category.title.label', default: 'Title')}" />
							
								<th><g:message code="category.parentCategory.label" default="Parent Category" /></th>
							
							</tr>
						</thead>
						<tbody>
						<g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
								<td><g:link action="show" id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "title")}</g:link></td>
							
								<td>${fieldValue(bean: categoryInstance, field: "parentCategory")}</td>
							
							</tr>
						</g:each>
						</tbody>
					</table>
					<div class="pagination">
						<g:paginate total="${categoryInstanceTotal}" />
					</div>
				</div>
			</div>
			</div>
	</body>
</html>
