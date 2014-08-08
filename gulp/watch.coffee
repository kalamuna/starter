paths = require('./paths')

module.exports = (gulp) ->

  gulp.task('watch-styles', ['css'], ->
    console.log("watch-styles");
    gulp.watch(paths.css.src, ['css','kss'])
  )

  gulp.task('watch-scripts', ['scripts'], ->
    console.log("watch-scripts");
    gulp.watch(paths.scripts.watch, ['scripts'])
  )

  # gulp.task('watch-kss', ['kss'], ->
  #   gulp.watch(paths.docs.watch, ['kss'])
  # )

  gulp.task('watch-reload-styleguide', ->
    console.log("watch-reload-styleguide")
    gulp.watch( "styleguide/**/*.scss", ['reload-styleguide'])
  )

  gulp.task('watch', ['watch-styles', 'watch-scripts', 'watch-reload-styleguide'])
