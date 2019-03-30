
const initPop = () => {
  if ($.magnificPopup.open ){
    $(".mfp-arrow .mfp-arrow-right .mfp-prevent-close").click(function(){
      var $this = $(this);
      setTimeout(function() {
           return true;
        }, 2000);
    })
  }
}
export  { initPop };
