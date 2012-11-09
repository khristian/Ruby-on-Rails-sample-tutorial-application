require 'spec_helper'

#Adding Route tests via visit "****_path" links.

describe "Static pages" do

	# This has been replaced with a helper/application_helper method
  #let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page } #

   describe "Home page" do
     before { visit root_path }

      it { should have_selector('h1', :text => 'Sample App') } ## checks for selector <h1> contains :text
      it { should have_selector('title', :text => full_title('')) }## checks for title
      it { should_not have_selector('title', :text => '| Home') }
    
    end

  

   describe "Help page" do
     before { visit help_path }

      it { should have_selector('h1', :text => 'Help') }
      it { should have_selector('title', :text => full_title('Help')) }

   end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end


end