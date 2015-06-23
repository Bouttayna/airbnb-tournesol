class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :destroy]

  def index
    @flats = Flat.all
  end

  def show
  end

  def create
  end

  def new
  end

  def edit

  end

  def update

  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :address, :city, :availabity, :capacity, :price, :user_id)
  end

  def find_flat
     @flat = Flat.find(params[:id])
  end
end


