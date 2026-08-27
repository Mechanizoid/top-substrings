# substrings_test.rb
require 'minitest/autorun'
require_relative 'substrings'

class SubstringsTest < Minitest::Test
  def setup
    @dictionary = ["below","down","go","going","horn","how","howdy",
                   "it","i","low","own","part","partner","sit"]
  end

  def test_word
    assert_equal( {"below" => 1, "low" => 1}, substrings("below", @dictionary))
  end

  def test_full_sentence
    string = "Howdy partner, sit down! How's it going?"
    substrings_found = { "down" => 1, "go" => 1, "going" => 1, "how" => 2,
                         "howdy" => 1, "it" => 2,"i" => 3, "own" => 1,
                         "part" => 1, "partner" => 1, "sit" => 1 }

    assert_equal(substrings_found, substrings(string, @dictionary))
  end
end
