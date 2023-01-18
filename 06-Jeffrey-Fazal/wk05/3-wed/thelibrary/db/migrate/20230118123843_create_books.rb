class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :book_id
      t.string :title
      t.string :author
      t.integer :isbn
      t.integer :avg_rating
      t.integer :publication_year
      t.string :image_url
    end
  end
end