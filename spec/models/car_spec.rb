require 'rails_helper'

describe Car do
  it 'has a valid factory' do
    expect(build(:car)).to be_valid
  end

  it 'requires a model' do
    expect(build(:car, model: nil)).to be_invalid
  end

  it 'requires a make' do
    expect(build(:car, make: nil)).to be_invalid
  end

  it 'requires a color' do
    expect(build(:car, color: nil)).to be_invalid
  end
end
