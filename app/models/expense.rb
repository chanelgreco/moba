class Expense < ApplicationRecord
  belongs_to :debtor
  mount_uploader :receipt, ReceiptUploader
end
