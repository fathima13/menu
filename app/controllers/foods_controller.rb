class FoodsController < ApplicationController
  def index
  	@m=Food.all
  end
  def create
  	m=Food.new
  	m.name = params[:food][:name]
  	m.veg = params[:food][:veg]
  	m.category = params[:food][:category]
  	m.save
  	redirect_to foods_url
  end
  def new
  	@m=Food.new
  end
  def edit
  	@m=Food.find(params[:id])
  end
def update
	@m=Food.find(params[:id])
	@m.name = params[:food][:name]
  	@m.veg = params[:food][:veg]
  	@m.category = params[:food][:category]
  	@m.save
  	redirect_to foods_url
end
 
  def destroy
  	@m=Food.find(params[:id])
  	@m.destroy
  	redirect_to foods_url
  end
   def show
  	@m=Food.find(params[:id])
  end
end
