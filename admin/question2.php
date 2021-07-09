<?php
    include('model.php');
    $question1 = $_POST['question1'];
    $question2 = $_POST['question2'];
    $questionNo3 = $_POST['questionNo3'];
    $questionNo4 = $_POST['questionNo4'];
    $questionNo5 = $_POST['questionNo5'];
    $arr = [];
    array_push($arr, $question1, $question2, $questionNo3, $questionNo4, $questionNo5);
    $str = serialize($arr);
    $model = new model;
    if (!empty($questionNo3)) {
        $model -> inserts($str);
    }
?>