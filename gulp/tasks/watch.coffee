gulp   = require 'gulp'
config = require '../config'
paths  = config.path

gulp.task 'watch', ->
  gulp.watch ["#{paths.watch.sass}", "#{paths.watch.scss}"], ['sass']
  gulp.watch [
    "#{paths.watch.html}"
    "#{paths.watch.png}",
    "#{paths.watch.gif}"
  ], ['copy']
