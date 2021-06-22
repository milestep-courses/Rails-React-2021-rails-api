class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email,    null: false
      t.string :nickname, null: false
      t.string :role, null: false, default: 'customer'

      t.timestamps
    end
  end
end

