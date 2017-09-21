require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require "yaml"

$CONFIG = YAML.load_file("./config.yml")[$environment]