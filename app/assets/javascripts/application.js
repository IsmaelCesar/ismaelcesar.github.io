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

$(document).ready(() => {
  let responsive_bars = document.querySelector("#responsive-bars");
  if(window.outerWidth < 1000){
    $(responsive_bars).click(()=>{
      let top_nav = document.querySelector("#top-menu");
      if(top_nav.className === 'nav-list top-menu' ){
        top_nav.className += ' responsive';
      }
      else{
        top_nav.className = 'nav-list top-menu';
      }
    });
  }


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

});
