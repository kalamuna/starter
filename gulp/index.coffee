gulp = require('gulp')
paths = require('./paths')
del = require('del')

require('./css')(gulp)
require('./kss')(gulp)
require('./scripts')(gulp)
require('./watch')(gulp)
require('./serve')(gulp)
require('./deploy')(gulp)

gulp.task('clean', (cb) ->
  del([
    paths.build
    paths.docs.assets
  ], cb)
)

gulp.task('compile', ['kss'])

gulp.task('default', [
  'clean'
  'compile'
])


module.exports = gulp
