class Expense < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :flatsharing, optional: true

end
