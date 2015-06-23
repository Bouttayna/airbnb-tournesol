class BookingsController < ApplicationController

  before_action :find_booking, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_user!

  def index
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
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def set_booking
    params.require(:booking).permit(:state, :user_id, :flat_id, :arrival, :departure, :number_of_travellers)
  end

  def find_flat
    @flat = Flat.find(params[:flat_id])
  end
end
