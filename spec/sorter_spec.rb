require 'spec_helper'

describe Sorter do
  it 'sorts the array by amount of "1" in binary representation' do
    expect(Sorter.sort([7, 8, 3, 9])).to eq([8, 3, 9, 7])
  end

  it 'sorts with decimal number if number of 1s in binary representation are same' do
    expect(Sorter.sort([3, 7, 8, 9])).to eq([8, 3, 9, 7])
  end

  it 'retuns empty result for empty array' do
    expect(Sorter.sort([])).to be_empty
  end
end
