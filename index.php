
<?php
//die("sasadsa");
include("./admin/model.php");
$model = new model;
$m=$model->get('questions_yes');


include_once ('./meta.php');
?>
    <title>index</title>
    <link rel="stylesheet" href="./css/styles.css">
<?php
include_once ('./header.php');
?>


<div class="all">
        <h3 class="h3">Թողեք Ձեր կարծիքը</h3>
            <div class="page">
                <div >
                    <?php 
//////////////////////////////////////////////////////////////////////////TITLE1////////////////////////////////////////////////////////////////////////////////////////                    
                    if ($m[0]['checked']=="on") {
                        echo "<h5 class='subtitle subtitle1'  style='position: relative; display: block;'>".$m[0]['question']."<span class='sas'>*</span> ։<span id=error1 class='error1'>Պարտադիր է լրացման</span></h5>";
                    }else{
                        echo "<h5 class='subtitle subtitle1'  style='position: relative; display: block;'>".$m[0]['question']."։</h5>";
                    }   
                    ?>
                </div>
                    <form action="" method="post">
                        <?php
///////////////////////////////////////////////////////////////////////ANSWER1////////////////////////////////////////////////////////////////////////////////////////////////
                            $id=$m[0]['id'];
                            $answer = $model->get_answer($id);
                        foreach ($answer as  $val) {
                            if ($val['type']=='input') {
                                echo "<input type=".$val['type']." placeholder='Մուտքագրեք տեքստը' class='arr form-control shadow-none' style='border:none;border-bottom: 3px solid #E5E5E6;' id=".$val['id']." name='inp'> <span class='count' id='count2'><span >0</span>/50</span>"; 
                            }
                            else{
                            echo "<p><input type=".$val['type']." class='radio' id=".$val['id']." name='inp'><label for=".$val['id']."><span class=span>".$val['patasxan']."</span></label></p>";
                            }
                        }
                        ?>
                    </form>
                        <div>
                            <?php 
//////////////////////////////////////////////////////////////////////////TITLE2////////////////////////////////////////////////////////////////////////////////////////                    
                            if ($m[1]['checked']=="on") {
                                echo "<h5 class='subtitle  subtitle2'  style='position: relative; display: block;margin-top:38px;'>".$m[1]['question']."<span>*</span> ։<span class='error2'>Պարտադիր է լրացման</span></h5>";
                            }else{
                                echo "<h5 class='subtitle  subtitle2'  style='position: relative; display: block;margin-top:38px;'>".$m[1]['question']."։</h5>";
                            }   
                            ?>
                        </div>
                    <form action="" method="post">
                        <p><input class="yes" type="radio" id="8" name="inp2"><label for="8"><span class=span>Այո</span></label></p>
                        <p><input class="no" type="radio" id="9" name="inp2"><label for="9"><span class=span>Ոչ</span></label></p>
                        <p><input class="radio2" type="radio" id="10" name="inp2"><label for="10"><span class=span>Պատրաստվում եմ</span></label></p>
                        <?php
///////////////////////////////////////////////////////////////////////ANSWER2////////////////////////////////////////////////////////////////////////////////////////////////
                            $id=$m[1]['id'];
                            $answer = $model->get_answer($id);
                            foreach ($answer as  $val) {
                                if ($val['type']=='input') {
                                    echo "<input type=".$val['type']." placeholder='Մուտքագրեք տեքստը' class='arr form-control shadow-none' style='border:none;border-bottom: 3px solid #E5E5E6;' id=".$val['id']." name='inp'>"; 
                                }else{
                                    echo "<p><input type=".$val['type']." class='radio' id=".$val['id']." name='inp2'><label for=".$val['id']."><span class=span>".$val['patasxan']."</span></label></p>";
                                }
                            }
                        ?>

                    </form>
                
                <div class="next"><button class="btn btn-primary go "><a  class="a"  >ԱՌԱՋ <svg style="margin-bottom: 2px;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
                        <path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"/>
                    </svg></a> </button></div>
                <div class="numbers">
                    <span class="span1">1</span>
                    <span>2</span>
                    <span>3</span>
                    <span>4</span>
                    <span>5</span>
                </div> 
        </div>
    </div>


<?php
    include_once("./footer.php");
?>
<script src="./js/script.js"></script>
<style>
     label{
        margin-bottom:0 !important; 
     }
    
   
     form>p{
    margin-bottom: 11px !important;
}
@media only screen and (max-width: 425px){
.error1 {
    left:0 !important;
    top:45px !important;
  }
}
 </style> 