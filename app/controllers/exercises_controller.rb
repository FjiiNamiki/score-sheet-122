class ExercisesController < ApplicationController
  def new
    @diary = Diary.find(params[:diary_id])
    @exercise = Exercise.new
  end
  def create
    @diary = Diary.find(params[:diary_id])
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to "/diaries/#{@diary.id}"
    else
      render :new
    end
  end
  private
  def exercise_params
    params.require(:exercise).permit(:weather_id, :distance_id, :sight, :memo).merge(user_id: current_user.id, diary_id: params[:diary_id])
  end
end
