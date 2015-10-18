class MenuController < ApplicationController
  before_action :set_dish, only: [:today]

  def today
    @dish
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.last
    end

end
