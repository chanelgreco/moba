class AddDebtorToExpensesAgain < ActiveRecord::Migration[5.1]
  def change
    add_reference :expenses, :debtor, foreign_key: true
  end
end
