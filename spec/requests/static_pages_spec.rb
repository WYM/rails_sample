require 'rails_helper'

describe "Static pages" do

  describe "Home page" do

    it "应该包含内容 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "应该包含标题 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end

  end

  describe "Help page" do

    it "应该包含内容 '帮助'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "应该包含标题 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end

  end

  describe "About page" do

    it "应该包含内容 'About'"do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "应该包含标题 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end

  end

end