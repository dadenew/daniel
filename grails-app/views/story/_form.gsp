<%@ page import="org.daniel.domain.Story" %>



<div class="fieldcontain ${hasErrors(bean: storyInstance, field: 'link', 'error')} required">
	<label for="link">
		<g:message code="story.link.label" default="Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="link" required="" value="${storyInstance?.link}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: storyInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="story.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" required="" value="${storyInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: storyInstance, field: 'submittedOn', 'error')} required">
	<label for="submittedOn">
		<g:message code="story.submittedOn.label" default="Submitted On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="submittedOn" precision="day"  value="${storyInstance?.submittedOn}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: storyInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="story.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${org.daniel.domain.User.list()}" optionKey="id" required="" value="${storyInstance?.user?.id}" class="many-to-one"/>
</div>

