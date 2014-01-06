require 'test_helper'

class IbisControllerTest < ActionController::TestCase
  setup do
    @ibi = ibis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ibis_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ibi" do
    assert_difference('Ibi.count') do
      post :create, ibi: { dealer_price: @ibi.dealer_price, from_date: @ibi.from_date, list_price: @ibi.list_price, part_number: @ibi.part_number, row_id: @ibi.row_id, to_date: @ibi.to_date }
    end

    assert_redirected_to ibi_path(assigns(:ibi))
  end

  test "should show ibi" do
    get :show, id: @ibi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ibi
    assert_response :success
  end

  test "should update ibi" do
    put :update, id: @ibi, ibi: { dealer_price: @ibi.dealer_price, from_date: @ibi.from_date, list_price: @ibi.list_price, part_number: @ibi.part_number, row_id: @ibi.row_id, to_date: @ibi.to_date }
    assert_redirected_to ibi_path(assigns(:ibi))
  end

  test "should destroy ibi" do
    assert_difference('Ibi.count', -1) do
      delete :destroy, id: @ibi
    end

    assert_redirected_to ibis_path
  end
end
