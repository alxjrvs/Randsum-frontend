'use strict';

var gulp = require('gulp');

var paths = gulp.paths;
var autoloadPaths = gulp.autoloadPaths;

gulp.task('watch', ['markups', 'inject'], function () {
  gulp.watch([
    paths.src + '/*.html',
    paths.src + '/' + autoloadPaths +'/**/*.scss',
    paths.src + '/' + autoloadPaths +'/**/*.js',
    paths.src + '/' + autoloadPaths +'/**/*.coffee',
    'bower.json'
  ], ['inject']);
  gulp.watch(paths.src + '/' + autoloadPaths +'/**/*.haml', ['markups']);
});
