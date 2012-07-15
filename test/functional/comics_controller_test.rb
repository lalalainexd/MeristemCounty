require 'test_helper'

class ComicsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comic" do
    assert_difference('Comic.count') do
      post :create, :comic => { }
    end

    assert_redirected_to comic_path(assigns(:comic))
  end

  test "should show comic" do
    get :show, :id => comics(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => comics(:one).to_param
    assert_response :success
  end

  test "should update comic" do
    put :update, :id => comics(:one).to_param, :comic => { }
    assert_redirected_to comic_path(assigns(:comic))
  end

  test "should destroy comic" do
    assert_difference('Comic.count', -1) do
      delete :destroy, :id => comics(:one).to_param
    end

    assert_redirected_to comics_path
  end
end
