angular.module "randsum.roller", ['ngResource']
angular.module "randsumFrontend", ['ngAnimate', 'ngTouch', 'ui.router', 'ngMaterial', 'randsum.roller']
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainController"

    $urlRouterProvider.otherwise '/'
