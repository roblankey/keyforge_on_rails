class CreateArchons < ActiveRecord::Migration[5.2]
  def change
    create_table :archons, id: :uuid do |t|
      t.string :name
      t.string :set
      t.string :image_url

      t.references :house_one, type: :uuid, index: true, foreign_key: {to_table: :houses, on_delete: :restrict}
      t.references :house_two, type: :uuid, index: true, foreign_key: {to_table: :houses, on_delete: :restrict}
      t.references :house_three, type: :uuid, index: true, foreign_key: {to_table: :houses, on_delete: :restrict}
      
      t.timestamps
    end
  end
end
