class PlannedTime < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  attr_accessible :hours, :when, :user_id, :project_id
end
