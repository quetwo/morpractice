
<cfset session.userManager.signUp(form.name, form.userName, form.email, form.password)>

<cfset session.userManager.authUser(form.UserName, form.password)>

<cfif session.userManager.isAuthenticated()>
	<cflocation	url = "/"/>
	<cfelse>
		<cflocation	url = "/login.cfm"/>
</cfif>
