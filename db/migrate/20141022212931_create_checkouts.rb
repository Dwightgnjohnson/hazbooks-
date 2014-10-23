class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :patron_id
      t.integer :book_id
      t.datetime :checkout_at
      t.datetime :checkin_at

      t.timestamps
    end
  end
end
