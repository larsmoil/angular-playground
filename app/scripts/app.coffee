'use strict'

angular.module('angularPlaygroundApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router'
])
  .config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise("/")
    $stateProvider
      .state('playground', {
        abstract: true
        templateUrl: "views/main.html"
      })
      .state('playground.main', {
        url: "/"
        controller: 'MainCtrl'
        views: {
          content: { templateUrl: 'views/landing-page.html' }
        }
      })
