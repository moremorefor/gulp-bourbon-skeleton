gulp   = require 'gulp'
del    = require 'del'
config = require '../config'
paths  = config.path

gulp.task 'del', ->
  del("#{paths.dest.dir}")
