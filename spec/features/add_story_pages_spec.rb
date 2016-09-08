require 'rails_helper'

describe "the add a new story process" do
  it "adds a new story" do
    visit stories_path
    click_link "New Story"
    fill_in "Title", :with => "Hannah takes Barbie to the bar."
    click_on "Create Story"
    expect(page).to have_content "Stories"
  end

  it "gives an error when no title is entered" do
    visit new_story_path
    click_on "Create Story"
    expect(page).to have_content "errors"
  end
end
