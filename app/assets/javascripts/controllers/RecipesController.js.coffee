###
since all the examples written in coffeescript, then I will rewrite them with javascrit scrit, so who is new to coffee script will not be lost
I will use the javascript, becasue the Coffee script code should work fine, however,
since the javascript code I wrote then I wanna make sure it works
###


###
notice that we have repeated the module declaration (or so it seems)
Because the asset pipeline wraps all CoffeeScript files in self-executing functions,
our controller file won't have access to the controllers module we declared in app.coffee.
We can still get access to it by calling angular.module in the controller file.
Since it will be evaluated after app.coffee, we can be sure the module itself
exists inside the bowels of Angular. The important difference is that in our controller file,
we omit the second parameter. This is how Angular knows we just want access to the previously-declared
module and aren't trying to declare a new module that has the same name (which,
incidentally, generates a runtime error).
###
#controllers = angular.module('controllers')
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


`var controllers = angular.module('controllers',[]);

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