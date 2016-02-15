class User < ActiveRecord::Base

  def self.from_omniauth(auth_hash)
    provider = auth_hash['provider']
    name = auth_hash['info']['name']
    image_url = auth_hash['info']['image']
    url = auth_hash['info']['urls'][provider.capitalize]
    email = auth_hash['info']['email']
    user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'], name: name, image_url: image_url, url: url, email: email)
    user.save!
    user
  end
end
