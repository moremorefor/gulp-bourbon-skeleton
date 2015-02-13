gulp        = require 'gulp'
sass        = require 'gulp-ruby-sass'
filter      = require 'gulp-filter'
pleeease    = require 'gulp-pleeease'
browserSync = require 'browser-sync'
config      = require '../config'

gulp.task 'sass', ->
  sassOptions = 
    style      : 'nested'
    sourcemap  : true
  sass "#{config.path.src.sass}", sassOptions
    .pipe pleeease(
      autoprefixer:
        browsers: ['last 4 versions']
      minifier: false
    )
    .pipe gulp.dest( "#{config.path.dest.sass}" ) 
    .pipe filter('**/*.css')
    .pipe browserSync.reload({stream:true})
