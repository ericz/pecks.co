# Services - data models
require('./services')

# Directives - reusable components
require('./directives')

# Controllers - frontend logic usually used on one pgae
require('./controllers')

app = angular.module('Pecks', ['Pecks-resources', 'Pecks-directives', 'Pecks-controllers', 'angularPayments'])
