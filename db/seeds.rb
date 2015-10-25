# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

80000.times do
  shorten = Shorten.create(original_url: "https://tumblbug.com/")
  shorten.update_attribute(:short_url, Base62.encode(shorten.id).rjust(6, '0'))
end
