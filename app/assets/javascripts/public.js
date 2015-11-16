$(function(){
  var modal = document.getElementById('dialog');

$('.openModal').click(function(){
    modal.showModal();
    $('dialog').addClass('see');

});


$('.modalClose').click(function(){
  modal.close();
    $('dialog').removeClass('see'); 
});

$('a').click(function(){
setTimeout(function() { location.reload() },1500);
});

});





