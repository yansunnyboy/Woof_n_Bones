class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :centre, null: false, foreign_key: true
      t.string :booking_date

      t.timestamps
    end
  end
end
