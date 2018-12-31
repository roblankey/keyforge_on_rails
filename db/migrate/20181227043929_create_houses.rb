class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses, id: :uuid do |t|
      t.string :name, null: false
      t.string :image_url

      t.timestamps

      t.index :name
    end
  end
end
