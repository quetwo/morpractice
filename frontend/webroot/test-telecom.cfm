<cfscript>

    interviewManager = createObject("cf.interviewSession");
    interviewManager.init();
    //interviewManager.clearAllSessions();
    //interviewManager.createNewSession();

    mySession = interviewManager.getCurrentUserSession();

    writeDump(mySession.User.getPhoneNumber());



</cfscript>
