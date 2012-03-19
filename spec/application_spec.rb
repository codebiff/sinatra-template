describe "Application", :type => :request do

  describe "GET /" do

    it "should be able to load the index page" do
      visit "/"
      page.status_code.should == 200
      page.should have_content "The index page"
    end

  end
  
  describe "GET /unknown" do
    
    it "should return a 404 on an unknown route" do
      visit "/unknown_route" 
      page.status_code.should == 404
    end

  end

end
