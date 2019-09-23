require './lib/Oystercard.rb'

describe Oystercard do

let (:new_card) { Oystercard.new }

  it 'can show initial balance of 0' do
    expect(new_card.balance).to eq(0)
  end

  it 'can be topped up' do
    expect(new_card.top_up(5)).to eq(5)
  end

end
