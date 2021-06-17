class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :update, :destroy]

  def index
    @expenses = Expense.all
    render json: @expenses
  end

  def show
    render json: @expense
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.concerned_colocs.to_i != @expense.user_id && @expense.save
       @expense.user_id = @flatsharing.admin_id
      render json: {expense: @expense}, status: :created, location: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  
  end
  
  def update
    
    if @expense.update(expense_params)
      if @expense.pending_payment == false 
        @expense.paid_expense = true
      else
        @expense.paid_expense = false
      end
      render json: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end
  
  def destroy
    @expense.destroy
  end

  private
    def expense_params
      expense_params = params.require(:expense).permit(:id_expense, :title, :date_of_expense, :total_amount, :concerned_colocs, :pending_payment, :paid_expense, :user_id, :flatsharing_id) 
    end
    def set_expense
      @expense = Expense.find(params[:id])
    end
end
