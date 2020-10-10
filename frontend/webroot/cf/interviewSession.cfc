component displayname="interview session manager"
{

    public void function init()
    {
        if (!isDefined("application.interviewSessionList")) application.interviewSessionList = [];
    }

    public function getAllSessions()
    {
        return application.interviewSessionList;
    }

    public interview function getUserSession(userID)
    {
        mySessionList = application.interviewSessionList;
        myInterviewReturn = createObject("interview");
        arrayEach(mySessionList, function(element,index)
        {
            if(element.user.getID() EQ userID)
            {
                myInterviewReturn = element;
            }
        });
        return myInterviewReturn;
    }

    public interview function getCurrentUserSession()
    {
        return getUserSession(session.userManager.getUser().getID());
    }

    public interview function createNewSession()
    {
        myNewSession = getUserSession(session.userManager.getUser().getID()); // create a session only if one does not exist
        if (!isDefined("myNewSession.user"))
        {
            // actually creating a new session.
            myNewSession.user = session.userManager.getUser();
            myNewSession.currentQuestionList = invoke("api.2020-10-10.questions","getTenQuestions");
            arraySort(myNewSession.currentQuestionList,function (e1, e2)
            {
               return compare(e1.getID(), e2.getID());
            });
            arrayAppend(application.interviewSessionList,myNewSession);
        }
        return myNewSession;
    }

    public function clearAllSessions()
    {
        application.interviewSessionList = [];
    }

}
