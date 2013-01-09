require 'test_helper'

class DiddiesControllerTest < ActionController::TestCase
  setup do
    @diddy = diddies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diddies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diddy" do
    assert_difference('Diddy.count') do
      post :create, diddy: { author: @diddy.author, name: @diddy.name, published: @diddy.published }
    end

    assert_redirected_to diddy_path(assigns(:diddy))
  end

  test "should show diddy" do
    get :show, id: @diddy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diddy
    assert_response :success
  end

  test "should update diddy" do
    put :update, id: @diddy, diddy: { author: @diddy.author, name: @diddy.name, published: @diddy.published }
    assert_redirected_to diddy_path(assigns(:diddy))
  end

  test "should destroy diddy" do
    assert_difference('Diddy.count', -1) do
      delete :destroy, id: @diddy
    end

    assert_redirected_to diddies_path
  end
end
