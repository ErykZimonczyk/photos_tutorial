class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :type
      t.string :email
      t.string :camera
      t.timestamps
    end
  end
end
