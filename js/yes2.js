$(document).ready(function(){
    let radio=$(".radio").val()
    radio="off"
    
    $(".radio").click(function(){
        radio="on"
        $(".error1").fadeOut()
        localStorage.setItem('questionYes3', $(this).next().text());
        localStorage.getItem('questionYes3');
    });



    let teachers= []
    $('select').on('change', function(){
        teachers.push($(this).val())
        localStorage.setItem('teachers', teachers);
        localStorage.getItem('teachers');
    });




    $('.bt1').click(function(){
        teachers.push($(this).attr('id')) 
       localStorage.setItem('teachers', teachers);
       localStorage.getItem('teachers');
    })
    $('.bt2').click(function(){
        teachers.push($(this).attr('id')) 
        localStorage.setItem('teachers', teachers);
        localStorage.getItem('teachers');
     })
     $('.bt3').click(function(){
        teachers.push($(this).attr('id')) 
        localStorage.setItem('teachers', teachers);
        localStorage.getItem('teachers');
     })
     $('.bt4').click(function(){
        teachers.push($(this).attr('id')) 
        localStorage.setItem('teachers', teachers);
        localStorage.getItem('teachers');
     })
     $('.bt5').click(function(){
        teachers.push($(this).attr('id')) 
        localStorage.setItem('teachers', teachers);
        localStorage.getItem('teachers');
     })
     $('.bt6').click(function(){
        teachers.push($(this).attr('id')) 
        localStorage.setItem('teachers', teachers);
        localStorage.getItem('teachers');
     })
    
    $(".go").click(function () {
        if ($('.subtitle1').children().next().attr("class")=="error1") {
            if (($(".radio").is(':checked'))) {
                window.location.href='./yes2.php'
            }
            else if (radio=="off") {
                $(".error1").css("display","block")
                $(".error1").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
            }
        }
        else{
            window.location.href='./yes3.php' 
        }
        if (($(".radio").is(':checked'))) {
                if($('select').val()==''){
                    localStorage.removeItem('teachers');
                }
            window.location.href='./yes3.php'
        }

    })
    

$(".sel").change(function(){
    $("#h61").fadeIn()
    $(".sel").attr("disabled","disabled")
    $("option:selected").attr("disabled","disabled")
    
    
})
$(".bt1").click(function(){
    $("#h61").fadeOut()
    $("#h62").fadeIn()
})
$(".bt2").click(function(){
    $("#h62").fadeOut()
    $("#h63").fadeIn()
})
$(".bt3").click(function(){
    $("#h63").fadeOut()
    $("#h64").fadeIn()
})
$(".bt4").click(function(){
    $("#h64").fadeOut()
    $("#h65").fadeIn()
})
$(".bt5").click(function(){
    $("#h65").fadeOut()
    $("#h66").fadeIn()
})
$(".bt6").click(function(){
    $("#h66").fadeOut()
    $(".ok").fadeIn()
    $(".add").fadeIn()
    $(".next").css("margin-top", "35px")
})
$(".add").click(function(){
    $(".sel").removeAttr( "disabled")
    $(".ok").fadeOut(1)
    $(".add").fadeOut(1)
    $(".next").css("margin-top", "130px")
    
    
})
})