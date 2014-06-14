class AddGradeToRegisClasses < ActiveRecord::Migration
  def change
  	add_column :regis_classes, :grade, :int
  end
end
