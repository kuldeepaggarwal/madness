require 'spec_helper'

describe MaxMultiplier do
  it 'finds max multiplication of 4 consequetive numbers' do
    expect(MaxMultiplier.new('abc12345def').calculate).to eq(120)
    expect(MaxMultiplier.new('abc12345de2234242dasd9999f').calculate).to eq(6561)
  end

  it 'retuns nil if input is not a String' do
    expect(MaxMultiplier.new(Object.new).calculate).to eq(nil)
    expect(MaxMultiplier.new(1).calculate).to eq(nil)
    expect(MaxMultiplier.new(nil).calculate).to eq(nil)
  end

  it 'retuns nil if input does not have 4 consequetive numbers' do
    expect(MaxMultiplier.new('abc123def').calculate).to eq(nil)
    expect(MaxMultiplier.new('abc125de242dasd13f').calculate).to eq(nil)
  end

  it 'finds sum of 4 consequetive numbers' do
    expect(MaxMultiplier.new('abc12345def', behaviour: :+).calculate).to eq(14)
    expect(MaxMultiplier.new('abc12345de2234242dasd9999f', behaviour: :+).calculate).to eq(36)
  end
end
