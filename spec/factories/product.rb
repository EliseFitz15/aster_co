FactoryGirl.define do
  factory :product do
    sequence(:name) {|n| "Taurus#{n}" }
    description "Part of the astrology collection"
    price "20.00"
  end
end
