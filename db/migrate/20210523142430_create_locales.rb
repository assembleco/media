class CreateLocales < ActiveRecord::Migration[6.1]
  def change
    create_table :locales do |t|
      t.string :name
      t.integer :inside
      t.jsonb :boundary
      t.date :incorporated_on

      t.timestamps
    end
  end
end
