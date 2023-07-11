require "test_helper"

class FavoritedPetsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "FavoritedPet.count", 1 do
      post "/favorited_pets.json", params: { user_id: 1, pet_id: 2 }, headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
end
