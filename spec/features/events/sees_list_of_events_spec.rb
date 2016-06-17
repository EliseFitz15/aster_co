require 'rails_helper'

feature "visitor sees list of events" do
  let!(:upcoming) { create(:event) }
  let!(:past) { create(:event, title: "Past event", start_date: Date.yesterday) }
  scenario "sees only upcoming event" do

    visit events_path

    expect(page).to have_content(upcoming.title)
    expect(page).to_not have_content(past.title)
  end
end
