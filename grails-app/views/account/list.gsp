
<%@ page import="bog.Account" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-account" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="accountNumber" title="${message(code: 'account.accountNumber.label', default: 'Account Number')}" />
					
						<g:sortableColumn property="balance" title="${message(code: 'account.balance.label', default: 'Balance')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'account.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'account.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'account.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'account.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountInstanceList}" status="i" var="accountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "accountNumber")}</g:link></td>
					
						<td>${fieldValue(bean: accountInstance, field: "balance")}</td>
					
						<td><g:formatDate date="${accountInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${accountInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: accountInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
