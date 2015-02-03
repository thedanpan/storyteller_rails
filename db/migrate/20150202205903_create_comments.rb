class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content

      t.integer :commentor_id, index: true
      t.integer :story_id, index: true

      t.timestamps null: false
    end
  end
end
