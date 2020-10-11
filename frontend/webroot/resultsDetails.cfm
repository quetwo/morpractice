<cfparam name="url.id" default="0">

<cfset myPhoneNumber = session.usermanager.getUser().getPhoneNumber()>

<cfset interviewSession = invoke("cf.interviewSession","getUserSessionByPhone",{phoneNumber = myPhoneNumber})>
<cfset telephone = invoke("api.2020-10-10.telephoneIntegration","getAnalysis", {currentQuestionNum=url.id, phoneNumber=myPhoneNumber})>

<cfdump var="#telephone#">