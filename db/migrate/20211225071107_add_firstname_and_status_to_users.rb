class AddFirstnameAndStatusToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :status, :string
    add_column :users, :first_name, :string    
  end
end
