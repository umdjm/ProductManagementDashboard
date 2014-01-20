require 'test_helper'

class SalesControllerTest < ActionController::TestCase
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post :create, sale: { dealer_price: @sale.dealer_price, from_date: @sale.from_date, gross_quantity: @sale.gross_quantity, gross_revenue: @sale.gross_revenue, part_number: @sale.part_number, retail_quantity: @sale.retail_quantity, retail_revenue: @sale.retail_revenue }
    end

    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should show sale" do
    get :show, id: @sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale
    assert_response :success
  end

  test "should update sale" do
    put :update, id: @sale, sale: { dealer_price: @sale.dealer_price, from_date: @sale.from_date, gross_quantity: @sale.gross_quantity, gross_revenue: @sale.gross_revenue, part_number: @sale.part_number, retail_quantity: @sale.retail_quantity, retail_revenue: @sale.retail_revenue }
    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete :destroy, id: @sale
    end

    assert_redirected_to sales_path
  end
end
