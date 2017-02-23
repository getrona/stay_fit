class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      flash[:notice] = "Meal has been logged!"
      redirect_to root_path
    else
      flash[:alert] = "Oops something went wrong, please try again."
      render :new
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :calories)
  end
end
