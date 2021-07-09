$(document).ready(function(){
    let checkbox=$(".checkbox").val()

    checkbox="off"
    radio2="off"
    let question=[]
    $(".checkbox").click(function(){
        checkbox="on"
        $(".error1").fadeOut()
        question.push($(this).next().text())
        localStorage.setItem('questionComing1', question);
        localStorage.getItem('questionComing1');    
})

    $(".go").click(function () {
        if (checkbox=="off" ) {
            $(".error1").css("display","block")
            $(".error1").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );

        }
        if ($('#arr1').val()=="") {
            $(".error2").css("display","block")
            $(".error2").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
        }

        if (checkbox=="on" && $('#arr1').val()!=="") {
                $('#arr1').val()
                localStorage.setItem('questionComing2', $('#arr1').val());
                $(".a").attr("href","./end.php")
              } 
    })
     
    $("#arr1").keyup(function(){
        $('.count1').text(this.value.replace(/ /g,'').length+'/200');
            $(".error2").fadeOut()
      })
  
})