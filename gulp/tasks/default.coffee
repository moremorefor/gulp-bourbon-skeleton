gulp        = require 'gulp'
browserSync = require 'browser-sync'
runSequence = require 'run-sequence'

gulp.task 'default', ['sass', 'copy'], ->
  runSequence(
    'browser-sync',
    'watch'
  )
