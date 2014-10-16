require 'rails_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "应该包含内容 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "应该拥有基础标题" do 
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "Not 应该拥有自定义标题" do
      visit '/static_pages/home'
      expect(page).not_to have_title(" | Home")
    end

  end

  describe "Help page" do

    it "应该包含内容 '帮助'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "应该包含标题 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end

  end

  describe "About page" do

    it "应该包含内容 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "应该包含标题 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end

  end

  describe "Contact page" do

    it "应该包含内容 'Contact'" do 
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "应该包含标题 'Contact'" do 
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end

  end

end