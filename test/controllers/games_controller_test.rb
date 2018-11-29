require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get get,create,update,delete" do
    get games_get,create,update,delete_url
    assert_response :success
  end

end
