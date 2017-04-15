class DishesController < ApplicationController
  def index
    @cuisine=Cuisine.find(params[:cuisine_id])
   @dishes=@cuisine.dishes
   @dish=@cuisine.dishes.build
     end
  def create
    @cuisine=Cuisine.find(params[:cuisine_id])
  	m=@cuisine.dishes.build
  	m.name = params[:dish][:name]
  	m.save
  	redirect_to cuisine_url(id:@cuisine.id)
  end
  def new
  	@cuisine=Cuisine.find(params[:cuisine_id])
   @dishes=@cuisine.dishes
   @dish=@cuisine.dishes.build
     end
  def edit
  @cuisine=Cuisine.find(params[:cuisine_id])
   @dishes=@cuisine.dishes
   @dish=@dishes.find(params[:id])
  	end
  def update
   @cuisine=Cuisine.find(params[:cuisine_id])
   @dishes=@cuisine.dishes
   @dish=@cuisine.dishes.build
   @dish=@dishes.find(params[:id])
   @dish.name = params[:dish][:name]
      @dish.save
   redirect_to cuisine_dishes_url
 end
 
 def destroy
   @cuisine=Cuisine.find(params[:cuisine_id])
   @dishes=@cuisine.dishes
   @dish=@cuisine.dishes.build
   @dish=@dishes.find(params[:id])
   @dish.destroy
  redirect_to cuisine_dishes_url
 end
 def show
    @cuisine=Cuisine.find(params[:cuisine_id])
   @dishes=@cuisine.dishes
   @dish=@cuisine.dishes.build
   @dish=@dishes.find(params[:id])
 end
end
