require 'test_helper'

class BookersControllerTest < ActionDispatch::IntegrationTest
test "should get top" do
    get root_path
    assert_response :success
end

test "should get index" do
    get index_path
    assert_response :success
end


end