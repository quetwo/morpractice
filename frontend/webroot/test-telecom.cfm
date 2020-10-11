<cfscript>

   interviewManager = createObject("cf.interviewSession");
    interviewManager.init();
    interviewManager.clearAllSessions();
    interviewManager.createNewSession();

    mySession = interviewManager.getCurrentUserSession();

    writeDump(mySession.User.getPhoneNumber());
    writeDump(interviewManager.getAllSessions());
    writeDump(mySession.currentQuestionList);

/*    cfhttp(method="POST", url="https://api.zang.io/v2/Accounts/#application.avayaSID#/Calls.json", username="#application.avayaSID#", password="#application.avayaauth#", authType="basic")
    {
        cfhttpparam(type="formfield", name="From", value="+15172890010");
        cfhttpparam(type="formfield", name="To", value="+15174322528");
        cfhttpparam(type="formfield", name="Url", value="http://3.135.202.150/api/2020-10-10/zang/initInterview.cfm");
    }

    writeDump(cfhttp);*/

</cfscript>


<cfset telephone = invoke("api.2020-10-10.telephoneIntegration","submitAnalysis", {recordingURL="http://recordings.telapi.com/RB0aec9f066e66416086615c01d9206b82/RE777c3e322671719c6a40455f9535e37d.mp3", currentQuestionNum=1, phoneNumber="+15174322528"})>