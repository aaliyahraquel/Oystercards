class Oystercard

attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(credit)
    # fail "Limit exceeded.(Max £90)" if @balance + credit > 90
    @balance += credit
  end
end
