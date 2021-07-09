<?php

include("./admin/model.php");
$model = new model;
$m=$model->get('questions_yes');
$s=$model->get('options');
// print_r($s);
// $id=$m[0]['id'];
// $answer = $model->get_answer($id);

include_once ('./meta.php');
?>
<title>yes2</title>
<link rel="stylesheet" href="./css/yes2.css">
<?php
include_once ('./header.php');
?>
    <div class="all">
        <h3 class="h3">Թողեք Ձեր կարծիքը</h3>
            <div class="page">
                <!-- <div><h5 class="subtitle" style="position: relative; display: block;">5․ Ինչպե՞ս կգնահատեք մատուցվող նյութերի բովանդակությունը և որակը <span>*</span> ։<span class="error1">Պարտադիր է լրացման</span></h5></div> -->
                <?php 
//////////////////////////////////////////////////////////////////////////TITLE5////////////////////////////////////////////////////////////////////////////////////////                    
                        if ($m[4]['checked']=="on") {
                            echo "<h5 class='subtitle subtitle1'  style='position: relative; display: block;'>".$m[4]['question']."<span> *</span> ։<span class='error1'>Պարտադիր է լրացման</span></h5>";
                        }else{
                            echo "<h5 class='subtitle subtitle1'  style='position: relative; display: block;'>".$m[4]['question']."։</h5>";
                        }   
                    ?> 
                <?php
///////////////////////////////////////////////////////////////////////ANSWER5////////////////////////////////////////////////////////////////////////////////////////////////
                            $id=$m[4]['id'];
                            $answer = $model->get_answer($id);
                        foreach ($answer as  $val) {
                            if ($val['type']=='input') {
                                echo "<input type=".$val['type']." placeholder='Մուտքագրեք տեքստը' class='arr form-control shadow-none' style='border:none;border-bottom: 3px solid #E5E5E6;' id=".$val['id']." name='inp'>"; 
                            }
                            else{
                                if ($val['type']=='radio') {
                                   echo "<p><input type=".$val['type']." class='radio' id=".$val['id']." name='inp'><label for=".$val['id']."><span class=span>".$val['patasxan']."</span></label></p>";  
                                }else{
                                    echo "<p><input type=".$val['type']." class='checkbox' id=".$val['id']." name='inp'><label for=".$val['id']."><span class=span>".$val['patasxan']."</span></label></p>";
                                }
                                   
                           
                            }
                        }
                        ?>

                <!-- <div><h5 class="subtitle" style="margin-top: 67px; position: relative; display: block;">6․ Գնահատեք Ձեր դասախոսի դասավանդման որակը։</h5></div> -->
                <?php 
//////////////////////////////////////////////////////////////////////////TITLE6////////////////////////////////////////////////////////////////////////////////////////                    
                        if ($m[5]['checked']=="on") {
                            echo "<h5 class='subtitle'  style='margin-top: 67px; position: relative; display: block;'>".$m[5]['question']."<span> *</span> ։<span class='error1'>Պարտադիր է լրացման</span></h5>";
                        }else{
                            echo "<h5 class='subtitle'  style='margin-top: 67px; position: relative; display: block;'>".$m[5]['question']."։</h5>";
                        }   
                    ?> 

