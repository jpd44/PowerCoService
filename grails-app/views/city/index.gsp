
<%@ page import="restservice.City" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'city.label', default: 'City')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-city" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-city" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="postalCode" title="${message(code: 'city.postalCode.label', default: 'Postal Code')}" />
					
						<g:sortableColumn property="cityName" title="${message(code: 'city.cityName.label', default: 'City Name')}" />
					
						<g:sortableColumn property="countryCode" title="${message(code: 'city.countryCode.label', default: 'Country Code')}" />
					
						<g:sortableColumn property="testField" title="${message(code: 'city.testField.label', default: 'Test Field')}" />
					
						<g:sortableColumn property="testField2" title="${message(code: 'city.testField2.label', default: 'Test Field2')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'city.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cityInstanceList}" status="i" var="cityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cityInstance.id}">${fieldValue(bean: cityInstance, field: "postalCode")}</g:link></td>
					
						<td>${fieldValue(bean: cityInstance, field: "cityName")}</td>
					
						<td>${fieldValue(bean: cityInstance, field: "countryCode")}</td>
					
						<td>${fieldValue(bean: cityInstance, field: "testField")}</td>
					
						<td>${fieldValue(bean: cityInstance, field: "testField2")}</td>
					
						<td><g:formatDate date="${cityInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cityInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
