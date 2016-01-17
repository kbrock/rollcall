class User < ActiveRecord::Base
  # validates :unique => [:provider, :uid]

  def name?
    name
  end
end
