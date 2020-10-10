<cfset interviewSession = invoke("cf.interviewSession","getUserSessionByPhone",{phoneNumber = form.to})>
<cfset currentQuestion = interviewSession.CURRENTQUESTIONLIST[interviewSession.currentQuestion + 1]>
<cfset interviewSession.currentQuestion++>

<Response>
    <Say voice="man" language="en-us"><cfoutput>#currentQuestion.getQuestion()#</cfoutput>
    </Say>
    <cfif interviewSession.currentQuestion LT 11>
    <Gather numDigits="1" timeout="30" input="dtmf" action="http://3.135.202.150/api/2020-10-10/zang/questions.cfm" method="post">
        <Say>Press any key on the key pad to continue.</Say>
    </Gather>
    <cfelse>
    <Gather numDigits="1" timeout="30" input="dtmf" action="http://3.135.202.150/api/2020-10-10/zang/completeInterview.cfm" method="post">
        <Say>Press any key on the key pad to continue.</Say>
    </Gather>
    </cfif>
</Response>
