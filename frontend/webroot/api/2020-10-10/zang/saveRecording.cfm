<cfparam name="form.to" default="+15174322528">
<cfset interviewSession.currentRecording++>
<cfset interviewSession = invoke("cf.interviewSession","getUserSessionByPhone",{phoneNumber = form.to})>
<cfif isDefined("form.RecordingUrl")>
    <cfset interviewSession.recordingURL[interviewSession.currentRecording] = form.recordingurl>
    <cfset telephone = invoke("api.2020-10-10.telephoneIntegration","submitAnalysis", {recordingURL=form.recordingurl, currentQuestionNum=interviewSession.currentRecording, phoneNumber=form.to})>
</cfif>
<Response></Response>

<cfsavecontent variable="mydebug"><cfdump var="#form#"><cfdump var="#interviewSession.recordingURL#"><cfoutput>Current Recording Number = #interviewSession.currentRecording#</cfoutput></cfsavecontent>

<cffile action="write" output="#mydebug#" file="test-recording.html">
