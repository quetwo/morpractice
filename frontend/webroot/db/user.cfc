component persistent="true" entityname="user" output="false"
{
    property name="id" fieldtype="id" generator="increment";
    property name="username" fieldtype="column" type="string";
    property name="password" fieldtype="column" type="string" getter="false" setter="false";
    property name="fullName" fieldtype="column" type="string";
    property name="email" fieldtype="column" type="string";
    property name="verified" fieldtype="column" type="boolean";
    property name="userType" fieldtype="column" type="numeric";
    property name="phoneNumber" fieldtype="column" type="string";

    ///////////////////////////////////////////////////////
    ///  Password functions
    ///////////////////////////////////////////////////////

    public void function setPassword(newPassword)
    {
        password = hash(newPassword);
    }

    public string function getPassword()
    {
        return "*";
    }

    public boolean function verifyUserPassword(userPassword)
    {
        return hash(userPassword) EQ password;
    }

}
