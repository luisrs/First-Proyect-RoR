class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.string :contenido
      t.integer :user_id

      t.timestamps
    end
  end
end
