class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:edit, :show, :destroy, :update]
  before_action :set_exercise_user, only: [:edit, :update, :destroy]

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

  def show
    @score = Score.new
    @scores = @exercise.scores.includes(:user)
  end

  def edit
  end

  def update
    @diary = Diary.find(params[:diary_id])
    if @exercise.update(exercise_params)
      redirect_to "/diaries/#{@diary.id}/exercises/#{@exercise.id}"
    else
      render action: :edit
    end
  end

  def destroy
    @exercise.destroy
    redirect_to root_path
  end

  private

  def exercise_params
    params.require(:exercise).permit(:weather_id, :distance_id, :sight, :memo).merge(user_id: current_user.id, diary_id: params[:diary_id])
  end

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

  def set_exercise_user
    if @exercise.user != current_user
      redirect_to root_path
    end
  end

end
