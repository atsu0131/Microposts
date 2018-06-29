class CreateOwnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :ownerships do |t|
      t.string :type
      t.string :string
      t.references :user
      t.references :likes
      
      t.index [:user_id, :likes_id , :type], unique: true
      t.timestamps
    end
  end
end
