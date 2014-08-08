paths = require('./paths')
connect = require('gulp-connect');

module.exports = (gulp) ->
  gulp.task('watch',['compile','serve'], ->
    gulp.watch(paths.scripts.watch, ['srcipts'] ).pipe(conntect.reload())
    gulp.watch(paths.css.dest, ['css']).pipe(conntect.reload())
  )


