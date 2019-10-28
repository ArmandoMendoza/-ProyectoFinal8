class UserPressConference < ApplicationRecord
  belongs_to :user
  belongs_to :press_conference

  enum status: [:in_progress, :accepted, :rejected]

end
