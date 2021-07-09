
<center><h2>YES</h2></center>
<div class='modal'>

</div>
<?php
echo "<pre>";
    include("model.php");
    $model = new model;
    $m=$model -> select_yes();
    $g=$model -> get('questions_yes');
    echo "<table class='tab'  border=5>";
    echo "<tr>";
    foreach ($g as $key => $value) {
        echo "<th>";
            echo $value['question'];
        echo "</th>";
    }
      echo "</tr>";
    foreach ($m as  $val) {
                       $id=$val['id'];

        $arr=unserialize($val['patasxanner']);
        echo "<tr id='$id'>";
           foreach ($arr as $key => $v) {
           echo "<td style='text-align:center;' class='td'>";
                if ($key==5) {
                    $arr1=explode(',',$v);
                    for ($i=0; $i <count($arr1) ; $i++) { 
                        if (is_numeric($arr1[$i])) {
                            echo "<p  style='display:none;' class='ratings' >$arr1[$i]</p>";
                        }

                    }
                    if (isset($arr1[0])) {
                        echo "<p  class='rating name1' >$arr1[0]</p>";
                    }
                    if (isset($arr1[7])) {
                        echo "<p  class='rating name2' >$arr1[7]</p>";
                    }
                    if (isset($arr1[14])) {
                        echo "<p  class='rating name3' >$arr1[14]</p>";
                    }
                    if (isset($arr1[21])) {
                        echo "<p  class='rating name4' >$arr1[21]</p>";
                    }
                }else echo $v;
           echo "</td>";
           }
        echo "</tr>";        
    }
    echo "</table>";
    echo "<center><h2>NO</h2></center>";
    $select_no=$model -> select_no();
    $question_no=$model -> get('questions_no');
    echo "<table border=5>";
        echo "<tr>";
            echo "<th>";
                echo $g[0]['question'];
            echo "</th>";
            echo "<th>";
                echo $g[1]['question'];
            echo "</th>";
            foreach ($question_no as $key => $value) {
                echo "<th>";
                    echo $value['question'];
                echo "</th>";
            }
        echo "</tr>";
        foreach ($select_no as  $val) {
            foreach ($val as $key => $value) {
                echo "<tr>";
                $arr1=unserialize($value);
                foreach ($arr1 as $key => $v) {
                echo "<td style='text-align:center;'>";
                     echo $v;
                echo "</td>";

                }
                echo "</tr>";
            }
        }
    echo "</table>";


    echo "<center><h2>Coming</h2></center>";
    $select_coming=$model -> select_coming();
    $question_coming=$model -> get('questions_coming');
    echo "<table border=5>";
        echo "<tr>";
            echo "<th>";
                echo $g[0]['question'];
            echo "</th>";
            echo "<th>";
                echo $g[1]['question'];
            echo "</th>";
            foreach ($question_coming as $key => $value) {
                echo "<th>";
                    echo $value['question'];
                echo "</th>";
            }
        echo "</tr>";
        foreach ($select_coming as  $val) {
            foreach ($val as $key => $value) {
                echo "<tr>";
                $arr1=unserialize($value);
                foreach ($arr1 as $key => $v) {
                echo "<td style='text-align:center;'>";
                     echo $v;
                echo "</td>";

                }
                echo "</tr>";
            }
        }
    echo "</table>";
?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>  
<script>
$(document).ready(function(){
    $('.rating').click(function () {
                $(".modal").css("display", "block");
          let id=$(this).parent().parent().attr("id")
          let name1=$(this).parent().find('.name1').text()
          let name2=$(this).parent().find('.name2').text()
          let name3=$(this).parent().find('.name3').text()
          let name4=$(this).parent().find('.name4').text()
          let ratings=$(this).parent().find('.ratings').text()
      $.ajax({
                  url: "./rating.php",
                  type: "post",
                  data: { id , name1, name2,name3,name4, ratings},
                  success: function(data)
                  {
                    $('.modal').html(data)
                  }
          });
    })
});    
</script>

<style>
    body{
        position:relative;
    }
    .modal{
        position:absolute;
        background-color:#898989;
        top:40%;
        width:70%;
        left:17%;
        display:none;
        position:fixed;
    }
</style>
   
 


