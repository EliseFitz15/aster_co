require "rails_helper"

feature "visitor sees products" do
  let!(:visible_candle) { create(:product) }
  let!(:hidden_candle) { create(:product, hidden: true) }

  scenario "sees products by name" do
    visit products_path

    expect(page).to have_content visible_candle.name
  end

  scenario "clicks on name and sees details page" do
    visit products_path

    click_link visible_candle.name
    expect(page).to have_content visible_candle.name
    expect(page).to have_content visible_candle.description
    expect(page).to have_content "$20.00"
  end

  scenario "admin sees all products" do
    visit all_products_path

    expect(page).to have_content(visible_candle.name)
    expect(page).to have_content(hidden_candle.name)
  end

  scenario "visitors don't see none visible products" do
    visit products_path

    expect(page).to have_content(visible_candle.name)
    expect(page).not_to have_content(hidden_candle.name)
  end
end
