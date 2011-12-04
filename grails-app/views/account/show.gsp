
<%@ page import="bog.Account" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-account" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list account">
			
				<g:if test="${accountInstance?.accountNumber}">
				<li class="fieldcontain">
					<span id="accountNumber-label" class="property-label"><g:message code="account.accountNumber.label" default="Account Number" /></span>
					
						<span class="property-value" aria-labelledby="accountNumber-label"><g:fieldValue bean="${accountInstance}" field="accountNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.balance}">
				<li class="fieldcontain">
					<span id="balance-label" class="property-label"><g:message code="account.balance.label" default="Balance" /></span>
					
						<span class="property-value" aria-labelledby="balance-label"><g:fieldValue bean="${accountInstance}" field="balance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="account.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${accountInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="account.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${accountInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="account.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${accountInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="account.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${accountInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.totalIn}">
				<li class="fieldcontain">
					<span id="totalIn-label" class="property-label"><g:message code="account.totalIn.label" default="Total In" /></span>
					
						<span class="property-value" aria-labelledby="totalIn-label"><g:fieldValue bean="${accountInstance}" field="totalIn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.totalOut}">
				<li class="fieldcontain">
					<span id="totalOut-label" class="property-label"><g:message code="account.totalOut.label" default="Total Out" /></span>
					
						<span class="property-value" aria-labelledby="totalOut-label"><g:fieldValue bean="${accountInstance}" field="totalOut"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.transfInCount}">
				<li class="fieldcontain">
					<span id="transfInCount-label" class="property-label"><g:message code="account.transfInCount.label" default="Transf In Count" /></span>
					
						<span class="property-value" aria-labelledby="transfInCount-label"><g:fieldValue bean="${accountInstance}" field="transfInCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.transfOutCount}">
				<li class="fieldcontain">
					<span id="transfOutCount-label" class="property-label"><g:message code="account.transfOutCount.label" default="Transf Out Count" /></span>
					
						<span class="property-value" aria-labelledby="transfOutCount-label"><g:fieldValue bean="${accountInstance}" field="transfOutCount"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${accountInstance?.id}" />
					<g:link class="edit" action="edit" id="${accountInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
