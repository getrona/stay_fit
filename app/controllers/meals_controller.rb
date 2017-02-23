class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
    end
    else
      flash[:alert] = "Oops something went wrong, please try again."
      render :new
    end
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      respond_to do |format|
        format.html {redirect_to root_path}
        format.js    
      end
    else
      flash[:alert] = "The item has NOT been updated"
      render :edit
    end
  end

def destroy
  @meal = Meal.find(params[:id])
  @meal.destroy
  respond_to do |format|
    format.html { redirect_to root_path }
    format.js
  end
end

  private
  def meal_params
    params.require(:meal).permit(:name, :calories)
  end
end
