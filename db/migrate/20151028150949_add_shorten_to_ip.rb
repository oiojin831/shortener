class AddShortenToIp < ActiveRecord::Migration
  def change
    add_reference :ips, :shorten, index: true, foreign_key: true
  end
end
