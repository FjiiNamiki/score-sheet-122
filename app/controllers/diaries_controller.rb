class DiariesController < ApplicationController
  def index
    @diaries = Diary.order  ("created_at DESC")
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def diary_params
    params.require(:diary).permit(:date, :place, :event, :total_memo).merge(user_id: current_user.id)
  end

end
