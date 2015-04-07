srcDir = 'src'
destDir = 'public'
srcTestDir = 'test'
destTestDir = 'powered_test'

path =
  src:
    dir    : srcDir
    sass   : srcDir + '/css/app.sass'
    html   : srcDir + '/*.html'
    img    : srcDir + '/img/*'
    coffee : './' + srcDir + '/js/main.coffee'
    test   : srcTestDir + '/**/*.coffee'
  dest:
    dir    : destDir
    sass   : destDir + '/css'
    html   : destDir
    img    : destDir + '/img'
    coffee : destDir + '/js/'
    test   : destTestDir
  watch:
    sass   : srcDir + '/**/*.sass'
    scss   : srcDir + '/**/*.scss'
    coffee : srcDir + '/**/*.coffee'
    html   : srcDir + '/**/*.html'
    png    : srcDir + '/**/*.png'
    jpg    : srcDir + '/**/*.jpg'
    gif    : srcDir + '/**/*.gif'

  test:
    src    : srcTestDir + '/**/*.coffee'
    dest   : destTestDir
    watch  : srcTestDir + '/**/*.coffee'
    run    : destTestDir + '/**/*.js'

module.exports =
  path: path
