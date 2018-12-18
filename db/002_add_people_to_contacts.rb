class AddPersonToContacts < ActiveRecord::Migration
  def change
    add_column :active?, :chapter, :string
  end
end
