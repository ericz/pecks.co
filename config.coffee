exports.config =
  # See http://brunch.io/#documentation for docs.
  paths:
    watched: ['vendor', 'js', 'styles', 'assets']

  files:
    javascripts:
      joinTo: 'js/app.js'
    stylesheets:
      joinTo: 'styles/index.css'

  plugins:
    coffeescript:
      bare: true
