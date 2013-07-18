require 'spec_helper'

describe "StaticPages" do
  describe "Home pages" do

    it "should have the content 'Tritir' " do
      visit '/static_pages/anasayfa'
      expect(page).to have_content('Tritir')
    end

    it "should have the title 'Ana Sayfa'" do
    	visit '/static_pages/anasayfa'
    	expect(page).to have_title("Türkiye'nin yeni sosyal medya ortamı | Ana Sayfa")
    	
    end
  end

    describe "Yardim" do

    it "should have the content 'Yardım'" do
      visit '/static_pages/yardim'
      expect(page).to have_content('Yardım')
    end

    it "should have the title 'Yardım'" do
 	  visit '/static_pages/yardim'
 	  expect(page).to have_title("Türkiye'nin yeni sosyal medya ortamı | Yardım")
   	end
   end

    describe "About page" do

    it "should have the title 'Home'" do
 	  visit '/static_pages/hakkimizda'
 	  expect(page).to have_title("Türkiye'nin yeni sosyal medya ortamı | Hakkımızda")
   	end

    it "should have the content 'Hakkımızda'" do
      visit '/static_pages/hakkimizda'
      expect(page).to have_content('Hakkımızda')
    end
  end
end
