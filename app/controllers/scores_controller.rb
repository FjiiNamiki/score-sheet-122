class ScoresController < ApplicationController

  def create
    @diary = Diary.find(params[:diary_id])
    @exercise = Exercise.find(params[:exercise_id])
    @score = Score.new(score_params)
    if @exercise.save
      redirect_to "/diaries/#{@diary.id}"
    else
      render :new
  end

  private
  def score_params
    params.require(:score).permit(:end_id, :first_id, :second_id, :third_id, :fourth_id, :fifth_id, :sixth_id, :total, :ground_total).merge(user_id: current_user.id, diary_id: params[:diary_id], exercise_id: params[:exercise_id])
  end
end
