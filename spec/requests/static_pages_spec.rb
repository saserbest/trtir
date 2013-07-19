require 'spec_helper'

describe "StaticPages" do
   subject { page }
  describe "Home page" do
    before {visit root_path}

    it {should have_content('Tritir')}
    

    it "should have the base title" do
    	expect(page).to have_title("Türkiye'nin yeni sosyal medya ortamı")
    	
    end

    it "should have a custom page title" do
      expect(page).not_to have_title(' | Ana Sayfa')
    end

  end

    describe "Yardim" do

    it "should have the content 'Yardım'" do
      visit yardim_path
      expect(page).to have_content('Yardım')
    end

    it "should have the title 'Yardım'" do
 	  visit yardim_path
 	  expect(page).to have_title("Türkiye'nin yeni sosyal medya ortamı | Yardım")
   	end
   end

    describe "About page" do

    it "should have the title 'Home'" do
 	  visit hakkimizda_path
 	  expect(page).to have_title("Türkiye'nin yeni sosyal medya ortamı | Hakkımızda")
   	end

    it "should have the content 'Hakkımızda'" do
      visit hakkimizda_path
      expect(page).to have_content('Hakkımızda')
    end
  end

  describe "Contact page" do

    it "should have the content 'İletişim'" do
      visit iletisim_path
      expect(page).to have_content('İletişim')
    end

    it "should have the title 'İletişim'" do
      visit iletisim_path
      expect(page).to have_title("Türkiye'nin yeni sosyal medya ortamı | İletişim")
    end
  end
end



