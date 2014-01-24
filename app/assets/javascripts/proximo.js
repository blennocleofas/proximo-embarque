
//Campos de add 
$('.aumentar').on(Gumby.click, function(e) {
  // stop both click and tap from triggering event handler
  e.stopImmediatePropagation();
  // Pegar Quatidade Atual do Campo
  var adultos = $(this).parent().find('input').val();
  
  // Validar Campo para soma 
  if(adultos.length == 0){
  	adultos = 0;	
  }
  //Converter para init e add Passageiro
  var soma = parseInt(adultos) + 01;
 
  // Passar para input
  $(this).parent().find('input').val(soma);

});

$('.diminuir').on(Gumby.click, function(e) {
  // stop both click and tap from triggering event handler
  e.stopImmediatePropagation();
  var adultos = $(this).parent().find('input').val();
  var soma = parseInt(adultos);
  if (soma > 0){
  	soma = soma - 1;
  	$(this).parent().find('input').val(soma);
  }
  // do something awesome
});

$('.mais-sobre > .voltar').on(Gumby.click, function(e) {
    $(this).parent().parent('.box').removeClass('mostrar');


});

	jQuery(document).ready(function($) {
		$('.grid-3-2-1').on('click', '.info', function(e) {
			e.preventDefault();
		}).on('mouseenter', '.info', function(e) {
			$(this).closest('.box').addClass('mostrar');
		}).on('mouseleave', '.box', function(e) {
			$(this).removeClass('mostrar');
		});
	});

// bind to radio button check event

    // $('.favoritar').on('click', "i.icon-star-empty", function() {
    //   $(this).removeClass("icon-star-empty").addClass("icon-star");
    // });

    // $('.favoritar').on('click', "i.icon-star", function() {
    //   $(this).removeClass("icon-star").addClass("icon-star-empty");
    // });