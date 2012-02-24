require 'spec_helper'

describe "works/edit" do
  before(:each) do
    @work = assign(:work, stub_model(Work,
      :team_id => 1,
      :user_id => 1,
      :title => "MyString",
      :detail => "MyString"
    ))
  end

  it "renders the edit work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => works_path(@work), :method => "post" do
      assert_select "input#work_team_id", :name => "work[team_id]"
      assert_select "input#work_user_id", :name => "work[user_id]"
      assert_select "input#work_title", :name => "work[title]"
      assert_select "input#work_detail", :name => "work[detail]"
    end
  end
end
