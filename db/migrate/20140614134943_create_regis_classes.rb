class CreateRegisClasses < ActiveRecord::Migration
  def change
    create_table :regis_classes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
