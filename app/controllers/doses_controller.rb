class DosesController < ApplicationController
before_action :fetch_cocktail, only: [:new, :create]


   def new
    @dose = Dose.new
   end

   def create
      @dose = Dose.new(dose_params)
      # we need `restaurant_id` to associate review with corresponding restaurant
      @dose.cocktail = @cocktail
      if @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        render 'new'
      end
    end

    def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to cocktail_path(@dose.cocktail)
    end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def fetch_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
