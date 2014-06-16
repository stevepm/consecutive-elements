require 'spec_helper'
require_relative '../lib/camp'

describe 'Camp' do
  it 'takes an input of arrays and shows how many are in a row' do
    input = ["archery", "swimming",
             "swimming", "crafts", "archery",
             "archery", "crafts"]
    output =
    [
      ["archery", 1],
      ["swimming", 2],
      ["crafts", 1],
      ["archery", 2],
      ["crafts", 1],
    ]
    expect(Camp.new.schedule(input)).to eq(output)
  end

  it 'validates schedules' do
    input = ["archery", "swimming",
             "swimming", "crafts", "archery",
             "archery", "crafts"]
    expect(Camp.new.validate_schedule(input)).to eq(false)

    new_input = ["archery", "archery",
                 "swimming", "swimming",
                 "crafts", "crafts"]

    expect(Camp.new.validate_schedule(new_input)).to eq(true)
  end
end
