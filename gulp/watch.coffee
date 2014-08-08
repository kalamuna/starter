paths = require('./paths')
connect = require('gulp-connect');

module.exports = (gulp) ->
  gulp.task('watch', ->
    gulp.watch(paths.scripts.watch, ['srcipts'])
    .pipe(connect.reload())
    gulp.watch(paths.css.src, ['css','kss'])
    .pipe(conntect.reload())
  )

