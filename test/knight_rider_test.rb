require 'minitest/autorun'
require 'minitest/pride'
require './lib/knight_rider'
require './lib/character'
require 'pry'
class KnightRiderTest < Minitest::Test
  def test_it_exists
  kitt = Character.new("KITT", "Williams Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQq")
  michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000", "https://goo.gl/Qkdfl")
  knight_rider = KnightRider.new([kitt, michael_knight], "Glenn Larson", "NBC")
  result = [kitt, michael_knight]
  assert_equal result, knight_rider.characters
  end

  def test_total_payroll
    kitt = Character.new("KITT", "William Daniels", "Pontiac Trans-Am", 1982, "0.00", "https://goo.gl/lSFYQo")
    michael_knight = Character.new("Michael Knight", "David Hasselhoff", "A special type of hero", 1952, "1,000,000,000.00", "https://goo.gl/Qk0pwL")
    devon_miles = Character.new("Devon Miles", "Edward Mulhare", "FLAG spokesman and mission coordinator", 1923, "1,000,000", "https://goo.gl/JsvAuV")
    knight_rider = KnightRider.new([kitt, michael_knight, devon_miles], "Glen Larson", "NBC")

    assert_equal 1001000000, knight_rider.total_payroll
  end
end
