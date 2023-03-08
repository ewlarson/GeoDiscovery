require "test_helper"

class CatalogControllerTest < ActionDispatch::IntegrationTest
  test "should render catalog" do
    get "/catalog"
    assert_response :success
  end

  test "should return admin view" do
    get '/catalog/mit-001145244/admin'
    assert_response :success
  end
end
