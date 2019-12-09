require 'test_helper'

class ProcessDataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get process_data_index_url
    assert_response :success
  end

end
