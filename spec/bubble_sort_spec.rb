require "rspec"
require_relative "../lib/bubble_sort"

describe 'bubbleSort' do
  
  it "sorts an array of numbers" do 
    b = bubbleSort( [87, 12, 0, 66, 23, 5] )
    expect(b).to eq( [0, 5, 12, 23, 66, 87] )
  end

end

describe 'bubbleSortBy' do

  it 'sorts an array of strings' do
    b = bubbleSortBy(["hi","hello","hey","kalamazoo"]) do |left, right| 
      right.to_i - left.to_i
    end
    expect(b).to eq( ["hi", "hey", "hello", "kalamazoo"] )
  end

end