class ClasController < ApplicationController
  def index
  	@clas = Cla.all
  end

  def show
  	@cla = Cla.find(params[:id])
  	@courses = @cla.courses
  	@lessons = Lesson.all.select{|lesson| lesson.cla_id == @cla.id}
  end

  
end
