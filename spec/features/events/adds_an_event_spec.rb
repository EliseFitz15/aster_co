require 'rails_helper'

feature "adds an event" do
  scenario  "adds an event successfully" do
    visit new_event_path

    fill_in "Event Title", with: 'Artists & Flea'
    fill_in "Event Details", with: 'Booth on Saturdays between 9am - 3pm'
    fill_in "Event Date", with: Date.today
    fill_in "Location", with: 'Chelsea Market'
    fill_in "Address", with: '75 9th avenue'
    fill_in "Zip Code", with: '10011'

    click_on "Add Event"

    expect(page).to have_content "Artists & Flea"
    expect(page).to have_content "10011"
  end
  scenario  "adds an event unsuccessfully" do
    visit new_event_path

    click_on "Add Event"
    expect(page).to have_content "Title can't be blank. Details can't be blank. Start date can't be blank. Location name can't be blank. Address can't be blank. Zip code can't be blank. Zip code is the wrong length (should be 5 characters). Zip code is not a number"
  end
end
