require 'csv'

desc "Pass a CSV of stores to create respective entries in the database"
task :parse => :environment do
  CSV.foreach(ARGV[1], :headers => true) do |row|
    store = Store.create(name: row['name'], address: row['address'])
    flavor_list = row['flavors'].split(', ')
    flavor_list.each do |flavor|
      store.flavors << Flavor.where(name: flavor).first_or_create
    end
  end
end

desc "Separate address field of stores into street, city, state and zipcode"
task :expand_addresses => :environment do
  Store.all.each do |store|
    address = store.street
    zipcode = address[-5..-1]
    state = address[-8..-7]
    city = address.split(',')[-2].strip
    street = address.split(',')[0..-3].join(',')
    store.update_attributes({street: street, city: city, state: state, zipcode: zipcode})
  end
end
