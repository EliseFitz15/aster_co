require "rails_helper"

feature "deletes collection" do
  let!(:collection) { create(:collection) }
  let!(:product) { create(:product, collection: collection) }

  scenario "deletes collection but not products" do
    visit collection_path(collection)
    expect(page).to have_content(product.name)
    click_on "Delete Collection Details"
    expect(page).to_not have_content(collection.title)
    expect(page).to_not have_content(product.name)
  end
end
