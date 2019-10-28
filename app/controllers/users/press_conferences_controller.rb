class Users::PressConferencesController < ApplicationController

  def show
    @press_conference = PressConference.find(params[:id])
  end

  def application
    @press_conference = PressConference.find(params[:id])
    @upc = UserPressConference.find_by(user_id: current_user.id, press_conference_id: @press_conference.id)  
    if @upc
      notice = "Ya aplicaste a esta pauta"
    else
    @upc = UserPressConference.create!(user: current_user, press_conference: @press_conference)
    
    redirect_to users_press_conference_path(@press_conference)
  end

end
