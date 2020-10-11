<cfparam name="url.id" default="0">

<cfset myPhoneNumber = session.usermanager.getUser().getPhoneNumber()>

<cfset interviewSession = invoke("cf.interviewSession","getUserSessionByPhone",{phoneNumber = myPhoneNumber})>
<cfset telephone = invoke("api.2020-10-10.telephoneIntegration","getAnalysis", {currentQuestionNum=url.id, phoneNumber=myPhoneNumber})>

<cfset myJSON = deserializeJSON(telephone)>

<cfinclude template="templates/header.cfm" />

<table class="table table-bordered table-hover">

    <cfloop index="i" from="1" to="#arrayLen(myJSON.messages)#">

        <cfset score = myJSON.messages[i].sentiment.polarity.score>

        <cfif score GT 0>
            <cfset preNeg = 50>
            <cfset Neg = 0>
            <cfset Pos = score * 50>
            <cfset prePos = (1-score) * 50>
            <cfset PosMessage = score>
            <cfset Negmessage = "">
        <cfelse>
            <cfset preNeg = (1+score) * 50>
            <cfset Neg = abs(score * 50)>
            <cfset Pos = 0>
            <cfset prePos = 0>
            <cfset PosMessage = "">
            <cfset negMessage = score>
        </cfif>
        <cfset messageTime = dateDiff("s",myJSON.messages[i].startTime, myJSON.messages[i].endTime)>

        <tr class="table-primary">
            <td><cfoutput>#myJSON.messages[i].text#</cfoutput></td>
        </tr>
        <tr>
            <td>
                <div class="progress g-mb-20">&nbsp;<cfoutput>
                    <div class="progress-bar g-bg-white" role="progressbar" style="width: #preNeg#%"></div>
                    <div class="progress-bar g-bg-red" role="progressbar" style="width: #Neg#%">#negMessage#</div>
                    <div class="progress-bar g-bg-green" role="progressbar" style="width: #Pos#%">#posMessage#</div>
                    <div class="progress-bar g-bg-white" role="progressbar" style="width: #prePos#%"></div></cfoutput>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>This lasted for <cfoutput>#messageTime# seconds.</cfoutput>
                        <cfif messageTime GTE 60><strong>This might have been a bit long to talk about this.</strong>  You might have been rambling a bit here.</cfif>
                    </li>
                    <li><cfif score GT 0>This was seen as a <strong>positive</strong> message.  Positive messages make for positive interviews.<cfelse>This was seen as a negative message.  Try to keep your interviews positive, if possible.</cfif></li>
                    <li>This didn't include any bad words.  That is a good thing.</li>
                    <li>This didn't include any humor.  That can be a good thing, as not all humor is taken the same way with all interviews.  This wasn't the question to introduce it.</li>
                </ul>
            </td>
        </tr>

    </cfloop>

</table>

<cfinclude template="templates/footer.cfm" />
