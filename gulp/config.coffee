srcDir = 'src'
destDir = 'public'

path =
  src:
    dir : srcDir
    sass: srcDir + '/css/app.sass'
    html: srcDir + '/*.html'
    img : srcDir + '/img/*'
  dest:
    dir : destDir
    sass: destDir + '/css'
    html: destDir
    img : destDir + '/img'
  watch:
    sass: srcDir + '/**/*.sass'
    scss: srcDir + '/**/*.scss'
    html: srcDir + '/**/*.html'
    png:  srcDir + '/**/*.png'
    jpg:  srcDir + '/**/*.jpg'
    gif:  srcDir + '/**/*.gif'

module.exports =
  path: path
