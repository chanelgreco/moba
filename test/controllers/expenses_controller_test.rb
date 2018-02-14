require 'test_helper'

class ExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bus_ride = expenses(:bus)
    @train_ride = expenses(:train)
    @work = debtors(:work)
    @private = debtors(:private)
  end

  test "should get index" do
    get expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_expense_url
    assert_response :success
  end

  test "should create expense" do
    assert_difference('Expense.count') do
      post expenses_url, params: { expense: { amount: @train_ride.amount, date: @train_ride.date, name: @train_ride.name, status: @train_ride.status, expense_type: @train_ride.expense_type, debtor_id: @work.id } }
    end

    assert_redirected_to expense_url(Expense.last)
  end

  test "should show expense" do
    get expense_url(@train_ride)
    assert_response :success
  end

  test "should get edit" do
    get edit_expense_url(@train_ride)
    assert_response :success
  end

  test "should update expense" do
    patch expense_url(@train_ride), params: { expense: { amount: @train_ride.amount, date: @train_ride.date, name: @train_ride.name, status: @train_ride.status, expense_type: @train_ride.expense_type, debtor_id: @work.id } }
    assert_redirected_to expense_url(@train_ride)
  end

  test "should destroy expense" do
    assert_difference('Expense.count', -1) do
      delete expense_url(@train_ride)
    end

    assert_redirected_to expenses_url
  end
end
