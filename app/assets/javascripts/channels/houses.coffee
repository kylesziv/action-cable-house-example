App.houses = App.cable.subscriptions.create 'HousesChannel',

  dropMarker: (house) ->
    new google.maps.Marker
      position: { lat: house.latitude, lng: house.longitude},
      map: window.map,
      animation: google.maps.Animation.DROP
      title: "#{house.address} #{house.zipcode}"

  received: (data) ->
    @dropMarker(data.house)
