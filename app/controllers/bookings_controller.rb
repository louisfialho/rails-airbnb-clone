class BookingsController < ApplicationController

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
    if params[:check_in].present? && params[:check_out].present?
      @check_in = params[:check_in]
      @check_out = params[:check_out]
    else
      @check_in = Date.today.strftime("%Y-%m-%d")
      @check_out = (Date.today + 3).strftime("%Y-%m-%d")
    end
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.user = current_user
    if @booking.save
       # session[:price] = @flat.price * (@booking.end_date - @booking.start_date + 1)
       # session[:check_in] = @booking.start_date
       # session[:check_out] = @booking.end_date
       # session[:flat_name] = @flat.title
       redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
