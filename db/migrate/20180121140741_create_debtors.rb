class CreateDebtors < ActiveRecord::Migration[5.1]
  def change
    create_table :debtors do |t|
      t.string :name
      t.string :contact
      t.string :email

      t.timestamps
    end
  end
end
