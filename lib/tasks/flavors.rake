desc "Uppercase all flavor names to allow for easier querying"
task :upcase_flavors => :environment do
  Flavor.all.each do |flavor|
    flavor.update_attribute(:name, flavor.name.upcase)
  end
end
