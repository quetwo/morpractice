component
{
    property name="user" type="user";
    property name="status" type="numeric";
    property name="questionList" type="array";
    property name="currentQuestion" type="numeric";
    property name="recordingURL" type="array";
    property name="conversationID" type="array";

    var user = createObject("db.user");
    var currentQuestion = 0;
    var status = 0;
    var currentQuestionList = [];
    var recordingURL = [];
    var conversationID = [];

}
