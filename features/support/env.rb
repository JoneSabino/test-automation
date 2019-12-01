# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'rspec/core'
require 'httparty'
require 'json'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

