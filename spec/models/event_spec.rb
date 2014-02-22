require 'spec_helper'

describe Event do
  let(:blanks) {['',nil]}

  it {should have_valid(:name).when('Bill', 'Frank')}
  it {should_not have_valid(:name).when(*blanks)}
  it {should have_valid(:description).when('Bill', 'Frank')}
  it {should_not have_valid(:description).when(*blanks)}
  it {should have_valid(:date).when('Bill@bill.co', 'Frank1something@something.com')}
  it {should_not have_valid(:date).when(*blanks)}

end
