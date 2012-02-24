require 'spec_helper'

describe "works/new" do
  before(:each) do
    assign(:work, stub_model(Work,
      :team_id => 1,
      :user_id => 1,
      :title => "MyString",
      :detail => "MyString"
    ).as_new_record)
  end

  it "renders new work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => works_path, :method => "post" do
      assert_select "input#work_team_id", :name => "work[team_id]"
      assert_select "input#work_user_id", :name => "work[user_id]"
      assert_select "input#work_title", :name => "work[title]"
      assert_select "input#work_detail", :name => "work[detail]"
    end
  end
end
