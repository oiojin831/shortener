class AddShortUrlToShorten < ActiveRecord::Migration
  def change
    add_column :shortens, :short_url, :string
  end
end
