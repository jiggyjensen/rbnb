class NanniesController < ApplicationController

  def new
    @nanny = Nanny.new
  end

  def create
    @nanny = Nanny.new(nannies_params)
    if @nanny.save
      redirect_to nanny_path(@nanny), notice: 'nanny created! Welcome'
    else
      render :new
    end
  end

  private

  def nannies_params
    params.require(:nanny).permit(:name, :description, :age, :experience_level, :price_per_hour, :certification)
  end
end
