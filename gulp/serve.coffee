paths = require('./paths');
webserver = require('gulp-webserver');

module.exports = (gulp) ->
  gulp.task('webserver', ->
    gulp.src('styleguide')
    .pipe(
      webserver({
        fallback: 'index.html',
        livereload: true
      })
    )
  )
  gulp.task('reload-styleguide', ->
    console.log('reload-styleguide!')
    gulp.src(paths.docs.watch).pipe(webserver.reload())
  )
