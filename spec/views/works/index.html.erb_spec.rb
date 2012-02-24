require 'spec_helper'

describe "works/index" do
  before(:each) do
    assign(:works, [
      stub_model(Work,
        :team_id => 1,
        :user_id => 1,
        :title => "Title",
        :detail => "Detail"
      ),
      stub_model(Work,
        :team_id => 1,
        :user_id => 1,
        :title => "Title",
        :detail => "Detail"
      )
    ])
  end

  it "renders a list of works" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Detail".to_s, :count => 2
  end
end
