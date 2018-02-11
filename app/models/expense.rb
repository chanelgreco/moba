class Expense < ApplicationRecord
  belongs_to :debtor
  accepts_nested_attributes_for :debtor
  mount_uploader :receipt, ReceiptUploader
end
