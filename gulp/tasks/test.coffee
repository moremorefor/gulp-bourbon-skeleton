gulp    = require 'gulp'
coffee  = require 'gulp-coffee'
espower = require 'gulp-espower'
mocha   = require 'gulp-mocha'
config  = require '../config'
paths   = config.path

gulp.task 'test_create', ['del_test'], ->
  gulp.src ["#{paths.test.src}"]
    .pipe coffee()
    .pipe espower()
    .pipe gulp.dest("#{paths.test.dest}")

gulp.task 'test_once', ['test_create'], ->
  gulp.src ["#{paths.test.run}"]
    .pipe mocha()
    .once 'end', ->
      process.exit()

gulp.task 'test', ['test_create'], ->
  gulp.src ["#{paths.test.run}"]
    .pipe mocha()
