require 'spec_helper'

describe 'static pages' do 

let(:base_title) {"Ruby on Rails Tutorial Sample App"}

	#Test for the Home Page
	describe 'Home page' do
		it "Should have h1 'Sample App'" do
			visit "/static_pages/home"
			page.should have_selector('h1', :text => "Sample App")
		end
		it "should have the correct title" do
			visit "/static_pages/home"
			page.should have_selector('title', :text => "#{base_title} | Home")
		end
	end


	#Test for the Help Page
	describe 'Help page' do
		it 'should have h1 "Help Page"' do
			visit "/static_pages/help"
			page.should have_selector('h1', :text => "Help")
		end
		it 'should have the correct title' do
			visit "/static_pages/help"
			page.should have_selector('title', :text => "#{base_title} | Help")
		end
	end



	#Test for the About page
	describe "About page" do
		it "should have h1 'About Us'" do
			visit "/static_pages/about"
			page.should have_selector('h1', :text => "About Us")
		end
		it "should have the correct title" do
			visit "/static_pages/about"
			page.should have_selector('title', :text => "#{base_title} | About Us")
		end
	end
	


	#Test for the Contact page
	describe "Contact page" do
		it "should have h1 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => "Contact")
		end
		it "should have the correct title" do
			visit "/static_pages/contact"
			page.should have_selector('title', :text => "#{base_title} | Contact")
		end
	end	
end