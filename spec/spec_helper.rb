# For our specs to run, we need to require the Ruby classes we’re testing
require_relative '../animal'
require_relative '../shelter'
require_relative '../client'

# Configure RSpec
RSpec.configure do |config|
  config.failure_color = :magenta
  config.tty = true
  config.color = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end