$(document).ready(function() {
  $.material.init();
});

function init_map() {
  console.log(gon.latitud);
  console.log(gon.longitud);
  var var_location = new google.maps.LatLng(gon.latitud,gon.longitud);

  var var_mapoptions = {
    center: var_location,
    zoom: 14
  };

  var var_marker = new google.maps.Marker({
    position: var_location,
    map: var_map,
    title:"GDG Managua"});

  var var_map = new google.maps.Map(document.getElementById("map-container"),
    var_mapoptions);

  var_marker.setMap(var_map); 

}

google.maps.event.addDomListener(window, 'load', init_map);

