class CoursesController < ApplicationController
  def new
  	@course = Course.new
  end

  def create
  	@course = Course.new()
  end

  private

    def course_params
      params.require(:course).permit(:name, :program)
    end
end
