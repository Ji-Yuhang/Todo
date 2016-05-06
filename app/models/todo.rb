class Todo < ActiveRecord::Base
  def completed?
    completed_at?
    #self.completed_at.present?

  end
end
