class CreateBonds < ActiveRecord::Migration[7.0]
  def change
    create_table :bonds do |t|
      t.bigint :user_id, null: false
      t.bigint :friend_id, null: false
      t.string :state, null: false

      t.timestamps
    end

    add_index :bonds, [:user_id, :friend_id], unique: true

    add_foreign_key :bonds, :users, colum: :user_id
    #add_foreign_key :bonds, :users, colum: :friend_id $crashed the program
  end
end
