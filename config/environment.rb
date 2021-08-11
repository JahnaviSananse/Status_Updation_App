# Load the Rails application.
require_relative 'application'

status_env = File.join(Rails.root, 'config', 'initializers', 'status_env.rb')
load(status_env) if File.exist?(status_env)

# Initialize the Rails application.
Rails.application.initialize!

require 'will_paginate'
