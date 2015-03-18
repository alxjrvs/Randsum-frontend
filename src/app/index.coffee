angular.module "randsumFrontend", ['ngResource', 'ngAnimate', 'ngTouch', 'ui.router', 'ngMaterial']
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
