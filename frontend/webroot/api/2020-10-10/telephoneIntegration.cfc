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

    public function submitAnalysis(recordingURL,currentQuestionNum, phoneNumber)
    {
        cfhttp(method="POST", url="https://api.symbl.ai/v1/process/audio/url")
        {
            cfhttpparam(type="header", name="Content-Type", value="application/json");
            cfhttpparam(type="header", name="x-api-key", value="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlFVUTRNemhDUVVWQk1rTkJNemszUTBNMlFVVTRRekkyUmpWQ056VTJRelUxUTBVeE5EZzFNUSJ9.eyJpc3MiOiJodHRwczovL2RpcmVjdC1wbGF0Zm9ybS5hdXRoMC5jb20vIiwic3ViIjoic1VYWU16ZXdIMkpjYjVMSlE0MTI1VFQ3NVJIbnN5VW1AY2xpZW50cyIsImF1ZCI6Imh0dHBzOi8vcGxhdGZvcm0ucmFtbWVyLmFpIiwiaWF0IjoxNjAyMzY5ODExLCJleHAiOjE2MDI0NTYyMTEsImF6cCI6InNVWFlNemV3SDJKY2I1TEpRNDEyNVRUNzVSSG5zeVVtIiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIn0.A9BX6S8M7PUo_h_i_fPkP7LjHjLZcI5lmOXn-UyRwuh8DrhPYdhimfaJazkSQveqoYzizZX37qQXs8YauYRRHqc4IqxrNmUDx0DXm1DBO2OYb7bGRkiq3kBgBWN6QUCUCwnwZxoSRuv9d4g4SNBQLFlkvRBA7BWcPeKmxGq1oY9_hn12IZz4JZKt9gZBTGhghjeh2VBtPuTaEl78bNCtxmfx9fO0PRA53AikV5AtEO1k5LVOdtRYy8wpKOHsDfXqemlKeI_V59be_xuZMdktx4uw-uV9aYAG87evBr0bLF8pMBlqfc_ShihrhbKGdQ9zNhbp2hKcEhWpVZoWvBJIFw");
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
            cfhttpparam(type="header", name="x-api-key", value="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlFVUTRNemhDUVVWQk1rTkJNemszUTBNMlFVVTRRekkyUmpWQ056VTJRelUxUTBVeE5EZzFNUSJ9.eyJpc3MiOiJodHRwczovL2RpcmVjdC1wbGF0Zm9ybS5hdXRoMC5jb20vIiwic3ViIjoic1VYWU16ZXdIMkpjYjVMSlE0MTI1VFQ3NVJIbnN5VW1AY2xpZW50cyIsImF1ZCI6Imh0dHBzOi8vcGxhdGZvcm0ucmFtbWVyLmFpIiwiaWF0IjoxNjAyMzY5ODExLCJleHAiOjE2MDI0NTYyMTEsImF6cCI6InNVWFlNemV3SDJKY2I1TEpRNDEyNVRUNzVSSG5zeVVtIiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIn0.A9BX6S8M7PUo_h_i_fPkP7LjHjLZcI5lmOXn-UyRwuh8DrhPYdhimfaJazkSQveqoYzizZX37qQXs8YauYRRHqc4IqxrNmUDx0DXm1DBO2OYb7bGRkiq3kBgBWN6QUCUCwnwZxoSRuv9d4g4SNBQLFlkvRBA7BWcPeKmxGq1oY9_hn12IZz4JZKt9gZBTGhghjeh2VBtPuTaEl78bNCtxmfx9fO0PRA53AikV5AtEO1k5LVOdtRYy8wpKOHsDfXqemlKeI_V59be_xuZMdktx4uw-uV9aYAG87evBr0bLF8pMBlqfc_ShihrhbKGdQ9zNhbp2hKcEhWpVZoWvBJIFw");
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
