require 'spec_helper'

feature "Delete a Step" do
  scenario "deleting a step from the task page" do
    task = FactoryGirl.create(:task, name: "Make a sandwich")
    step = FactoryGirl.create(:step, name: "Get Ingredients",
                              description: "Buy bread, peanut butter, and jelly.",
                              task: task)

    visit '/'
    click_link "Make a sandwich"

    click_link "Delete"
    page.should have_content("Step has been deleted.")
    page.should_not have_content("Get Ingredients")
  end
end
