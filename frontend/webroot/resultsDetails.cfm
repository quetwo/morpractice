<cfparam name="url.id" default="0">

<!---
<cfset myPhoneNumber = session.usermanager.getUser().getPhoneNumber()>

<cfset interviewSession = invoke("cf.interviewSession","getUserSessionByPhone",{phoneNumber = myPhoneNumber})>
<cfset telephone = invoke("api.2020-10-10.telephoneIntegration","getAnalysis", {currentQuestionNum=url.id, phoneNumber=myPhoneNumber})>
--->


<cfset telephone = '{"messages":[{"id":"6181351629783040","text":"Free coffee for everybody.","from":{},"startTime":"2020-10-11T16:56:32.523Z","endTime":"2020-10-11T16:56:34.223Z","conversationId":"5859292634677248","phrases":[],"sentiment":{"polarity":{"score":0.9},"suggested":"positive"}},{"id":"4812982095708160","text":"That is what we did free coffee for everybody.","from":{},"startTime":"2020-10-11T16:56:34.523Z","endTime":"2020-10-11T16:56:38.223Z","conversationId":"5859292634677248","phrases":[],"sentiment":{"polarity":{"score":0.4},"suggested":"positive"}}]}'>

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
            <cfset preNeg = 0>
            <cfset Neg = 0>
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
                    <li>This lasted for <cfoutput>#messageTime# seconds.</cfoutput> <cfif messageTime LTE 15>That is a bit short</cfif>  </li>
                    <li>Feedback 2</li>
                </ul>
            </td>
        </tr>

    </cfloop>

</table>

<cfdump var="#myJSON.messages#">

<cfinclude template="templates/footer.cfm" />
