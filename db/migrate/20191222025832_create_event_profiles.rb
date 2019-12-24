class CreateEventProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :event_profiles do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.boolean :attending

      t.timestamps
    end
  end
end
