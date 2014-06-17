class TeachersController < ApplicationController
	def new 
		@teacher = Teacher.new
	end

	def create
	  	@teacher = Teacher.new(teacher_params)
	  	if @teacher.save
	  		redirect_to @teacher
	  	else
	  		render 'new'
	  	end
  	end

  	def edit
  		@teacher = Teacher.find(params[:id])
  	end

  	def update
  		@teacher = Teacher.find(params[:id])

  		if @teacher.update(teacher_params)
  			redirect_to @teacher
  			flash[:success] = "Teacher updated!"
  		else
  			render 'edit'
  		end
  	end

	def show
		@teacher = Teacher.find(params[:id])
	end

	def timetable
		@teacher = Teacher.find(params[:id])
	end

	def index
		@teachers = Teacher.all
	end

	def departments
		@departments = Teacher::DEPARTMENTS
	end

	# teachers by department
	def department
		@department = params[:department]
		@teachers = Teacher.all.select do |teacher|
			 teacher.department == format4display(@department)
		end
	end

	private

	    def teacher_params
	      params.require(:teacher).permit(:name, :department, :office, :telephone, :email)
	    end

end
