class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email_address
      t.string :phone_number
      t.string :online_address
      t.text :biography

      t.timestamps
    end
  end
end
