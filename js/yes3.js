$(document).ready(function(){
    let radio=$(".radio").val()
    let radio2=$(".radio2").val()
    radio="off"
    radio2="off"
    
    $(".radio").click(function(){
        radio="on"
        $(".error1").fadeOut()
        localStorage.setItem('questionYes7', $(this).next().text());
        localStorage.getItem('questionYes7');
    });
    $(".radio2").click(function(){
        radio2="on"
        $(".error2").fadeOut()
        localStorage.setItem('questionYes8',$(this).next().text());
        localStorage.getItem('questionYes8');
    });
    
    
$(".go").click(function(){
    if ($('.subtitle1').children().next().attr("class")=="error1" && $('.subtitle2').children().next().attr("class")=="error2" ) {
        if (($(".radio").is(':checked'))  && $('.radio2').is(':checked')) {
        window.location.href='./yes4.php'
        }
        else if(radio=="off"  && radio2=="off" ){
            $(".error1").css("display","block")
            $(".error1").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
            $(".error2").css("display","block")
            $(".error2").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
        }
    }
    else if ($('.subtitle1').children().next().attr("class")=="error1") {
        if ($(".radio").is(':checked')) {
            window.location.href='./yes4.php'
        }
        else if (radio=="off") {
            $(".error1").css("display","block")
            $(".error1").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
        }
    }
    else if ($('.subtitle2').children().next().attr("class")=="error2") {
        if ($('.radio2').is(':checked')) {
            window.location.href='./yes4.php'
        }
        else if (radio2=="off") {
            $(".error2").css("display","block")
            $(".error2").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
        }
    } 
})
})