class PagesController < ApplicationController

	def welcome
		 @active_tab = :welcome
	end

	def about_us
		 @active_tab = :about_us
	end

	def contacts
		 
	end

end
