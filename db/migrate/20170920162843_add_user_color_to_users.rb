class AddUserColorToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_color, :string
  end
end
