class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.references :Category

      t.timestamps
    end
    add_index :posts, :Category_id
  end
end
