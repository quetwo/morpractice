component persistent="true" entityname="jobField" output="false"
{
    property name="jobFieldID" fieldtype="id" generator="increment";
    property name="fieldTitle" fieldtype="column" type="string";
    property name="fieldLongName" fieldtype="column" type="string";
    property name="fieldActive" fieldtype="column" type="boolean" default="true";
}
