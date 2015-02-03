class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :content
      t.boolean :fiction

      t.integer :user_id, index: true
      t.integer :genre_id, index: true

      t.timestamps null: false
    end
  end
end
