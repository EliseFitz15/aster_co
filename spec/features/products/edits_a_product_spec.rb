require 'rails_helper'

feature "edits a product" do
  let(:product) { create :product, hidden: true }

  scenario "edits a product successfully" do
    visit product_path(product)

    expect(page).to have_content(product.name)
    expect(page).to have_content(product.description)

    click_on "Edit Product Details"

    fill_in "Name", with: "Aries"
    fill_in "Description", with: "Clean laundry smell"

    click_on "Update Product Details"

    expect(page).to have_content("Aries")
    expect(page).to have_content("Clean laundry smell")
    expect(page).to_not have_content(product.name)
    expect(page).to_not have_content(product.description)
  end

  scenario "makes product hidden from public temporarily" do
    visit product_path(product)

    click_on("Show")
    expect(page).to have_content("Visibility: Public")

    click_on "Hide"
    expect(page).to have_content("Visibility: Hidden")

    visit products_path
    expect(page).not_to have_content product.name
  end
end
