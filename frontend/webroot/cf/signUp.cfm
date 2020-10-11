
<cfset session.userManager.signUp(form.name, form.userName, form.email, form.password, form.phone)>

<cfset session.userManager.authUser(form.UserName, form.password)>

<cfif session.userManager.isAuthenticated()>
	<cflocation	url = "/"/>
	<cfelse>
		<cflocation	url = "/login.cfm"/>
</cfif>
