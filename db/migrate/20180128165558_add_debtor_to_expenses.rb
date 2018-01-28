class AddDebtorToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_reference :expenses, :debtors, foreign_key: true
  end
end
