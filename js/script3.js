$(document).ready(function(){
  let count=0
  $(".bt").click(function () {
    count++
    if (count%2==1) {
          $(".flex").animate({height:"540px"})
    }
    else{
        $(".flex").animate({height:"114.8px"})
    }
})
let countflag=0
$(".pos2").click(function(){
    countflag++
    if (countflag%2==1) {
        $(".pos1").animate({right:"-30px"})
    }
    if (countflag%2==0) {
        $(".pos1").animate({right:"-75px"})
        $(".pos2").css("zIndex","1")

    }
})
let countflag1=0

$(".pos1").click(function(){
 countflag1++
 if (countflag1%2==1) {
    $(".pos1").animate({right:"-75px"})
    $(".pos2").fadeOut()
 }
 if (countflag1%2==0) {
    $(".pos1").animate({right:"-30px"})
    $(".pos2").fadeIn()

     
 }

})
});