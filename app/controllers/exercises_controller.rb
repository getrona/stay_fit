class ExercisesController < ApplicationController
def new
  @meal = Meal.find(params[:id])
end

def edit
  @meal = Meal.find(params[:id])
end

def create
  @meal = Meal.new(exercise_params)
  if @meal.save
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  else
    render :new
  end
end

def update
  @meal = Meal.find(params[:id])
  if @meal.save(exercise_params)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  else
    render :edit
  end
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

def exercise_params
  params.require(:exercise).permit(:title, :calories_burned)
end

end
