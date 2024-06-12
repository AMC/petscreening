require 'net/http'

class DogApiService

  def self.list_breeds(page=1)
    uri = URI("https://dogapi.dog/api/v2/breeds?page[number]=#{page}")
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

  def self.get_breed(id)
    uri = URI.parse("https://dogapi.dog/api/v2/breeds/#{id}")
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

end
