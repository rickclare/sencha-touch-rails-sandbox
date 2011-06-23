# Ruby is using Psych for YAML parsing, and the 1.9.2-p180 version of Psych can't handle merge keys (eg. <<: *default)
# Therefore using 'Syck' engine for YAML, until next patch release of ruby
# Also see: https://github.com/carlhuda/bundler/issues/1038
YAML::ENGINE.yamler = 'syck'

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SenchaTouchRailsSandbox::Application.initialize!
