<cfset interviewSession = invoke("cf.interviewSession","getUserSessionByPhone",{phoneNumber = form.to})>
<cfif isDefined("form.RecordingUrl")>
    <cfset interviewSession.recordingURL[interviewSession.currentQuestion] = form.recordingurl>
</cfif>
<Response>
    <Say voice="man" language="en-us">You have completed the interview.  Please return to the website to see how you scored, and what you can do to improve your score.  Thank you for using More Practice.
    </Say>
    <Hangup/>
</Response>
