angular.module 'forumSteganum', [
  'angular-meteor'
  'ui.router'
  'ngMaterial'
  'icons'
  'home'
  'todos'
  'sections'
  'posts'
 ]

.config ($urlRouterProvider, $stateProvider, $locationProvider) ->
  $locationProvider.html5Mode true

  $stateProvider
  .state 'root',
    url: ''
    abstract: true
    views:
      'header':
        templateUrl: 'client/header/header.html'
        controller: 'HeaderCtrl as headCtrl'
      'footer':
        templateUrl: 'client/footer/footer.html'
  .state 'root.main',
    views: 'main@':
      templateUrl: 'client/main.html'

  $urlRouterProvider.otherwise '/'
