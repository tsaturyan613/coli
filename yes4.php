<?php
include_once ('./meta.php');
include_once ('./meta.php');
include("./admin/model.php");
$model = new model;
$m=$model->get('questions_yes');

?>
<title>yes4</title>
<link rel="stylesheet" href="./css/yes4.css">
<?php
include_once ('./header.php');
?>
    <div class="all">
        <h3 class="h3">Թողեք Ձեր կարծիքը</h3>
            <div class="page">
                <!-- <div><h5 class="subtitle" style="position: relative; display: block;">9․ Գնահատեք դասընթացի արդյունքում ստացած Ձեր գիտելիքները 1-5 բալային սանդղակով <span>*</span> ։<span class="error1">Պարտադիր է լրացման</span></h5></div> -->
                <?php 
//////////////////////////////////////////////////////////////////////////TITLE9////////////////////////////////////////////////////////////////////////////////////////                    
                        if ($m[8]['checked']=="on") {
                            echo "<h5 class='subtitle subtitle1'  style='position: relative; display: block;'>".$m[8]['question']."<span> *</span> ։<span class='error1'>Պարտադիր է լրացման</span></h5>";
                        }else{
                            echo "<h5 class='subtitle subtitle1'  style='position: relative; display: block;'>".$m[8]['question']."։</h5>";
                        }   
                    ?> 
                <?php
///////////////////////////////////////////////////////////////////////ANSWER9////////////////////////////////////////////////////////////////////////////////////////////////
                            $id=$m[8]['id'];
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

                
                <!-- <h5 class="subtitle" style="margin-top: 67px;  margin-bottom: 40px;">10․ Ի՞նչ առաջարկներ ունեք՝ կայքի և ուսումնական կենտրոնի հետ կապված։</h5> -->
                <?php 
//////////////////////////////////////////////////////////////////////////TITLE10////////////////////////////////////////////////////////////////////////////////////////                    
                        if ($m[9]['checked']=="on") {
                            echo "<h5 class='subtitle subtitle2'  style='margin-top: 67px; position: relative; display: block;'>".$m[9]['question']."<span> *</span> ։<span class='error2'>Պարտադիր է լրացման</span></h5>";
                        }else{
                            echo "<h5 class='subtitle subtitle2'  style='margin-top: 67px; position: relative; display: block;'>".$m[9]['question']."։</h5>";
                        }   
                    ?> 
               
               <?php
///////////////////////////////////////////////////////////////////////ANSWER10////////////////////////////////////////////////////////////////////////////////////////////////
                            $id=$m[9]['id'];
                            $answer = $model->get_answer($id);
                        foreach ($answer as  $val) {
                            if ($val['type']=='input') {
                                echo "<div><input  type=".$val['type']." placeholder='Մուտքագրեք տեքստը' class='arr form-control shadow-none' style='margin-bottom: 160px; border:none;border-bottom: 3px solid #E5E5E6;' id=".$val['id']." name='inp'><span class='count' id='count1'><span>0</span>/200</span></div>"; 
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
                <!-- <div class=" letterscount" style="margin-bottom: 160px;"><input class="arr form-control shadow-none " id="arr1" placeholder="Մուտքագրեք տեքստը" maxlength="200"></input> <span class="count" id="count1"><span>0</span>/200</span></div> -->


                
                <div class="next"><button class="btn btn-primary go "> <a class="a" >ԱՎԱՐՏԵԼ</a></button></div>
                <div class="previous" style="position: relative;" ><a style="position: absolute; left: 0; top: -29px; text-decoration: none;" href="./yes3.php" ><svg style="margin-bottom: 3px; " xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-left" viewBox="0 0 16 16">
                    <path d="M10 12.796V3.204L4.519 8 10 12.796zm-.659.753-5.48-4.796a1 1 0 0 1 0-1.506l5.48-4.796A1 1 0 0 1 11 3.204v9.592a1 1 0 0 1-1.659.753z"/>
                  </svg>ՆԱԽՈՐԴ ԷՋ</div></a>
                <div class="numbers">
                    <span>1</span>
                    <span>2</span>
                    <span>3</span>
                    <span>4</span>
                    <span class="span1">5</span>

                </div> 
        </div>
    </div>
<?php
    include_once("./footer.php");
?>


<script>
$(document).ready(function(){
    $('.next').click(function () {
          
      let question1=localStorage.getItem('question1');
      let question2=localStorage.getItem('question2');
      let questionYes1=localStorage.getItem('questionYes1');
      let questionYes2=localStorage.getItem('questionYes2');
      let questionYes3=localStorage.getItem('questionYes3');
      let teachers=localStorage.getItem('teachers');
      let questionYes7=localStorage.getItem('questionYes7');
      let questionYes8=localStorage.getItem('questionYes8');
      let questionYes9=localStorage.getItem('questionYes9');
      let questionYes10=localStorage.getItem('questionYes10');

      $.ajax({
                  url: "./admin/question1.php",
                  type: "post",
                  data: { question1:question1,
                          question2:question2,
                          questionYes1:questionYes1,
                          questionYes2:questionYes2,
                          questionYes3:questionYes3,
                          teachers:teachers,
                          questionYes7:questionYes7,
                          questionYes8:questionYes8,
                          questionYes9:questionYes9,
                          questionYes10:questionYes10
                  },
                  success: function(data)
                  {

                  }
          });
        //   localStorage.removeItem("questionYes9");

    })
});    
</script>
<script src="./js/yes4.js"></script>
<style>
     label{
        margin-bottom:0 !important; 
     }
     @media only screen and (max-width: 425px) {
    .error1{
       
        left: 0 !important;
        top: 73px !important;
    }
 }   
    @media only screen and (max-width: 320px){
.page {
    padding-top: 5px;
    height: 719px !important;
    max-width: 400px;
}
}

</style>
</body>
</html>