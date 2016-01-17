class User < ActiveRecord::Base
  # validates :unique => [:provider, :uid]

  has_many :statuses

  def name?
    name
  end
end
