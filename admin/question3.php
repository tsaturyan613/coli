<?php
    include('model.php');
    $question1 = $_POST['question1'];
    $question2 = $_POST['question2'];
    $questionComing1 = $_POST['questionComing1'];
    $questionComing2 = $_POST['questionComing2'];
    $arr = [];
    array_push($arr, $question1, $question2, $questionComing1, $questionComing2);
    $str = serialize($arr);
    $model = new model;
    if (!empty($questionComing1) && !empty($questionComing2) ) {
        $model -> inserts($str);
    }
?>