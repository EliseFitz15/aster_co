FactoryGirl.define do
  factory :event do
    title 'Artists & Flea'
    details 'Booth on Saturdays between 9am - 3pm'
    start_date Date.today
    event_times '11 AM - 4 PM'
    location_name 'Chelsea Market'
    address '75 9th avenue'
    event_link 'coolevent.com'
  end
end
