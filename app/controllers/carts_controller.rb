class CartsController < ApplicationController

    before_action :authenticate_user!, only: [:show]

    def show
        @cart = Cart.find(params[:id])
    end


    

    def self.total_cost(cart)
        sum = 0
        cart.plants.each do |p|
            sum += p.price
        end
        sum
    end
end
