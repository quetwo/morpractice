<cfscript>

   interviewManager = createObject("cf.interviewSession");
    interviewManager.init();
    interviewManager.clearAllSessions();
    interviewManager.createNewSession();

    mySession = interviewManager.getCurrentUserSession();

    writeDump(mySession.User.getPhoneNumber());
    writeDump(interviewManager.getAllSessions());
    writeDump(mySession.currentQuestionList);

    cfhttp(method="POST", url="https://api.zang.io/v2/Accounts/#application.avayaSID#/Calls.json", username="#application.avayaSID#", password="#application.avayaauth#", authType="basic")
    {
        cfhttpparam(type="formfield", name="From", value="+15172890010");
        cfhttpparam(type="formfield", name="To", value="+15174322528");
        cfhttpparam(type="formfield", name="Url", value="http://3.135.202.150/api/2020-10-10/zang/initInterview.cfm");
    }

    writeDump(cfhttp);

</cfscript>
