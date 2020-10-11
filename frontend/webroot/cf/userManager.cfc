component displayname="User Manager"
{

    property name="userAccount" type="User";
    property name="userAuthenticated" type="boolean" default="false";

    public boolean function authUser(username, password)
    {
        // load user based on username, regardless of password
        localUser = entityload("user",{username=arguments.username},true);

        // entityLoad will return an undefined (null) variable if there are no matches.
        if (!isDefined("localUser"))
        {
            return false;
        }

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
        if (!isAuthenticated())
        {
            return entityNew("user");
        }
        return variables.userAccount;
    }

    public boolean function signUp(name, username, email, password, phoneNumber)
    {
        myUser = entityNew("user");
        myUser.setUsername(arguments.username);
        myUser.setPassword(arguments.password);
        myUser.setFullName(arguments.name);
        myUser.setEmail(arguments.email);
        myUser.setPhoneNumber(arguments.phoneNumber);
        myUser.setVerified(true);
        myUser.setUserType(1);
        entitySave(myUser);
        ormFlush();

        // load user based on username, regardless of password
        localUser = entityload("user",{username=arguments.username},true);

        // entityLoad will return an undefined (null) variable if there are no matches.
        if (!isDefined("localUser"))
        {
            return false;
        }

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


}
