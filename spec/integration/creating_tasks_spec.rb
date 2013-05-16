require 'spec_helper'

feature 'Creating tasks' do
  before do
    visit '/'
  end

  scenario 'can create a task' do
    click_link "New Task"
    fill_in "Name", with: "Make a sandwich"
    click_button "Create Task"

    page.current_url.should == task_url(Task.find_by_name("Make a sandwich"))
    page.should have_content("Your task was created!")
    page.should have_content("Make a sandwich")
  end
end
