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
    max_balance = Oystercard::LIMIT
    new_card.top_up(max_balance)
    expect { new_card.top_up(1)}.to raise_error "Limit exceeded.(Max £90)"
  end

  it 'deducts the fare from the card' do
    new_card.top_up(10)
    expect(new_card.deduct(5)).to eq(5)
  end

  it 'can be touched-in' do
    new_card.top_up(5)
    new_card.touch_in
    expect(new_card).to be_in_journey
  end

  it 'can return whether it is in journey' do
    expect(new_card).to respond_to(:in_journey)
  end

  it 'can be touched_out' do
    new_card.touch_out
    expect(new_card).not_to be_in_journey
  end

  it 'has a minimumm balance of £1' do
    expect {new_card.touch_in}.to raise_error "Please top up!"
  end



  end
