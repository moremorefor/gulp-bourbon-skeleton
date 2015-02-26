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
    sass: '**/*.sass'
    scss: '**/*.scss'
    html: '**/*.html'
    png:  '**/*.png'
    gif:  '**/*.gif'

module.exports =
  path: path
