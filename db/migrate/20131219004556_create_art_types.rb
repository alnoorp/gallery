class CreateArtTypes < ActiveRecord::Migration
  def change
    create_table :art_types do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
