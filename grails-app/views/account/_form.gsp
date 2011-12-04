<%@ page import="bog.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'accountNumber', 'error')} ">
	<label for="accountNumber">
		<g:message code="account.accountNumber.label" default="Account Number" />
		
	</label>
	<g:textField name="accountNumber" value="${accountInstance?.accountNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'balance', 'error')} required">
	<label for="balance">
		<g:message code="account.balance.label" default="Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="balance" required="" value="${fieldValue(bean: accountInstance, field: 'balance')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${accountInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="account.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${accountInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'totalIn', 'error')} required">
	<label for="totalIn">
		<g:message code="account.totalIn.label" default="Total In" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="totalIn" required="" value="${fieldValue(bean: accountInstance, field: 'totalIn')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'totalOut', 'error')} required">
	<label for="totalOut">
		<g:message code="account.totalOut.label" default="Total Out" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="totalOut" required="" value="${fieldValue(bean: accountInstance, field: 'totalOut')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'transfInCount', 'error')} required">
	<label for="transfInCount">
		<g:message code="account.transfInCount.label" default="Transf In Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="transfInCount" required="" value="${fieldValue(bean: accountInstance, field: 'transfInCount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'transfOutCount', 'error')} required">
	<label for="transfOutCount">
		<g:message code="account.transfOutCount.label" default="Transf Out Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="transfOutCount" required="" value="${fieldValue(bean: accountInstance, field: 'transfOutCount')}"/>
</div>

