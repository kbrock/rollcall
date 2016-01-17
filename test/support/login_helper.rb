module LoginHelper
  def login_as(user = FactoryGirl.create(:user))
    session[:user_id] = user.id
  end
end

ActionController::TestCase.send(:include, LoginHelper)
