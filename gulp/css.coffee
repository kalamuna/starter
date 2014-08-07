
prefixer = require('gulp-autoprefixer')
csslint = require('gulp-csslint')
csscomb = require('gulp-csscomb')
cssmin = require('gulp-cssmin')
paths = require('./paths')
rename = require('gulp-rename')
pkg = require('../package')


module.exports = (gulp) ->
  gulp.task('css', ->
    prefixer({ cascade: true })
    .pipe(csscomb())
    .pipe(csslint(paths.css.csslintrc))
    .pipe(csslint.reporter())
    .pipe(rename(pkg.name + '.css'))
    .pipe(gulp.dest(paths.css.dest))
    .pipe(cssmin())
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest(paths.css.dest))
    .pipe(rename('style.css'))
    .pipe(gulp.dest('./styleguide/public'))
  )
