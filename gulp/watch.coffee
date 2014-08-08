paths = require('./paths')
connect = require('gulp-connect');

module.exports = (gulp) ->

  gulp.task('watch-styles', ['css'], ->
    gulp.watch(paths.css.src, ['css'])
  )

  gulp.task('watch-scripts', ['scripts'], ->
    gulp.watch(paths.scripts.watch, ['scripts'])
  )

  gulp.task('watch-reload-styleguide', ->
    gulp.watch(paths.docs.src, ['kss','reload-styleguide'])
  )
  gulp.task('watch', ['watch-styles', 'watch-scripts', 'watch-reload-styleguide'])
