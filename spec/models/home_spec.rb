require 'spec_helper'

describe Home do

  it 'has an hours method' do
    expect(Home.hours).to be_kind_of(Hash)
  end

end
