

class BreedsController < ApplicationController
  def show
    id = Breed.find_by(name: params[:name]).id
    @data = DogApiService.get_breed(id)['data']
  end
end
