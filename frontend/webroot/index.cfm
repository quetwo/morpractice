<h1>This works!</h1>

<cfquery name="test">
    select now() as col1
</cfquery>

<cfdump label="Is the DB Alive?" var="#test#">

<cfset myUser = entityNew("user")>
<cfset myUser.setUsername("admin")>
<cfset myUser.setPassword("password")>
<cfset myUser.setFullName("Admin User")>
<cfset myUser.setEmail("admin@admin.com")>
<cfset myUser.setVerified(true)>
<cfset myUser.setUserType(99)>

<!---<cfset session.userManager = createObject("component","cf.userManager")> --->
<cfset session.userManager.authUser("admin","password")>
<cfdump var="#session.userManager.isAuthenticated()#" label="Is Authenticated?">
<cfset session.userManager.logoutUser()>
<cfdump var="#session.userManager.isAuthenticated()#" label="Is Authenticated?">