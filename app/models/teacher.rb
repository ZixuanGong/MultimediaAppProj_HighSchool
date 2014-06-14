class Teacher < ActiveRecord::Base
	has_many :courses
	DEPARTMENTS = ["Mathematics", "English", "Computer Science", "History","Science", "Art"]
end
