class OrdersController < ApplicationController

  def create
    order = Order.new(order_params)
    if order.save
      render text:  "Thank you for your order.  If you would like to cancel / modify your order, please reply back to the confirmation email that was just sent."
    else
      render text:  "Failed"
    end
  end


  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(
        :dish_id,
        :quantity,
        :first,
        :last,
        :email,
        :phone,
        :deliver_to)
    end
end
