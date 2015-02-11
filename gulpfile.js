var gulp = require('gulp');
var sass = require('gulp-ruby-sass');
var filter      = require('gulp-filter');
var browserSync = require('browser-sync');

//Static server
gulp.task('browser-sync', function() {
  browserSync({
    server: {
      baseDir: "public"
    }
  });
});

gulp.task('sass', function() {
  var sassOptions = {
    //bundleExec : true,
    style      : 'nested',
    sourcemap  : true
  }

  return sass( 'src/css/app.sass', sassOptions )
    .pipe( gulp.dest( 'public/css' ) )
    .pipe( filter('**/*.css') ) // Filtering stream to only css files
    .pipe( browserSync.reload({stream:true}) );
})

gulp.task( 'copy', function() {
  return gulp.src(
      [ 'src/*.html', 'src/img/*' ],
      { base: 'src' }
  )
    .pipe( gulp.dest( 'public' ) )
    .pipe( browserSync.reload({stream:true}) );
});

// Reload all Browsers
gulp.task('bs-reload', function () {
  browserSync.reload();
});

gulp.task('default', ['sass', 'copy', 'browser-sync'], function () {
  browserSync.reload();
  gulp.watch(["**/*.scss", "**/*.sass"], ['sass']);
  gulp.watch(["**/*.html"], ['copy']);
});
