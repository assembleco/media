class CreateAgencies < ActiveRecord::Migration[6.1]
  def change
    create_table :agencies do |t|
      t.string :name
      t.text :summary
      t.references :label, null: false, foreign_key: true
      t.references :locale, null: false, foreign_key: true
      t.string :online_address
      t.string :phone_number
      t.jsonb :hours

      t.timestamps
    end
  end
end
