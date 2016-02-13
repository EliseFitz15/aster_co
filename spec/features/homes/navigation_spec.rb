require 'rails_helper'

feature "navigation" do
  scenario "to contact page" do
    visit root_path
    click_on "Contact"

    expect(page).to have_content ""
  end

  scenario "to about page" do
    visit root_path
    click_on "About"

    expect(page).to have_content ""
  end

  scenario "to order page" do
    visit root_path
    click_on "Contact"

    expect(page).to have_content ""
  end 
end
