class FavoritedPetsController < ApplicationController
  def create
    @favorited_pet = FavoritedPet.create(
      user_id: params[:user_id],
      pet_id: params[:pet_id],
    )
    render :show
  end
end
