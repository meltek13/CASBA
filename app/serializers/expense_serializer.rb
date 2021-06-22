class ExpenseSerializer < ActiveModel::Serializer
  attributes :id_expense, :title, :date_of_expense, :total_amount, :concerned_colocs, :pending_payment, :paid_expense, :user_id, :flatsharing_id, :split_amount_to_colocs
end