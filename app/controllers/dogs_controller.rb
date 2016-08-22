class DogsController < ApplicationController

  def index
    @dogs = Dog.page(params[:page]).per(5)
    
    if params[:id].present?
      @dog = Dog.find(params[:id])
    else
      @dog = Dog.new
    end

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

    redirect_to dog_url

  end

  def destroy
  	@dog = Dog.find(params[:id])
  	@dog.destroy
  	flash[:alert] = "event was successfully deleted"
  	redirect_to dogs_url
  end


  def create
  	@dog = Dog.new(event_params)
  	
    if @dog.save
  	 flash[:notice] = "event was successfully created"
    else
      render :action => :new
    end

  end



  
  private

  def event_params
  	params.require(:dog).permit(:name, :descrip, :date)
  end

end
