class AddExtraMoneyToMoney < ActiveRecord::Migration[5.2]
  def change
    add_column :money, :extra_money, :integer
  end
end
