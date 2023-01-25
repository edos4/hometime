class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :code
      t.date :start_date
      t.date :end_date
      t.integer :number_of_adults
      t.integer :number_of_children
      t.integer :number_of_infants
      t.integer :nights
      t.integer :number_of_guests
      t.string :currency
      t.string :status
      t.float :payout_price
      t.float :security_price
      t.float :total_price
      t.string :localized_description
      t.references :guest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
