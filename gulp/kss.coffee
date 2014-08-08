paths = require('./paths')
gulpkss = require('gulp-kss')

module.exports = (gulp) ->
  gulp.task('kss', ->
    gulp.src(paths.css.src)
    .pipe(gulpkss({
        overview:'./scss/styleguide.md'
        templateDirectory: './kss-template'
    }))
    .pipe(gulp.dest('styleguide/'))
  )
