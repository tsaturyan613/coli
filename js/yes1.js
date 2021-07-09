$(document).ready(function(){
let checkbox=$(".checkbox").val()
let other=$(".other").val()
let radio=$(".radio").val()
checkbox="off"
other="off"
radio="off"


let question=[]
$(".checkbox").click(function(){
    checkbox="on" 
    $(".error1").fadeOut()
    question.push($(this).next().text())
    localStorage.setItem('questionYes1', question);
    localStorage.getItem('questionYes1');    
})
$(".other").click(function () {
    other="on"
    if ($(".other").is(':checked')) {
        $(".arr1").fadeIn() 
        $(".count1").fadeIn() 
        $(".error1").fadeOut()
    }
    else{
        $(".arr1").fadeOut()
    }
})
$(".radio").click(function(){
    $(".error2").fadeOut()
    radio="on"
    localStorage.setItem('questionYes2', $(this).next().text());
    localStorage.getItem('questionYes2');  
})


$(".go").click(function(){
    if ($('.subtitle1').children().next().attr("class")=="error1" && $('.subtitle2').children().next().attr("class")=="error2" ) {
        if ((($(".checkbox").is(':checked')) || ($(".other").is(":checked")))  && $('.radio').is(':checked')) {
        window.location.href='./yes2.php'
        }
        if(checkbox=="off" && other=="off" ){
            $(".error1").css("display","block")
            $(".error1").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
        }
        if(radio=="off" ){
            $(".error2").css("display","block")
            $(".error2").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
        }
    }
    else if ($('.subtitle1').children().next().attr("class")=="error1") {
        if (($(".checkbox").is(':checked')) || ($(".other").is(":checked"))) {
            if ($('.arr').val()!=="") {
                question.push($('.arr').val())
                localStorage.setItem('questionYes1', question);
                localStorage.getItem('questionYes1');
            }
            window.location.href='./yes2.php'
        }
        else if ((checkbox=="off" && other=="off")) {
            $(".error1").css("display","block")
            $(".error1").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
        }
    }
    else if ($('.subtitle2').children().next().attr("class")=="error2") {
        if ($('.radio').is(':checked')) {
            window.location.href='./yes2.php'
        }
        else if (radio=="off") {
            $(".error2").css("display","block")
            $(".error2").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
        }
    } 
})
$("#arr1").keyup(function(){
    $('.count1').text(this.value.replace(/ /g,'').length+'/50');
})
})