class Reader::BaseController < ActionController::Base
	layout 'reader'
	before_action :authenticate_user!
	before_action :check_admin

	private
		def check_admin
			user = current_user
			if user.admin?
				redirect_to admin_dashboard_index_path
			end
		end
end
