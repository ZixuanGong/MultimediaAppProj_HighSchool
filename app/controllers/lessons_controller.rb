class LessonsController < ApplicationController
  def new
  	@class = Cla.find(params[:cla_id])
  	@lesson = Lesson.new
  end

  def create
  	@lesson = Lesson.new(lesson_params)
  	if @lesson.save
  		redirect_to course_path(Cla.find(params[:cla_id]))
      flash[:success] = "Lesson created!"
  	else
  		render 'new'
  	end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to course_path(Cla.find(params[:cla_id]))
      flash[:success] = "Lesson updated!"
    else
      render 'edit'
    end
  end

  private

    def lesson_params
      params.require(:lesson).permit(:weekday, :start_at, :end_at, :cla_id, :course_id)
    end
end
