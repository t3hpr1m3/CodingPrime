# This file is copied to ~/spec when you run 'ruby script/generate rspec'
# from the project root directory.
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path(File.join(File.dirname(__FILE__),'..','config','environment'))
require 'spec/autorun'
require 'spec/rails'
require 'shoulda'
require File.expand_path(File.join(File.dirname(__FILE__),'/factories'))

# Uncomment the next line to use webrat's matchers
#require 'webrat/integrations/rspec-rails'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir[File.expand_path(File.join(File.dirname(__FILE__),'support','**','*.rb'))].each {|f| require f}

Spec::Runner.configure do |config|
  # If you're not using ActiveRecord you should remove these
  # lines, delete config/database.yml and disable :active_record
  # in your config/boot.rb
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
  config.fixture_path = RAILS_ROOT + '/spec/fixtures/'

  config.mock_with :mocha
  # == Mock Framework
  #
  # RSpec uses its own mocking framework by default. If you prefer to
  # use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  #
  # == Notes
  #
  # For more information take a look at Spec::Runner::Configuration and Spec::Runner
  config.include CustomControllerMatchers
end

def login_user( options = {} )
  @logged_in_user = Factory.build( :user, options )
  @controller.stubs( :current_user ).returns( @logged_in_user )
  @logged_in_user
end

def login_admin( options = {} )
  options[:is_admin] = true
  @logged_in_user = Factory.build( :user, options )
  @controller.stubs( :current_user ).returns( @logged_in_user )
  @logged_in_user
end

def logout_user
  @logged_in_user = nil
  @controller.stubs( :current_user ).returns( @logged_in_user )
  @logged_in_user
end
