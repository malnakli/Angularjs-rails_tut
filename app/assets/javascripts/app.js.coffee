# since the example in coffee, then I will rewrite them with javascrit scrit, so who is new to coffee script will not be lost
# I will use the javascript, becasue the Coffee script code should work fine, however,
# since the javascript code I wrote then I wanna make sure it works

# receta = angular.module('receta',[
# 'templates',
#'ngRoute',
#'controllers',
# ])

`var receta = angular.module('receta',[
    'templates',
    'ngRoute',
    'controllers',
]);`

#receta.config([ '$routeProvider',
#  ($routeProvider)->
#    $routeProvider
#    .when('/',
#      templateUrl: "angularIndex.html"
#      controller: 'RecipesController'
#    )
#])
#
#controllers = angular.module('controllers',[])
#controllers.controller("RecipesController", [ '$scope',
#  ($scope)->
#])

`receta.config([ '$routeProvider',
  function($routeProvider){

    $routeProvider
    .when('/',{
      templateUrl: "angularIndex.html",
      controller: 'RecipesController'
    });
}]);

var controllers = angular.module('controllers',[]);
controllers.controller("RecipesController", [ '$scope',
  function($scope){

      }
]);`