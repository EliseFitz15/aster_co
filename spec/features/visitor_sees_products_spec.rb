require "rails_helper"

feature "visitor sees products" do
  scenario "sees products by name" do
    candle = FactoryGirl.create(:product)
    visit products_path

    expect(page).to have_content candle.name
  end

  scenario "clicks on name and sees details page" do
    candle = FactoryGirl.create(:product)
    visit products_path

    click_link candle.name
    expect(page).to have_content candle.name
    expect(page).to have_content candle.description
    expect(page).to have_content "$20.00"
  end
end
