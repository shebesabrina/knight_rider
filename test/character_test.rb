require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require 'pry'
class CharacterTest < Minitest::Test
  def test_it_exists
    kitt = Character.new("KITT", "Williams Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQq")
    assert_instance_of Character, kitt
  end

  def test_it_has_attributes
    kitt = Character.new("KITT", "Williams Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQq")
    

    assert_equal "KITT", kitt.name
    assert_equal "Williams Daniels", kitt.actor
    assert_equal "Pontiac Trans-Am", kitt.description
    assert_equal 1982, kitt.birth_year
    assert_equal 0, kitt.salary
    assert_equal  "https://goo.gl/lSFYQq", kitt.headshot_url
  end

  def test_new_actor
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000", "https://goo.gl/Qkdfl")

    assert_equal "Michael Knight", michael_knight.name
    assert_equal "David Hasselhoff", michael_knight.actor
    assert_equal "A special type of hero", michael_knight.description
    assert_equal 1952, michael_knight.birth_year
    assert_equal 1000, michael_knight.salary
    assert_equal  "https://goo.gl/Qkdfl", michael_knight.headshot_url
  end

end
