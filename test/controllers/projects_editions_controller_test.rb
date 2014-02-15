require 'test_helper'

class ProjectsEditionsControllerTest < ActionController::TestCase
  setup do
    @projects_edition = projects_editions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects_editions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projects_edition" do
    assert_difference('ProjectsEdition.count') do
      post :create, projects_edition: { edition_id: @projects_edition.edition_id, project_id: @projects_edition.project_id }
    end

    assert_redirected_to projects_edition_path(assigns(:projects_edition))
  end

  test "should show projects_edition" do
    get :show, id: @projects_edition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projects_edition
    assert_response :success
  end

  test "should update projects_edition" do
    patch :update, id: @projects_edition, projects_edition: { edition_id: @projects_edition.edition_id, project_id: @projects_edition.project_id }
    assert_redirected_to projects_edition_path(assigns(:projects_edition))
  end

  test "should destroy projects_edition" do
    assert_difference('ProjectsEdition.count', -1) do
      delete :destroy, id: @projects_edition
    end

    assert_redirected_to projects_editions_path
  end
end
