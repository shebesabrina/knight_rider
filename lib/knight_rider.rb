class KnightRider
  attr_reader :characters,
              :creator,
              :network

  def initialize(characters, creator, network)
    @characters = characters
    @creator = creator
    @network = network
  end

  def total_payroll
    @characters.map do |name|
      name.salary
    end.sum
  end

  def highest_grossing_actor
    @characters.max_by do |name|
      name.salary
    end
  end

end
