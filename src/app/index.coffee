angular.module "randsumFrontend", ['ngAnimate', 'ngTouch', 'ngResource', 'ui.router', 'ngMaterial']
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl"

    $urlRouterProvider.otherwise '/'

