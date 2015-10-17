ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # fixtures :all

  @DATA = {
    "" => {
      words_avg_len: nil,
      words_most_com: nil,
      words_median: nil,
      sentences_avg_len: nil,
      phones: nil,
    },
    "hello" => {
      words_avg_len: 5.0,
      words_most_com: 'hello',
      words_median: 'hello',
      sentences_avg_len: 1,
      phones: [],
    },
    "Hello hello my name is squiggly bob." => {
      words_avg_len: 4.14,
      words_most_com: 'hello',
      words_median: ["bob", "my", "name", "is", "squiggly"],
      sentences_avg_len: 7.0,
      phones: [],
    }
  }
  
  def self.test_with_text endpoint_key
    @DATA.map do |text, expected|
      yield(text, expected[endpoint_key])
    end
  end
end
