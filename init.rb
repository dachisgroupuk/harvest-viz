LOAD_PATH = File.expand_path(File.dirname(__FILE__))
require 'rubygems'
require 'sinatra'
require File.join(LOAD_PATH, 'models', 'harvest_backed')
require File.join(LOAD_PATH, 'models', 'project')
require File.join(LOAD_PATH, 'responders', 'data')