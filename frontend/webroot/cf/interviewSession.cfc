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
            writeDump(element.user.getID() EQ userID);
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
        myNewSession.user = session.userManager.getUser();
        arrayAppend(application.interviewSessionList,myNewSession);
        return myNewSession;
    }

    public function clearAllSessions()
    {
        application.interviewSessionList = [];
    }

}
