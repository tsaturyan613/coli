<?php
include_once ('./meta.php');
?>
<title>patrastvum </title>
<link rel="stylesheet" href="./css/coming.css">
<?php
include_once ('./header.php');
?>
    <div class="all">
        <h3 class="h3">Թողեք Ձեր կարծիքը</h3>
            <div class="page">
                <h5 class="subtitle" style="position: relative; display: block;">3․ Ո՞ր դասընթացներին եք պատրաստվում մասնակցել<span>*</span> ։<span class="error1">Պարտադիր է լրացման</span></h5>
                <p><input type="checkbox" class="checkbox" id="1" name="inp"> <label for="1"><span class=span>HTML, CSS, Bootstrap</span></label></p> 
                <p><input type="checkbox" class="checkbox" id="2" name="inp"> <label for="2"><span class=span>JavaScript, JQuery</span></label></p>
                <p><input type="checkbox" class="checkbox" id="3" name="inp"> <label for="3"><span class=span>Vue.js</span></label></p>
                <p><input type="checkbox" class="checkbox" id="4" name="inp"> <label for="4"><span class=span>React, Redux</span></label></p>
                <p><input type="checkbox" class="checkbox" id="5" name="inp"> <label for="5"><span class=span>Laravel</span></label></p>
                <p><input type="checkbox" class="checkbox" id="6" name="inp"> <label for="6"><span class=span>Node.js</span></label></p>
                <p><input type="checkbox" class="checkbox" id="7" name="inp"> <label for="7"><span class=span>MongoDB</span></label></p>
                <p><input type="checkbox" class="checkbox" id="8" name="inp"> <label for="8"><span class=span>Python</span></label></p>
                <p><input type="checkbox" class="checkbox" id="9" name="inp"> <label for="9"><span class=span>Django</span></label></p>
                
                <h5 class="subtitle" style="margin-top: 67px;position: relative;  margin-bottom: 19px;">4․ Տիրապետու՞մ եք ծրագրավորման որևէ լեզվի։ Եթե այո, ապա ո՞ր լեզվին/լեզուներին/ <span>*</span>։<span class="error2">Պարտադիր է լրացման</span></h5>
                
                <div class=" letterscount arr"><input class=" arr  form-control shadow-none" id="arr1" placeholder="Մուտքագրեք տեքստը" maxlength="200"></input><span class="count count1"><span >0</span>/200</span></div>
                
                <div class="next"><button class="btn btn-primary go "> <a class="a" >ԱՎԱՐՏԵԼ<svg style="margin-bottom: 2px;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
                    <path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"/>
                  </svg></a></button></div>
                  <div class="previous" style="position: relative;" ><a class="prev" style="position: absolute; left: 0; top: -69px; text-decoration: none;" href="./index.php" ><svg style="margin-bottom: 3px; " xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-left" viewBox="0 0 16 16">
                    <path d="M10 12.796V3.204L4.519 8 10 12.796zm-.659.753-5.48-4.796a1 1 0 0 1 0-1.506l5.48-4.796A1 1 0 0 1 11 3.204v9.592a1 1 0 0 1-1.659.753z"/>
                  </svg>ՆԱԽՈՐԴ ԷՋ</div></a>
                <div class="numbers">
                    <span>1</span>
                    <span class="span1">2</span>
                    <span>3</span>
                    <span>4</span>
                    <span>5</span>

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
      let questionComing1=localStorage.getItem('questionComing1');
      let questionComing2=localStorage.getItem('questionComing2');
      $.ajax({
                  url: "./admin/question3.php",
                  type: "post",
                  data: { question1:question1,
                          question2:question2,
                          questionComing1:questionComing1,
                          questionComing2:questionComing2
                  },
                  success: function(data)
                  {

                  }
          });
          localStorage.removeItem("questionComing1");
          localStorage.removeItem("questionComing2");
    })
});    
</script>
<script src="./js/coming.js"></script>
<style>
     label{
        margin-bottom:0 !important; 
     }
</style>
</body>
</html>