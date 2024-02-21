class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :number
      t.decimal :balance, precision: 10, scale: 2, default: 0
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
