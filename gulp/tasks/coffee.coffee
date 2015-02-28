gulp        = require 'gulp'
coffee      = require 'gulp-coffee'
browserSync = require 'browser-sync'
config      = require '../config'
paths       = config.path

gulp.task 'coffee', ->
  gulp
    .src "#{paths.src.coffee}"
    .pipe coffee()
    .pipe gulp.dest("#{paths.dest.coffee}")
    .pipe browserSync.reload({stream:true})
