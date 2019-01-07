class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards, id: :uuid do |t|
      t.string :name
      t.text :body
      t.string :image_url
      t.string :card_type
      t.string :subtype_1
      t.string :subtype_2
      t.boolean :maverick, default: false
      t.references :house, type: :uuid
      t.references :archon, type: :uuid
      t.text :flavor_text
      t.integer :bonus_aember, default: 0

      t.timestamps
    end
  end
end
