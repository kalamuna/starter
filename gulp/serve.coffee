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
