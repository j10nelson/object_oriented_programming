# justin = BankAccount.new(200, 1.05)
class BankAccount
attr_accessor :balance, :interest_rate
  def initialize(balance, interest_rate)
  @balance = balance
  @interest_rate = interest_rate

  end

  def deposit(amount)
  @balance += amount
  end

  def withdrawl(amount)
    @balance -= amount
  end
  def gain_interest
    @balance *= interest_rate
  end
end
