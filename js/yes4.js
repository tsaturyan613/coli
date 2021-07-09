
$(document).ready(function(){
  let radio=$(".radio").val()
  radio="off"
  $(".radio").click(function () {
      radio="on"
      $(".error1").fadeOut()
      localStorage.setItem('questionYes9', $(this).next().text());
      localStorage.getItem('questionYes9');
  }) 

    
$(".go").click(function(){
  if ($('.subtitle1').children().next().attr("class")=="error1" && $('.subtitle2').children().next().attr("class")=="error2" ) {
      if (($(".radio").is(':checked'))  &&  $('.arr').val()!=="") {
        $(".error2").fadeOut()
        $('.arr').val()
        localStorage.setItem('questionYes10', $('.arr').val());
        localStorage.getItem('questionYes10');
      window.location.href='./end.php'
      }
      if(radio=="off"  ){
          $(".error1").css("display","block")
          $(".error1").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
      }
      if($('.arr').val()=="" ){
        $(".error2").css("display","block")
        $(".error2").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
    }
  }
  else if ($('.subtitle1').children().next().attr("class")=="error1") {
      if ($(".radio").is(':checked')) {
          window.location.href='./end.php'
      }
      else if (radio=="off") {
          $(".error1").css("display","block")
          $(".error1").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
      }
      if ($('.arr').val()=="") {
        localStorage.removeItem("questionYes10");
      }
      localStorage.setItem('questionYes10', $('.arr').val());
      localStorage.getItem('questionYes10');
  }
  else if ($('.subtitle2').children().next().attr("class")=="error2") {
      if ($('.arr').val()!=="") {
        localStorage.setItem('questionYes10', $('.arr').val());
        localStorage.getItem('questionYes10');
        $(".error2").fadeOut()
        window.location.href='./end.php'
      }
      else if ($('.arr').val()=="") {

          $(".error2").css("display","block")
          $(".error2").effect( "shake", { direction: "up", times: 2, distance: 1}, 300 );
      }
  } 
})
  $("#arr1").keyup(function(){
    $(".error2").fadeOut()

    $('#count1').text(this.value.replace(/ /g,'').length+'/200');
  })

});
