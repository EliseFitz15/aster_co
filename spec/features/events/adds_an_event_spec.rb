require 'rails_helper'

feature "adds an event" do
  scenario  "adds an event successfully" do
    visit new_event_path

    fill_in "Event Title", with: 'Artists & Flea'
    fill_in "Event Date", with: Date.today
    fill_in "Event Time", with: "10 am - 4 pm"
    fill_in "Event Details", with: 'A place for treasure hunters and vintage lovers...'
    fill_in "Location Name", with: 'Chelsea Market'
    fill_in "Address", with: '75 9th avenue'
    fill_in "Event Link", with: 'www.fieldofartistians.com'

    click_on "Save"

    expect(page).to have_content "Artists & Flea"
    expect(page).to have_content "Chelsea Market"
  end

  scenario  "adds an event unsuccessfully" do
    visit new_event_path

    click_on "Save"
    expect(page).to have_content "Title can't be blank. Location name can't be blank"
  end
end
