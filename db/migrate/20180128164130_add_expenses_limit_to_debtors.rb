class AddExpensesLimitToDebtors < ActiveRecord::Migration[5.1]
  def change
    add_column :debtors, :expenses_limit, :float
  end
end
