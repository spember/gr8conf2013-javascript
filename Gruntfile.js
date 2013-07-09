/*global module */
module.exports = function(grunt) {
    "use strict";
    // Project configuration.
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        jshint: {
            all: ['Gruntfile.js', '<%= pkg.jsPath %>/**/*.js'],
            options: {
                //ignoring 'dot notation is better' warning
                sub: true
            }
        },

        ngtemplates: {
            monitor: {
                options: {
                    prepend:  '/',  // (Optional) Prepend path to $templateCache ID
                    module:   'recordStore'               // (Optional) The module the templates will be added to
                },
                src:        '<%= pkg.jsPath %>/templates/ngs/**/*.ng',
                dest:       '<%= pkg.jsPath %>/templates/cache.js'
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-angular-templates');
    // Default task(s).
    grunt.registerTask('default', ['ngtemplates', 'jshint']);

};