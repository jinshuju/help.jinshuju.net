$(document).ready(function() {

  $(".play-video").click(function() {    
    $("#mask, #video-popover").show()
    $("body").css({"overflow": "hidden"});
    $("#video").attr("poster", $(this).data("poster"))
    $("#video source").attr("src", $(this).data("video"))
    $("#video").get(0).load()
    $("#video").get(0).play()
  })
  
  $("#mask, #close-video").click(function() {
    $("#mask, #video-popover").hide()
    $("body").css({"overflow": "auto"});
    $("#video").get(0).pause()
    $("#video source").attr("src", "")
  })
  
})