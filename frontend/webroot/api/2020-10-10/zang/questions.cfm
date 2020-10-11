<cfparam name="form.to" default="+15174322528">
<cfset interviewSession = invoke("cf.interviewSession","getUserSessionByPhone",{phoneNumber = form.to})>
<cfset currentQuestion = interviewSession.CURRENTQUESTIONLIST[interviewSession.currentQuestion + 1]>
<cfset interviewSession.currentQuestion++>

<cfsavecontent variable="mydebug"><cfdump var="#form#"><cfdump var="#interviewSession.recordingURL#"><cfoutput>#interviewSession.currentQuestion# | #currentQuestion.getQuestion()#</cfoutput></cfsavecontent>

<cfsavecontent variable="output"><Response>
 <Say voice="man" language="en-us"><cfoutput>#currentQuestion.getQuestion()#</cfoutput></Say>
 <Record timeout="5" playBeep="true" background="false" trimSilence="true" action="http://3.135.202.150/api/2020-10-10/zang/saveRecording.cfm" />
 <cfif interviewSession.currentQuestion LT 11><Redirect>http://3.135.202.150/api/2020-10-10/zang/questions.cfm</Redirect><cfelse><Redirect>http://3.135.202.150/api/2020-10-10/zang/completeInterview.cfm</Redirect></cfif>
</Response></cfsavecontent>

<cffile action="write" output="#mydebug# #output#" file="test.html">

<cfcontent type="application/json" reset="true"><cfoutput>#output#</cfoutput>
