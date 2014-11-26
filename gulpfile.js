var	gulp = require('gulp'),
	plugins = require('gulp-load-plugins')();

gulp.task('coffee', function () {

	gulp.src('./src/*.coffee')
		.pipe(plugins.coffee({bare: true}).on('error', plugins.util.log))
		.pipe(plugins.concat('basicFit.min.js', {newLine: "\n"}))
		.pipe(plugins.uglify())
		.pipe(gulp.dest('./dist'));

});

gulp.task('default', ['coffee']);