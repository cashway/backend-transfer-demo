class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.decimal :amount, precision: 10, scale: 2, default: 0
      t.references :user, index: true, foreign_key: true
      t.string :favored_account
      t.timestamps
    end
  end
end