gulp        = require 'gulp'
browserSync = require 'browser-sync'
config      = require '../config'
paths        = config.path

gulp.task 'copy', ['imagemin'], ->
  gulp
    .src [ "#{paths.src.html}" ], { base: "#{paths.src.dir}" }
    .pipe gulp.dest( "#{paths.dest.dir}" )
    .pipe browserSync.reload({stream:true})
