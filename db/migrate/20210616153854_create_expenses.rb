class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :id_expense
      t.string :title
      t.date :date_of_expense
      t.float :total_amount
      t.text :concerned_colocs
      t.float :split_amount_to_colocs
      t.boolean :pending_payment, default: true
      t.boolean :paid_expense, default: false
      t.belongs_to :user, index: true
      t.belongs_to :flatsharing, index: true

      t.timestamps
    end
  end
end
