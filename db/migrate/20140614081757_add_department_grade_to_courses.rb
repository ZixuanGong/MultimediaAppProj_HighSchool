class AddDepartmentGradeToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :department, :string
  	add_column :courses, :grade, :int
  end
end
