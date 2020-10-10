component
{

    remote string function getAll()
    {
        checkAuth();
        myQuestions = entityload("interviewQuestion");
        cfheader(statuscode="200", statustext="OK");
        cfheader(name="Content-Type", value="application/json");
        writeOutput(serializeJSON(myQuestions,true));
    }

    remote string function getQuestion(required questionID)
    {
        checkAuth();
        myQuestion = entityLoadByPK("interviewQuestion", questionID);
        cfheader(statuscode="200", statustext="OK");
        cfheader(name="Content-Type", value="application/json");
        writeOutput(serializeJSON(myQuestion,true));
    }

    remote string function editQuestion(required questionID, title, question)
    {
        checkAuth();
        checkMethodPost();

        if (!isNumeric("arguments.questionID"))
        {
            cfheader(statuscode="409", statustext="Invalid Question Number");
            abort;
        }

        if(questionID EQ 0)
        {
            quesEdit = entityNew("interviewQuestion");
        }
        else
        {
            quesEdit = entityLoadByPK("interviewQuestion",arguments.questionID);
        }

        if (isDefined("arguments.title")) quesEdit.setTitle(arguments.title);
        if (isDefined("arguments.question")) quesEdit.setQuestion(arguments.question);
        entitySave(quesEdit);
        cfheader(statuscode="200", statustext="OK");
    }

    remote string function attachJobToQuestion(requird questionID, required jobFieldID)
    {
        checkAuth();
        checkMethodPost();
        if (!isNumeric("arguments.questionID"))
        {
            cfheader(statuscode="409", statustext="Invalid Question Number");
            abort;
        }

        if (!isNumeric("arguments.jobFieldID"))
        {
            cfheader(statuscode="409", statustext="Invalid JobFieldID Number");
            abort;
        }

        quesEdit = entityLoadByPK("interviewQuestion", arguments.questionID);
        quesEdit.addJobField(entityLoadByPK("jobField",arguments.jobFieldID));
        entitySave(quesEdit);
        cfheader(statuscode="200", statustext="OK");
    }

    public array function getTenQuestions()
    {
        checkAuth();
        allQuestions = entityload("interviewQuestion");
        numQuestions = ArrayLen(allQuestions);
        finalQuestionList = [];
        cfheader( name="Content-Type", value="text/html" );
        for (i=1; i <=10; i++)
        {
            thisNumber = randRange(1,numQuestions);
            arrayAppend(finalQuestionList,allQuestions[thisNumber]);
            arrayDeleteAt(allQuestions,thisNumber);
            numQuestions--;
        }
        return finalQuestionList;
    }

    /// function to check if the user is authenticated.  We should only be responding to users with a session.
    private void function checkAuth()
    {
        // send a 401 if the user is not authenticated.
        if (!session.userManager.isAuthenticated())
        {
            cfheader(statuscode="401", statustext="User not authenticated.");
            abort;
        }
    }

    private void function checkMethodPost()
    {
        if (cgi.http_method NEQ "POST")
        {
            cfheader(statuscode="405", statustext="Method Not Allowed");
            abort;
        }
    }
}
