# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'rubygems'

require 'bundler'
Bundler.require :default

Motion::Project::App.setup do |app|
  app.name = 'MotionOnRuby'

  app.testflight.sdk = 'vendor/TestFlightSDK1.1'
  app.testflight.api_token = ENV['TESTFLIGHT_API_TOKEN']
  app.testflight.team_token = ENV['TESTFLIGHT_TEAM_TOKEN']
end
