###
since all the examples written in coffeescript, then I will rewrite them with javascrit scrit, so who is new to coffee script will not be lost
I will use the javascript, becasue the Coffee script code should work fine, however,
since the javascript code I wrote then I wanna make sure it works
###


# receta = angular.module('receta',[
# 'templates',
# 'ngRoute',
# 'ngResource',
# 'controllers',
# ])
`var receta = angular.module('receta',[
    'templates',
    'ngRoute',
    'ngResource',
    'controllers',
]);`



#controllers = angular.module('controllers',[])
#receta.config([ '$routeProvider',
#  ($routeProvider)->
#    $routeProvider
#    .when('/',
#      templateUrl: "angularIndex.html"
#      controller: 'RecipesController'
#    )
#])
#
#recipes = [
#  {
#    id: 1
#    name: 'Baked Potato w/ Cheese'
#  },
#  {
#    id: 2
#    name: 'Garlic Mashed Potatoes',
#  },
#  {
#    id: 3
#    name: 'Potatoes Au Gratin',
#  },
#  {
#    id: 4
#    name: 'Baked Brussel Sprouts',
#  },
#]
#
`receta.config([ '$routeProvider',
  function($routeProvider){

    $routeProvider
    .when('/',{
      templateUrl: "angularIndex.html",
      controller: 'RecipesController'
    });
}]);

var recipes = [
  {
    id: 1,
    name: 'Baked Potato w/ Cheese'
  },
  {
    id: 2,
    name: 'Garlic Mashed Potatoes',
  },
  {
    id: 3,
    name: 'Potatoes Au Gratin',
  },
  {
    id: 4,
    name: 'Baked Brussel Sprouts',
  },
]`




















