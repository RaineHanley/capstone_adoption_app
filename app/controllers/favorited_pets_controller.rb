class FavoritedPetsController < ApplicationController
  def create
    @favorited_pet = FavoritedPet.create(
      user_id: current_user.id,
      pet_id: params[:pet_id],
    )
    render :show
  end
end
