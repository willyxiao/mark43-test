require 'test_helper'

class WordsControllerTest < ActionController::TestCase
  test "correct avg_len" do
    ActiveSupport::TestCase.test_with_text(:words_avg_len) do |text, expected|
      if expected.nil?
        assert_raise(ActionController::ParameterMissing) do 
          post :avg_len, text: text
        end
      else
        post :avg_len, text: text
        assert_equal(expected, @response.body.to_f, text)
      end
    end
  end
  
    test "correct most_com" do
    ActiveSupport::TestCase.test_with_text(:words_most_com) do |text, expected|
      if expected.nil?
        assert_raise(ActionController::ParameterMissing) do 
          post :avg_len, text: text
        end
      else
        post :most_com, text: text
        assert_equal(expected, @response.body)
      end
    end
  end
end
