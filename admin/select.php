
<form action="add_answer.php" method="post">
    <input type="text" placeholder="option" name="option" required><br><br>
    <button name='action' value='add_option'>add option</button>
</form> 

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() { 
$('.update').click(function(){
    let id=$(this).parents('tr').attr('id');
    let opt=$(this).parents('tr').find('.opt').text();    
    $.ajax({
                url: 'add_answer.php',
                type: "post",
                data: {id:id, action:'update_opt',opt:opt},
                success: function(data)
                {
                    
                }
        });
 });
 $('.delete').click(function(){
        let id=$(this).parents('tr').attr('id');
        $(this).parents('tr').remove();
        $.ajax({
                    url: 'add_answer.php',
                    type: "post",
                    data: {id:id, action:'deleteSel'},
                    success: function(data)
                    {
                        
                    }
            });
     });
}); 
</script>

<?php
    include('../model.php');
    $model=new model;
    $m=$model->get('options');
    if (!$m) {
        die;
    }
    echo '<table border=2 >';
    foreach ($m as $value) {
        $id=$value['id'];
        echo "<tr id=$id>";
            echo "<td class='opt' contenteditable>";
                echo $value["opt"];
            echo '</td>';
            echo '<td>';
                echo "<button class='update'>update</button>";
            echo '</td>';
            echo '<td>';
                echo "<button class='delete'>delete</button>";
            echo '</td>';
        echo '</tr>';
    }    
    echo '</table>';
?>