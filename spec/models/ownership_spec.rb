require 'rails_helper'

describe Ownership do
  it 'has a valid factory' do
    expect(build(:ownership)).to be_valid
  end
end
