class CartDetailsController < ApplicationController

    before_action :authenticate_user! 

    def create 
        plant_to_add = Plant.find(params[:plant_id])

        @cart = Cart.find_by(user_id: current_user.id)

        @cart_detail = CartDetail.new
        @cart_detail.cart = @cart 
        @cart_detail.plant = plant_to_add

        if @cart_detail.save
            flash[:success] = "successfully added a plant to cart"
            redirect_to cart_path(@cart)
        else
            flash[:failure] = "something went wrong"
            render plants_path, status: :unprocessable_entity
        end
    end

    def destroy 
        @cart_detail = CartDetail.find(params[:id])
        if @cart_detail.delete 
            flash[:success] = "Successfully removed plant from cart."
            redirect_to cart_path(@cart_detail.cart)
        else
            flash.now[:failure] = "whoops that didn't work. plant not removed"
            render "carts#show", status: :unprocessable_entity
        end
    end
end