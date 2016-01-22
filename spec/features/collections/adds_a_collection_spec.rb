require "rails_helper"

feature "adds a collection" do
  scenario "adds valid information for collection" do
    visit new_collection_path

    fill_in "Title", with: "Light up the Stars"
    fill_in "Description", with: "A collection of scents for each of the astrological signs"

    click_on "Create Collection"

    expect(page).to have_content("Light up the Stars")
    expect(page).to have_content("A collection of scents for each of the astrological signs")
  end
  scenario "adds with invalid information for collection" do
    visit new_collection_path

    click_on "Create Collection"
    expect(page).to have_content "Title can't be blank. Description can't be blank"
  end

end
