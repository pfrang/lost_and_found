class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(strong_params)
    @pet.save
    redirect_to pet_path(@pet.id)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to root_path
  end


  private

  def strong_params
    params.require(:pet)
          .permit(:name, :species, :photo_url, :found_on)
  end
end
