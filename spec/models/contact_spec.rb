require 'spec_helper'

describe Contact do

  let(:blanks) {['',nil]}

  it {should have_valid(:first_name).when('Bill', 'Frank')}
  it {should_not have_valid(:first_name).when(*blanks)}
  it {should have_valid(:last_name).when('Bill', 'Frank')}
  it {should_not have_valid(:last_name).when(*blanks)}
  it {should have_valid(:email).when('Bill@bill.co', 'Frank1something@something.com')}
  it {should_not have_valid(:email).when(*blanks, 'erferferfef', 'wefwef@sed@', 'erfe asd@yef.com', 'erferf@rhr')}
  it {should have_valid(:subject).when('Bill', 'Frank')}
  it {should_not have_valid(:subject).when(*blanks)}
  it {should have_valid(:description).when('Bill', 'Frank')}
  it {should_not have_valid(:description).when(*blanks)}
end
