require 'test_helper'

class StatutsControllerTest < ActionController::TestCase
  setup do
    @statut = statuts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statuts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statut" do
    assert_difference('Statut.count') do
      post :create, statut: { content: @statut.content, name: @statut.name }
    end

    assert_redirected_to statut_path(assigns(:statut))
  end

  test "should show statut" do
    get :show, id: @statut
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statut
    assert_response :success
  end

  test "should update statut" do
    patch :update, id: @statut, statut: { content: @statut.content, name: @statut.name }
    assert_redirected_to statut_path(assigns(:statut))
  end

  test "should destroy statut" do
    assert_difference('Statut.count', -1) do
      delete :destroy, id: @statut
    end

    assert_redirected_to statuts_path
  end
end
