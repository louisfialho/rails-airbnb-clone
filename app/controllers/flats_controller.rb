class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

   def show
    @flat = Flat.find(params[:id])
  end

   def new
    @flat = Flat.new # needed to instantiate the form_for
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flat_path(@flat)
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :location, :price)
  end
end
