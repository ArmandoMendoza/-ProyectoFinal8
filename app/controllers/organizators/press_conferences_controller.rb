class Organizators::PressConferencesController < ApplicationController

  def index
    @press_conferences = current_organizator.press_conferences
  end

    def show
      @press_conference = current_organizator.press_conferences.find(params[:id])
    end

    def new
      @press_conference = PressConference.new
    end

    def edit
      @press_conference = current_organizator.press_conferences.find(params[:id])
    end

    def create
      @press_conference = current_organizator.press_conferences.new(press_conference_params)
      if @press_conference.save
        redirect_to organizators_press_conferences_path, notice: 'Student was successfully created.'
      else
        render :new
      end
    end

    def update
      @press_conference = current_organizator.press_conferences.find(params[:id])

      if @press_conference.update(press_conference_params)
        redirect_to organizators_press_conferences_path, notice: 'Student was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @press_conference = current_organizator.press_conferences.find(params[:id])
      @press_conference.destroy
      redirect_to organizators_press_conferences_path, notice: 'Student was successfully destroyed.'
    end

    private

    # Never trust parameters from the scary internet, only allow the white list through.
   def press_conference_params
     params.require(:press_conference).permit(:title, :description, :date, :time, :address, :status)
   end

end
