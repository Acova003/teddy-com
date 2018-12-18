class CreateContacts < ActiveRecord::Migration
  def change
    create_table :member do |t|
      #primary key of :id is created for us!
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :chapter
    end
  end
end
