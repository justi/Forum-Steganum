isLogged = ->
    'isLogged': ['authServ', (authServ) ->
        authServ.isLogged()]

isNotLogged = ->
    'isNotLogged': ['authServ', (authServ) ->
        authServ.isNotLogged()]

usersModule = ($stateProvider) ->

  $stateProvider
  .state 'users',
    parent: 'root.main'
    abstract: true
    url: '/users'
    controller: 'UserCtrl'
    controllerAs: 'userCtrl'
    templateUrl: 'client/users/users.html'

  .state 'login',
    parent: 'users'
    url: '/login'
    controller: 'LoginCtrl'
    controllerAs: 'logCtrl'
    templateUrl: 'client/users/login/login.html'
    resolve: isNotLogged()

  .state 'register',
    parent: 'users'
    url: '/register'
    controller: 'NewUserCtrl'
    controllerAs: 'nUCtrl'
    templateUrl: 'client/users/new/new.user.html'
    resolve: isNotLogged()

  .state 'profile',
    parent: 'users'
    url: '/profile'
    controller: 'ProfileCtrl'
    controllerAs: 'prof'
    templateUrl: 'client/users/profile/profile.html'
    resolve: isLogged()

  return

usersModule.$inject = ['$stateProvider']

angular.module 'users', ['ui.router']
.config usersModule


