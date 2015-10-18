class Dish < ActiveRecord::Base
  has_many :orders

  def total_ordered
    total_ordered = 0

    #Aggregate total quantity ordered by each person
    self.orders.group(:email).each do |order|
      total_ordered += order.quantity
    end

    total_ordered
  end
end
