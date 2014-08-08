gulp = require('gulp')
paths = require('./paths')
del = require('del')
connect = require('gulp-connect')

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

gulp.task('serve',['compile','connect','watch']);

module.exports = gulp
