require "rails_helper"

feature "deletes products" do
  let!(:product) { create(:product) }

  scenario "deletes product from show page" do
    visit product_path(product)
    expect(page).to have_content(product.name)
    click_on "Delete"
    expect(page).to_not have_content(product.name)
    expect(page).to have_content("All Visible Products")
  end
end
