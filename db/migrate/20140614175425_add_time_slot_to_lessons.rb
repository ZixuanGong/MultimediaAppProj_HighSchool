class AddTimeSlotToLessons < ActiveRecord::Migration
  def change
  	add_column :lessons, :time_slot, :string
  	remove_column :lessons, :start_at, :time
  	remove_column :lessons, :end_at, :time
  end
end
