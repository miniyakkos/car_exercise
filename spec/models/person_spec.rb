require 'rails_helper'

describe Person do
  it 'has a valid factory' do
    expect(build(:person)).to be_valid
  end

  it 'requires a name' do
    expect(build(:person, name: nil)).to be_invalid
  end

  it 'does basic email format check' do
    expect(build(:person, email: 'asdf')).to be_invalid
  end
end
