// Code de la Carte
var map;

function initMap() {
	var mapOptions = {
		center: new google.maps.LatLng(42.699674, 2.894788),
		zoom: 11, mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	var mapElement = document.getElementById('map');

	map = new google.maps.Map(mapElement, mapOptions);

	var infoWindow = new google.maps.InfoWindow;
}

google.maps.event.addDomListener(window, 'load', initMap); // Créé la carte lors du chargement de la page
