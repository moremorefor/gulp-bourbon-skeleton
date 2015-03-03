gulp        = require 'gulp'
browserify  = require 'browserify'
coffeeify   = require 'coffeeify'
source      = require 'vinyl-source-stream'
browserSync = require 'browser-sync'
config      = require '../config'
paths       = config.path

gulp.task 'browserify', ->
  browserify (
    entries: ["#{paths.src.coffee}"]
    transform: [coffeeify]
    debug: true
    cache: {}
    packageCache: {}
    fullPaths: true
    extensions: ['.coffee']
  )
    .bundle()
    .pipe source('bundle.js')
    .pipe(gulp.dest("#{paths.dest.coffee}"))
    .pipe browserSync.reload({stream:true});