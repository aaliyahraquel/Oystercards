require './lib/Oystercard.rb'

describe Oystercard do

let (:new_card) { Oystercard.new }

  it 'can show initial balance of 0' do
    expect(new_card.balance).to eq(0)
  end

  it 'can be topped up' do
    expect(new_card.top_up(5)).to eq(5)
  end

  it 'raises error if top up method would make the balance over 90' do
    expect{ new_card.top_up(91) }.to raise_error "Limit exceeded.(Max £90)"
  end

end
