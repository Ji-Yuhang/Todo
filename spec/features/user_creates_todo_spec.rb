require 'rails_helper'

feature "Use creates todo" do
  scenario "successfully" do
    sign_in
    #visit root_path
    create_todo "Buy milk"

    expect(page).to display_todo "Buy milk"
    #post create_todo_path
  end
end
