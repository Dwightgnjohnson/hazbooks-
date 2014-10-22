class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :patron_id
      t.integer :boot_id
      t.integer :checkout_at
      t.integer :checkin_at

      t.timestamps
    end
  end
end
