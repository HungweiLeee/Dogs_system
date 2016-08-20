class DogsController < ApplicationController

  def index
  	@dogs = Dog.all
  end

  def new
  	@dog = Dog.new
  end

  def show
  	@dog = Dog.find(params[:id])
  end

  def edit
  	@dog = Dog.find(params[:id])
  end

  def update
  	@dog = Dog.find(params[:id])
	@dog.update(event_params)
	flash[:notice] = "event was successfully updated"


	redirect_to dog_path(@dog)
  end

  def destroy
  	@dog = Dog.find(params[:id])
  	@dog.destroy
  	flash[:alert] = "event was successfully deleted"
  	redirect_to dogs_url
  end


  def create
  	@dog = Dog.new(event_params)
  	@dog.save
  	flash[:notice] = "event was successfully created"

  	redirect_to dog_path(@dog)
  end



  
  private

  def event_params
  	params.require(:dog).permit(:name, :descrip)
  end

end
