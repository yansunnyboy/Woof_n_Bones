class CreateCentres < ActiveRecord::Migration[6.1]
  def change
    create_table :centres do |t|
      t.string :name
      t.string :location
      t.string :phone_number
      t.integer :capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
