require 'rails_helper'

describe "the edit a sentence process" do
  it "edits a sentence" do
    story = Story.create(:title => "Hannah takes Barbie for a walk")
    sentence = Sentence.create(:user => "Maldon", :contribution => "Barbie has a great time and also has a baby on Burnside", :icon => "glyphicon glyphicon-education", :story_id => story.id)
    visit story_path(story)
    click_on "Edit"
    fill_in "User", :with => "Maldon"
    fill_in "Contribution", :with => "Hannah takes Barbie to Burnside."
    fill_in "Icon", :with => "glyphicon glyphicon-hourglass"
    click_on "Update Sentence"
    expect(page).to have_content "Hannah takes Barbie to Burnside."
  end

  it "gives an error when no title is entered" do
    story = Story.create(:title => "Hannah takes Barbie for a walk")
    sentence = Sentence.create(:user => "Maldon", :contribution => "Hannah takes Barbie to Burnside.", :icon => "glyphicon glyphicon-hourglass", :story_id => story.id )
    visit story_path(story)
    click_on "Edit"
    fill_in "Contribution", :with => ""
    click_button "Update Sentence"
    expect(page).to have_content "errors"
  end
end
