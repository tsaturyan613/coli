<?php
    $id=$_POST['id'];
    $name1=$_POST['name1'];
    $name2=$_POST['name2'];
    $name3=$_POST['name3'];
    $name4=$_POST['name4'];
    $ratings=$_POST['ratings'];
    $arr2 = str_split($ratings, 6);
    echo "<div class='x' style='position:relative; height:24px; padding:4px;' ><button style='position:absolute; right:10px;' class='x'>X</button></div>";
    echo "<table border='3'>";
        echo '<tr>';
            echo '<th>';
                echo " Անուն";
            echo '</th>';        
            echo '<th>';
                echo " Նյութը մատուցում էր մատչելի և հասկանալի";
            echo '</th>';
            echo '<th>';
                echo "Դասերն անցկացնում էր պատշաճ ձևով և ժամանակին";
            echo '</th>';
            echo '<th>';
                echo "Կոնֆլիկտայինության մակարդակը";
            echo '</th>';
            echo '<th>';
                echo "Դասերից չէր ուշանում";
            echo '</th>';
            echo '<th>';
                echo " Ժամանակ էր տրամադրում դասերից դուրս";
            echo '</th>';
            echo '<th>';
                echo "Կցանկանայի՞ք նորից մասնակցել տվյալ դասախոսի դասերին";
            echo '</th>';                                    
        echo '</tr>';

        // name1
        echo "<tr style='text-align:center;'>";
            echo '<td>';
                echo $name1;
            echo '</td>';
            $arr3 = str_split($arr2[0], 1);
            foreach ($arr3 as  $value) {
            echo '<td>';
                echo $value;
            echo '</td>';                    
            }
        echo '</tr>';
        // name2
        if (!empty($name2)) {
            echo "<tr style='text-align:center;'>";
                echo '<td>';
                    echo $name2;
                echo '</td>';
                $arr4 = str_split($arr2[1], 1);
                foreach ($arr4 as  $value) {
                echo '<td>';
                    echo $value;
                echo '</td>';                    
                }                
            echo '</tr>';            
        }
        // name3
        if (!empty($name3)) {
            echo "<tr style='text-align:center;'>";
                echo '<td>';
                    echo $name3;
                echo '</td>';
                $arr5 = str_split($arr2[2], 1);
                foreach ($arr5 as  $value) {
                echo '<td>';
                    echo $value;
                echo '</td>';                    
                }                
            echo '</tr>';
        }
        // name4
        if (!empty($name4)) {
            echo "<tr style='text-align:center;'>";
                echo '<td>';
                    echo $name4;
                echo '</td>';
                $arr6 = str_split($arr2[3], 1);
                foreach ($arr6 as  $value) {
                echo '<td>';
                    echo $value;
                echo '</td>';                    
                }                
            echo '</tr>';  
        }        
    echo '</table>';
?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>  
<script>
$(document).ready(function(){
    $(".x").click(function(){
        $(".modal").css("display", "none");
        $(".tab").css("opacity", "1");

    })
}); 