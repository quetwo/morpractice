
<cfset interviewSession = invoke("cf.interviewSession","getCurrentUserSession")>
<cfset currentQuestionNumber = interviewSession.currentQuestion>
<cfset QuestionList = interviewSession.CURRENTQUESTIONLIST>

<cfset currentQuestionNumber = 3>

    <table class="table table-bordered table-hover table-striped">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Question Number</th>
            <th scope="col">Question</th>
            <th scope="col">Feedback</th>
        </tr>
        </thead>
        <cfloop index="i" from="1" to="#arrayLen(QuestionList)#">
        <cfoutput>
            <tr <cfif currentQuestionNumber EQ i> class="table-warning" <cfelseif currentQuestionNumber GT i> class="table-secondary" </cfif> >
                <td>#i#</td>
                <td>#QuestionList[i].getQuestion()#</td>
                <td class="text-center"><cfif currentQuestionNumber GT i><i class="icon-eye text-body" data-toggle="tooltip" data-placement="right" title="View your feedback on this item" onclick="loadDetails(#i#);"/></cfif></td>
            </tr>
        </cfoutput>
        </cfloop>
    </table>
