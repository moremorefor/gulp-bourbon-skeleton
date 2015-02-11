gulp        = require 'gulp'
sass        = require 'gulp-ruby-sass'
filter      = require 'gulp-filter'
browserSync = require 'browser-sync'

# Static server
gulp.task 'browser-sync', ->
  browserSync
    server: 
      baseDir: "public"

gulp.task 'sass', ->
  sassOptions = 
    style      : 'nested'
    sourcemap  : true
  sass 'src/css/app.sass', sassOptions
    .pipe gulp.dest( 'public/css' ) 
    .pipe filter('**/*.css')
    .pipe browserSync.reload({stream:true})

gulp.task 'copy', ->
  gulp
    .src [ 'src/*.html', 'src/img/*' ], { base: 'src' }
    .pipe gulp.dest( 'public' )
    .pipe browserSync.reload({stream:true})

gulp.task 'default', ['sass', 'copy', 'browser-sync'], ->
  browserSync.reload
  gulp.watch ["**/*.scss", "**/*.sass"], ['sass']
  gulp.watch ["**/*.html"], ['copy']
