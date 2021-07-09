
<form action="add_answer.php" method="post">
    <input type="text" placeholder="Type" name="type2" required><br><br>
    <input type="text" placeholder="Patasxan" name="patasxan2" ><br><br>
    <button name='action' value='add2'>add</button>
</form> 

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
$(document).ready(function() { 
 $('.update2').click(function(){
    let id=$(this).parents('tr').attr('id');
    let patasxan=$(this).parents('tr').find('.patasxan').text();
    let type=$(this).parents('tr').find('.type').text();
    alert(patasxan)
    
    $.ajax({
                url: 'add_answer.php',
                type: "post",
                data: {id:id, action:'update2',patasxan:patasxan, type:type},
                success: function(data)
                {
                    
                }
        });
 });
 $('.delete2').click(function(){
        let id=$(this).parents('tr').attr('id');
        $(this).parents('tr').remove();
        $.ajax({
                    url: 'add_answer.php',
                    type: "post",
                    data: {id:id, action:'delete2'},
                    success: function(data)
                    {
                        
                    }
            });
     });
});
</script>
<?php
echo "<pre>";
session_start();

include('./model.php');
$cat2 = $_GET['cat'];
$_SESSION['cat2']=$cat2;

$m = new model;
$answ = $m -> get_answer_no($cat2);
if (!$answ) {
    die;
}

echo "<table border = '1'>";
    foreach ($answ as  $val) {
        $id=$val['id'];
        if ($val['type']=='select') {
            echo "<tr id=$id>";
                echo "<td class='type'>";
                    echo $val['type'];
                echo "</td>";
                echo '<td>';
                    echo "<a href='select.php?sel=$id'>show</a>";
                echo '</td>';
            echo "</tr>";
        }
        else{
        echo "<tr id=$id>";
            echo "<td class='patasxan' contenteditable>";
                echo $val['patasxan'];
            echo "</td>";
            echo "<td class='type' contenteditable>";
                echo $val['type'];
            echo "</td>";
            echo '<td>';
                echo "<button class='update2'>update</button>";
            echo '</td>';  
            echo '<td>';
                echo "<button class='delete2'>delete</button>";
            echo '</td>';
        echo "</tr>";
        }
    }    
echo "</table>";
?>
