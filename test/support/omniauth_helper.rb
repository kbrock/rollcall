module OmniauthHelper
  def mock_success(params)
    OmniAuth.config.add_mock(:github, {:uid => '12345'})
  end

  def mock_failure
    OmniAuth.config.mock_auth[:github] = :invalid_credentials
  end
end

ActiveSupport::TestCase.send(:include, OmniauthHelper)
