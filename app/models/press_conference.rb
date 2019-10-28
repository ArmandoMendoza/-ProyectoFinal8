class PressConference < ApplicationRecord
  belongs_to :organizator
  has_many :users_press_conferences

  enum status: [:borrador, :publicada, :cerrada]

  validates_inclusion_of :status, in: ["publicada", "borrador"], on: :create


  def status_options
    if new_record?
      ["borrador", "publicada"]
    else
      ["borrador", "publicada", "cerrada"]
    end    
  end
  
end
