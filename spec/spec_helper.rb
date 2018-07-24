#require "simplecov"
#SimpleCov.start
require_relative 'helpers'

RSpec.configure do |config|
  include Helpers

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end

