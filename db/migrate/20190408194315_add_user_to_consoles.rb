class AddUserToConsoles < ActiveRecord::Migration[5.2]
  def change
    add_reference :consoles, :user, foreign_key: true
  end
end
