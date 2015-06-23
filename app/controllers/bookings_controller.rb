class BookingsController < ApplicationController

  before_action :find_booking, only: [:edit, :update, :show, :destroy]
  before_action :find_flat, only: [:create, :new, :edit]
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def create
    @booking = @flat.bookings.build(set_booking)
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def update
    @booking.update(set_booking)
    redirect_to root_path
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
