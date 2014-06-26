class Cla < ActiveRecord::Base
	has_many :lessons
	has_many :courses, through: :lessons

	GRADES = [1, 2, 3]

	def full_name
		"Senior #{grade}-#{name}"
    end
end
