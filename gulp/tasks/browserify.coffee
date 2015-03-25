gulp        = require 'gulp'
browserify  = require 'browserify'
coffeeify   = require 'coffeeify'
source      = require 'vinyl-source-stream'
browserSync = require 'browser-sync'
licensify   = require 'licensify'
handleErrors= require './handleErrors'
config      = require '../config'
paths       = config.path

gulp.task 'browserify', ->
  browserify (
    entries: ["#{paths.src.coffee}"]
    transform: [
      coffeeify
    ]
    plugin: [
      licensify
    ]
    debug: true
    extensions: ['.coffee']
  )
    .bundle()
    .on 'error', handleErrors
    .pipe source('bundle.js')
    .pipe(gulp.dest("#{paths.dest.coffee}"))
    .pipe browserSync.reload({stream:true});
