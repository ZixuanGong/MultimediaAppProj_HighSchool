class RenameAttrInLessons < ActiveRecord::Migration
  def change
  	remove_column :lessons, :class_id, :integer
  	add_column :lessons, :cla_id, :integer
  end
end
