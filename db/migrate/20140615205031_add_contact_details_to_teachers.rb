class AddContactDetailsToTeachers < ActiveRecord::Migration
  def change
  	add_column :teachers, :email, :string
  	add_column :teachers, :office, :string
  	add_column :teachers, :telephone, :string
  end
end
