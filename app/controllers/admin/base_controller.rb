class Admin::BaseController < ActionController::Base
	layout 'admin'
	before_action :authenticate_user!
	before_action :check_reader

	private
		def check_reader
			user = current_user
			if user.reader?
				redirect_to reader_dashboard_index_path
			end
		end
end