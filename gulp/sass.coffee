sass = require('gulp-sass')
paths = require('./paths')

module.exports = (gulp) ->
  gulp.task('sass', ["clean","css"]->
    gulp.src(paths.css.src)
    .pipe(sass())
    .pipe(gulp.dest(paths.css.dest))


    gulpSass({
      includePaths: paths.css.inlcudes
      sourceMap: 'map'
    })
  )
