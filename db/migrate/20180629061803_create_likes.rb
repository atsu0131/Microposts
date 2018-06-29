class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.string :name
      t.string :url
      t.string :image_url

      t.timestamps
    end
  end
end
