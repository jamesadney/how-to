class Step < ActiveRecord::Base
  attr_accessible :description, :name, :task_id

  belongs_to :task
end
