#
# Directives are reusable components (think widgets) that provide some general functionality that we want in multiple places in the app.
# They contain their own views and their own logic and can be inserted into any page.
# If you have logic that is specific to the operation of a page and not reusable, it should probably be a controller instead.
#


app = angular.module('Pecks-directives', ['Pecks-services'])

