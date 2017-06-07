class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.text :body
      t.string :title
      t.string :server
      t.integer :views

      t.timestamps
    end
  end
end
