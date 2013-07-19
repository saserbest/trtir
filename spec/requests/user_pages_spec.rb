require 'spec_helper'

describe "User Pages" do
	subject { page }
  describe "signup page" do
  	before { visit kayitol_path }
  	it { should have_content('Kayıt Ol')}
  	it { should have_title(full_title('Kayıt Ol'))}
  end
end
