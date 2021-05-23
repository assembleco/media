class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.text :summary
      t.references :agency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
