class CreateCustomerCollections < ActiveRecord::Migration
  def change
    create_table :customer_collections do |t|
      t.integer :customer_id, null: false
      t.integer :collection_id, null: false

      t.timestamps
    end
  end
end
