class Oystercard

attr_reader :balance
attr_accessor :in_journey

LIMIT = 90
MIN_BALANCE = 1

  def initialize
    @balance = 0
    @in_journey = false

  end

  def top_up(credit)
    fail "Limit exceeded.(Max £#{LIMIT})" if @balance + credit > LIMIT
    @balance += credit
  end

  def deduct(debit)
    @balance -= debit
  end

  def touch_in
    fail "Please top up!" if @balance < MIN_BALANCE
    @in_journey = true
  end

  def in_journey?
    @in_journey
  end

  def touch_out
    @in_journey = false
  end
end
