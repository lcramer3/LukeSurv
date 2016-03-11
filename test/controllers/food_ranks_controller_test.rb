require 'test_helper'

class FoodRanksControllerTest < ActionController::TestCase
  setup do
    @food_rank = food_ranks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_ranks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_rank" do
    assert_difference('FoodRank.count') do
      post :create, food_rank: { rank: @food_rank.rank }
    end

    assert_redirected_to food_rank_path(assigns(:food_rank))
  end

  test "should show food_rank" do
    get :show, id: @food_rank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_rank
    assert_response :success
  end

  test "should update food_rank" do
    patch :update, id: @food_rank, food_rank: { rank: @food_rank.rank }
    assert_redirected_to food_rank_path(assigns(:food_rank))
  end

  test "should destroy food_rank" do
    assert_difference('FoodRank.count', -1) do
      delete :destroy, id: @food_rank
    end

    assert_redirected_to food_ranks_path
  end
end
