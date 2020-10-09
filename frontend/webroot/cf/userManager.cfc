component displayname="User Manager"
{

    property name="userAccount" type="User";
    property name="userAuthenticated" type="boolean" default="false";

    public boolean function authUser(username, password)
    {
        // load user regardless of password
        localUser = entityload("user",{username=arguments.username},true);

        // verify user password
        if (localUser.verifyUserPassword(arguments.password))
        {
            variables.userAccount = localUser;
            userAuthenticated = true;
            return true;
        }
        else
        {
            return false;
        }
    }

    public void function logoutUser()
    {
        userAccount = entityNew("user");
        userAuthenticated = false;
    }

    public boolean function isAuthenticated()
    {
        return variables.userAuthenticated;
    }

    public function getUser()
    {
        return variables.userAccount;
    }


}
