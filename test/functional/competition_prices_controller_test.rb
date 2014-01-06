require 'test_helper'

class CompetitionPricesControllerTest < ActionController::TestCase
  setup do
    @competition_price = competition_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competition_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competition_price" do
    assert_difference('CompetitionPrice.count') do
      post :create, competition_price: { competition_brand: @competition_price.competition_brand, competition_name: @competition_price.competition_name, dealer_price: @competition_price.dealer_price, from_date: @competition_price.from_date, list_price: @competition_price.list_price, part_category: @competition_price.part_category, part_number: @competition_price.part_number, row_id: @competition_price.row_id, to_date: @competition_price.to_date }
    end

    assert_redirected_to competition_price_path(assigns(:competition_price))
  end

  test "should show competition_price" do
    get :show, id: @competition_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competition_price
    assert_response :success
  end

  test "should update competition_price" do
    put :update, id: @competition_price, competition_price: { competition_brand: @competition_price.competition_brand, competition_name: @competition_price.competition_name, dealer_price: @competition_price.dealer_price, from_date: @competition_price.from_date, list_price: @competition_price.list_price, part_category: @competition_price.part_category, part_number: @competition_price.part_number, row_id: @competition_price.row_id, to_date: @competition_price.to_date }
    assert_redirected_to competition_price_path(assigns(:competition_price))
  end

  test "should destroy competition_price" do
    assert_difference('CompetitionPrice.count', -1) do
      delete :destroy, id: @competition_price
    end

    assert_redirected_to competition_prices_path
  end
end
