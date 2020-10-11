<cfscript>
	if (session.userManager.isAuthenticated())
	{
		phone = createObject("api.2020-10-10.telephoneintegration");
		phone.startRoboInterview();
	}
</cfscript>
