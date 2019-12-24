class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.string :avatarURL
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
