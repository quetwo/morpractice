component
{
    property name="user" type="user";
    property name="status" type="numeric";
    property name="questionList" type="array";
    property name="currentQuestion" type="numeric";

    var user = createObject("db.user");
    var currentQuestion = 0;
    var status = 0;
    var currentQuestionList = [];

}
