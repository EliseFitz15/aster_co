FactoryGirl.define do
  factory :event do
    title 'Artists & Flea'
    details 'Booth on Saturdays between 9am - 3pm'
    start_date Date.today
    location_name 'Chelsea Market'
    address '75 9th avenue'
    zip_code '10011'
  end
end
