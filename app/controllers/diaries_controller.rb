class DiariesController < ApplicationController
  before_action :set_diary, only: [:edit, :update, :show, :destroy]
  before_action :set_diary_user, only: [:edit, :update, :destroy]

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

  def show
    @exercise = Exercise.new
    @exercises = @diary.exercises.includes(:user)
  end

  def edit
    
  end

  def update
    if @diary.update(diary_params)
      redirect_to action: :show
    else
      render action: :edit
    end
  end

  def destroy
    @diary.destroy
    redirect_to root_path
  end

  private
  def diary_params
    params.require(:diary).permit(:date, :place, :event, :total_memo).merge(user_id: current_user.id)
  end
  def set_diary
    @diary = Diary.find(params[:id])
  end
  def set_diary_user
    if @diary.user != current_user
      redirect_to root_path
    end
  end

end
