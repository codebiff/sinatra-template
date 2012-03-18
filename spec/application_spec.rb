describe "Application", :type => :request do

  describe "GET /" do
    
    it "should find the index page" do
      visit "/"
      page.should have_content "The index page"
    end

  end

end
