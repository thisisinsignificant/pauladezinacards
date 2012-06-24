
<%@ page import="pauladezinacards.Specs" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'specs.label', default: 'Specs')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="sidebar">
			<div class="nav" role="navigation">
			<div class="box">
			<h3>Menu</h3>
			
				<div class="content">
				<ul class="operations">
			<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
				</div>
			</div>
			</div>
		</div>
		
		<div id="page-content">
			<div class="box">
			<h3><g:message code="default.list.label" args="[entityName]" /></h3>
			<div id="list-specs" class="content scaffold-list" role="main">	
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'specs.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="value" title="${message(code: 'specs.value.label', default: 'Value')}" />
					
						<th><g:message code="specs.product.label" default="Product" /></th>
					<th class="crud-buttons">Controls</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${specsInstanceList}" status="i" var="specsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${specsInstance.id}">${fieldValue(bean: specsInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: specsInstance, field: "value")}</td>
					
						<td>${fieldValue(bean: specsInstance, field: "product")}</td>
					
					<td class="crud-buttons">
								<g:link action="show" id="${specsInstance.id}"><img src="../images/view.png"></g:link> 
								<g:link action="edit" id="${specsInstance.id}"><img src="../images/update.png"></g:link>
								<g:link class="delete" action="delete" id="${specsInstance.id}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><img src="../images/delete.png"> </g:link>
								</td>
								
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${specsInstanceTotal}" />
			</div>
		</div>
			</div>
		</div>
	</body>
</html>
