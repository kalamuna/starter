gulp = require('gulp')
paths = require('./paths')
del = require('del')
webserver = require('gulp-webserver')

gulp.task('clean', (cb) ->
  del([
    paths.build
    paths.docs.assets
  ], cb)
)

gulp.task('compile', ['kss'])

gulp.task('default', ['compile'])

require('./css')(gulp)
require('./kss')(gulp)
require('./scripts')(gulp)
require('./serve')(gulp)
require('./watch')(gulp)
require('./deploy')(gulp)

gulp.task('serve',['compile','webserver','watch']);

module.exports = gulp
