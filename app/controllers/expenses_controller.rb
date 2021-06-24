class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show update destroy]

  def index
    @expenses = Expense.all
    render json: @expenses
  end

  def show
    render json: @expense
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.concerned_colocs != @expense.user_id && @expense.save
      render json: { expense: @expense }, status: :created, location: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  def update
    if @expense.update(expense_params) && @expense.concerned_colocs != @expense.user_id
      @expense.paid_expense = @expense.pending_payment == false
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
    expense_params = params.require(:expense).permit(:id_expense, :title, :date_of_expense, :total_amount,
                                                     { concerned_colocs: [] }, :pending_payment, :paid_expense, :user_id, :flatsharing_id, :split_amount_to_colocs)
  end

  def set_expense
    @expense = Expense.find(params[:id])
  end
end
