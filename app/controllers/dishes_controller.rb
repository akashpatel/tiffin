class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  # GET /dishes/1
  # GET /dishes/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_params
      params.require(:dish).permit(:name, :desc, :ingredients, :calories, :protein, :sodium, :carbs, :price)
    end
end
