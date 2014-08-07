# gulp = require('gulp');
connect = require('gulp-connect');

module.exports = (gulp) ->
  gulp.task('serve', ->
    connect.server({
      root: 'styleguide',
      livereload: true
    })
  )
