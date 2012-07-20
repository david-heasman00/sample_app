require 'spec_helper'

describe "StaticPages" do
	
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	
  describe "Home page" do
	  
    it "should have the content 'Sample App' " do
	    visit '/static_pages/home'
	    page.should have_selector('h1', :text => 'Sample App')
    end
    
    it "should have the title 'Home'" do
	    visit '/static_pages/home'
	    page.should have_selector('title',
					:text => "#{base_title}")
	end
	it "should not have a custom page title" do
		visit '/static_pages/home'
		page.should_not have_selector('title', :text => '| Home')
	end
  end
  
  describe "Help Page" do
	  
	  it "should have the content 'Help'" do
		  visit '/static_pages/help'
		  page.should have_selector('h1', :text => 'Help')
	  end
	  
	  it "should have the title 'Help'" do
		  visit '/static_pages/help'
		  page.should have_selector('title',
						:text => "#{base_title} | Help")
		end
	end
	
	describe "Contact Us" do
		
		it "should have the content 'Contact Us'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact Us')
		end
		
		it "should have the title 'Contact Us'" do
			visit '/static_pages/contact'
			page.should have_selector('title',
						:text => "#{base_title} | Contact Us")
		end
	end	
	
end



