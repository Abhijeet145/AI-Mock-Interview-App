<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $topic = $_POST['topic'];
    $question = $_POST['question'];
    $answer = $_POST['answer'];
    $feedback = $_POST['feedback'];

    $xmlFile = "data/questions_feedback.xml";


    echo 'I was called';
    if (!file_exists($xmlFile)) {
        $xml = new SimpleXMLElement('<interview/>');
    } else {
        $xml = simplexml_load_file($xmlFile);
    }

    $entry = $xml->addChild('entry');
    $entry->addChild('topic', htmlspecialchars($topic));
    $entry->addChild('question', htmlspecialchars($question));
    $entry->addChild('answer', htmlspecialchars($answer));
    $entry->addChild('feedback', htmlspecialchars($feedback));

    $xml->asXML($xmlFile);

    echo json_encode(["success" => true, "message" => "Saved successfully"]);
} else {
    echo json_encode(["success" => false, "message" => "Invalid request"]);
}
?>
