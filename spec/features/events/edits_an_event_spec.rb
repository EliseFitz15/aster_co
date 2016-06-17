require 'rails_helper'

feature "edits an event" do
  let!(:event) { create :event }

  scenario "edits an event successfully" do
    visit "/events_dashboard"

    expect(page).to have_content(event.title)

    click_on "Artists & Flea"

    fill_in "Title", with: "Artists and Flea"

    click_on "Save"

    expect(page).to have_content "Artists and Flea"
  end
end
