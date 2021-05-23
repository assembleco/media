class CreateOccupations < ActiveRecord::Migration[6.1]
  def change
    create_table :occupations do |t|
      t.references :person, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
      t.date :begins
      t.date :ends

      t.timestamps
    end
  end
end
