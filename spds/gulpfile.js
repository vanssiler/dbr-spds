var gulp = require('gulp');
var sass = require('gulp-sass');
var cssmin = require('gulp-cssmin');
var rename = require('gulp-rename');
var uglify = require('gulp-uglify-es').default;
var concat = require('gulp-concat');
var order = require('gulp-order');

var paths = {
    sass: './wp-content/themes/SPDS/css/sass/**/*.scss',
    scripts: './wp-content/themes/SPDS/js/*.js'
};

var jsDest = './wp-content/themes/SPDS/',
    cssDest = './wp-content/themes/SPDS/';

gulp.task('sass', function(done) {
    gulp.src(paths.sass)
        .pipe(sass())
        .pipe(cssmin())
        // .pipe(rename({ extname: '.min.css' }))
        .pipe(gulp.dest(cssDest))
        .on('end', done)
});

gulp.task('scripts', function() {
    gulp.src([
            './wp-content/themes/SPDS/js/jquery-2.0.2.js',
            './wp-content/themes/SPDS/js/aos.js',
            './wp-content/themes/SPDS/js/bootstrap.min.js',
            './wp-content/themes/SPDS/js/owl.carousel.min.js',
            './wp-content/themes/SPDS/js/jquery.parallax-1.1.3.js',
            './wp-content/themes/SPDS/js/ma5slider.min.js',
            './wp-content/themes/SPDS/js/jquery.pageleave.js',
            './wp-content/themes/SPDS/js/js.cookie.js',
            './wp-content/themes/SPDS/js/jquery.mask.js',
            './wp-content/themes/SPDS/js/main.js',
            './wp-content/themes/SPDS/js/calendar-filters.js'

        ])
        .pipe(order([
            'jquery-2.0.2.js',
            'aos.js',
            'bootstrap.min.js',
            'owl.carousel.min.js',
            'jquery.parallax-1.1.3.js',
            'jquery.ma5slider.min.js',
            'jquery.pageleave.js',
            'js.cookie.js',
            'main.js',
            'calendar-filters.js'
        ]))
        .pipe(concat('spds.js'))
        .pipe(gulp.dest(jsDest))
        .pipe(rename('spds.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest(jsDest));
});

gulp.task('watch', function() {
    gulp.watch(paths.sass, ['sass']);
    gulp.watch(paths.scripts, ['scripts']);
    gulp.watch('./wp-content/themes/SPDS/*.css');
    gulp.watch('./wp-content/themes/SPDS/*.js');
});