paths = require('./paths')
kss = require('gulp-kss')

module.exports = (gulp) ->
  gulp.task('kss', ["scripts","css","sass"] ->
    gulp.src(paths.css.src).pipe(
      kss({
        overview:'./scss/styleguide.md'
        templateDirectory: './kss-template'
      })
    )
    .pipe( gulp.dest('./styleguide'))
  )
