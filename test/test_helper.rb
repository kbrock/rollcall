ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
end

Dir[Rails.root.join("test/support/**/*.rb")].each { |f| require f }

OmniAuth.config.test_mode = true
