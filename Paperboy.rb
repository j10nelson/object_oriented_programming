class Paperboy
  attr_accessor :name, :experience
  attr_reader :earnings
  def initialize(name, experience, earnings)
    @name = name
    @earnings = 0
    @experience = 0
  end

  def quota
    minimum = 50
    @experience / 2 + minimum
  end

  def deliver(start_address, end_address)
    q = quota
    deliveries = end_address - start_address + 1
    @experience += deliveries

    if deliveries >= q
      @earnings = (q * 0.25) + ((deliveries - q) * 0.50)
    else
      @earnings = (deliveries * 0.25) - 2
    end
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} paper, and I've earned $#{@earnings} so far!"
  end

end


# tommy = Paperboy.new("Tommy")
#
# tommy.quota # => 50
# tommy.deliver(101, 160) # => 17.5
# tommy.earnings #=> 17.5
# tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"
#
# tommy.quota # => 80
# tommy.deliver(1, 75) # => 16.75
# tommy.earnings #=> 34.25
# tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
