<h1>This works!</h1>

<cfquery name="test">
    select now() as col1
</cfquery>

<cfdump var="#test#">

<cfset myUser = entityloadbypk("user",1)>

<cfdump var="#myUser#">

