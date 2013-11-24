###
  Gruntfile! Compile.
###

module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.initConfig
    coffee:
      build:
        expand: true
        files: 'build/compiled.js': ['src/**/*.coffee']