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
