require 'rails_helper'

feature 'sees collections list and products listed on collection page' do
  let!(:collection) { create(:collection) }
  let!(:collection_2) { create(:collection, title: "Burning man") }
  let!(:product_1) { create(:product, collection: collection) }
  let!(:product_2) { create(:product, collection: collection) }
  let!(:product_3) { create(:product, collection: collection_2) }

  scenario 'list of collections' do
    visit collections_path

    expect(page).to have_link collection.title
    expect(page).to have_link collection_2.title
  end

  scenario 'list of products in collection' do
    visit collection_path(collection)

    expect(page).to have_content(product_1.name)
    expect(page).to have_content(product_2.name)
    expect(page).not_to have_content(product_3.name)

    visit collection_path(collection_2)

    expect(page).to have_content product_3.name
  end
end
