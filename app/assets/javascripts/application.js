// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap
//= require_tree .
//= require_self

$(document).ready(() => {
  
  
  function swapTopNavResponsive(){
    if(window.outerWidth < 1000){
      let top_nav = document.querySelector("#top-menu");
      if(top_nav.className === 'nav-list top-menu' ){
        top_nav.className += ' responsive';
      }
      else{
        top_nav.className = 'nav-list top-menu';
      }
    }
  }

  function swapOverlayDisplay(){
    if(window.outerWidth < 1000){
      if( $('#overlay').css('display') !== 'none' ){
        $('#overlay').css('display', 'none'); 
      } 
      else{
        $('#overlay').css('display', 'block');
      }
    }
  }

  if( window.outerWidth < 1000 ){
    let responsive_bars = document.querySelector("#responsive-bars");

    $(responsive_bars).click(()=>{
      swapOverlayDisplay();
      swapTopNavResponsive();
    });
  }

  $('#overlay').click(()=>{
    swapOverlayDisplay();
    swapTopNavResponsive();
  });

  window.onscroll = ()=>{
    // Setting responsive screen only for mobile devices
    let top_nav_element = document.querySelector('.top-nav');
    if( window.pageYOffset > 0) {
      if(!top_nav_element.classList.contains('put-shadow')){
        top_nav_element.classList.add('put-shadow', 'sticky');
      }
    }
    else{
      top_nav_element.classList.remove('put-shadow', 'sticky');
    }
  }

  

  document.querySelectorAll('a.top-nav-link').forEach((element, index)=>{    
    $(element).click((event)=>{ 
      if(element.hash != ""){
        let hash = element.hash;

        deslocamento = Math.abs($(hash).offset().top - $('.top-nav').height());

        if($(window).scrollTop() === 0 ){
          deslocamento -= 130;
        }

        event.preventDefault();
        $('html, body').animate({
                                  scrollTop: deslocamento
                                }, 
                                1000,
                                 function(){
                                      window.scrollY = deslocamento; 
                                  }); 
        swapOverlayDisplay();
        swapTopNavResponsive();
      }
    });
  });

  $('a#class-name-link').click((event)=>{
      event.preventDefault();      
      deslocamento = $('.top-nav').offset().top
      $('html, body').animate({
                                  scrollTop: "0"
                                }, 
                                800);
      
  });

});
