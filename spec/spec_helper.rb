ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../spec/dummy_app/config/environment", __FILE__)

require 'rails/test_help'
require 'rspec/rails'
require 'include_method'
require 'filter_chain'

RSpec.configure do |config|
  config.mock_with :rspec
end

