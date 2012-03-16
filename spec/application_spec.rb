describe "Application", :type => :request do

  describe "GET /" do
    
    it "should fine the index page" do
      get "/"
      last_response.should be_ok
    end

    it "should work with Capybara" do
      visit "/"
    end

  end

end
