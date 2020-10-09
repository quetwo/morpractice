component persistent="true" entityname="interviewQuestion" output="false"
{
    property name="id" fieldtype="id" generator="increment";
    property name="title" fieldtype="column" type="string";
    property name="question" fieldtype="column" type="string";
    property name="jobField" fieldtype="many-to-many" type="array" cfc="jobField" fkcolumn="jobFieldID" linktable="interviewQuestionMatrix";
}
