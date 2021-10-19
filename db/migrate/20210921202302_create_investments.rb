class CreateInvestments < ActiveRecord::Migration[6.1]
  def change
    create_table :investments do |t|
      t.decimal :amount_of_money, precision: 15, scale: 2
      t.references :issuance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
