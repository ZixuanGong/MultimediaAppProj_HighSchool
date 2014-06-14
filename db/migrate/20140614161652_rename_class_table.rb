class RenameClassTable < ActiveRecord::Migration
  def change
  	rename_table :regis_classes, :clas
  end
end
