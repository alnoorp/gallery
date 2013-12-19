class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :customer_id, null: false

      t.timestamps
    end
  end
end
