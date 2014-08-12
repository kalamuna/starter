paths = require('./paths')
ghPages = require('gulp-gh-pages')

module.exports = (gulp) ->
  gulp.task('deploy', ['default'], ->
    gulp.src(paths.docs.src)
    .pipe(ghPages({
      remoteUrl: 'git@github.com:bassettsj/bc14.git'
      origin: 'origin'
      branch: 'gh-pages'
      push: true
    }))
  )
