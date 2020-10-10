<cfscript>

    interviewManager = createObject("cf.interviewSession");
    interviewManager.init();
    //interviewManager.clearAllSessions();
    //interviewManager.createNewSession();

    mySession = interviewManager.getCurrentUserSession();

    writeDump(mySession.User.getPhoneNumber());

    cfhttp(method="POST", url="https://api.zang.io/v2/Accounts/#application.avayaSID#/Calls.json", username="#application.avayaSID#", password="#application.avayaauth#", authType="basic")
    {
        cfhttpparam(type="formfield", name="From", value="15172890010");
        cfhttpparam(type="formfield", name="To", value="15179441872");
        cfhttpparam(type="formfield", name="Url", value="https://cloud.zang.io/data/inboundxml/e587ee379a2c507aa971af6243216c531c512c28");
    }

    writeDump(cfhttp);

</cfscript>
