<?php
    include('model.php');
    $question1 = $_POST['question1'];
    $question2 = $_POST['question2'];
    $questionYes1 = $_POST['questionYes1'];
    $questionYes2 = $_POST['questionYes2'];
    $questionYes3 = $_POST['questionYes3'];
    $tachers = $_POST['teachers'];
    $questionYes7 = $_POST['questionYes7'];
    $questionYes8 = $_POST['questionYes8'];
    $questionYes9 = $_POST['questionYes9'];
    $questionYes10 = $_POST['questionYes10'];
    $arr = [];
    array_push($arr, $question1, $question2, $questionYes1, $questionYes2, $questionYes3, $tachers, $questionYes7, $questionYes8, $questionYes9, $questionYes10);
    $str = serialize($arr);
    $model = new model;
    if (!empty($questionYes9)) {
        $model -> inserts($str);
    }
?>
