<cfset interviewSession = invoke("cf.interviewSession","getUserSessionByPhone",{phoneNumber = form.to})>
<Response>
    <Say voice="man" language="en-us">This is More Practice Calling for <cfoutput>#interviewSession.user.getFullName()#</cfoutput>.
    We are about to begin a practice interview session. You will be asked a total of ten questions in this session from a
    selection of questions.  Once you have finished your response, press the pound or hash key to continue, or wait for
    the next question.  This session will be recorded to help provide you analysis of your responses.
    </Say>
    <Gather numDigits="1" timeout="60" finishOnKey="#" action="http://3.135.202.150/api/2020-10-10/zang/questions.cfm">
        <Say>Press any key on the key pad to continue.</Say>
    </Gather>
    <Redirect>http://3.135.202.150/api/2020-10-10/zang/questions.cfm</Redirect>
</Response>
