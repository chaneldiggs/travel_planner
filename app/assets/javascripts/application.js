// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require moment
//= require bootstrap-datetimepicker
//= require_tree .

$(document).ready(function (){


  function initialize() {
  	var atlanta = new google.maps.LatLng(33.751703, -84.389920);
  	var caracas = new google.maps.LatLng(10.471115, -66.897739);
		var nairobi = new google.maps.LatLng(-1.283496, 36.820886);
		var london = new google.maps.LatLng(51.529964, -0.127682);
		var bali = new google.maps.LatLng(-8.724020, 115.171245);

    var mapOptions = {
    center: {lat: 33.852615, lng: 33.967137},
    zoom: 2,
    scrollwheel: false
    };
      
    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);  


		var atlanta_marker = new google.maps.Marker({
		  position: atlanta,
		  map: map,
		  title: 'Atlanta, Georgia',
		  animation: google.maps.Animation.DROP
		});

		var caracas_marker = new google.maps.Marker({
		  position: caracas,
		  map: map,
		  title: 'Caracas, Venezuela',
		  animation: google.maps.Animation.DROP
		});	

			var nairobi_marker = new google.maps.Marker({
		  position: nairobi,
		  map: map,
		  title: 'Nairobi, Kenya',
		  animation: google.maps.Animation.DROP
		});	

			var london_marker = new google.maps.Marker({
		  position: london,
		  map: map,
		  title: 'London, United Kingdom',
		  animation: google.maps.Animation.DROP
		});	

			var bali_marker = new google.maps.Marker({
		  position: bali,
		  map: map,
		  title: 'Bali, Indonesia',
		  animation: google.maps.Animation.DROP
		});
  }
    
  google.maps.event.addDomListener(window, 'load', initialize);



  $("#load_pg").click(function() {
  	$(this).slideUp()
	  	$("#sample_destinations").removeClass("invisible")
  });

  $("#add_photo").click(function() {
  	$("#photo_form").removeClass("invisible")
  });

  $("#add_activity").click(function() {
  	$("#new_activity").removeClass("invisible")
  });


  $('#atlanta_box').click(function(){
  	window.location.href = "test?city=Atlanta&state=GA&lat=33.751703&lng=-84.389920";
  })	

  $('#caracas_box').click(function(){
  	window.location.href = "test?city=Caracas&country=Venezuela&lat=10.471115&lng=-66.897739";
  })
  
  $('#nairobi_box').click(function(){
  	window.location.href = "test?city=Nairobi&country=Kenya&lat=-1.283496&lng=36.820886";
  })

  $('#london_box').click(function(){
  	window.location.href = "test?city=London&country=United_Kingdom&lat=51.529964&lng=-0.127682";
  })

  $('#bali_box').click(function(){
  	window.location.href = "test?city=Bali&country=Indonesia&lat=-8.724020&lng=115.171245";
  })

});