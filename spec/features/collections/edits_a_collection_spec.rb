require 'rails_helper'

feature "edits a collection" do
  let(:collection) { create :collection }

  scenario "edits a collection successfully" do
    visit collection_path(collection)

    expect(page).to have_content(collection.title)
    expect(page).to have_content(collection.description)

    click_on "Edit Collection Details"

    fill_in "Title", with: "Earth. Wind. Fire"
    fill_in "Description", with: "Only the simple smells of the natural elements"

    click_on "Update Collection Details"

    expect(page).to have_content("Earth. Wind. Fire")
    expect(page).to have_content("Only the simple smells of the natural elements")
    expect(page).to_not have_content(collection.title)
    expect(page).to_not have_content(collection.description)
  end
end
