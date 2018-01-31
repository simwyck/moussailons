class CorsairsController < ApplicationController

    def index  
    end

    def new
      @corsair = Corsair.new
    end

    def create
      @corsair = Corsair.create(corsair_params)
      @corsair.save
      redirect_to @corsair
    end

    def show
      @corsair = Corsair.find(params[:id])

    end

    def edit
      @corsair = Corsair.find(params[:id])

    end

    def update
      @corsair = Corsair.find(params[:id])
      @corsair.update(corsair_params)
      redirect_to corsairs_path
    end

    def destroy
      @corsair = Corsair.find(params[:id])
      @corsair.destroy
      redirect_to corsairs_path
    end

    private

    def corsair_params
      params.require(:corsair).permit(:first_name, :age, :likeness)
    end

end
