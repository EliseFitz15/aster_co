require 'rails_helper'

feature "visitor sees list of events" do
  let!(:upcoming) {create(:event) }
  let!(:past) {create(:event, title: "Past event", start_date: Date.today - 2) }
  scenario "sees events by upcoming vs past" do

    visit events_path

    within "#upcoming" do
      expect(page).to have_content(upcoming.title)
      expect(page).to_not have_content(past.title)
    end

    within "#past" do
      expect(page).to_not have_content(upcoming.title)
      expect(page).to have_content(past.title)
    end
  end
end
