class Reader::BooksController < Reader::BaseController
	# before_action :authenticate_user!

	def index
		if params[:search].present?
			@books = Book.search(params[:search]).records.all
		else
			@books = Book.all
		end
	end
end


