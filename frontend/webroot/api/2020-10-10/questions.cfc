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

    remote string function getQuestion(questionID)
    {
        checkAuth();
        myQuestion = entityLoadByPK("interviewQuestion", questionID);
        cfheader(statuscode="200", statustext="OK");
        cfheader(name="Content-Type", value="application/json");
        writeOutput(serializeJSON(myQuestion,true));
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
}
