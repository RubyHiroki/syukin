class CreateMoney < ActiveRecord::Migration[5.2]
  def change
    create_table :money do |t|
      t.integer :deposit, default: 0
      t.integer :sum_money, default: 0
      t.integer :extra_money, default: 0
      t.timestamps
    end
  end
end
