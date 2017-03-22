/**
 * Created by nasia on 09.03.17.
 */


/**
 * Google API map
 */
function initMap() {
    var myLatLng = {lat: 44.491565, lng: -81.376462};
    var map = new google.maps.Map(document.querySelector('#map_box'), {
        zoom: 14,
        center: myLatLng,
        scrollwheel: false,
        styles: [
            {elementType: 'geometry', stylers: [{color: '#242f3e'}]},
            {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
            {elementType: 'labels.text.fill', stylers: [{color: '#f2f2f2'}]},
            {
                featureType: 'administrative.locality',
                elementType: 'labels.text.fill',
                stylers: [{color: '#ffffff'}]
            },
            {
                featureType: 'poi',
                elementType: 'labels.text.fill',
                stylers: [{color: '#70b3f1'}]
            },
            {
                featureType: 'poi.park',
                elementType: 'geometry',
                stylers: [{color: '#263c3f'}]
            },
            {
                featureType: 'poi.park',
                elementType: 'labels.text.fill',
                stylers: [{color: '#6b9a76'}]
            },
            {
                featureType: 'road',
                elementType: 'geometry',
                stylers: [{color: '#38414e'}]
            },
            {
                featureType: 'road',
                elementType: 'geometry.stroke',
                stylers: [{color: '#212a37'}]
            },
            {
                featureType: 'road',
                elementType: 'labels.text.fill',
                stylers: [{color: '#9ca5b3'}]
            },
            {
                featureType: 'road.highway',
                elementType: 'geometry',
                stylers: [{color: '#718c97'}]
            },
            {
                featureType: 'road.highway',
                elementType: 'geometry.stroke',
                stylers: [{color: '#1f2835'}]
            },
            {
                featureType: 'road.highway',
                elementType: 'labels.text.fill',
                stylers: [{color: '#9cdbf3'}]
            },
            {
                featureType: 'transit',
                elementType: 'geometry',
                stylers: [{color: '#2f3948'}]
            },
            {
                featureType: 'transit.station',
                elementType: 'labels.text.fill',
                stylers: [{color: '#63d1d5'}]
            },
            {
                featureType: 'water',
                elementType: 'geometry',
                stylers: [{color: '#9bc0f7'}]
            },
            {
                featureType: 'water',
                elementType: 'labels.text.fill',
                stylers: [{color: '#515c6d'}]
            },
            {
                featureType: 'water',
                elementType: 'labels.text.stroke',
                stylers: [{color: '#17263c'}]
            }
        ]
    });

    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: "Chantry Island, Southampton, ON",
        icon: {url: '/static/img/map_custom_marker.svg'}
    });

    map.data.setStyle({
        fillColor: 'rgba(247, 14, 28, 0.9)',
        strokeWeight: 0.5,
        strokeColor: 'rgba(247, 14, 28, 1)',
    });

    // Define the LatLng coordinates for the island.
    var island = [
        {lat: 44.493278, lng: -81.405753},
        {lat: 44.493351, lng: -81.400751},
        {lat: 44.489310, lng: -81.401057},
        {lat: 44.486870, lng: -81.405140},
        {lat: 44.485960, lng: -81.405548},
        {lat: 44.488132, lng: -81.409032},
        {lat: 44.489007, lng: -81.406782},
        {lat: 44.489979, lng: -81.406116},
        {lat: 44.490269, lng: -81.404982},
        {lat: 44.491531, lng: -81.406300},
    ];
    map.data.add({geometry: new google.maps.Data.Polygon([island])});
}