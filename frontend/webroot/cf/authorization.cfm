<cfset session.userManager.authUser(form.UserName, form.password)>

<cfif session.userManager.isAuthenticated()>
	<cflocation	url = "/"/>
	<cfelse>
		<cflocation	url = "/login.cfm"/>
</cfif>
