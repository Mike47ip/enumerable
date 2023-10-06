require_relative '../my_list'

describe 'Unit tests for MyList class' do
  it 'should satisfy the condition' do
    list = MyList.new(1, 2, 3, 4)
    expect(list.all? { |e| e < 5 }).to eq(true)
    expect(list.all? { |e| e > 5 }).to eq(false)
  end

  it 'should satisfy the condition' do
    list = MyList.new(1, 2, 3, 4)
    expect(list.any? { |e| e == 2 }).to eq(true)
    expect(list.any? { |e| e == 5 }).to eq(false)
  end

  it 'should return filtered list by the given logic' do
    list = MyList.new(1, 2, 3, 4)
    expect(list.filter(&:even?)).to eq([2, 4])
  end
end