class CorsairsController < ApplicationController

    def new
      @corsair = Corsair.new
    end

    def create
      @corsair = Corsair.create(Corsair_params)
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
      @corsair.update(Corsair_params)
      redirect_to Corsairs_path
    end

    def destroy
      @corsair = Corsair.find(params[:id])
      @corsair.destroy
      redirect_to Corsairs_path
    end

    privated

    def Corsair_params
      params.require(:Corsair).permit(:anonymous_author, :content)
    end

end
