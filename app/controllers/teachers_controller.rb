class TeachersController < ApplicationController

	def show
		@teacher = Teacher.find(params[:id])
	end

	def index
		@teachers = Teacher.all
	end

	def departments
		@departments = ["Mathematics", "Language", "Computer Science"]
	end

	# teachers by department
	def department
		@department = params[:department]
		@teachers = Teacher.all.select do |teacher|
			 teacher.department == format4display(@department)
		end
	end

	

end
