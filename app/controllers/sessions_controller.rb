class SessionsController < ApplicationController
  def create
     auth = request.env["omniauth.auth"]
     session[:user_id] = find_or_create(auth).id
     redirect_to root_url, :notice => "Signed in!"
  end
 
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

  private

  def find_or_create(auth)
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.new
    user.update_attributes!(github_params(auth))
    user
  end

  def github_params(auth)
    {
      :provider => auth["provider"],
      :uid      => auth["uid"],
      :name     => auth["info"]["name"],
      :email    => auth["info"]["email"],
      :nickname => auth["info"]["nickname"],
      :bio      => auth["info"]["bio"],
      :image    => auth["info"]["image"],
    }
  end
end
