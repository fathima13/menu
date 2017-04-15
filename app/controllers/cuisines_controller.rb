class CuisinesController < ApplicationController
  def index
  	@cuisines=Cuisine.all
  end
  def create
  	@cuisine=Cuisine.new
  	@cuisine.name = params[:cuisine][:name]
  	@cuisine.save
  	redirect_to cuisines_url
  end
  def new
  	@cuisine=Cuisine.new
  end
  def edit
  	@cuisine=Cuisine.find(params[:id])
  end
  def update
   @cuisine=Cuisine.find(params[:id])
   @cuisine.name = params[:cuisine][:name]
      @cuisine.save
   redirect_to cuisines_url
 end
 
 def destroy
   @cuisine=Cuisine.find(params[:id])
   @cuisine.destroy
   redirect_to cuisines_url
 end
 def show
   @cuisine=Cuisine.find(params[:id])
   @dishes=@cuisine.dishes
   @dish=@cuisine.dishes.build
 end
end
