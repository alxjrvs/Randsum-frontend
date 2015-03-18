angular.module "randsum.roller", ['ngResource']
angular.module "randsumFrontend", ['ngAnimate', 'ngTouch', 'ui.router', 'ngMaterial', 'randsum.roller']
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainController"
      .state "about",
        url: "/about",
        templateUrl: "app/about/main.html"
        controller: "AboutController"
      .state "docs",
        url: "/docs",
        templateUrl: "app/docs/main.html"
        controller: "DocsController"

    $urlRouterProvider.otherwise '/'
