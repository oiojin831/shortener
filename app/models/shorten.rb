class Shorten < ActiveRecord::Base
  has_many :ips
  after_create :generate_short_url
  validates :original_url, :url => true

  private

  def generate_short_url
    update_attribute(:short_url, Base62.encode(id).rjust(6, '0'))
  end
end
