<cfset interviewSession = invoke("cf.interviewSession","getUserSessionByPhone",{phoneNumber = form.to})>
<cfset currentQuestion = interviewSession.CURRENTQUESTIONLIST[interviewSession.currentQuestion + 1]>
<cfif isDefined("form.RecordingUrl")>
    <cfset interviewSession.recordingURL[interviewSession.currentQuestion] = form.recordingurl>
</cfif>
<cfset interviewSession.currentQuestion++>

<cfsavecontent variable="mydebug"><cfdump var="#form#"><cfdump var="#interviewSession.recordingURL#"><cfoutput>#interviewSession.currentQuestion# | #currentQuestion.getQuestion()#</cfoutput></cfsavecontent><cffile action="write" output="#mydebug#" file="test.html">

<cfsavecontent variable="output"><Response>
 <Say voice="man" language="en-us"><cfoutput>#currentQuestion.getQuestion()#</cfoutput></Say>
 <cfif interviewSession.currentQuestion LT 11><Record timeout="5" playBeep="true" background="false" trimSilence="true" action="http://3.135.202.150/api/2020-10-10/zang/questions.cfm" /><cfelse><Record timeout="5" playBeep="true" background="false" trimSilence="true" action="http://3.135.202.150/api/2020-10-10/zang/completeInterview.cfm" /></cfif>
</Response></cfsavecontent>

<cffile action="write" output="#mydebug# #output#" file="test.html">

<cfcontent type="application/json" reset="true"><cfoutput>#output#</cfoutput>
