class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string  :image
      t.text    :description
      t.integer :user_id, index: true

      t.timestamps
    end
  end
end
