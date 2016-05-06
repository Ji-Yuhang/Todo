require 'rails_helper'

RSpec.describe Todo, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  # Why delete model spec file?
end

describe Todo, "#completed?" do
  it "returns true if completed_at is set" do
    todo = Todo.new(completed_at: Time.current)
    expect(todo).to be_completed
  end

  it "returns false if completed_at is nil" do
    todo = Todo.new(completed_at: nil)
    expect(todo).not_to be_completed
  end
end

describe Todo, "#complete!" do
  it "update completed_at" do
    todo = Todo.create!(completed_at: nil)
    todo.complete!

    todo.reload

    expect(todo).to be_completed


  end

end
describe Todo, "#incomplete!" do
  it "update completed_at" do
    todo = Todo.create!(completed_at: Time.current)
    todo.mark_incomplete!

    todo.reload

    expect(todo).not_to be_completed


  end

end