<?php
///////////////////////////////////////////////////////////////////////ANSWER6////////////////////////////////////////////////////////////////////////////////////////////////
                            $id=$m[5]['id'];
                            $answer = $model->get_answer($id);
                        foreach ($answer as  $val) {
                            if ($val['type']=='input') {
                                echo "<input type=".$val['type']." placeholder='Մուտքագրեք տեքստը' class='arr form-control shadow-none' style='border:none;border-bottom: 3px solid #E5E5E6;' id=".$val['id']." name='inp'>"; 
                            }
                            elseif($val['type']=='select'){
                                echo "<select class='sel'>";
                                echo "<option hidden value=''>Ընտրեք դասախոսին</option>";
                                    foreach ($s as $value) {
                                        echo "<option class='opt' value=".$value['opt'].">".$value['opt']."</option>";
                                    }
                                echo "</select>";
                            }
                            else{
                                if ($val['type']=='radio') {
                                   echo "<p><input type=".$val['type']." class='radio' id=".$val['id']." name='inp'><label for=".$val['id']."><span class=span>".$val['patasxan']."</span></label></p>";  
                                }else{
                                    echo "<p><input type=".$val['type']." class='checkbox' id=".$val['id']." name='inp'><label for=".$val['id']."><span class=span>".$val['patasxan']."</span></label></p>";
                                }
                                   
                           
                            }
                        }
                        ?>
                    
                    <div class="gnahatum">
                        <div id="h61" style="position: absolute;">
                            <p>6.1 Նյութը մատուցում էր մատչելի և հասկանալի։</p>
                            <button id="1" class="bt1 btt" style="margin-left: 25px;">1</button>
                            <button id="2" class="bt1 btt">2</button>
                            <button id="3" class="bt1 btt">3</button>
                            <button id="4" class="bt1 btt">4</button>
                            <button id="5" class="bt1 btt">5</button>
                        </div>
                        <div id="h62" style="position: absolute;">
                            <p>6.2 Դասերն անցկացնում էր պատշաճ ձևով և ժամանակին։</p>
                            <button id="1" class="bt2 btt" style="margin-left: 25px;">1</button>
                            <button id="2" class="bt2 btt">2</button>
                            <button id="3" class="bt2 btt">3</button>
                            <button id="4" class="bt2 btt">4</button>
                            <button id="5" class="bt2 btt">5</button>
                        </div>
                        <div id="h63" style="position: absolute;">
                            <p>6.3 Կոնֆլիկտայինության մակարդակը։</p>
                            <button id="1" class="bt3 btt" style="margin-left: 25px;">1</button>
                            <button id="2" class="bt3 btt">2</button>
                            <button id="3" class="bt3 btt">3</button>
                            <button id="4" class="bt3 btt">4</button>
                            <button id="5" class="bt3 btt">5</button>
                        </div>
                        <div id="h64" style="position: absolute;">
                            <p>6.4 Դասերից չէր ուշանում։</p>
                            <button id="1" class="bt4 btt" style="margin-left: 25px;">1</button>
                            <button id="2" class="bt4 btt">2</button>
                            <button id="3" class="bt4 btt">3</button>
                            <button id="4" class="bt4 btt">4</button>
                            <button id="5" class="bt4 btt">5</button>
                        </div>
                        <div id="h65" style="position: absolute;">
                            <p>6.5 Ժամանակ էր տրամադրում դասերից դուրս։</p>
                            <button id="1" class="bt5 btt" style="margin-left: 25px;">1</button>
                            <button id="2" class="bt5 btt">2</button>
                            <button id="3" class="bt5 btt">3</button>
                            <button id="4" class="bt5 btt">4</button>
                            <button id="5" class="bt5 btt">5</button>
                        </div>
                        <div id="h66" style="position: absolute;">
                            <p>6.6 Կցանկանայի՞ք նորից մասնակցել տվյալ դասախոսի դասերին։</p>
                            <button id="1" class="bt6 btt" style="margin-left: 25px;">1</button>
                            <button id="2" class="bt6 btt">2</button>
                            <button id="3" class="bt6 btt">3</button>
                            <button id="4" class="bt6 btt">4</button>
                            <button id="5" class="bt6 btt">5</button>
                        </div>
                            <center><img class="ok" src="./images/ok.svg" width="88" alt=""></center>
                            <div class="add"><center><img src="../images/add button@2x.png" alt=""> <span>Գնահատել այլ դասախոսի</span></center> </div>
                    </div>
                <div class="next"><button class="btn btn-primary go "><a class="a"  >ԱՌԱՋ <svg style="margin-bottom: 2px; " xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
                    <path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"/>
                  </svg></a> </button></div>
                  <div class="previous" style="position: relative;" ><a class="prev" style="position: absolute; left: 0; top: -69px; text-decoration: none;" href="./yes1.php" ><svg style="margin-bottom: 3px; " xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-left" viewBox="0 0 16 16">
                    <path d="M10 12.796V3.204L4.519 8 10 12.796zm-.659.753-5.48-4.796a1 1 0 0 1 0-1.506l5.48-4.796A1 1 0 0 1 11 3.204v9.592a1 1 0 0 1-1.659.753z"/>
                  </svg>ՆԱԽՈՐԴ ԷՋ</div></a>
                <div class="numbers">
                    <span>1</span>
                    <span>2</span>
                    <span class="span1">3</span>
                    <span>4</span>
                    <span>5</span>
                </div> 
        </div>
    </div>
<?php
    include_once("./footer.php");
?>
<script src="./js/yes2.js"></script>
<style>
     label{
        margin-bottom:0 !important; 
     }
</style>
</body>
</html>