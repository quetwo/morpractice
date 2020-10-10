<cfquery name="test">
    select now() as col1
</cfquery>

<cfdump label="Is the DB Alive?" var="#test#">

<cfset ormReload()>

<cfset myUser = entityNew("user")>
<cfset myUser.setUsername("admin")>
<cfset myUser.setPassword("password")>
<cfset myUser.setFullName("Admin User")>
<cfset myUser.setEmail("admin@admin.com")>
<cfset myUser.setVerified(true)>
<cfset myUser.setUserType(99)>
<!--- <cfset entitySave(myUser)> --->

<cfset session.userManager.authUser("admin","password")>
<cfdump var="#session.userManager.isAuthenticated()#" label="Is Authenticated?">
<cfdump var="#session.userManager.getUser().getFullName()#" label="User's Name">
<!---<cfset session.userManager.logoutUser()>
<cfdump var="#session.userManager.isAuthenticated()#" label="Is Authenticated?">--->

<cfset newField = entityNew("jobField")>
<cfset newField.setFieldTitle("Programmer")>
<cfset newField.setFieldLongName("IT/Programmer or Developer")>
<!---<cfset entitySave(newField)> --->

<cfscript>

    newQuestion = entityNew("interviewQuestion");
    newQuestion.setTitle("Intro Question");
    newQuestion.setQuestion("Tell us about yourself.");
    newQuestion.setJobField(entityload("jobField",{fieldTitle="Programmer"}));
    //entitySave(newQuestion);

</cfscript>
