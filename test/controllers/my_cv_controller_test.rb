require 'test_helper'

class MyCvControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_cv_index_url
    assert_response :success
  end

end
