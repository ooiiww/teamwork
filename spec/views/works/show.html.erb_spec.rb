require 'spec_helper'

describe "works/show" do
  before(:each) do
    @work = assign(:work, stub_model(Work,
      :team_id => 1,
      :user_id => 1,
      :title => "Title",
      :detail => "Detail"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detail/)
  end
end
