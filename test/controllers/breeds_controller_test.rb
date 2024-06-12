require "test_helper"

class BreedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    Breed.create(id: "fee91641-2a2e-4c4f-b557-cff67c5803bc", name: "Golden Retriever")
  end

  test "should get show" do
    get breeds_show_url(name: "Golden Retriever")
    assert_response :success
  end
end
