# since the example in coffee, then I will rewrite them with javascrit scrit, so who is new to coffee script will not be lost
# I will use the javascript, becasue the Coffee script code should work fine, however,
# since the javascript code I wrote then I wanna make sure it works

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
#controllers = angular.module('controllers',[])
#controllers.controller("RecipesController", [ '$scope', '$routeParams', '$location', '$resource',
#    ($scope,$routeParams,$location,$resource)->
#        $scope.search = (keyword)->  $location.path("/").search('keywords',keyword)
#
#        Recipe = $resource('/recipes/:recipeId', { recipeId: "@id", format: 'json' })

#        if $routeParams.keywords
#            Recipe.query(keywords: $routeParams.keywords, (results)-> $scope.recipes = results)
#        else
#            $scope.recipes = []
#])
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
]
var controllers = angular.module('controllers',[]);

// ['$scope', '$routeParams', '$location'] It's a bit more verbose to do it with the string array,
// but it's guaranteed to work through the asset pipeline and any minification or obfuscation that
// happens to the JavaScript.

controllers.controller("RecipesController", [ '$scope', '$routeParams', '$location' , '$resource',
    function($scope, $routeParams,$location,$resource){

        $scope.search = function(keyword){
            // for debuging
            console.log(keyword);
            return $location.path("/").search('keywords',keyword);
        }

       var Recipe = $resource('/recipes/:recipeId', { recipeId: "@id", format: 'json' });

        if ($routeParams.keywords){
            Recipe.query({
                keywords: $routeParams.keywords
                },
                function(results){
                    console.log(results);
                    $scope.recipes = results;
                });
        }
        else
            $scope.recipes = [];
      }
]);`




















