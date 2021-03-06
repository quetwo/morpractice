component
{
    remote string function getAll()
    {
        checkAuth();
        myQuestions = entityload("jobField");
        cfheader(statuscode="200", statustext="OK");
        cfheader(name="Content-Type", value="application/json");
        writeOutput(serializeJSON(myQuestions,true));
    }

    remote string function getJob(required jobID)
    {
        checkAuth();
        myJob = entityLoadByPK("jobField", jobID);
        cfheader(statuscode="200", statustext="OK");
        cfheader(name="Content-Type", value="application/json");
        writeOutput(serializeJSON(myJob,true));
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
