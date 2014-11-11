var gulp = require('gulp'),
plugins = require('gulp-load-plugins')(),
pack = require('./package.json'),
port = 9191;

gulp.task('coffee', function() {
  gulp.src('./src/*.coffee')
  .pipe(plugins.coffee({bare: true}))
  .pipe(gulp.dest('.tmp'))
});

gulp.task('less', function () {
  gulp.src('./src/**/*.less')
  .pipe(plugins.less())
  .pipe(gulp.dest('.tmp'));
});

gulp.task('server', ["coffee","less","watch"], function () {
  plugins.connect.server({
    root: ['bower_components', '.tmp', 'src'],
    port: port,
    livereload: true
  });
  plugins.bower()
  .on('end',function(){
    require('opn')('http://localhost:' + port + '/')
  });
});

gulp.task('build', function(){
  gulp.src('src/*.coffee')
  .pipe(plugins.coffee())
  .pipe(plugins.uglify())
  .pipe(plugins.header('//author: <%= author %>\n//verion: <%= version %>\n',{author:pack.author,version:pack.version}))
  .pipe(gulp.dest('dist'))
   gulp.src('./src/**/*.less')
  .pipe(plugins.less())
  .pipe(gulp.dest('dist'));
});

gulp.task('watch',function(){
  gulp.watch('./src/*.coffee', ['coffee']);
  gulp.watch('./src/*.less', ['less']);
});

gulp.task('default', ['build']);
