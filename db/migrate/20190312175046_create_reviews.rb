class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :video_game
      t.string :text

      t.timestamps
    end
  end
end
