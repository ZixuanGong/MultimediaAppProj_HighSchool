class Cla < ActiveRecord::Base
	has_many :lessons
	has_many :courses, through: :lessons

	def full_name
		"Senior #{grade}-#{name}"
    end
end
