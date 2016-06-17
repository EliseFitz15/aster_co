require "rails_helper"

feature "adds a product" do
  let!(:collection) { create(:collection) }
  scenario "adds valid information" do
    visit new_product_path

    fill_in "Product Name", with: "Virgo"
    fill_in "Product Price", with: "20.00"
    fill_in "Description", with: "Virgo prefers a mild floral, like violet and lavender. 16 oz. candle."
    select "Light up the stars", from: "Choose Collection"
    attach_file "Add Product Photo", "#{Rails.root}/spec/support/images/photo.png"
    click_on "Save"

    expect(page).to have_content "Virgo"
    expect(page).to have_content "Virgo prefers a mild floral, like violet and lavender. 16 oz. candle."
    expect(page).to have_content "$20"
    expect(page).to have_content "Light up the stars"
    expect(page).to have_css("img[src*='photo.png']")
  end

  scenario "adds with invalid information" do
    visit new_product_path

    click_on "Save"

    expect(page).to have_content "Name can't be blank. Description can't be blank. Price can't be blank"
  end
end
