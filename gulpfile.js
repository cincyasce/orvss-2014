'use strict';

var path      = require('path');

var gulp      = require('gulp');
var less      = require('gulp-less');
var rename    = require('gulp-rename');
var minifyCss = require('gulp-minify-css');
var prefix = require('gulp-autoprefixer');

var paths = {
  less: path.join(__dirname, 'node_modules'),
  target: path.join(__dirname, 'css')
};

gulp.task('styles', function() {
  gulp.src('./less/styles.less')
    .pipe(
      less({ paths: paths.less })
    )
    .pipe(
      gulp.dest(paths.target)
    )
    // prefix
    .pipe(
      prefix({ cascade: false })
    )
    .pipe(
      gulp.dest(paths.target)
    )
    // minify and rename
    .pipe(
      rename({
        suffix: ".min"
      })
    )
    .pipe(
      minifyCss()
    )
    .pipe(
      gulp.dest(paths.target)
    );
});


gulp.task('default', ['styles']);