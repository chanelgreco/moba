class AddReceiptToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :receipt, :string
  end
end
