# first load bundler
require 'bundler'

# require gems from the gemfile
Bundler.require

# load libraries
require_relative './lib/stock_screener/version'
require_relative './lib/stock_screener/quote'
require_relative './lib/stock_screener/cli'
