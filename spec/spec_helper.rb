require "rubygems"
require "bundler/setup"

require 'celluloid/current'
require 'celluloid/io'

Dir["./spec/support/*.rb", "./spec/shared/*.rb"].map { |f| require f }

RSpec.configure do |config|
  config.filter_run focus: true unless ENV["CI"]
  config.run_all_when_everything_filtered = true
  config.disable_monkey_patching!
  config.profile_examples = 3
end
