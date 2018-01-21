class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.date :date
      t.float :amount
      t.string :name
      t.string :type
      t.string :status

      t.timestamps
    end
  end
end
