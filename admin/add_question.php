<?php

include ("./model.php");
$model = new model;
$action=$_POST['action'];
if($action=="add"){
        $harc = $_POST['harc'];    
        $check = $_POST['check']; 
    if (!empty($harc)) {
        $model->insert($harc, $check);
    }
}
if ($action=="update") {
    $id = $_POST['id'];
    $text = $_POST['text'];
    $text2 = $_POST['text2'];
    $model ->update_question($text,$text2,$id);
}
if($action=="add2"){
    $harc = $_POST['harc2'];    
    $check = $_POST['check']; 
if (!empty($harc)) {
    $model->insert_no($harc, $check);
}
}
if ($action=="update2") {
    $id = $_POST['id'];
    $text = $_POST['text'];
    $text2 = $_POST['text2'];
    $model ->update_question_no($text, $text2, $id);
}


// if ($action=="check") {
//     $check = $_POST['id'];
//     $text = $_POST['text'];
//     $model ->update_question($text,$id);
// }