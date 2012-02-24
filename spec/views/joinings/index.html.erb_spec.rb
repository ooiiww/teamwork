require 'spec_helper'

describe "joinings/index" do
  before(:each) do
    assign(:joinings, [
      stub_model(Joining,
        :nickname => "Nickname",
        :user_id => 1,
        :team_id => 1,
        :verifying => false,
        :manager => false
      ),
      stub_model(Joining,
        :nickname => "Nickname",
        :user_id => 1,
        :team_id => 1,
        :verifying => false,
        :manager => false
      )
    ])
  end

  it "renders a list of joinings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
