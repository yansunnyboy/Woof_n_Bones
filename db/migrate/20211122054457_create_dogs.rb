class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :dog_size
      t.string :diet
      t.string :name
      t.string :breed
      t.boolean :desexed
      t.boolean :vaccination_status

      t.timestamps
    end
  end
end
