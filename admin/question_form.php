    <center><h1>Harcer yes </h1></center>
    <input type="text" placeholder="Harcer yes" class="harc">
    <input type="checkbox"  class="check"><span>Պարտադիր է լրացման</span><br><br>
    <button class="btn">add</button><br><br>


   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
        $('.btn').click(function() {
            let harc=$(".harc").val()
            if ( $(".check:checked").length ) { 
                check=$(this).val()  
                check='on'    
                localStorage.setItem('c', check);
                localStorage.getItem('c');
            } 
            else {
                let check=$(this).val()  
                check='off'    
                localStorage.setItem('c', check);
                localStorage.getItem('c');
            } 
            let cc=localStorage.getItem('c')
            $.ajax({
                    url: 'add_question.php',
                    type: "post",
                    data: {harc:harc,check:cc, action:'add'},
                    success: function(data)
                    {
                        location.reload() 
                    }
            });
     });
     $('.update').click(function(){
        let id=$(this).parents('tr').attr('id');
        let text=$(this).parent().prev().prev().text()
        let text2=$(this).parent().prev().text()
        $.ajax({
                    url: 'add_question.php',
                    type: "post",
                    data: {id:id, action:'update',text:text,text2:text2},
                    success: function(data)
                    {
                        
                    }
            });
     });
     $('.bt').click(function() {
            let harc2=$(".harc2").val()
            if ( $(".checked:checked").length ) { 
                check=$(this).val()  
                check='on'    
                localStorage.setItem('c', check);
                localStorage.getItem('c');
            } 
            else {
                let check=$(this).val()  
                check='off'    
                localStorage.setItem('c', check);
                localStorage.getItem('c');
            } 
            let cc=localStorage.getItem('c')
            $.ajax({
                    url: 'add_question.php',
                    type: "post",
                    data: {harc2:harc2,check:cc, action:'add2'},
                    success: function(data)
                    {
                        location.reload() 
                    }
            });
     });
     $('.update2').click(function(){
        let id=$(this).parents('tr').attr('id');
        let text=$(this).parent().prev().prev().text()
        let text2=$(this).parent().prev().text()
        $.ajax({
                    url: 'add_question.php',
                    type: "post",
                    data: {id:id, action:'update2',text2:text2,text:text},
                    success: function(data)
                    {
                        
                    }
            });
     });
    
});
</script>

<?php
include('./model.php');
$model = new model;
$m=$model->get('questions_yes'); 
if (!$m) {
    die;
}
echo '<table border=2 >';
    echo "<tr>";
        echo "<th>";
            echo 'question';
        echo "</th>";
        echo "<th>";
            echo 'checked';
        echo "</th>";
    echo "</tr>";
foreach ($m as $value) {
    $id=$value['id'];
    echo "<tr id=$id>";
        echo '<td contenteditable>';
            echo $value["question"];
        echo '</td>';
        echo '<td contenteditable>';
            echo $value["checked"];
        echo '</td>';
        echo '<td>';
            echo "<button class='update'>update</button>";
        echo '</td>';
        echo '<td>';
            echo "<a href='answer.php?cat=$id'>show</a>";
        echo '</td>';
    echo '</tr>';
}    
echo '</table>';
?>
<br><br><br>
    <center><h1>Harcer no </h1></center>
    <input type="text" placeholder="Harcer yes" class="harc2">
    <input type="checkbox"  class="checked"><span>Պարտադիր է լրացման</span><br><br>
    <button class="bt">add</button><br><br>

<?php
$m=$model->get('questions_no'); 
if (!$m) {
    die;
}
echo '<table border=2 >';
    echo "<tr>";
        echo "<th>";
            echo 'question';
        echo "</th>";
        echo "<th>";
            echo 'checked';
        echo "</th>";
    echo "</tr>";
foreach ($m as $value) {
    $id=$value['id'];
    echo "<tr id=$id>";
        echo '<td contenteditable>';
            echo $value["question"];
        echo '</td>';
        echo '<td contenteditable>';
            echo $value["checked"];
        echo '</td>';
        echo '<td>';
            echo "<button class='update2'>update</button>";
        echo '</td>';
        echo '<td>';
            echo "<a href='answer2.php?cat=$id'>show</a>";
        echo '</td>';
    echo '</tr>';
}    
echo '</table>';
?>