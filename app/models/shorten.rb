class Shorten < ActiveRecord::Base
  after_create :generate_short_url

  private

  def generate_short_url
    update_attribute(:short_url, Base62.encode(id).rjust(6, '0'))
  end
end
