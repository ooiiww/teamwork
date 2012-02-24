require 'spec_helper'

describe "joinings/new" do
  before(:each) do
    assign(:joining, stub_model(Joining,
      :nickname => "MyString",
      :user_id => 1,
      :team_id => 1,
      :verifying => false,
      :manager => false
    ).as_new_record)
  end

  it "renders new joining form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => joinings_path, :method => "post" do
      assert_select "input#joining_nickname", :name => "joining[nickname]"
      assert_select "input#joining_user_id", :name => "joining[user_id]"
      assert_select "input#joining_team_id", :name => "joining[team_id]"
      assert_select "input#joining_verifying", :name => "joining[verifying]"
      assert_select "input#joining_manager", :name => "joining[manager]"
    end
  end
end
