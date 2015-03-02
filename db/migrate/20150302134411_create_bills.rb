class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.string :phone
      t.string :status
      t.date :delivery
      t.string :amount
      t.string :advance
      t.integer :totalitems

      t.timestamps null: false
    end
  end
end
