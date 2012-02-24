require 'spec_helper'

describe "Joinings" do
  describe "GET /joinings" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get joinings_path
      response.status.should be(200)
    end
  end
end
