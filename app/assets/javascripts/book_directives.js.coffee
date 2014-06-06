BookDirectives = angular.module("BookDirectives", [])

BookDirectives.directive("map", () ->
  link = ($scope, element, attrs) -> #attrs are attributes
    element[0].style.height = "400px"
    element[0].style.width = "400px"
    mapOptions = {
      zoom: 8,
      center: new google.maps.LatLng(-34.397, 150.644)
    }

    map = new google.maps.Map(element[0],
      mapOptions)

  {link: link
  }
)