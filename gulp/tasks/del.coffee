gulp   = require 'gulp'
del    = require 'del'
config = require '../config'
paths  = config.path

gulp.task 'del', (cb)->
  del ["#{paths.dest.dir}"], cb

gulp.task 'del_test', (cb)->
  del ["#{paths.test.dest}"], cb
