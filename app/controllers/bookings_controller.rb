class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: 'booking created! Welcome'
    else
      render :new
    end
  end

 private

  def bookings_params
    params.require(:booking).permit(:message, :kids_number, :start_date, :end_date)
  end
end

end
