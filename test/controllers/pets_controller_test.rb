require "test_helper"

class PetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet = pets(:one)
  end

  test "should get index" do
    get pets_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_url
    assert_response :success
  end

  test "should create pet" do
    pet_params = {
      pet: {
        breed: @pet.breed,
        kind: @pet.kind,
        name: @pet.name,
        weight: @pet.weight,
        owner_id: @pet.owner.id
    }}

    assert_difference("Pet.count") do
      post pets_url, params: pet_params
    end

    assert_redirected_to pet_url(Pet.last)
  end

  test "should show pet" do
    get pet_url(@pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_url(@pet)
    assert_response :success
  end

  test "should update pet" do
    pet_params = {
      pet: {
        breed: @pet.breed,
        kind: @pet.kind,
        name: @pet.name,
        weight: @pet.weight,
        owner_id: @pet.owner.id
      }}

    patch pet_url(@pet), params: pet_params
    assert_redirected_to pet_url(@pet)
  end

  test "should destroy pet" do
    assert_difference("Pet.count", -1) do
      delete pet_url(@pet)
    end

    assert_redirected_to pets_url
  end
end
