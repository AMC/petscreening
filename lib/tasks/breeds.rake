

desc "Load breeds id and name from DogAPI to database"
task load_breeds: [:environment] do
  puts "Removing all breeds from database"
  Breed.delete_all

  puts "Loading breeds from DogAPI"
  page = 1
  while true do
    print "."
    response = DogApiService.list_breeds(page)
    response['data'].each do |breed|
      Breed.create(
        id: breed['id'],
        name: breed['attributes']['name']
      )
    end
    break if response['links']['next'].nil?
    page += 1
  end

  puts "\n#{Breed.all.count} Breeds loaded"
end
