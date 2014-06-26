class CoursesController < ApplicationController

  def index
  	@all_courses = Course.all
  end

  def by_grade
    @all_courses = Course.all
  end

  def new
  	@course = Course.new
  end

  def create
  	@course = Course.new(course_params)
  	if @course.save
  		redirect_to @course
  	else
  		render 'new'
  	end
  end

  def show
  	@course = Course.find(params[:id])
  end

  def edit
  	@course = Course.find(params[:id])
  end

  def update
  	@course = Course.find(params[:id])

  	if @course.update(course_params)
  		redirect_to @course
  		flash[:success] = "Course updated!"
  	else
  		render 'edit'
  	end
  end

  def timetable
    @course = Course.find(params[:id])
  end


  private

    def course_params
      params.require(:course).permit(:name, :program, :department, :grade, :teacher_id)
    end
end
