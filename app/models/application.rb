class Application < ActiveRecord::Base
	validates :name, :presence => true
	validates :start_date, :presence => true

end
