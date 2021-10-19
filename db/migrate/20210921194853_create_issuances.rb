class CreateIssuances < ActiveRecord::Migration[6.1]
  def change
    create_table :issuances do |t|
      t.string :name
      t.datetime :date
      t.decimal :volume, precision: 15, scale: 2

      t.timestamps
    end
  end
end
