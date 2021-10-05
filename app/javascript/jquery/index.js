function fadeAnime(){ //さらに動きを関数でまとめる
  $('.fadeInDownTrigger').each(function(){
    var elemPos = $(this).offset().top-10;
    var scroll = $(window).scrollTop();
    var windowHeight = $(window).height();
    if (scroll >= elemPos - windowHeight){   $(this).addClass('animate__animated animate__fadeInDown');
    }else{
     $(this).removeClass('animate__animated animate__fadeInDown');    }
    });
  }