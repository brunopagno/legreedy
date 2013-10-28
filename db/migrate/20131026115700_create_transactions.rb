class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :user, index: true
      t.integer :way
      t.decimal :value, precision: 8, scale: 2
      t.date :date
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
