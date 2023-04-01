class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :image
      t.string :title
      t.integer :year
      t.string :director
      t.string :category

      t.timestamps
    end
  end
end
