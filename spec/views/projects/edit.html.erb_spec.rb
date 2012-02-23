require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :title => "MyString",
      :description => "MyString",
      :user_id => 1,
      :public => false,
      :open => false,
      :finished => false
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_title", :name => "project[title]"
      assert_select "input#project_description", :name => "project[description]"
      assert_select "input#project_user_id", :name => "project[user_id]"
      assert_select "input#project_public", :name => "project[public]"
      assert_select "input#project_open", :name => "project[open]"
      assert_select "input#project_finished", :name => "project[finished]"
    end
  end
end
