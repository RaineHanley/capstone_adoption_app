require "test_helper"

class FavoritedPetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Test", email: "test@test.com", password: "password")
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "create" do
    assert_difference "FavoritedPet.count", 1 do
      post "/favorited_pets.json", params: { pet_id: Pet.first.id }, headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
end
