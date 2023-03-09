class PlantsController < ApplicationController
    def index
        @plants = Plant.all
        # render json: @plants
    end

    def show 
        @plant = Plant.find(params[:id])
        render json: @plant
    end

    def new 
        @plant = Plant.new
    end

    def edit 
        @plant = Plant.find(params[:id])
    end

    def create 
        @plant = Plant.new(plant_params)
        if @plant.save
            flash[:success] = "New plant added to inventory!"
            redirect_to plant_path(@plant) 
        else
            flash.now[:failure] = "Something went wrong."
            render :new, status: :unprocessable_entity
        end
    end
end