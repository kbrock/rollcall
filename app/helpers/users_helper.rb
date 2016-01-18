module UsersHelper
  def user_avatar(user, size = 40)
    if (image = user.try(:image).presence)
      appender = image.include?('?') ? '&' : '?'
      image_tag "#{image}#{appender}s=#{size}", size: size, alt: user_name(user), class: 'status__avatar'
    end
  end

  def user_name(user)
    user.name || user.nickname
  end

  def user_nickname(user)
    "@#{user.nickname}"
  end
end
