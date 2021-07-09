<?php
echo "<pre>";
    session_start();

    include("./model.php");
    $model = new model;
    $action = $_POST['action'];

    if($action=='add'){
    $harc_id = $_SESSION['cat'];
    $type = $_POST['type'];
    $patasxan = $_POST['patasxan'];
    $model->add_answer($patasxan,$type,$harc_id); 
    header("location:answer.php?cat=$harc_id");
    }
    if($action=='add2'){
        $harc_id = $_SESSION['cat2'];
        $type = $_POST['type2'];
        $patasxan = $_POST['patasxan2'];
        $model->add_answer_no($patasxan,$type,$harc_id); 
        header("location:answer2.php?cat=$harc_id");
        }

    if ($action=="update") {
        $id = $_POST['id'];
        $patasxan = $_POST['patasxan'];
        $type = $_POST['type'];
        $model ->update_answer($patasxan,$type,$id);
    }
    if ($action=="update2") {
        $id = $_POST['id'];
        $patasxan = $_POST['patasxan'];
        $type = $_POST['type'];
        $model ->update_answer_no($patasxan,$type,$id);
    }


    
    if ($action=="delete") {
        $id = $_POST['id'];
        $model ->delete('answers',$id);
    }
    if ($action=="delete2") {
        $id = $_POST['id'];
        $model ->delete('answers_no',$id);
    }
    if ($action=="deleteSel") {
        $id = $_POST['id'];
        $model ->delete('options',$id);
    }

    if ($action=="add_option") {
        $harc_id = $_SESSION['cat'];
        $opt=$_POST['option'];
        $model ->add_option($opt);
        header("location:select.php?cat=$harc_id");
    }
    if ($action=="update_opt") {
        $id = $_POST['id'];
        $opt = $_POST['opt'];
        $model ->update_option($opt,$id);
    }
?>