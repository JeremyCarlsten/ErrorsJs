module.exports = function (grunt) {

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        uglify: {
            options: {
                banner: '/*\n/  Author: Jeremy Carlsten \n/  Version: 0.1.1 \n*/\n'
            },
            dist: {
                files: [
                    {src: 'src/js/errors.js', dest: 'distribution/errors-1.1.min.js'}
                ]
            }
        },
        qunit: {
            files: ['test/**/*.html']
        },
        jshint: {
            files: ['Gruntfile.js', 'src/**/*.js', 'test/**/*.js'],
            options: {
                globals: {
                    jQuery: true,
                    console: true,
                    module: true,
                    document: true
                }
            }
        },
        coffee: {
            compile: {
                files: {
                    'src/js/Errors.js': 'src/coffee/Errors.coffee',
                    'test/validationTests.js': 'test/src/validationTests.coffee'
                }
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-contrib-qunit');

    grunt.registerTask('test', ['coffee', 'jshint', 'qunit']);
    grunt.registerTask('default', ['coffee', 'jshint', 'qunit', 'uglify']);

};