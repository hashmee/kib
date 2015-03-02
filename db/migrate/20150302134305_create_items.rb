class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :counter
      t.string :article
      t.string :color
      t.string :remarks

      t.timestamps null: false
    end
  end
end
