require 'rails_helper'

describe "the add lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'Add lesson'
    fill_in 'Number', :with => '1'
    fill_in 'Name', :with => 'New Lesson'
    fill_in 'Text', :with => 'Lorem ipsum'
    click_on 'Create Lesson'
    expect(page).to have_content 'Lessons'
  end

  it "gives error when no name is entered" do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end

  it "returns to lesson list, without adding a new lesson" do
    visit new_lesson_path
    click_on 'List lessons'
    expect(page).to have_content 'Lessons'
  end
end
