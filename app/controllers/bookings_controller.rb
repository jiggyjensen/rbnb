class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @nanny = Nanny.find(params[:nanny_id])
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @nanny = Nanny.find(params[:nanny_id])
    @booking.nanny = @nanny
    if @booking.save
      redirect_to booking_path(@booking), notice: 'booking created! Waiting for Nanny to accept offer'
    else
      render :new
    end
  end

 private

  def bookings_params
    params.require(:booking).permit(:address, :kids_number, :message, :start_date, :end_date)
  end
end


