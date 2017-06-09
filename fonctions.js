// Code de la Carte
var map;

function initMap() {
	var mapOptions = {
		center: new google.maps.LatLng(48.861924,  2.344654),
		zoom: 13, mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	var mapElement = document.getElementById('map');

	map = new google.maps.Map(mapElement, mapOptions);

	var infoWindow = new google.maps.InfoWindow;

	var marker = new google.maps.Marker({
		position: {lat: 48.871928, lng: 2.331612},
		map: map
	});
		var marker = new google.maps.Marker({
		position: {lat: 48.852405, lng: 2.370204},
		map: map
	});
}

google.maps.event.addDomListener(window, 'load', initMap); // Créé la carte lors du chargement de la page