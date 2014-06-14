class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :weekday
      t.time :start_at
      t.time :end_at
      t.references :course, index: true
      t.references :class, index: true

      t.timestamps
    end
  end
end
