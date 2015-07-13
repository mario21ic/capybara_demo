require 'capybara'
require 'capybara/dsl'
require "rspec" 

RSpec.configure do |config|
    config.expect_with :rspec do |c|
        c.syntax = :should
    end
end

Capybara.default_driver = :selenium

module Helpers
    def with_resynchronize
        page.driver.options[:resynchronize] = false
        yield
        page.driver.options[:resynchronize] = true
    end
end

World(Capybara::DSL, Helpers)

