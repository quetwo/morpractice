component
{

    remote function startRoboInterview()
    {
        checkAuth();
        interviewManager = createObject("cf.interviewSession");
        interviewManager.init();
        interviewManager.createNewSession();
        cfhttp(method="POST", url="https://api.zang.io/v2/Accounts/#application.avayaSID#/Calls.json", username="#application.avayaSID#", password="#application.avayaauth#", authType="basic")
        {
            cfhttpparam(type="formfield", name="From", value="+15172890010");
            cfhttpparam(type="formfield", name="To", value="#session.userManager.getUser().getPhoneNumber()#");
            cfhttpparam(type="formfield", name="Url", value="http://3.135.202.150/api/2020-10-10/zang/initInterview.cfm");
        }
    }

    remote function startRealInterview()
    {
        checkAuth();
        interviewManager = createObject("cf.interviewSession");
        interviewManager.init();
        interviewManager.createNewSession();
    }

    public function submitAnalysis(recordingURL,currentQuestionNum, phoneNumber)
    {
        cfhttp(method="POST", url="https://api.symbl.ai/v1/process/audio/url", timeout=300)
        {
            cfhttpparam(type="header", name="Content-Type", value="application/json");
            cfhttpparam(type="header", name="x-api-key", value=application.symbl);
            cfhttpparam(type="header", name="Accept", value="application/json");
            cfhttpparam(type="body", value='{"url":"#arguments.recordingURL#"}');
        }
        myJSON = deserializeJSON(cfhttp.fileContent);
        interviewSession = invoke("cf.interviewSession","getUserSessionByPhone",{phoneNumber = arguments.phoneNumber});
        interviewSession.conversationID[currentQuestionNum] = myJSON.conversationID;
    }

    remote String function getAnalysis(currentQuestionNum, phoneNumber) returnformat="plain"
    {
        checkAuth();
        interviewSession = invoke("cf.interviewSession","getUserSessionByPhone",{phoneNumber = arguments.phoneNumber});
        myConversationID = interviewSession.conversationID[currentQuestionNum];

        cfhttp(method="GET", url="https://api.symbl.ai/v1/conversations/#myConversationID#/messages?sentiment=true")
        {
            cfhttpparam(type="header", name="Content-Type", value="application/json");
            cfhttpparam(type="header", name="x-api-key", value=application.symbl);
            cfhttpparam(type="header", name="Accept", value="application/json");
        }

        return cfhttp.fileContent;
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
