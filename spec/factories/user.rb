FactoryGirl.define do
  factory :user do
    provider "Twitter"
    sequence(:uid) {|n| "uid-unique#{n}" }
    name "Taylor Swift"
    sequence(:image_url) {|n| "twitter-image#{n}" }
    sequence(:url) {|n| "some-url#{n}" }
  end
end
