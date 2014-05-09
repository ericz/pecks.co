#
# Controllers are front-end logic for parts of specific pages.
# Controllers don't have their own views, instead they are attached to existing html via the ng-controller attribute
# A single page can use multiple controllers by using the ng-controller attribute on multiple html elements.
# If you find yourself reusing a controller on multiple pages, then that controller should probably be a directive.
#

app = angular.module('Pecks-controllers', [])
