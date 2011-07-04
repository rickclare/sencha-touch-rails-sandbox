require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

# Ruby is using Psych for YAML parsing, and the 1.9.2-p180 version of Psych can't handle merge keys (eg. <<: *default)
# Therefore using 'Syck' engine for YAML, until next patch release of ruby
# Also see: https://github.com/carlhuda/bundler/issues/1038
YAML::ENGINE.yamler = 'syck'
