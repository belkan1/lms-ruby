class HomeController < ApplicationController
before_action :check_roles

	def index; end

	private
		def check_roles
			if(user_signed_in?)	
				user = current_user
				if user.admin?
					redirect_to admin_dashboard_index_path
				elsif user.reader?
					redirect_to reader_dashboard_index_path
				end
			end
		end
end