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


<!--- basic user info --->

<h1> Baic User Info :</h1>
<table>
    <tr>
        <td>User's Name : </td>
        <td><cfoutput>#session.userManager.getUser().getFullName()#</cfoutput></td>
    </tr>
    <tr>
        <td>User's Email Address : </td>
        <td><cfoutput>#session.userManager.getUser().getEmail()#</cfoutput></td>
    </tr>
    <tr>
        <td>User's Phone Number : </td>
        <td><cfoutput>#session.userManager.getUser().getPhoneNumber()#</cfoutput></td>
    </tr>

</table>

<!--- List of all Interview Questions --->

<h1> Questions to Ask: </h1>
<cfset interviewQuestions = entityToQuery(entityload("interviewQuestion"))>

<table>
<cfoutput query="interviewQuestions">
    <tr>
        <td>Question Title : </td>
        <td>#interviewQuestions.title#</td>
    </tr>
    <tr>
        <td>Question : </td>
        <td>#interviewQuestions.question#</td>
    </tr>
</cfoutput>
</table>