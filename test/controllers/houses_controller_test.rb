require 'test_helper'

class HousesControllerTest < ActionController::TestCase
  setup do
    @house = houses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create house" do
    assert_difference('House.count') do
      post :create, params: { house: {  } }
    end

    assert_redirected_to house_path(House.last)
  end

  test "should show house" do
    get :show, params: { id: @house }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @house }
    assert_response :success
  end

  test "should update house" do
    patch :update, params: { id: @house, house: {  } }
    assert_redirected_to house_path(@house)
  end

  test "should destroy house" do
    assert_difference('House.count', -1) do
      delete :destroy, params: { id: @house }
    end

    assert_redirected_to houses_path
  end
end
