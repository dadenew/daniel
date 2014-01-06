<%@ page import="org.daniel.domain.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'fullName', 'error')} required">
	<label for="fullName">
		<g:message code="user.fullName.label" default="Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullName" maxlength="100" required="" value="${userInstance?.fullName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'stories', 'error')} ">
	<label for="stories">
		<g:message code="user.stories.label" default="Stories" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.stories?}" var="s">
    <li><g:link controller="story" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="story" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'story.label', default: 'Story')])}</g:link>
</li>
</ul>

</div>

