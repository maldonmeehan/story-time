require 'rails_helper'

describe "the add a sentence process" do
  it "adds a sentence" do
    visit stories_path
    click_link "New Story"
    fill_in "Title", :with => "Hannah takes Barbie to the bar."
    click_on "Create Story"
    click_on "Hannah takes Barbie to the bar."
    click_on "Add a sentence"
    fill_in "User", :with => "Maldon"
    fill_in "Contribution", :with => "Hannah takes Barbie to Burnside."
    fill_in "Icon", :with => "glyphicon glyphicon-hourglass"
    click_on "Create Sentence"
    expect(page).to have_content "Hannah takes Barbie to Burnside."
  end

  it "gives an error when no user is entered" do
    visit new_story_path
    fill_in "Title", :with => "Hannah takes Barbie to the bar."
    click_on "Create Story"
    click_on "Hannah takes Barbie to the bar."
    click_on "Add a sentence"
    fill_in "User", :with => ""
    click_button "Create Sentence"
    expect(page).to have_content "errors"
  end
end
