require "rails_helper"

feature "adds a product" do
  scenario "adds valid information" do
    visit new_product_path

    fill_in "Product Name", with: "Virgo"
    fill_in "Description", with: "Virgo prefers a mild floral, like violet and lavender. 16 oz. candle."
    fill_in "Product Price", with: "20.00"

    click_on "Save Product"

    expect(page).to have_content "Virgo"
  end

  scenario "adds with invalid information" do
    visit new_product_path

    click_on "Save Product"

    expect(page).to have_content "Name can't be blank. Description can't be blank. Price can't be blank"
  end
end
