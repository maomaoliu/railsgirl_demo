class AddGenderToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :gender, :boolean
  end
end
