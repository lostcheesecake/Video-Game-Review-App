class CreateConsoles < ActiveRecord::Migration[5.2]
  def change
    create_table :consoles do |t|
      t.string :system
      t.string :text

      t.timestamps
    end
  end
end
