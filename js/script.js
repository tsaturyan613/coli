$(document).ready(function(){
    let radio=$(".radio").val()
    let radio2=$(".radio2").val()
    let yes=$(".yes").val()
    let no=$(".no").val()
    radio="off"
    radio2="off"
    no="off"
    yes="off"

    $(".radio").click(function(){
        radio="on"
        $(".error1").fadeOut() 
        localStorage.setItem('question1',$(this).next().text());
        localStorage.getItem('question1'); 
    });
    $(".radio2").click(function(){
        if($(".radio2").is(':checked')){
            $(".error2").fadeOut() 
            localStorage.setItem('question2', $(this).next().text());
            localStorage.getItem('question2');
            radio2="on"

        }   
    });
    $(".no").click(function(){
        if($(".no").is(':checked')){

            $(".error2").fadeOut() 
            localStorage.setItem('question2', $(this).next().text());
            localStorage.getItem('question2');
            no="on"
        }   
    });

    $(".yes").click(function(){
        if($(".yes").is(':checked')){

            $(".error2").fadeOut() 
            localStorage.setItem('question2', $(this).next().text());
            localStorage.getItem('question2');
            yes="on"            
        }   
    });
    $(".go").click(function(){
        if ($('.subtitle1').children().next().attr("class")=="error1" && $('.subtitle2').children().next().attr("class")=="error2" ) {
            if ($(".radio").is(':checked') && $(".yes").is(":checked")){
                window.location.href='./yes1.php'
            }
            if ($(".radio").is(':checked') && $(".no").is(":checked")){
                window.location.href='./index2.php'
            }
            if ($(".radio").is(':checked') && $(".radio2").is(":checked")){
                window.location.href='./coming.php'
            }
            if(radio=="off"){
                $(".error1").css("display","block")
                $(".error1").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
            }
            if (yes=="off" && no=='off' && radio2=='off') {
                $(".error2").css("display","block")
                $(".error2").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
            }
        }
    })
});

