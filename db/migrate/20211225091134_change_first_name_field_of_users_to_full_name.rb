class ChangeFirstNameFieldOfUsersToFullName < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :first_name, :full_name
  end
end
