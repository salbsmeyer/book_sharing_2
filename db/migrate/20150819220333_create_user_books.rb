class CreateUserBooks < ActiveRecord::Migration
  def change
    create_table :user_books do |t|
      t.string :genre
      t.string :author
      t.integer :user_id
      t.boolean :available
      t.text :notes
      t.integer :rating
      t.string :image
      t.string :title

      t.timestamps

    end
  end
end
