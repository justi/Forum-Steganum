singleSection = ->
      restrict: 'AE'
      replace: true
      scope: true
      bindToController:
          section: '='
      templateUrl: 'client/sections/list/directives/sectionsList/singleSection/singleSection.directive.html'
      controllerAs: 'singleDir'
      controller: () ->
          vm = this
          return vm


angular.module 'sections'
.directive 'singleSection', singleSection
