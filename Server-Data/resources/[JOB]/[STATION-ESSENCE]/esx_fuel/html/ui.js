$(document).ready(function(){
  window.addEventListener('message', function( event ) {    
    if (event.data.action == true) {

      fuel = event.data.fuel; 
      datafuel = event.data.fuel
      dataGas = event.data.data

      
      $('#fuel-price').empty();
      $('#fuel-price').append(new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD'}).format(dataGas.price));
      $('#stock').empty();
      $('#stock').append("<span class='stockLabel'>Essence en stock </span><BR><span id='stockQty'>" + dataGas.stock + "</span> <span class='stockLabel'>litres</span>");

      $('body').css('display','flex'); 
      $('.modal').css('display','none');  
      $('.litro').text(Math.round(event.data.fuel) + ' Litres');
      $("#amount").val("")

      $(document).keyup(function(e) {
        if (!counting) {
          if (e.key === "Escape") {
            myStop();
            $("#amount").val("")
            counting;
            inv;
            price;
            perc_new;
            totalPercent;
            guardar;
            completar;
            maxFuel;
            $.post('http://esx_fuel/escape', JSON.stringify({}));
          }
        }
      });
    } else {
      $('body').fadeOut();  
    }
  });
  
  var counting;
  var completar;
  var guardar;   
  var price;
  var inv;
  var totalPercent;
  var perc_new; 
  var maxFuel;


  function myStart() {
      if (inv == undefined) { inv = setInterval(increase,1000); }
    }

  function myStop() {
    if (inv !== undefined) { clearInterval(inv); inv = undefined; }
  }

  function increase() {
    if (counting) {
      if (fuel < maxFuel) {
        fuel++;
        totalPercent = Math.round(fuel) + '%'
        $('.litro').text(totalPercent);      
      } else {
        $.post('http://esx_fuel/removeanim', JSON.stringify({}));
        if (completar) {
          $.post('http://esx_fuel/pay', JSON.stringify({ new_perc: perc_new*dataGas.price }));
          perc_new;
          completar = !completar;
        } else if (guardar) {
          $.post('http://esx_fuel/pay', JSON.stringify({ new_perc: price }));
          price;
          guardar = !guardar;
        }
        counting = !counting;
        inv;
        totalPercent;
        maxFuel;
        myStop();
        $.post('http://esx_fuel/escape', JSON.stringify({})); 
      } 
    }
  }

  $( "#retirar" ).click(function() {
    if (!counting) {
      perc_new = 100 - Math.round(datafuel);
      $.post('http://esx_fuel/checkpay', JSON.stringify({ new_perc: perc_new }));
      counting = !counting;
      completar = !completar;
      maxFuel = 99
      $('.modal span').html("Voulez vous remplir le vehicule pour </br>"+(perc_new*dataGas.price).toFixed(2)+" $");  
      $('.modal').fadeIn(300);
      $('.container').fadeOut();
      $('left').fadeOut();
      $('.act').fadeOut();
    }
  });

  function guardarEvent() {
    if (!counting) {
      price = Math.round($("#amount").val()); 
      if (price > dataGas.price) {  
        if (price <= ((100-Math.round(datafuel))*dataGas.price)) {
          $.post('http://esx_fuel/checkpay', JSON.stringify({ new_perc: price }));
          counting = !counting;
          guardar = !guardar;
          maxFuel = (Math.floor(price/dataGas.price)+Math.round(datafuel))-1
          $('.modal span').html("Voulez vous remplir le vehicule pour </br>"+price+" $ ("+ (price/dataGas.price).toFixed(1) +" litres)"); 
          $('.modal').fadeIn(300);
          $('.container').fadeOut();
          $('left').fadeOut();
          $('.act').fadeOut();
        } else {
          var texto = "La quantité maximale possible est <b>$"+((100-Math.round(datafuel))*dataGas.price)+"</b>!"
          $.post('http://esx_fuel/notifytext', JSON.stringify({ text: texto }));
        }
      } else {
        var texto = "Le montant minimum est $" + dataGas.price + "!"
        $.post('http://esx_fuel/notifytext', JSON.stringify({ text: texto }));
      }
    }
  }

  $("#guardar").click(function() {
    guardarEvent();
  });

  document.querySelector('#amountForm')?.addEventListener('submit', e => {
    e.preventDefault();
    guardarEvent();
  });
  
  $( "#plus" ).click(function() {
    if (!counting) {
      if (Math.round($("#amount").val()) < 100) {
        $("#amount").val(Math.round($("#amount").val())+1)
        price = $("#amount").val()
      }
    }
  });

  $( "#minus" ).click(function() {
    if (!counting) {
      if (Math.round($("#amount").val()) > 0) {
        $("#amount").val(Math.round($("#amount").val())-1)
        price = $("#amount").val()
      }
    }
  });

  $(".accept").click(function() {
    if (counting) {
      $('.modal').fadeOut();
      $('.container').fadeIn(300);
      $('left').fadeIn(300);
      $('.act').fadeIn(300);
      $.post('http://esx_fuel/startanim', JSON.stringify({}));
      myStop();
      myStart(); 
    }
  })

  $(".recuse").click(function() {
    $('.modal').fadeOut();
    $('.container').fadeIn(300);
    $('left').fadeIn(300);
    $('.act').fadeIn(300);
    if (completar) {
      counting = !counting;
      completar = !completar;
    } else if (guardar) {
      counting = !counting;
      guardar = !guardar;
    }
  })
});