require "rails_helper"

feature "User sess own todos" do
  scenario "doesn't see other's todos" do
    Todo.create!(title: "Buy milk", email:"yuhang.silence_else@gmail.com")
    sign_in_as "yuhang.silence@gmail.com"
    expect(page).not_to have_css ".todo li", text: "Buy milk"
  end
end
