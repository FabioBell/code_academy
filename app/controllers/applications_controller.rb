class ApplicationsController < ApplicationController
	before_action :button_holder

	def index
		@applications = Application.all
		
	end	

	def show
		@application = Application.find(params[:id])

	end

	def new
		@new_application = Application.new

	end

	def create
		@new_application = Application.new(application_params)
		if @new_application.save 
    		redirect_to applications_path
  		else 
    		render new_application_path 
  		end 
  	end 

	private

	def application_params 
	  	params.require(:application).permit(:name, :description, :start_date, :finish_date) 
  	end 
	
	def button_holder
		@active_tab = :applications
	end
	

end

