require 'spec_helper'

describe 'static pages' do 

	#Test for the Home Page
	describe 'Home page' do
		it "Should have content 'Sample App'" do
			visit "/static_pages/home"
			page.should have_content("Sample App")
		end
		it "should have the correct title" do
			visit "/static_pages/home"
			page.should have_selector('title',
										:text => "Ruby on Rails Tutorial Sample App | Home")
		end
	end


	#Test for the Help Page
	describe 'Help page' do
		it 'should have content "Help Page"' do
			visit "/static_pages/help"
			page.should have_content('help')
		end
		it 'should have the correct title' do
			visit "/static_pages/help"
			page.should have_selector('title',
										:text => 'Ruby on Rails Tutorial Sample App | Help')
		end
	end



	#Test for the About page
	describe "About page" do
		it "should have content 'About Us'" do
			visit "/static_pages/about"
			page.should have_content('About Us')
		end
		it "should have the correct title" do
			visit "/static_pages/about"
			page.should have_selector('title',
										:text => 'Ruby on Rails Tutorial Sample App | About Us')
		end
	end
	
end