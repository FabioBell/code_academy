class ApplicationsController < ApplicationController

	def index
		@active_tab = :applications
		@applications = Application.all
		
	end	

	def show
		@active_tab = :applications
		@application = Application.find(params[:id])

	end

	def new
		@active_tab = :applications
		@new_application = Application.new

	end

	def create
		@active_tab = :applications
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


end

