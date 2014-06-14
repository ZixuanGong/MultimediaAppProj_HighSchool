class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :program
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
