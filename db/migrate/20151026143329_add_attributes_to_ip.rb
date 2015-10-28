class AddAttributesToIp < ActiveRecord::Migration
  def change
    add_column :ips, :addr, :string
    add_column :ips, :num, :integer
  end
end
