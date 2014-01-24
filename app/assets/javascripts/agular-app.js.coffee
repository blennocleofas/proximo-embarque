@myApp = angular.module('myApp', [])

@myApp.config ['$interpolateProvider', ($interpolateProvider)->
  $interpolateProvider.startSymbol('{(').endSymbol(')}')
]
