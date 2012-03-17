describe "Application", :type => :request do

  describe "GET /" do
    
    it "should find the index page" do
      get "/"
      last_response.should be_ok
    end

    it "should work with Capybara" do
      visit "/"
      page.should have_content "The index page"
    end

  end

end
