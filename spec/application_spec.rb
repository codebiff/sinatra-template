describe "Application" do

  describe "GET /" do
    
    it "should fine the index page" do
      get "/"
      last_response.should be_ok
    end

  end

end
