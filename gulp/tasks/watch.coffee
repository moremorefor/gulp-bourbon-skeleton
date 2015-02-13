gulp   = require 'gulp'
config = require '../config'

gulp.task 'watch', ->
  gulp.watch ["#{config.path.watch.sass}", "#{config.path.watch.scss}"], ['sass']
  gulp.watch [
    "#{config.path.watch.html}"
    "#{config.path.watch.png}", 
    "#{config.path.watch.gif}"
  ], ['copy']
