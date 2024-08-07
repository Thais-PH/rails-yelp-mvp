# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french', phone_number: '+44.20.7420.9324' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian', phone_number: '+44.20.7349.9650' }
sushinoen = { name: 'Sushinoen', address: '2 White Church St, London E1 7QR', category: 'japanese', phone_number: '+44.20.3645.6734' }
hide = { name: 'HIDE', address: '85 Picadilly, London W1J 7NB', category: 'french', phone_number: '+44.20.3146.8666' }
belgian_brasserie = { name: 'Belgian Brasserie', address: '2 Watermill Wy, London SW19 2RD', category: 'belgian', phone_number: '+44.20.8417.1600' }

[dishoom, pizza_east, sushinoen, hide, belgian_brasserie].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
