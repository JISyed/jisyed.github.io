'use strict';
module.exports = function(grunt) {

  grunt.initConfig({
    jshint: {
      options: {
        jshintrc: '.jshintrc'
      },
      all: [
        'Gruntfile.js',
        '!_assets/js/*.js',
        '!_assets/js/plugins/*.js',
        '!_assets/js/scripts.min.js'
      ]
    },
    uglify: {
      dist: {
        files: {
          '_assets/js/scripts.min.js': [
            '_assets/js/plugins/*.js',
            '_assets/js/_*.js'
          ]
        }
      }
    },
    imagemin: {
      dist: {
        options: {
          optimizationLevel: 7,
          progressive: true
        },
        files: [{
          expand: true,
          cwd: '_images/',
          src: '{,*/}*.{png,jpg,jpeg}',
          dest: '_images/'
        }]
      }
    },
    svgmin: {
      dist: {
        files: [{
          expand: true,
          cwd: '_images/',
          src: '{,*/}*.svg',
          dest: '_images/'
        }]
      }
    },
    watch: {
      js: {
        files: [
          '<%= jshint.all %>'
        ],
        tasks: ['jshint','uglify']
      }
    },
    clean: {
      dist: [
        '_assets/js/scripts.min.js'
      ]
    }
  });

  // Load tasks
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-imagemin');
  grunt.loadNpmTasks('grunt-svgmin');

  // Register tasks
  grunt.registerTask('default', [
    'clean',
    'uglify',
    'imagemin',
    'svgmin'
  ]);
  grunt.registerTask('dev', [
    'watch'
  ]);

};
