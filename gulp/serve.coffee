paths = require('./paths');
connect = require('gulp-connect');

module.exports = (gulp) ->
  gulp.task('connect', ->
    connect.server({
      root: 'styleguide',
      port: 8000,
      livereload: true
    })
  )
  gulp.task('reload-styleguide', ->
    gulp.src(paths.docs.src).pipe(connect.reload())
  )
