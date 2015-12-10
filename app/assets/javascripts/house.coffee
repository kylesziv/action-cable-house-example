window.initMap = () ->
  window.map = new google.maps.Map document.getElementById('map'), { zoom: 13, center: {  lat: 40.4397, lng: -79.9764 } }
  $.getJSON '/houses', (response) ->
    $.each response, (i, el) ->
      new google.maps.Marker
        position: { lat: el.latitude, lng: el.longitude},
        map: window.map,
        animation: google.maps.Animation.DROP
        title: "#{el.address} #{el.zipcode}"
