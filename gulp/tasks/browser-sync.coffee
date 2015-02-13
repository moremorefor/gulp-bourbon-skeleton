gulp        = require 'gulp'
browserSync = require 'browser-sync'
config      = require '../config'

gulp.task 'browser-sync', ->
  browserSync
    server: 
      baseDir: "#{config.path.dest.dir}"
    ghostMode:
      location: true
