###
  Gruntfile! Compile.
###

module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.initConfig
    coffee:
      build:
        expand: true
        flatten: true
        src: ["src/**/*.coffee"]
        dest: "out.js"