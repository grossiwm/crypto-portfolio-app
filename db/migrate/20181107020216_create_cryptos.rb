class CreateCryptos < ActiveRecord::Migration[5.2]
  def change
    create_table :cryptos do |t|
      t.string :symbol
      t.references :user
      t.decimal :cost_per
      t.decimal :amount_owned
      t.timestamps
    end
  end
end
