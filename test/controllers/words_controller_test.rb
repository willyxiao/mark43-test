require 'test_helper'

class WordsControllerTest < ActionController::TestCase
  test "should get avg_len" do
    get :avg_len
    assert_response :success
  end

  test "should get most_com" do
    get :most_com
    assert_response :success
  end

  test "should get median" do
    get :median
    assert_response :success
  end

  test "should get phones" do
    get :phones
    assert_response :success
  end

end
