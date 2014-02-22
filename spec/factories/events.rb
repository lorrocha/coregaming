# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "SuperSale!"
    description "Omg its a sale!"
    date "2014-02-22"
    location "MyStCore Gaming"
  end
end
