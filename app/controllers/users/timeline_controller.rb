class Users::TimelineController < ApplicationController

  def index
    @user = current_user
    @press_conferences = PressConference.where(status: "publicada")
  end
end
