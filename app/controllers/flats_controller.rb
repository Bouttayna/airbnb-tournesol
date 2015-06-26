class FlatsController < ApplicationController

  before_action :find_flat, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @flats = Flat.all
    if params[:city].present?
     @flats = @flats.where(city: params[:city])
    end

    if params[:capacity].present?
         @flats = @flats.where(city: params[:city]).where(capacity: params[:capacity])
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @flat_coordinates = [{ lat: @flat.latitude, lng: @flat.longitude }]
    @booking = Booking.new
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = current_user.flats.build(flat_params)

    if @flat.save
      redirect_to account_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    redirect_to account_path
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :address, :city, :availability, :capacity, :price, :user_id, :picture)
  end

  def find_flat
     @flat = Flat.find(params[:id])
  end
end


