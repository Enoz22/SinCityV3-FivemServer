$(document).ready(function(){
   // Listen for NUI Events
  window.addEventListener('message', function(event){
    var item = event.data;
    var today = new Date();
    var time = today.getHours() + ":" + today.getMinutes();
    // Trigger adding a new message to the log and create its display
    if (item.open === 2) {
     // console.log(3)
     // update(item.info);

      if (item.direction) {
        $(".direction").find(".image").attr('style', 'transform: translate3d(' + item.direction + 'px, 0px, 0px)');
        return;
      }

      if (item.atl === false) {
        $(".atlamount").attr("style", "display: none");
        $(".atlamounttxt").attr("style", "display: none");
      }
      else {
        $(".atlamount").attr("style", "display: block");
        $(".atlamounttxt").attr("style", "display: block");
        $(".atlamount").empty();
        $(".atlamount").append(item.atl);
      }

      $(".vehicle").removeClass("hide");
      $(".wrap").removeClass("lower");
      $(".time").removeClass("timelower");

      $(".fuelamount").empty();
      $(".fuelamount").append(item.fuel);
      setProgressFuel(item.fuel,'.progress-fuel');

      $(".speedamount").empty();
      $(".speedamount").append(item.mph);
      setProgressSpeed(item.mph,'.progress-speed');

      $(".street-txt").empty();
      $(".street-txt").append(item.street);
      
      $(".time").empty();
      $(".time").append(time); 


      if (item.belt == true || item.harnessDur > 0) {
        $(".belt").fadeOut(1000);
      } else {
        $(".belt").fadeIn(1000);
      }

      if (item.engine === true) {
        $(".ENGINE").fadeIn(1000);
      } else {
        $(".ENGINE").fadeOut(1000);
      }

      if (item.GasTank === true) {
        $(".FUEL").fadeIn(1000);
      } else {
        $(".FUEL").fadeOut(1000);
      }

      $(".harness").empty();
      if (item.harnessDur > 0) {
        if (item.harness === true) {
          let colorOn = (item.colorblind) ? 'blue' : 'green';
          $(".harness").append(`<div class='${colorOn}'> HARNESS </div>`);
        } else {
          let colorOff = (item.colorblind) ? 'yellow' : 'red';
          $(".harness").append(`<div class='${colorOff}'> HARNESS </div>`);
        }
      }

      $(".nos").empty();
      if (item.nos > 0) {
        if (item.nosEnabled === false) {
          let colorOn = (item.colorblind) ? 'blue' : 'green';
          $(".nos").append(`<div class='${colorOn}'> ${item.nos} </div>`);
        } else {
          let colorOff = (item.colorblind) ? 'yellow' : 'yellow';
          $(".nos").append(`<div class='${colorOff}'> ${item.nos} </div>`);
        }
      }
    }

    if (item.open === 4) {
      $(".vehicle").addClass("hide");
      $(".wrap").addClass("lower");
      $(".time").addClass("timelower");
      $(".fuelamount").empty();
      $(".speedamount").empty();
      $(".street-txt").empty();

      $(".time").empty();
      $(".time").append(time); 
      $(".direction").find(".image").attr('style', 'transform: translate3d(' + item.direction + 'px, 0px, 0px)');
    }

    if (item.open === 3) {
      $(".full-screen").fadeOut(100);    
    }    
    if (item.open === 1) {
      //console.log(1)
      $(".full-screen").fadeIn(100);    
    }    
  });
});


function setProgressSpeed(value, element){
  var circle = document.querySelector(element);
  var radius = circle.r.baseVal.value;
  var circumference = radius * 2 * Math.PI;
  var html = $(element).parent().parent().find('span');
  var percent = value*100/220;

  circle.style.strokeDasharray = `${circumference} ${circumference}`;
  circle.style.strokeDashoffset = `${circumference}`;

  const offset = circumference - ((-percent*73)/100) / 100 * circumference;
  circle.style.strokeDashoffset = -offset;

  var predkosc = Math.floor(value * 1.8)
  if (predkosc == 81 || predkosc == 131) {
    predkosc = predkosc - 1
  }

  html.text(predkosc);
}

function setProgressFuel(percent, element){
  var circle = document.querySelector(element);
  var radius = circle.r.baseVal.value;
  var circumference = radius * 2 * Math.PI;
  var html = $(element).parent().parent().find('span');

  circle.style.strokeDasharray = `${circumference} ${circumference}`;
  circle.style.strokeDashoffset = `${circumference}`;

  const offset = circumference - ((-percent*73)/100) / 100 * circumference;
  circle.style.strokeDashoffset = -offset;

  html.text(Math.round(percent));
}