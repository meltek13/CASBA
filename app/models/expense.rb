class Expense < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :flatsharing, optional: true
  serialize :concerned_colocs
  validates :title, presence: true
  validates :total_amount, presence: true

end
