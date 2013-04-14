require 'spec_helper'

describe 'static pages' do 

let(:base_title) {"Ruby on Rails Tutorial Sample App"}

	#Test for the Home Page
	describe 'Home page' do
		it "Should have h1 'Sample App'" do
			visit root_path
			page.should have_selector('h1', :text => "Sample App")
		end
		it "should have the base title" do
			visit root_path
			page.should have_selector('title', 
										:text => "Ruby on Rails Tutorial Sample App")
		end
		it "should not have a custom page title" do
			visit root_path
			page.should_not have_selector('title', :text => "| Home")
		end
	end


	#Test for the Help Page
	describe 'Help page' do
		it 'should have h1 "Help Page"' do
			visit help_path
			page.should have_selector('h1', :text => "Help")
		end
		it 'should have the correct title' do
			visit help_path
			page.should have_selector('title', :text => "#{base_title} | Help")
		end
	end



	#Test for the About page
	describe "About page" do
		it "should have h1 'About Us'" do
			visit about_path
			page.should have_selector('h1', :text => "About Us")
		end
		it "should have the correct title" do
			visit about_path
			page.should have_selector('title', :text => "#{base_title} | About Us")
		end
	end
	


	#Test for the Contact page
	describe "Contact page" do
		it "should have h1 'Contact'" do
			visit contact_path
			page.should have_selector('h1', :text => "Contact")
		end
		it "should have the correct title" do
			visit contact_path
			page.should have_selector('title', :text => "#{base_title} | Contact")
		end
	end	
end