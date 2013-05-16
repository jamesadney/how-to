require 'spec_helper'

feature 'Creating Steps' do
  scenario 'can create a step' do
    task = FactoryGirl.create(:task, name: "Make a sandwich")
    visit task_path(task)
    click_link "Add a Step"

    fill_in "Name", with: "Get Ingredients"
    fill_in "Description", with: "Go to the store.\nBuy bread."
    click_button "Create Step"

    page.current_url.should == task_url(task)
    page.should have_content("Get Ingredients")
  end
end
