paths = require('./paths')
connect = require('gulp-connect');

module.exports = (gulp) ->

  gulp.task('watch', (o)->
    console.log(o)
    gulp.watch(paths.scripts.watch, ['srcipts','reload'])
    gulp.watch(paths.css.src, ['css','kss','reload'])
    gulp.watch(paths.docs.src, ['kss','reload'])
  )

  gulp.task('reload', ->
    connect.reload()
  )

