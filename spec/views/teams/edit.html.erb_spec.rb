require 'spec_helper'

describe "teams/edit" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :user_id => 1,
      :name => "MyString",
      :description => "MyString",
      :private => false,
      :recruiting => false,
      :dismissed => false
    ))
  end

  it "renders the edit team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path(@team), :method => "post" do
      assert_select "input#team_user_id", :name => "team[user_id]"
      assert_select "input#team_name", :name => "team[name]"
      assert_select "input#team_description", :name => "team[description]"
      assert_select "input#team_private", :name => "team[private]"
      assert_select "input#team_recruiting", :name => "team[recruiting]"
      assert_select "input#team_dismissed", :name => "team[dismissed]"
    end
  end
end
