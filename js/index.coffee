# Services - data models
require('./services')

# Directives - reusable components
require('./directives')

# Controllers - frontend logic usually used on one pgae
require('./controllers')

app = angular.module('Pecks', ['Pecks-services', 'Pecks-directives', 'Pecks-controllers', 'angularPayments'])
