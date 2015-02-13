gulp        = require 'gulp'
browserSync = require 'browser-sync'
config      = require '../config'

gulp.task 'copy', ->
  gulp
    .src [ "#{config.path.src.html}", "#{config.path.src.img}" ], { base: "#{config.path.src.dir}" }
    .pipe gulp.dest( "#{config.path.dest.dir}" )
    .pipe browserSync.reload({stream:true})
