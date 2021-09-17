class ScoresController < ApplicationController
  def new
    @diary = Diary.find(params[:diary_id])
    @exercise = Exercise.find(params[:exercise_id])
    @score = Score.new
  end

end
